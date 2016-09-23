package com.hsg.sdk.common.util;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.text.DecimalFormat;
import java.util.ArrayList;

public class FileUtil
{
  private static final int DEFAULT_BUFFER_SIZE = 4096;
  public static final int ERROR = -1;

  public static void checkDirectory(File paramFile, ArrayList<String> paramArrayList)
    throws IOException
  {
    if (paramFile == null)
      throw new IOException("Null directory");
    if (!paramFile.exists())
      throw new IOException(paramFile + " does not exist");
    if (!paramFile.isDirectory())
      throw new IOException(paramFile + " is not a directory");
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null)
      throw new IOException("Failed to list contents of " + paramFile);
    Object localObject = null;
    int i = 0;
    while (true)
      if (i >= arrayOfFile.length)
      {
        if (localObject != null)
          throw localObject;
      }
      else
      {
        File localFile = arrayOfFile[i];
        String str = localFile.getAbsolutePath();
        try
        {
          if (!paramArrayList.contains(str))
            forceDelete(localFile);
          i++;
        }
        catch (IOException localIOException)
        {
          while (true)
            localObject = localIOException;
        }
      }
  }

  public static void cleanDirectory(File paramFile)
    throws IOException
  {
    if (!paramFile.exists())
      throw new IllegalArgumentException(paramFile + " does not exist");
    if (!paramFile.isDirectory())
      throw new IllegalArgumentException(paramFile + " is not a directory");
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null)
      throw new IOException("Failed to list contents of " + paramFile);
    Object localObject = null;
    int i = 0;
    while (true)
      if (i >= arrayOfFile.length)
      {
        if (localObject != null)
          throw localObject;
      }
      else
      {
        File localFile = arrayOfFile[i];
        try
        {
          forceDelete(localFile);
          i++;
        }
        catch (IOException localIOException)
        {
          while (true)
            localObject = localIOException;
        }
      }
  }

  public static void closeQuietly(OutputStream paramOutputStream)
  {
    if (paramOutputStream != null);
    try
    {
      paramOutputStream.close();
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  // ERROR //
  public static String convertStreamToString(InputStream paramInputStream)
  {
    // Byte code:
    //   0: new 84	java/io/BufferedReader
    //   3: dup
    //   4: new 86	java/io/InputStreamReader
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 89	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   12: invokespecial 92	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   15: astore_1
    //   16: new 30	java/lang/StringBuilder
    //   19: dup
    //   20: invokespecial 31	java/lang/StringBuilder:<init>	()V
    //   23: astore_2
    //   24: aload_1
    //   25: invokevirtual 95	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   28: astore 7
    //   30: aload 7
    //   32: ifnonnull +12 -> 44
    //   35: aload_0
    //   36: invokevirtual 98	java/io/InputStream:close	()V
    //   39: aload_2
    //   40: invokevirtual 44	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   43: areturn
    //   44: aload_2
    //   45: aload 7
    //   47: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: pop
    //   51: goto -27 -> 24
    //   54: astore 5
    //   56: aload 5
    //   58: invokevirtual 101	java/io/IOException:printStackTrace	()V
    //   61: aload_0
    //   62: invokevirtual 98	java/io/InputStream:close	()V
    //   65: goto -26 -> 39
    //   68: astore 6
    //   70: aload 6
    //   72: invokevirtual 101	java/io/IOException:printStackTrace	()V
    //   75: goto -36 -> 39
    //   78: astore_3
    //   79: aload_0
    //   80: invokevirtual 98	java/io/InputStream:close	()V
    //   83: aload_3
    //   84: athrow
    //   85: astore 4
    //   87: aload 4
    //   89: invokevirtual 101	java/io/IOException:printStackTrace	()V
    //   92: goto -9 -> 83
    //   95: astore 9
    //   97: aload 9
    //   99: invokevirtual 101	java/io/IOException:printStackTrace	()V
    //   102: goto -63 -> 39
    //
    // Exception table:
    //   from	to	target	type
    //   24	30	54	java/io/IOException
    //   44	51	54	java/io/IOException
    //   61	65	68	java/io/IOException
    //   24	30	78	finally
    //   44	51	78	finally
    //   56	61	78	finally
    //   79	83	85	java/io/IOException
    //   35	39	95	java/io/IOException
  }

  private static void copy(InputStream paramInputStream, Writer paramWriter, String paramString)
    throws IOException
  {
    copyLarge(new InputStreamReader(paramInputStream, paramString), paramWriter);
  }

  // ERROR //
  public static void copyFile(File paramFile1, File paramFile2)
    throws IOException
  {
    // Byte code:
    //   0: new 114	java/io/BufferedInputStream
    //   3: dup
    //   4: new 116	java/io/FileInputStream
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 118	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   12: invokespecial 119	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   15: astore_2
    //   16: new 121	java/io/BufferedOutputStream
    //   19: dup
    //   20: new 123	java/io/FileOutputStream
    //   23: dup
    //   24: aload_1
    //   25: invokespecial 124	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   28: invokespecial 126	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   31: astore_3
    //   32: sipush 5120
    //   35: newarray byte
    //   37: astore 7
    //   39: aload_2
    //   40: aload 7
    //   42: invokevirtual 130	java/io/BufferedInputStream:read	([B)I
    //   45: istore 8
    //   47: iload 8
    //   49: iconst_m1
    //   50: if_icmpne +24 -> 74
    //   53: aload_3
    //   54: invokevirtual 133	java/io/BufferedOutputStream:flush	()V
    //   57: aload_2
    //   58: ifnull +7 -> 65
    //   61: aload_2
    //   62: invokevirtual 134	java/io/BufferedInputStream:close	()V
    //   65: aload_3
    //   66: ifnull +7 -> 73
    //   69: aload_3
    //   70: invokevirtual 135	java/io/BufferedOutputStream:close	()V
    //   73: return
    //   74: aload_3
    //   75: aload 7
    //   77: iconst_0
    //   78: iload 8
    //   80: invokevirtual 139	java/io/BufferedOutputStream:write	([BII)V
    //   83: goto -44 -> 39
    //   86: astore 4
    //   88: aload_3
    //   89: astore 5
    //   91: aload_2
    //   92: astore 6
    //   94: aload 6
    //   96: ifnull +8 -> 104
    //   99: aload 6
    //   101: invokevirtual 134	java/io/BufferedInputStream:close	()V
    //   104: aload 5
    //   106: ifnull +8 -> 114
    //   109: aload 5
    //   111: invokevirtual 135	java/io/BufferedOutputStream:close	()V
    //   114: aload 4
    //   116: athrow
    //   117: astore 4
    //   119: aconst_null
    //   120: astore 6
    //   122: aconst_null
    //   123: astore 5
    //   125: goto -31 -> 94
    //   128: astore 4
    //   130: aload_2
    //   131: astore 6
    //   133: aconst_null
    //   134: astore 5
    //   136: goto -42 -> 94
    //
    // Exception table:
    //   from	to	target	type
    //   32	39	86	finally
    //   39	47	86	finally
    //   53	57	86	finally
    //   74	83	86	finally
    //   0	16	117	finally
    //   16	32	128	finally
  }

  private static long copyLarge(Reader paramReader, Writer paramWriter)
    throws IOException
  {
    char[] arrayOfChar = new char[4096];
    int i;
    for (long l = 0L; ; l += i)
    {
      i = paramReader.read(arrayOfChar);
      if (-1 == i)
        return l;
      paramWriter.write(arrayOfChar, 0, i);
    }
  }

  public static void deleteDirectory(File paramFile)
    throws IOException
  {
    if (!paramFile.exists());
    do
    {
      return;
      cleanDirectory(paramFile);
    }
    while (paramFile.delete());
    throw new IOException("Unable to delete directory " + paramFile + ".");
  }

  public static void forceDelete(File paramFile)
    throws IOException
  {
    if (paramFile.isDirectory())
      deleteDirectory(paramFile);
    boolean bool;
    do
    {
      return;
      bool = paramFile.exists();
    }
    while (paramFile.delete());
    if (!bool)
      throw new FileNotFoundException("File does not exist: " + paramFile);
    throw new IOException("Unable to delete file: " + paramFile);
  }

  public static byte[] getAssert(Context paramContext, String paramString)
  {
    AssetManager localAssetManager = paramContext.getAssets();
    try
    {
      byte[] arrayOfByte = readInputStream(localAssetManager.open(paramString));
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }

  public static byte[] getBytesFromLocalFile(String paramString)
    throws Exception
  {
    if ((paramString == null) || (paramString.trim().length() == 0))
      return null;
    File localFile = new File(paramString);
    byte[] arrayOfByte = null;
    if (localFile != null)
    {
      boolean bool = localFile.exists();
      arrayOfByte = null;
      if (bool)
      {
        FileInputStream localFileInputStream = new FileInputStream(localFile);
        arrayOfByte = null;
        if (localFileInputStream != null)
        {
          arrayOfByte = new byte[localFileInputStream.available()];
          localFileInputStream.read(arrayOfByte);
        }
      }
    }
    return arrayOfByte;
  }

  public static String getExternalFilesDir(Context paramContext, boolean paramBoolean)
  {
    String str1 = "";
    if (Integer.parseInt(Build.VERSION.SDK) >= 8)
      str1 = FileUtils4Api8.getFileDir4Api8(paramContext, paramBoolean);
    String str2;
    if (str1.equals(""))
    {
      str2 = paramContext.getPackageName();
      if (paramBoolean)
        str1 = Environment.getExternalStorageDirectory() + "/Android/data/" + str2 + "/cache";
    }
    else
    {
      return str1;
    }
    return Environment.getExternalStorageDirectory() + "/Android/data/" + str2 + "/files";
  }

  public static long getFileSize(Context paramContext, File paramFile)
  {
    long l;
    if (paramFile == null)
      l = 0L;
    File[] arrayOfFile;
    do
    {
      return l;
      if (!paramFile.isDirectory())
        return paramFile.length();
      l = 0L;
      arrayOfFile = paramFile.listFiles();
    }
    while ((arrayOfFile == null) || (arrayOfFile.length <= 0));
    int i = arrayOfFile.length;
    int j = 0;
    label47: File localFile;
    if (j < i)
    {
      localFile = arrayOfFile[j];
      if (!localFile.isFile())
        break label83;
      l += localFile.length();
    }
    while (true)
    {
      j++;
      break label47;
      break;
      label83: if (localFile.isDirectory())
        l = l + localFile.length() + getFileSize(paramContext, localFile);
    }
  }

  public static long getFreeMemory()
  {
    StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
    return localStatFs.getAvailableBlocks() * localStatFs.getBlockSize();
  }

  public static long getFreeSD()
  {
    if (isSDCard())
    {
      StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
      return localStatFs.getAvailableBlocks() * localStatFs.getBlockSize();
    }
    return -1L;
  }

  public static String getSize(long paramLong)
  {
    DecimalFormat localDecimalFormat = new DecimalFormat("0.0");
    StringBuffer localStringBuffer = new StringBuffer();
    if (paramLong > 1073741824L)
      localStringBuffer.append(localDecimalFormat.format((float)paramLong / 1024.0F / 1024.0F / 1024.0F)).append("GB");
    while (true)
    {
      return localStringBuffer.toString();
      if (paramLong > 1048576L)
        localStringBuffer.append(localDecimalFormat.format((float)paramLong / 1024.0F / 1024.0F)).append("MB");
      else if (paramLong > 1024L)
        localStringBuffer.append(localDecimalFormat.format((float)paramLong / 1024.0F)).append("KB");
      else
        localStringBuffer.append(paramLong).append("B");
    }
  }

  public static long getTotalSD()
  {
    if (isSDCard())
    {
      StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
      return localStatFs.getBlockCount() * localStatFs.getBlockSize();
    }
    return -1L;
  }

  public static long getUsableSpace(File paramFile)
  {
    if (AndroidSdkVersionUtil.hasGingerbread())
      return paramFile.getUsableSpace();
    StatFs localStatFs = new StatFs(paramFile.getPath());
    return localStatFs.getBlockSize() * localStatFs.getAvailableBlocks();
  }

  public static boolean isFileExist(String paramString)
  {
    if ((paramString != null) && (!"null".equalsIgnoreCase(paramString)))
    {
      File localFile = new File(paramString);
      if ((localFile.exists()) && (localFile.canRead()))
        return true;
    }
    return false;
  }

  public static boolean isSDCard()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }

  public static boolean isSdcardExist(boolean paramBoolean, long paramLong)
  {
    boolean bool1 = "mounted".equals(Environment.getExternalStorageState());
    boolean bool2 = false;
    if (bool1)
    {
      if ((!paramBoolean) || (paramLong <= 0L))
        break label73;
      StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
      boolean bool3 = localStatFs.getAvailableBlocks() * localStatFs.getBlockSize() < paramLong;
      bool2 = false;
      if (bool3)
        bool2 = true;
    }
    return bool2;
    label73: return true;
  }

  public static FileInputStream openInputStream(File paramFile)
    throws IOException
  {
    if (paramFile.exists())
    {
      if (paramFile.isDirectory())
        throw new IOException("File '" + paramFile + "' exists but is a directory");
      if (!paramFile.canRead())
        throw new IOException("File '" + paramFile + "' cannot be read");
    }
    else
    {
      throw new FileNotFoundException("File '" + paramFile + "' does not exist");
    }
    return new FileInputStream(paramFile);
  }

  private static FileOutputStream openOutputStream(File paramFile)
    throws IOException
  {
    if (paramFile.exists())
    {
      if (paramFile.isDirectory())
        throw new IOException("File '" + paramFile + "' exists but is a directory");
      if (!paramFile.canWrite())
        throw new IOException("File '" + paramFile + "' cannot be written to");
    }
    else
    {
      File localFile = paramFile.getParentFile();
      if ((localFile != null) && (!localFile.exists()) && (!localFile.mkdirs()))
        throw new IOException("File '" + paramFile + "' could not be created");
    }
    return new FileOutputStream(paramFile);
  }

  public static String readFileToString(File paramFile, String paramString)
    throws IOException
  {
    FileInputStream localFileInputStream = null;
    try
    {
      localFileInputStream = openInputStream(paramFile);
      String str = toString(localFileInputStream, paramString);
      return str;
    }
    finally
    {
      if (localFileInputStream != null)
        localFileInputStream.close();
    }
  }

  public static byte[] readInputStream(InputStream paramInputStream)
  {
    byte[] arrayOfByte = null;
    try
    {
      arrayOfByte = new byte[paramInputStream.available()];
      paramInputStream.read(arrayOfByte);
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return arrayOfByte;
  }

  public static boolean removeCacheEntry(String paramString)
    throws IOException
  {
    removeFile(paramString.substring(0, paramString.lastIndexOf('/')));
    return false;
  }

  public static boolean removeFile(String paramString)
    throws IOException
  {
    File localFile = new File(paramString.replace("file://", ""));
    if (localFile.isDirectory())
    {
      forceDelete(localFile);
      return true;
    }
    if (localFile.exists())
      return localFile.delete();
    return false;
  }

  public static String toString(InputStream paramInputStream, String paramString)
    throws IOException
  {
    StringWriter localStringWriter = new StringWriter();
    copy(paramInputStream, localStringWriter, paramString);
    return localStringWriter.toString();
  }

  public static void write(String paramString, OutputStream paramOutputStream)
    throws IOException
  {
    if (paramString != null)
      paramOutputStream.write(paramString.getBytes());
  }

  public static void write(String paramString1, OutputStream paramOutputStream, String paramString2)
    throws IOException
  {
    if (paramString1 != null)
    {
      if (paramString2 == null)
        write(paramString1, paramOutputStream);
    }
    else
      return;
    paramOutputStream.write(paramString1.getBytes(paramString2));
  }

  public static void writeInternalStorage(Context paramContext, String paramString, byte[] paramArrayOfByte)
  {
    try
    {
      FileOutputStream localFileOutputStream = paramContext.openFileOutput(paramString, 1);
      localFileOutputStream.write(paramArrayOfByte);
      localFileOutputStream.close();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static void writeStringToFile(File paramFile, String paramString1, String paramString2)
    throws IOException
  {
    FileOutputStream localFileOutputStream = null;
    try
    {
      localFileOutputStream = openOutputStream(paramFile);
      write(paramString1, localFileOutputStream, paramString2);
      return;
    }
    finally
    {
      closeQuietly(localFileOutputStream);
    }
  }

  static class FileUtils4Api8
  {
    public static String getFileDir4Api8(Context paramContext, boolean paramBoolean)
    {
      String str = "";
      if (paramBoolean);
      for (File localFile = paramContext.getExternalCacheDir(); ; localFile = paramContext.getExternalFilesDir(null))
      {
        if (localFile != null)
          str = localFile.getPath();
        return str;
      }
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.FileUtil
 * JD-Core Version:    0.6.2
 */