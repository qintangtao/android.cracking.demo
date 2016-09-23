package com.lidroid.xutils.cache;

import com.lidroid.xutils.util.IOUtils;
import com.lidroid.xutils.util.LogUtils;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class LruDiskCache
  implements Closeable
{
  static final long ANY_SEQUENCE_NUMBER = -1L;
  private static final char CLEAN = 'C';
  private static final char DELETE = 'D';
  private static final char EXPIRY_PREFIX = 't';
  static final String JOURNAL_FILE = "journal";
  static final String JOURNAL_FILE_BACKUP = "journal.bkp";
  static final String JOURNAL_FILE_TEMP = "journal.tmp";
  static final String MAGIC = "libcore.io.DiskLruCache";
  private static final OutputStream NULL_OUTPUT_STREAM = new OutputStream()
  {
    public void write(int paramAnonymousInt)
      throws IOException
    {
    }
  };
  private static final char READ = 'R';
  private static final char UPDATE = 'U';
  static final String VERSION = "1";
  private final int appVersion;
  private final Callable<Void> cleanupCallable = new Callable()
  {
    public Void call()
      throws Exception
    {
      synchronized (LruDiskCache.this)
      {
        if (LruDiskCache.this.journalWriter == null)
          return null;
        LruDiskCache.this.trimToSize();
        if (LruDiskCache.this.journalRebuildRequired())
        {
          LruDiskCache.this.rebuildJournal();
          LruDiskCache.this.redundantOpCount = 0;
        }
        return null;
      }
    }
  };
  private final File directory;
  final ThreadPoolExecutor executorService = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
  private FileNameGenerator fileNameGenerator = new MD5FileNameGenerator();
  private final File journalFile;
  private final File journalFileBackup;
  private final File journalFileTmp;
  private Writer journalWriter;
  private final LinkedHashMap<String, Entry> lruEntries = new LinkedHashMap(0, 0.75F, true);
  private long maxSize;
  private long nextSequenceNumber = 0L;
  private int redundantOpCount;
  private long size = 0L;
  private final int valueCount;

  private LruDiskCache(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    this.directory = paramFile;
    this.appVersion = paramInt1;
    this.journalFile = new File(paramFile, "journal");
    this.journalFileTmp = new File(paramFile, "journal.tmp");
    this.journalFileBackup = new File(paramFile, "journal.bkp");
    this.valueCount = paramInt2;
    this.maxSize = paramLong;
  }

  private void checkNotClosed()
  {
    if (this.journalWriter == null)
      throw new IllegalStateException("cache is closed");
  }

  private void completeEdit(Editor paramEditor, boolean paramBoolean)
    throws IOException
  {
    Entry localEntry;
    try
    {
      localEntry = paramEditor.entry;
      if (localEntry.currentEditor != paramEditor)
        throw new IllegalStateException();
    }
    finally
    {
    }
    int j;
    if ((paramBoolean) && (!localEntry.readable))
    {
      j = 0;
      if (j >= this.valueCount)
        break label421;
    }
    while (true)
    {
      if (i >= this.valueCount)
      {
        this.redundantOpCount = (1 + this.redundantOpCount);
        localEntry.currentEditor = null;
        if (!(paramBoolean | localEntry.readable))
          break label372;
        localEntry.readable = true;
        this.journalWriter.write("C " + localEntry.diskKey + " " + 't' + localEntry.expiryTimestamp + localEntry.getLengths() + '\n');
        if (paramBoolean)
        {
          long l3 = this.nextSequenceNumber;
          this.nextSequenceNumber = (1L + l3);
          localEntry.sequenceNumber = l3;
        }
      }
      while (true)
      {
        this.journalWriter.flush();
        if ((this.size > this.maxSize) || (journalRebuildRequired()))
          this.executorService.submit(this.cleanupCallable);
        while (true)
        {
          return;
          if (paramEditor.written[j] == 0)
          {
            paramEditor.abort();
            throw new IllegalStateException("Newly created entry didn't create value for index " + j);
          }
          if (localEntry.getDirtyFile(j).exists())
            break;
          paramEditor.abort();
        }
        File localFile1 = localEntry.getDirtyFile(i);
        if (paramBoolean)
        {
          if (!localFile1.exists())
            break label433;
          File localFile2 = localEntry.getCleanFile(i);
          localFile1.renameTo(localFile2);
          long l1 = localEntry.lengths[i];
          long l2 = localFile2.length();
          localEntry.lengths[i] = l2;
          this.size = (l2 + (this.size - l1));
          break label433;
        }
        deleteIfExists(localFile1);
        break label433;
        label372: this.lruEntries.remove(localEntry.diskKey);
        this.journalWriter.write("D " + localEntry.diskKey + '\n');
      }
      label421: int i = 0;
      continue;
      j++;
      break;
      label433: i++;
    }
  }

  private static void deleteContents(File paramFile)
    throws IOException
  {
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null)
      throw new IOException("not a readable directory: " + paramFile);
    int i = arrayOfFile.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      File localFile = arrayOfFile[j];
      if (localFile.isDirectory())
        deleteContents(localFile);
      if ((localFile.exists()) && (!localFile.delete()))
        throw new IOException("failed to delete file: " + localFile);
    }
  }

  private static void deleteIfExists(File paramFile)
    throws IOException
  {
    if ((paramFile.exists()) && (!paramFile.delete()))
      throw new IOException();
  }

  private Editor editByDiskKey(String paramString, long paramLong)
    throws IOException
  {
    while (true)
    {
      Entry localEntry;
      Editor localEditor1;
      try
      {
        checkNotClosed();
        localEntry = (Entry)this.lruEntries.get(paramString);
        if (paramLong != -1L)
        {
          localEditor1 = null;
          if (localEntry != null)
          {
            long l = localEntry.sequenceNumber;
            boolean bool = l < paramLong;
            localEditor1 = null;
            if (!bool);
          }
          else
          {
            return localEditor1;
          }
        }
        if (localEntry == null)
        {
          localEntry = new Entry(paramString, null);
          this.lruEntries.put(paramString, localEntry);
          localEditor1 = new Editor(localEntry, null);
          localEntry.currentEditor = localEditor1;
          this.journalWriter.write("U " + paramString + '\n');
          this.journalWriter.flush();
          continue;
        }
      }
      finally
      {
      }
      Editor localEditor2 = localEntry.currentEditor;
      if (localEditor2 != null)
        localEditor1 = null;
    }
  }

  private Snapshot getByDiskKey(String paramString)
    throws IOException
  {
    Snapshot localSnapshot;
    label233: FileInputStream[] arrayOfFileInputStream;
    int k;
    while (true)
    {
      Entry localEntry;
      int i;
      try
      {
        checkNotClosed();
        localEntry = (Entry)this.lruEntries.get(paramString);
        localSnapshot = null;
        if (localEntry == null)
          return localSnapshot;
        boolean bool1 = localEntry.readable;
        localSnapshot = null;
        if (!bool1)
          continue;
        if (localEntry.expiryTimestamp >= System.currentTimeMillis())
          break label233;
        i = 0;
        if (i >= this.valueCount)
        {
          this.redundantOpCount = (1 + this.redundantOpCount);
          this.journalWriter.append("D " + paramString + '\n');
          this.lruEntries.remove(paramString);
          boolean bool2 = journalRebuildRequired();
          localSnapshot = null;
          if (!bool2)
            continue;
          this.executorService.submit(this.cleanupCallable);
          localSnapshot = null;
          continue;
        }
      }
      finally
      {
      }
      File localFile = localEntry.getCleanFile(i);
      if ((localFile.exists()) && (!localFile.delete()))
        throw new IOException("failed to delete " + localFile);
      this.size -= localEntry.lengths[i];
      localEntry.lengths[i] = 0L;
      i++;
      continue;
      arrayOfFileInputStream = new FileInputStream[this.valueCount];
      int j = 0;
      try
      {
        while (true)
        {
          int n = this.valueCount;
          if (j >= n)
          {
            this.redundantOpCount = (1 + this.redundantOpCount);
            this.journalWriter.append("R " + paramString + '\n');
            if (journalRebuildRequired())
              this.executorService.submit(this.cleanupCallable);
            localSnapshot = new Snapshot(paramString, localEntry.sequenceNumber, arrayOfFileInputStream, localEntry.lengths, null);
            break;
          }
          arrayOfFileInputStream[j] = new FileInputStream(localEntry.getCleanFile(j));
          j++;
        }
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        k = 0;
      }
    }
    while (true)
    {
      int m = this.valueCount;
      localSnapshot = null;
      if (k >= m)
        break;
      FileInputStream localFileInputStream = arrayOfFileInputStream[k];
      localSnapshot = null;
      if (localFileInputStream == null)
        break;
      IOUtils.closeQuietly(arrayOfFileInputStream[k]);
      k++;
    }
  }

  private static String inputStreamToString(InputStream paramInputStream)
    throws IOException
  {
    return readFully(new InputStreamReader(paramInputStream, "UTF-8"));
  }

  private boolean journalRebuildRequired()
  {
    return (this.redundantOpCount >= 2000) && (this.redundantOpCount >= this.lruEntries.size());
  }

  public static LruDiskCache open(File paramFile, int paramInt1, int paramInt2, long paramLong)
    throws IOException
  {
    if (paramLong <= 0L)
      throw new IllegalArgumentException("maxSize <= 0");
    if (paramInt2 <= 0)
      throw new IllegalArgumentException("valueCount <= 0");
    File localFile1 = new File(paramFile, "journal.bkp");
    File localFile2;
    if (localFile1.exists())
    {
      localFile2 = new File(paramFile, "journal");
      if (!localFile2.exists())
        break label150;
      localFile1.delete();
    }
    LruDiskCache localLruDiskCache;
    while (true)
    {
      localLruDiskCache = new LruDiskCache(paramFile, paramInt1, paramInt2, paramLong);
      if (localLruDiskCache.journalFile.exists())
        try
        {
          localLruDiskCache.readJournal();
          localLruDiskCache.processJournal();
          localLruDiskCache.journalWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(localLruDiskCache.journalFile, true), "US-ASCII"));
          return localLruDiskCache;
          label150: renameTo(localFile1, localFile2, false);
        }
        catch (Throwable localThrowable)
        {
          LogUtils.e("DiskLruCache " + paramFile + " is corrupt: " + localThrowable.getMessage() + ", removing", localThrowable);
          localLruDiskCache.delete();
        }
    }
    if ((paramFile.exists()) || (paramFile.mkdirs()))
    {
      localLruDiskCache = new LruDiskCache(paramFile, paramInt1, paramInt2, paramLong);
      localLruDiskCache.rebuildJournal();
    }
    return localLruDiskCache;
  }

  private void processJournal()
    throws IOException
  {
    deleteIfExists(this.journalFileTmp);
    Iterator localIterator = this.lruEntries.values().iterator();
    Entry localEntry;
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      localEntry = (Entry)localIterator.next();
      if (localEntry.currentEditor != null)
        break;
      for (int j = 0; j < this.valueCount; j++)
        this.size += localEntry.lengths[j];
    }
    localEntry.currentEditor = null;
    for (int i = 0; ; i++)
    {
      if (i >= this.valueCount)
      {
        localIterator.remove();
        break;
      }
      deleteIfExists(localEntry.getCleanFile(i));
      deleteIfExists(localEntry.getDirtyFile(i));
    }
  }

  private static String readFully(Reader paramReader)
    throws IOException
  {
    try
    {
      StringWriter localStringWriter1 = new StringWriter();
      try
      {
        char[] arrayOfChar = new char[1024];
        while (true)
        {
          int i = paramReader.read(arrayOfChar);
          if (i == -1)
          {
            String str = localStringWriter1.toString();
            IOUtils.closeQuietly(paramReader);
            IOUtils.closeQuietly(localStringWriter1);
            return str;
          }
          localStringWriter1.write(arrayOfChar, 0, i);
        }
      }
      finally
      {
        localStringWriter2 = localStringWriter1;
      }
      IOUtils.closeQuietly(paramReader);
      IOUtils.closeQuietly(localStringWriter2);
      throw localObject1;
    }
    finally
    {
      StringWriter localStringWriter2 = null;
    }
  }

  // ERROR //
  private void readJournal()
    throws IOException
  {
    // Byte code:
    //   0: new 486	com/lidroid/xutils/cache/LruDiskCache$StrictLineReader
    //   3: dup
    //   4: aload_0
    //   5: new 360	java/io/FileInputStream
    //   8: dup
    //   9: aload_0
    //   10: getfield 127	com/lidroid/xutils/cache/LruDiskCache:journalFile	Ljava/io/File;
    //   13: invokespecial 369	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   16: invokespecial 489	com/lidroid/xutils/cache/LruDiskCache$StrictLineReader:<init>	(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/io/InputStream;)V
    //   19: astore_1
    //   20: aload_1
    //   21: invokevirtual 492	com/lidroid/xutils/cache/LruDiskCache$StrictLineReader:readLine	()Ljava/lang/String;
    //   24: astore 4
    //   26: aload_1
    //   27: invokevirtual 492	com/lidroid/xutils/cache/LruDiskCache$StrictLineReader:readLine	()Ljava/lang/String;
    //   30: astore 5
    //   32: aload_1
    //   33: invokevirtual 492	com/lidroid/xutils/cache/LruDiskCache$StrictLineReader:readLine	()Ljava/lang/String;
    //   36: astore 6
    //   38: aload_1
    //   39: invokevirtual 492	com/lidroid/xutils/cache/LruDiskCache$StrictLineReader:readLine	()Ljava/lang/String;
    //   42: astore 7
    //   44: aload_1
    //   45: invokevirtual 492	com/lidroid/xutils/cache/LruDiskCache$StrictLineReader:readLine	()Ljava/lang/String;
    //   48: astore 8
    //   50: ldc 30
    //   52: aload 4
    //   54: invokevirtual 498	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   57: ifeq +54 -> 111
    //   60: ldc 39
    //   62: aload 5
    //   64: invokevirtual 498	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   67: ifeq +44 -> 111
    //   70: aload_0
    //   71: getfield 120	com/lidroid/xutils/cache/LruDiskCache:appVersion	I
    //   74: invokestatic 503	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   77: aload 6
    //   79: invokevirtual 498	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   82: ifeq +29 -> 111
    //   85: aload_0
    //   86: getfield 133	com/lidroid/xutils/cache/LruDiskCache:valueCount	I
    //   89: invokestatic 503	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   92: aload 7
    //   94: invokevirtual 498	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   97: ifeq +14 -> 111
    //   100: ldc_w 505
    //   103: aload 8
    //   105: invokevirtual 498	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   108: ifne +77 -> 185
    //   111: new 142	java/io/IOException
    //   114: dup
    //   115: new 218	java/lang/StringBuilder
    //   118: dup
    //   119: ldc_w 507
    //   122: invokespecial 221	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   125: aload 4
    //   127: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: ldc_w 509
    //   133: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: aload 5
    //   138: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: ldc_w 509
    //   144: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: aload 7
    //   149: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   152: ldc_w 509
    //   155: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: aload 8
    //   160: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: ldc_w 511
    //   166: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: invokevirtual 246	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   172: invokespecial 314	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   175: athrow
    //   176: astore_2
    //   177: aload_1
    //   178: astore_3
    //   179: aload_3
    //   180: invokestatic 375	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   183: aload_2
    //   184: athrow
    //   185: iconst_0
    //   186: istore 9
    //   188: aload_0
    //   189: aload_1
    //   190: invokevirtual 492	com/lidroid/xutils/cache/LruDiskCache$StrictLineReader:readLine	()Ljava/lang/String;
    //   193: invokespecial 514	com/lidroid/xutils/cache/LruDiskCache:readJournalLine	(Ljava/lang/String;)V
    //   196: iinc 9 1
    //   199: goto -11 -> 188
    //   202: astore 10
    //   204: aload_0
    //   205: iload 9
    //   207: aload_0
    //   208: getfield 84	com/lidroid/xutils/cache/LruDiskCache:lruEntries	Ljava/util/LinkedHashMap;
    //   211: invokevirtual 389	java/util/LinkedHashMap:size	()I
    //   214: isub
    //   215: putfield 171	com/lidroid/xutils/cache/LruDiskCache:redundantOpCount	I
    //   218: aload_1
    //   219: invokestatic 375	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   222: return
    //   223: astore_2
    //   224: aconst_null
    //   225: astore_3
    //   226: goto -47 -> 179
    //
    // Exception table:
    //   from	to	target	type
    //   20	111	176	finally
    //   111	176	176	finally
    //   188	196	176	finally
    //   204	218	176	finally
    //   188	196	202	java/io/EOFException
    //   0	20	223	finally
  }

  private void readJournalLine(String paramString)
    throws IOException
  {
    int i = paramString.indexOf(' ');
    int j;
    int k;
    int m;
    String str;
    if (i == 1)
    {
      j = paramString.charAt(0);
      k = i + 1;
      m = paramString.indexOf(' ', k);
      if (m != -1)
        break label89;
      str = paramString.substring(k);
      if (j != 68)
        break label99;
      this.lruEntries.remove(str);
    }
    label89: label99: Entry localEntry;
    String[] arrayOfString;
    do
    {
      return;
      throw new IOException("unexpected journal line: " + paramString);
      str = paramString.substring(k, m);
      localEntry = (Entry)this.lruEntries.get(str);
      if (localEntry == null)
      {
        localEntry = new Entry(str, null);
        this.lruEntries.put(str, localEntry);
      }
      switch (j)
      {
      case 82:
      default:
        throw new IOException("unexpected journal line: " + paramString);
      case 67:
        localEntry.readable = true;
        localEntry.currentEditor = null;
        arrayOfString = paramString.substring(m + 1).split(" ");
      case 85:
      }
    }
    while (arrayOfString.length <= 0);
    try
    {
      if (arrayOfString[0].charAt(0) == 't')
      {
        localEntry.expiryTimestamp = Long.valueOf(arrayOfString[0].substring(1)).longValue();
        localEntry.setLengths(arrayOfString, 1);
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      throw new IOException("unexpected journal line: " + paramString);
    }
    localEntry.expiryTimestamp = 9223372036854775807L;
    localEntry.setLengths(arrayOfString, 0);
    return;
    localEntry.currentEditor = new Editor(localEntry, null);
  }

  // ERROR //
  private void rebuildJournal()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 139	com/lidroid/xutils/cache/LruDiskCache:journalWriter	Ljava/io/Writer;
    //   6: ifnull +10 -> 16
    //   9: aload_0
    //   10: getfield 139	com/lidroid/xutils/cache/LruDiskCache:journalWriter	Ljava/io/Writer;
    //   13: invokestatic 375	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   16: new 410	java/io/BufferedWriter
    //   19: dup
    //   20: new 412	java/io/OutputStreamWriter
    //   23: dup
    //   24: new 414	java/io/FileOutputStream
    //   27: dup
    //   28: aload_0
    //   29: getfield 129	com/lidroid/xutils/cache/LruDiskCache:journalFileTmp	Ljava/io/File;
    //   32: invokespecial 554	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   35: ldc_w 419
    //   38: invokespecial 422	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   41: invokespecial 425	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   44: astore_2
    //   45: aload_2
    //   46: ldc 30
    //   48: invokevirtual 251	java/io/Writer:write	(Ljava/lang/String;)V
    //   51: aload_2
    //   52: ldc_w 556
    //   55: invokevirtual 251	java/io/Writer:write	(Ljava/lang/String;)V
    //   58: aload_2
    //   59: ldc 39
    //   61: invokevirtual 251	java/io/Writer:write	(Ljava/lang/String;)V
    //   64: aload_2
    //   65: ldc_w 556
    //   68: invokevirtual 251	java/io/Writer:write	(Ljava/lang/String;)V
    //   71: aload_2
    //   72: aload_0
    //   73: getfield 120	com/lidroid/xutils/cache/LruDiskCache:appVersion	I
    //   76: invokestatic 503	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   79: invokevirtual 251	java/io/Writer:write	(Ljava/lang/String;)V
    //   82: aload_2
    //   83: ldc_w 556
    //   86: invokevirtual 251	java/io/Writer:write	(Ljava/lang/String;)V
    //   89: aload_2
    //   90: aload_0
    //   91: getfield 133	com/lidroid/xutils/cache/LruDiskCache:valueCount	I
    //   94: invokestatic 503	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   97: invokevirtual 251	java/io/Writer:write	(Ljava/lang/String;)V
    //   100: aload_2
    //   101: ldc_w 556
    //   104: invokevirtual 251	java/io/Writer:write	(Ljava/lang/String;)V
    //   107: aload_2
    //   108: ldc_w 556
    //   111: invokevirtual 251	java/io/Writer:write	(Ljava/lang/String;)V
    //   114: aload_0
    //   115: getfield 84	com/lidroid/xutils/cache/LruDiskCache:lruEntries	Ljava/util/LinkedHashMap;
    //   118: invokevirtual 452	java/util/LinkedHashMap:values	()Ljava/util/Collection;
    //   121: invokeinterface 458 1 0
    //   126: astore 5
    //   128: aload 5
    //   130: invokeinterface 463 1 0
    //   135: istore 6
    //   137: iload 6
    //   139: ifne +85 -> 224
    //   142: aload_2
    //   143: invokestatic 375	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   146: aload_0
    //   147: getfield 127	com/lidroid/xutils/cache/LruDiskCache:journalFile	Ljava/io/File;
    //   150: invokevirtual 279	java/io/File:exists	()Z
    //   153: ifeq +15 -> 168
    //   156: aload_0
    //   157: getfield 127	com/lidroid/xutils/cache/LruDiskCache:journalFile	Ljava/io/File;
    //   160: aload_0
    //   161: getfield 131	com/lidroid/xutils/cache/LruDiskCache:journalFileBackup	Ljava/io/File;
    //   164: iconst_1
    //   165: invokestatic 428	com/lidroid/xutils/cache/LruDiskCache:renameTo	(Ljava/io/File;Ljava/io/File;Z)V
    //   168: aload_0
    //   169: getfield 129	com/lidroid/xutils/cache/LruDiskCache:journalFileTmp	Ljava/io/File;
    //   172: aload_0
    //   173: getfield 127	com/lidroid/xutils/cache/LruDiskCache:journalFile	Ljava/io/File;
    //   176: iconst_0
    //   177: invokestatic 428	com/lidroid/xutils/cache/LruDiskCache:renameTo	(Ljava/io/File;Ljava/io/File;Z)V
    //   180: aload_0
    //   181: getfield 131	com/lidroid/xutils/cache/LruDiskCache:journalFileBackup	Ljava/io/File;
    //   184: invokevirtual 322	java/io/File:delete	()Z
    //   187: pop
    //   188: aload_0
    //   189: new 410	java/io/BufferedWriter
    //   192: dup
    //   193: new 412	java/io/OutputStreamWriter
    //   196: dup
    //   197: new 414	java/io/FileOutputStream
    //   200: dup
    //   201: aload_0
    //   202: getfield 127	com/lidroid/xutils/cache/LruDiskCache:journalFile	Ljava/io/File;
    //   205: iconst_1
    //   206: invokespecial 417	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   209: ldc_w 419
    //   212: invokespecial 422	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   215: invokespecial 425	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   218: putfield 139	com/lidroid/xutils/cache/LruDiskCache:journalWriter	Ljava/io/Writer;
    //   221: aload_0
    //   222: monitorexit
    //   223: return
    //   224: aload 5
    //   226: invokeinterface 467 1 0
    //   231: checkcast 203	com/lidroid/xutils/cache/LruDiskCache$Entry
    //   234: astore 7
    //   236: aload 7
    //   238: invokestatic 206	com/lidroid/xutils/cache/LruDiskCache$Entry:access$2	(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    //   241: ifnull +52 -> 293
    //   244: aload_2
    //   245: new 218	java/lang/StringBuilder
    //   248: dup
    //   249: ldc_w 344
    //   252: invokespecial 221	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   255: aload 7
    //   257: invokestatic 224	com/lidroid/xutils/cache/LruDiskCache$Entry:access$3	(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;
    //   260: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   263: bipush 10
    //   265: invokevirtual 233	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   268: invokevirtual 246	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   271: invokevirtual 251	java/io/Writer:write	(Ljava/lang/String;)V
    //   274: goto -146 -> 128
    //   277: astore_3
    //   278: aload_2
    //   279: astore 4
    //   281: aload 4
    //   283: invokestatic 375	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   286: aload_3
    //   287: athrow
    //   288: astore_1
    //   289: aload_0
    //   290: monitorexit
    //   291: aload_1
    //   292: athrow
    //   293: aload_2
    //   294: new 218	java/lang/StringBuilder
    //   297: dup
    //   298: ldc 220
    //   300: invokespecial 221	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   303: aload 7
    //   305: invokestatic 224	com/lidroid/xutils/cache/LruDiskCache$Entry:access$3	(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)Ljava/lang/String;
    //   308: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   311: ldc 230
    //   313: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   316: bipush 116
    //   318: invokevirtual 233	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   321: aload 7
    //   323: invokestatic 236	com/lidroid/xutils/cache/LruDiskCache$Entry:access$9	(Lcom/lidroid/xutils/cache/LruDiskCache$Entry;)J
    //   326: invokevirtual 239	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   329: aload 7
    //   331: invokevirtual 243	com/lidroid/xutils/cache/LruDiskCache$Entry:getLengths	()Ljava/lang/String;
    //   334: invokevirtual 228	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   337: bipush 10
    //   339: invokevirtual 233	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   342: invokevirtual 246	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   345: invokevirtual 251	java/io/Writer:write	(Ljava/lang/String;)V
    //   348: goto -220 -> 128
    //   351: astore_3
    //   352: aconst_null
    //   353: astore 4
    //   355: goto -74 -> 281
    //
    // Exception table:
    //   from	to	target	type
    //   45	128	277	finally
    //   128	137	277	finally
    //   224	274	277	finally
    //   293	348	277	finally
    //   2	16	288	finally
    //   142	168	288	finally
    //   168	221	288	finally
    //   281	288	288	finally
    //   16	45	351	finally
  }

  private boolean removeByDiskKey(String paramString)
    throws IOException
  {
    while (true)
    {
      Entry localEntry;
      int i;
      try
      {
        checkNotClosed();
        localEntry = (Entry)this.lruEntries.get(paramString);
        if (localEntry != null)
        {
          Editor localEditor = localEntry.currentEditor;
          if (localEditor == null);
        }
        else
        {
          bool = false;
          return bool;
        }
        i = 0;
        if (i >= this.valueCount)
        {
          this.redundantOpCount = (1 + this.redundantOpCount);
          this.journalWriter.append("D " + paramString + '\n');
          this.lruEntries.remove(paramString);
          if (!journalRebuildRequired())
            break label209;
          this.executorService.submit(this.cleanupCallable);
          break label209;
        }
        File localFile = localEntry.getCleanFile(i);
        if ((localFile.exists()) && (!localFile.delete()))
          throw new IOException("failed to delete " + localFile);
      }
      finally
      {
      }
      this.size -= localEntry.lengths[i];
      localEntry.lengths[i] = 0L;
      i++;
      continue;
      label209: boolean bool = true;
    }
  }

  private static void renameTo(File paramFile1, File paramFile2, boolean paramBoolean)
    throws IOException
  {
    if (paramBoolean)
      deleteIfExists(paramFile2);
    if (!paramFile1.renameTo(paramFile2))
      throw new IOException();
  }

  private void trimToSize()
    throws IOException
  {
    while (true)
    {
      if (this.size <= this.maxSize)
        return;
      removeByDiskKey((String)((Map.Entry)this.lruEntries.entrySet().iterator().next()).getKey());
    }
  }

  public void close()
    throws IOException
  {
    while (true)
    {
      Iterator localIterator;
      try
      {
        Writer localWriter = this.journalWriter;
        if (localWriter == null)
          return;
        localIterator = new ArrayList(this.lruEntries.values()).iterator();
        if (!localIterator.hasNext())
        {
          trimToSize();
          this.journalWriter.close();
          this.journalWriter = null;
          continue;
        }
      }
      finally
      {
      }
      Entry localEntry = (Entry)localIterator.next();
      if (localEntry.currentEditor != null)
        localEntry.currentEditor.abort();
    }
  }

  public void delete()
    throws IOException
  {
    IOUtils.closeQuietly(this);
    deleteContents(this.directory);
  }

  public Editor edit(String paramString)
    throws IOException
  {
    return editByDiskKey(this.fileNameGenerator.generate(paramString), -1L);
  }

  public void flush()
    throws IOException
  {
    try
    {
      checkNotClosed();
      trimToSize();
      this.journalWriter.flush();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public Snapshot get(String paramString)
    throws IOException
  {
    return getByDiskKey(this.fileNameGenerator.generate(paramString));
  }

  public File getCacheFile(String paramString, int paramInt)
  {
    String str = this.fileNameGenerator.generate(paramString);
    File localFile = new File(this.directory, str + "." + paramInt);
    if (localFile.exists())
      return localFile;
    try
    {
      remove(paramString);
      label65: return null;
    }
    catch (IOException localIOException)
    {
      break label65;
    }
  }

  public File getDirectory()
  {
    return this.directory;
  }

  public long getExpiryTimestamp(String paramString)
    throws IOException
  {
    try
    {
      String str = this.fileNameGenerator.generate(paramString);
      checkNotClosed();
      Entry localEntry = (Entry)this.lruEntries.get(str);
      if (localEntry == null);
      long l1;
      for (long l2 = 0L; ; l2 = l1)
      {
        return l2;
        l1 = localEntry.expiryTimestamp;
      }
    }
    finally
    {
    }
  }

  public FileNameGenerator getFileNameGenerator()
  {
    return this.fileNameGenerator;
  }

  public long getMaxSize()
  {
    try
    {
      long l = this.maxSize;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean isClosed()
  {
    try
    {
      Writer localWriter = this.journalWriter;
      if (localWriter == null)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public boolean remove(String paramString)
    throws IOException
  {
    return removeByDiskKey(this.fileNameGenerator.generate(paramString));
  }

  public void setFileNameGenerator(FileNameGenerator paramFileNameGenerator)
  {
    if (paramFileNameGenerator != null)
      this.fileNameGenerator = paramFileNameGenerator;
  }

  public void setMaxSize(long paramLong)
  {
    try
    {
      this.maxSize = paramLong;
      this.executorService.submit(this.cleanupCallable);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public long size()
  {
    try
    {
      long l = this.size;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final class Editor
  {
    private boolean committed;
    private final LruDiskCache.Entry entry;
    private boolean hasErrors;
    private final boolean[] written;

    private Editor(LruDiskCache.Entry arg2)
    {
      LruDiskCache.Entry localEntry;
      this.entry = localEntry;
      if (LruDiskCache.Entry.access$0(localEntry));
      for (boolean[] arrayOfBoolean = null; ; arrayOfBoolean = new boolean[LruDiskCache.this.valueCount])
      {
        this.written = arrayOfBoolean;
        return;
      }
    }

    public void abort()
      throws IOException
    {
      LruDiskCache.this.completeEdit(this, false);
    }

    public void abortUnlessCommitted()
    {
      if (!this.committed);
      try
      {
        abort();
        return;
      }
      catch (Throwable localThrowable)
      {
      }
    }

    public void commit()
      throws IOException
    {
      if (this.hasErrors)
      {
        LruDiskCache.this.completeEdit(this, false);
        LruDiskCache.this.removeByDiskKey(LruDiskCache.Entry.access$3(this.entry));
      }
      while (true)
      {
        this.committed = true;
        return;
        LruDiskCache.this.completeEdit(this, true);
      }
    }

    public String getString(int paramInt)
      throws IOException
    {
      InputStream localInputStream = newInputStream(paramInt);
      if (localInputStream != null)
        return LruDiskCache.inputStreamToString(localInputStream);
      return null;
    }

    public InputStream newInputStream(int paramInt)
      throws IOException
    {
      synchronized (LruDiskCache.this)
      {
        if (LruDiskCache.Entry.access$2(this.entry) != this)
          throw new IllegalStateException();
      }
      if (!LruDiskCache.Entry.access$0(this.entry))
        return null;
      try
      {
        FileInputStream localFileInputStream = new FileInputStream(this.entry.getCleanFile(paramInt));
        return localFileInputStream;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
      }
      return null;
    }

    public OutputStream newOutputStream(int paramInt)
      throws IOException
    {
      synchronized (LruDiskCache.this)
      {
        if (LruDiskCache.Entry.access$2(this.entry) != this)
          throw new IllegalStateException();
      }
      if (!LruDiskCache.Entry.access$0(this.entry))
        this.written[paramInt] = true;
      File localFile = this.entry.getDirtyFile(paramInt);
      try
      {
        localFileOutputStream = new FileOutputStream(localFile);
        FaultHidingOutputStream localFaultHidingOutputStream = new FaultHidingOutputStream(localFileOutputStream, null);
        return localFaultHidingOutputStream;
      }
      catch (FileNotFoundException localFileNotFoundException1)
      {
        while (true)
        {
          FileOutputStream localFileOutputStream;
          LruDiskCache.this.directory.mkdirs();
          try
          {
            localFileOutputStream = new FileOutputStream(localFile);
          }
          catch (FileNotFoundException localFileNotFoundException2)
          {
            OutputStream localOutputStream = LruDiskCache.NULL_OUTPUT_STREAM;
            return localOutputStream;
          }
        }
      }
    }

    // ERROR //
    public void set(int paramInt, String paramString)
      throws IOException
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_3
      //   2: new 126	java/io/OutputStreamWriter
      //   5: dup
      //   6: aload_0
      //   7: iload_1
      //   8: invokevirtual 128	com/lidroid/xutils/cache/LruDiskCache$Editor:newOutputStream	(I)Ljava/io/OutputStream;
      //   11: ldc 130
      //   13: invokespecial 133	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
      //   16: astore 4
      //   18: aload 4
      //   20: aload_2
      //   21: invokevirtual 139	java/io/Writer:write	(Ljava/lang/String;)V
      //   24: aload 4
      //   26: invokestatic 145	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
      //   29: return
      //   30: astore 5
      //   32: aload_3
      //   33: invokestatic 145	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
      //   36: aload 5
      //   38: athrow
      //   39: astore 5
      //   41: aload 4
      //   43: astore_3
      //   44: goto -12 -> 32
      //
      // Exception table:
      //   from	to	target	type
      //   2	18	30	finally
      //   18	24	39	finally
    }

    public void setEntryExpiryTimestamp(long paramLong)
    {
      LruDiskCache.Entry.access$1(this.entry, paramLong);
    }

    private class FaultHidingOutputStream extends FilterOutputStream
    {
      private FaultHidingOutputStream(OutputStream arg2)
      {
        super();
      }

      public void close()
      {
        try
        {
          this.out.close();
          return;
        }
        catch (Throwable localThrowable)
        {
          LruDiskCache.Editor.this.hasErrors = true;
        }
      }

      public void flush()
      {
        try
        {
          this.out.flush();
          return;
        }
        catch (Throwable localThrowable)
        {
          LruDiskCache.Editor.this.hasErrors = true;
        }
      }

      public void write(int paramInt)
      {
        try
        {
          this.out.write(paramInt);
          return;
        }
        catch (Throwable localThrowable)
        {
          LruDiskCache.Editor.this.hasErrors = true;
        }
      }

      public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      {
        try
        {
          this.out.write(paramArrayOfByte, paramInt1, paramInt2);
          this.out.flush();
          return;
        }
        catch (Throwable localThrowable)
        {
          LruDiskCache.Editor.this.hasErrors = true;
        }
      }
    }
  }

  private final class Entry
  {
    private LruDiskCache.Editor currentEditor;
    private final String diskKey;
    private long expiryTimestamp = 9223372036854775807L;
    private final long[] lengths;
    private boolean readable;
    private long sequenceNumber;

    private Entry(String arg2)
    {
      Object localObject;
      this.diskKey = localObject;
      this.lengths = new long[LruDiskCache.this.valueCount];
    }

    private IOException invalidLengths(String[] paramArrayOfString)
      throws IOException
    {
      throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
    }

    private void setLengths(String[] paramArrayOfString, int paramInt)
      throws IOException
    {
      if (paramArrayOfString.length - paramInt != LruDiskCache.this.valueCount)
        throw invalidLengths(paramArrayOfString);
      int i = 0;
      try
      {
        while (true)
        {
          if (i >= LruDiskCache.this.valueCount)
            return;
          this.lengths[i] = Long.parseLong(paramArrayOfString[(i + paramInt)]);
          i++;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
      }
      throw invalidLengths(paramArrayOfString);
    }

    public File getCleanFile(int paramInt)
    {
      return new File(LruDiskCache.this.directory, this.diskKey + "." + paramInt);
    }

    public File getDirtyFile(int paramInt)
    {
      return new File(LruDiskCache.this.directory, this.diskKey + "." + paramInt + ".tmp");
    }

    public String getLengths()
      throws IOException
    {
      StringBuilder localStringBuilder = new StringBuilder();
      long[] arrayOfLong = this.lengths;
      int i = arrayOfLong.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          return localStringBuilder.toString();
        long l = arrayOfLong[j];
        localStringBuilder.append(" ").append(l);
      }
    }
  }

  public final class Snapshot
    implements Closeable
  {
    private final String diskKey;
    private final FileInputStream[] ins;
    private final long[] lengths;
    private final long sequenceNumber;

    private Snapshot(String paramLong, long arg3, FileInputStream[] paramArrayOfLong, long[] arg6)
    {
      this.diskKey = paramLong;
      this.sequenceNumber = ???;
      this.ins = paramArrayOfLong;
      Object localObject;
      this.lengths = localObject;
    }

    public void close()
    {
      FileInputStream[] arrayOfFileInputStream = this.ins;
      int i = arrayOfFileInputStream.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          return;
        IOUtils.closeQuietly(arrayOfFileInputStream[j]);
      }
    }

    public LruDiskCache.Editor edit()
      throws IOException
    {
      return LruDiskCache.this.editByDiskKey(this.diskKey, this.sequenceNumber);
    }

    public FileInputStream getInputStream(int paramInt)
    {
      return this.ins[paramInt];
    }

    public long getLength(int paramInt)
    {
      return this.lengths[paramInt];
    }

    public String getString(int paramInt)
      throws IOException
    {
      return LruDiskCache.inputStreamToString(getInputStream(paramInt));
    }
  }

  private class StrictLineReader
    implements Closeable
  {
    private static final byte CR = 13;
    private static final byte LF = 10;
    private byte[] buf;
    private final Charset charset = Charset.forName("US-ASCII");
    private int end;
    private final InputStream in;
    private int pos;

    public StrictLineReader(InputStream arg2)
    {
      this(localInputStream, 8192);
    }

    public StrictLineReader(InputStream paramInt, int arg3)
    {
      if (paramInt == null)
        throw new NullPointerException();
      int i;
      if (i < 0)
        throw new IllegalArgumentException("capacity <= 0");
      this.in = paramInt;
      this.buf = new byte[i];
    }

    private void fillBuf()
      throws IOException
    {
      int i = this.in.read(this.buf, 0, this.buf.length);
      if (i == -1)
        throw new EOFException();
      this.pos = 0;
      this.end = i;
    }

    public void close()
      throws IOException
    {
      synchronized (this.in)
      {
        if (this.buf != null)
        {
          this.buf = null;
          this.in.close();
        }
        return;
      }
    }

    public String readLine()
      throws IOException
    {
      synchronized (this.in)
      {
        if (this.buf == null)
          throw new IOException("LineReader is closed");
      }
      if (this.pos >= this.end)
        fillBuf();
      int i = this.pos;
      ByteArrayOutputStream local1;
      if (i == this.end)
        local1 = new ByteArrayOutputStream(80 + (this.end - this.pos))
        {
          public String toString()
          {
            int i;
            if ((this.count > 0) && (this.buf[(-1 + this.count)] == 13))
              i = -1 + this.count;
            try
            {
              while (true)
              {
                String str = new String(this.buf, 0, i, LruDiskCache.StrictLineReader.this.charset.name());
                return str;
                i = this.count;
              }
            }
            catch (UnsupportedEncodingException localUnsupportedEncodingException)
            {
              throw new AssertionError(localUnsupportedEncodingException);
            }
          }
        };
      label287: 
      while (true)
      {
        local1.write(this.buf, this.pos, this.end - this.pos);
        this.end = -1;
        fillBuf();
        for (int j = this.pos; ; j++)
        {
          if (j == this.end)
            break label287;
          if (this.buf[j] == 10)
          {
            if (j != this.pos)
              local1.write(this.buf, this.pos, j - this.pos);
            local1.flush();
            this.pos = (j + 1);
            String str1 = local1.toString();
            return str1;
            if (this.buf[i] == 10)
            {
              if ((i != this.pos) && (this.buf[(i - 1)] == 13));
              for (int k = i - 1; ; k = i)
              {
                String str2 = new String(this.buf, this.pos, k - this.pos, this.charset.name());
                this.pos = (i + 1);
                return str2;
              }
            }
            i++;
            break;
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.cache.LruDiskCache
 * JD-Core Version:    0.6.2
 */