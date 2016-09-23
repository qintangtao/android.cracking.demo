package com.youqicai.manager;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Environment;
import android.text.TextUtils;
import com.hsg.sdk.common.util.FileUtil;
import com.hsg.sdk.common.util.ImageUtil;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class CacheManager
{
  public static long FREESPACE_LIMIT = 0L;
  public static long MEMORY_FREE = 0L;
  public static long MEMORY_LIMIT = 0L;
  public static final int REGULAR_DAY = 7;
  public static long SDCARD_FREE = 0L;
  public static long SDCARD_LIMIT = 0L;
  public static final String TAG = "CacheManager";

  public static String cacheFile(Context paramContext, File paramFile, String paramString1, String paramString2, boolean paramBoolean)
  {
    try
    {
      String str1 = getFileDir(paramContext, paramString1, paramBoolean);
      Object localObject = null;
      if (str1 != null)
      {
        File localFile = new File(str1 + File.separator + System.currentTimeMillis() + "_" + paramString2);
        if (localFile.exists())
          localFile.delete();
        localFile.createNewFile();
        copyFile(paramFile, localFile);
        String str2 = localFile.getAbsolutePath();
        localObject = str2;
      }
      return localObject;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      localFileNotFoundException.printStackTrace();
      return null;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }

  public static boolean checkFreeCacheSize(Context paramContext)
  {
    return FileUtil.getFreeSD() - FREESPACE_LIMIT > 0L;
  }

  public static void clearCache(Context paramContext, String paramString, boolean paramBoolean)
  {
    if (paramString == null);
    try
    {
      String str;
      for (Object localObject = getFileDir(paramContext, paramContext.getString(2131492888), paramBoolean); localObject != null; localObject = str)
      {
        File localFile = new File((String)localObject);
        if (!localFile.exists())
          break;
        Runtime.getRuntime().exec("rm -r " + localFile.getPath()).waitFor();
        return;
        str = getFileDir(paramContext, paramString, paramBoolean);
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static String combFileDir(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    StringBuffer localStringBuffer = new StringBuffer().append(paramString1).append(File.separator).append(paramContext.getString(2131492888));
    if (!TextUtils.isEmpty(paramString2))
      localStringBuffer.append(paramString2);
    if (paramString3 != null)
      localStringBuffer.append(File.separator).append(paramString3);
    return localStringBuffer.toString();
  }

  // ERROR //
  public static void copyFile(File paramFile1, File paramFile2)
    throws IOException
  {
    // Byte code:
    //   0: new 160	java/io/BufferedInputStream
    //   3: dup
    //   4: new 162	java/io/FileInputStream
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 165	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   12: invokespecial 168	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   15: astore_2
    //   16: new 170	java/io/BufferedOutputStream
    //   19: dup
    //   20: new 172	java/io/FileOutputStream
    //   23: dup
    //   24: aload_1
    //   25: invokespecial 173	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   28: invokespecial 176	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   31: astore_3
    //   32: sipush 5120
    //   35: newarray byte
    //   37: astore 7
    //   39: aload_2
    //   40: aload 7
    //   42: invokevirtual 180	java/io/BufferedInputStream:read	([B)I
    //   45: istore 8
    //   47: iload 8
    //   49: iconst_m1
    //   50: if_icmpeq +46 -> 96
    //   53: aload_3
    //   54: aload 7
    //   56: iconst_0
    //   57: iload 8
    //   59: invokevirtual 184	java/io/BufferedOutputStream:write	([BII)V
    //   62: goto -23 -> 39
    //   65: astore 4
    //   67: aload_3
    //   68: astore 5
    //   70: aload_2
    //   71: astore 6
    //   73: aload 6
    //   75: ifnull +8 -> 83
    //   78: aload 6
    //   80: invokevirtual 187	java/io/BufferedInputStream:close	()V
    //   83: aload 5
    //   85: ifnull +8 -> 93
    //   88: aload 5
    //   90: invokevirtual 188	java/io/BufferedOutputStream:close	()V
    //   93: aload 4
    //   95: athrow
    //   96: aload_3
    //   97: invokevirtual 191	java/io/BufferedOutputStream:flush	()V
    //   100: aload_2
    //   101: ifnull +7 -> 108
    //   104: aload_2
    //   105: invokevirtual 187	java/io/BufferedInputStream:close	()V
    //   108: aload_3
    //   109: ifnull +7 -> 116
    //   112: aload_3
    //   113: invokevirtual 188	java/io/BufferedOutputStream:close	()V
    //   116: return
    //   117: astore 4
    //   119: aconst_null
    //   120: astore 6
    //   122: aconst_null
    //   123: astore 5
    //   125: goto -52 -> 73
    //   128: astore 4
    //   130: aload_2
    //   131: astore 6
    //   133: aconst_null
    //   134: astore 5
    //   136: goto -63 -> 73
    //
    // Exception table:
    //   from	to	target	type
    //   32	39	65	finally
    //   39	47	65	finally
    //   53	62	65	finally
    //   96	100	65	finally
    //   0	16	117	finally
    //   16	32	128	finally
  }

  private static void copyFileTo(File paramFile, String paramString1, String paramString2)
    throws IOException
  {
    if (paramFile.exists())
    {
      File localFile = new File(paramString1 + File.separator + paramString2);
      if (!localFile.exists())
        localFile.mkdirs();
      FileUtil.copyFile(paramFile, localFile);
      paramFile.delete();
    }
  }

  public static boolean delCache(Context paramContext)
  {
    boolean bool = true;
    if (FileUtil.isSdcardExist(false, -1L))
    {
      if (hasFreeSpace(paramContext))
        bool = true;
      deletePicByRegular(paramContext);
      return bool;
    }
    return hasFreeSpace(paramContext);
  }

  public static void deletePicByRegular(Context paramContext)
  {
    new Thread(new Runnable()
    {
      public void run()
      {
        try
        {
          File[] arrayOfFile = new File(CacheManager.getFileDir(this.val$context, this.val$context.getString(2131492889))).listFiles(new FileFilter()
          {
            private long getDiffTime()
            {
              return 1928261632L;
            }

            public boolean accept(File paramAnonymous2File)
            {
              return paramAnonymous2File.lastModified() + getDiffTime() < System.currentTimeMillis();
            }
          });
          if ((arrayOfFile != null) && (arrayOfFile.length > 0))
          {
            int i = arrayOfFile.length;
            for (int j = 0; j < i; j++)
              arrayOfFile[j].delete();
          }
        }
        catch (Exception localException)
        {
        }
      }
    }).start();
  }

  private static byte[] getBtyesByFile(File paramFile)
    throws FileNotFoundException, IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    BufferedInputStream localBufferedInputStream = new BufferedInputStream(new FileInputStream(paramFile));
    for (byte[] arrayOfByte = new byte[256]; ; arrayOfByte = new byte[256])
    {
      int i = localBufferedInputStream.read(arrayOfByte);
      if (i == -1)
        break;
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
    localBufferedInputStream.close();
    if (localByteArrayOutputStream == null)
      return null;
    return localByteArrayOutputStream.toByteArray();
  }

  public static byte[] getByAbsolutePath(Context paramContext, String paramString1, String paramString2)
  {
    if (paramString2 != null)
      try
      {
        File localFile = new File(paramString2 + File.separator + paramString1);
        if (localFile.exists())
        {
          ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
          BufferedInputStream localBufferedInputStream = new BufferedInputStream(new FileInputStream(localFile));
          for (byte[] arrayOfByte1 = new byte[256]; ; arrayOfByte1 = new byte[256])
          {
            int i = localBufferedInputStream.read(arrayOfByte1);
            if (i == -1)
              break;
            localByteArrayOutputStream.write(arrayOfByte1, 0, i);
          }
          localBufferedInputStream.close();
          if (localByteArrayOutputStream == null)
            return null;
          byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
          return arrayOfByte2;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    return null;
  }

  public static byte[] getCacheFile(Context paramContext, String paramString1, String paramString2)
  {
    if (paramString2 == null);
    try
    {
      String str = getFileDir(paramContext, paramContext.getString(2131492888));
      while (str != null)
      {
        File localFile = new File(str + File.separator + paramString1);
        if (localFile.exists())
        {
          ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
          BufferedInputStream localBufferedInputStream = new BufferedInputStream(new FileInputStream(localFile));
          for (byte[] arrayOfByte1 = new byte[256]; ; arrayOfByte1 = new byte[256])
          {
            int i = localBufferedInputStream.read(arrayOfByte1);
            if (i == -1)
              break;
            localByteArrayOutputStream.write(arrayOfByte1, 0, i);
          }
          str = getFileDir(paramContext, paramString2);
          continue;
          localBufferedInputStream.close();
          if (localByteArrayOutputStream == null)
            return null;
          byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
          return arrayOfByte2;
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public static byte[] getCacheFile(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
    if (paramString2 == null);
    try
    {
      String str = getFileDir(paramContext, paramContext.getString(2131492888), paramBoolean);
      while (str != null)
      {
        File localFile = new File(str + File.separator + paramString1);
        if (localFile.exists())
        {
          ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
          BufferedInputStream localBufferedInputStream = new BufferedInputStream(new FileInputStream(localFile));
          for (byte[] arrayOfByte1 = new byte[256]; ; arrayOfByte1 = new byte[256])
          {
            int i = localBufferedInputStream.read(arrayOfByte1);
            if (i == -1)
              break;
            localByteArrayOutputStream.write(arrayOfByte1, 0, i);
          }
          str = getFileDir(paramContext, paramString2, paramBoolean);
          continue;
          localBufferedInputStream.close();
          if (localByteArrayOutputStream == null)
            return null;
          byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
          return arrayOfByte2;
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public static byte[] getCacheFileForPath(Context paramContext, String paramString1, String paramString2)
  {
    if (paramString2 == null);
    while (true)
    {
      try
      {
        str = getFileDir(paramContext, paramContext.getString(2131492888));
        if (str == null)
          break;
        File localFile = new File(paramString2 + File.separator + paramString1);
        if (!localFile.exists())
          break;
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
        BufferedInputStream localBufferedInputStream = new BufferedInputStream(new FileInputStream(localFile));
        byte[] arrayOfByte1 = new byte[256];
        int i = localBufferedInputStream.read(arrayOfByte1);
        if (i != -1)
        {
          localByteArrayOutputStream.write(arrayOfByte1, 0, i);
          arrayOfByte1 = new byte[256];
          continue;
        }
        localBufferedInputStream.close();
        if (localByteArrayOutputStream == null)
          return null;
        byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
        return arrayOfByte2;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return null;
      }
      String str = paramString2;
    }
    return null;
  }

  private static byte[] getCurrentByteByFile(String paramString1, String paramString2)
    throws FileNotFoundException, IOException
  {
    File localFile = new File(paramString1 + File.separator + paramString2);
    if (localFile.exists())
      return getBtyesByFile(localFile);
    return null;
  }

  public static String getFileDir(Context paramContext, String paramString)
  {
    return getFileDir(paramContext, paramString, false);
  }

  public static String getFileDir(Context paramContext, String paramString, boolean paramBoolean)
  {
    String str1 = getRootPath(paramContext, paramBoolean);
    Object localObject = null;
    if (str1 != null)
    {
      localObject = null;
      if (paramString == null);
    }
    try
    {
      File localFile = new File(combFileDir(paramContext, str1, paramString, null));
      localFile.mkdirs();
      if (!localFile.exists());
      String str2 = localFile.getAbsolutePath();
      localObject = str2;
      return localObject;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public static byte[] getFileFromCacheUrl(Context paramContext, String paramString)
  {
    if (paramString != null)
      try
      {
        File localFile = new File(paramString);
        if (localFile.exists())
        {
          ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
          BufferedInputStream localBufferedInputStream = new BufferedInputStream(new FileInputStream(localFile));
          for (byte[] arrayOfByte1 = new byte[256]; ; arrayOfByte1 = new byte[256])
          {
            int i = localBufferedInputStream.read(arrayOfByte1);
            if (i == -1)
              break;
            localByteArrayOutputStream.write(arrayOfByte1, 0, i);
          }
          localBufferedInputStream.close();
          if (localByteArrayOutputStream == null)
            return null;
          byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
          return arrayOfByte2;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    return null;
  }

  public static byte[] getLoacalBitmap(String paramString)
  {
    try
    {
      File localFile = new File(paramString);
      if (localFile.exists())
      {
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
        BufferedInputStream localBufferedInputStream = new BufferedInputStream(new FileInputStream(localFile));
        for (byte[] arrayOfByte1 = new byte[256]; ; arrayOfByte1 = new byte[256])
        {
          int i = localBufferedInputStream.read(arrayOfByte1);
          if (i == -1)
            break;
          localByteArrayOutputStream.write(arrayOfByte1, 0, i);
        }
        localBufferedInputStream.close();
        if (localByteArrayOutputStream == null)
          return null;
        byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
        return arrayOfByte2;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public static String getRootPath(Context paramContext, boolean paramBoolean)
  {
    String str;
    if ("mounted".equals(Environment.getExternalStorageState()))
      str = Environment.getExternalStorageDirectory().getAbsolutePath();
    do
    {
      return str;
      str = null;
    }
    while (!paramBoolean);
    return paramContext.getFilesDir().getAbsolutePath();
  }

  public static String getSavePath(String paramString1, String paramString2)
  {
    return new StringBuffer().toString();
  }

  // ERROR //
  public static long getTotalCacheSize(Context paramContext)
  {
    // Byte code:
    //   0: lconst_0
    //   1: lstore_1
    //   2: iconst_0
    //   3: ldc2_w 199
    //   6: invokestatic 204	com/hsg/sdk/common/util/FileUtil:isSdcardExist	(ZJ)Z
    //   9: ifeq +141 -> 150
    //   12: new 54	java/io/File
    //   15: dup
    //   16: new 56	java/lang/StringBuilder
    //   19: dup
    //   20: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   23: invokestatic 272	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   26: invokevirtual 99	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   29: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: getstatic 64	java/io/File:separator	Ljava/lang/String;
    //   35: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: aload_0
    //   39: ldc 115
    //   41: invokevirtual 121	android/content/Context:getString	(I)Ljava/lang/String;
    //   44: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: invokespecial 82	java/io/File:<init>	(Ljava/lang/String;)V
    //   53: astore 4
    //   55: aload 4
    //   57: invokevirtual 86	java/io/File:exists	()Z
    //   60: ifeq +12 -> 72
    //   63: lload_1
    //   64: aload_0
    //   65: aload 4
    //   67: invokestatic 283	com/hsg/sdk/common/util/FileUtil:getFileSize	(Landroid/content/Context;Ljava/io/File;)J
    //   70: ladd
    //   71: lstore_1
    //   72: new 54	java/io/File
    //   75: dup
    //   76: new 56	java/lang/StringBuilder
    //   79: dup
    //   80: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   83: aload_0
    //   84: invokevirtual 275	android/content/Context:getFilesDir	()Ljava/io/File;
    //   87: invokevirtual 286	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   90: getstatic 64	java/io/File:separator	Ljava/lang/String;
    //   93: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: aload_0
    //   97: ldc 115
    //   99: invokevirtual 121	android/content/Context:getString	(I)Ljava/lang/String;
    //   102: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   108: invokespecial 82	java/io/File:<init>	(Ljava/lang/String;)V
    //   111: astore 6
    //   113: aload 6
    //   115: invokevirtual 86	java/io/File:exists	()Z
    //   118: ifeq +16 -> 134
    //   121: aload_0
    //   122: aload 6
    //   124: invokestatic 283	com/hsg/sdk/common/util/FileUtil:getFileSize	(Landroid/content/Context;Ljava/io/File;)J
    //   127: lstore 7
    //   129: lload_1
    //   130: lload 7
    //   132: ladd
    //   133: lstore_1
    //   134: lload_1
    //   135: lreturn
    //   136: astore_3
    //   137: aload_3
    //   138: invokevirtual 143	java/lang/Exception:printStackTrace	()V
    //   141: lload_1
    //   142: lreturn
    //   143: astore_3
    //   144: aload 4
    //   146: pop
    //   147: goto -10 -> 137
    //   150: aconst_null
    //   151: astore 4
    //   153: goto -81 -> 72
    //
    // Exception table:
    //   from	to	target	type
    //   2	55	136	java/lang/Exception
    //   113	129	136	java/lang/Exception
    //   55	72	143	java/lang/Exception
    //   72	113	143	java/lang/Exception
  }

  public static boolean hasFreeSpace(Context paramContext)
  {
    boolean bool = true;
    long l1 = MEMORY_FREE;
    System.currentTimeMillis();
    long l2;
    if (FileUtil.isSdcardExist(false, -1L))
    {
      l2 = FileUtil.getFreeSD();
      l1 = SDCARD_FREE;
    }
    while (true)
    {
      if (l2 < l1)
        bool = false;
      return bool;
      l2 = FileUtil.getFreeMemory();
    }
  }

  public static String isAbsFileExist(Context paramContext, String paramString1, String paramString2)
  {
    File localFile = new File(paramString1 + File.separator + paramString2);
    if (localFile.exists())
      return localFile.getAbsolutePath();
    return null;
  }

  public static String isFileExist(Context paramContext, String paramString1, String paramString2)
  {
    String str1 = getFileDir(paramContext, paramString1);
    String str2 = null;
    if (str1 != null)
    {
      File localFile = new File(str1 + File.separator + paramString2);
      boolean bool = localFile.exists();
      str2 = null;
      if (bool)
        str2 = localFile.getAbsolutePath();
    }
    return str2;
  }

  public static String isFileExist(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
    String str = isFileExist(paramContext, paramString1, paramString2);
    if ((str == null) && (paramBoolean))
    {
      str = combFileDir(paramContext, paramContext.getFilesDir().getAbsolutePath(), paramString1, paramString2);
      File localFile = new File(str);
      if (localFile.exists())
        str = localFile.getAbsolutePath();
    }
    return str;
  }

  public static String isFileExist(String paramString1, String paramString2)
  {
    File localFile = new File(paramString1 + File.separator + paramString2);
    boolean bool = localFile.exists();
    String str = null;
    if (bool)
      str = localFile.getAbsolutePath();
    return str;
  }

  public static boolean quickDelSohuCache(Context paramContext)
  {
    String str = combFileDir(paramContext, getRootPath(paramContext, false), null, null);
    File localFile = new File(str);
    boolean bool1 = localFile.exists();
    boolean bool2 = false;
    if (bool1)
    {
      bool2 = localFile.renameTo(new File(str + "_backup"));
      if (!bool2)
        rmFile(paramContext, "_backup");
    }
    boolean bool3 = bool2;
    if (bool3)
      rmFile(paramContext, str + "_backup");
    return bool3;
  }

  private static void rmFile(Context paramContext, String paramString)
  {
    if ((paramString == null) || (paramContext == null))
      return;
    new Thread(new Runnable()
    {
      public void run()
      {
        try
        {
          File localFile = new File(this.val$path);
          if (localFile.exists())
            Runtime.getRuntime().exec("rm -r " + localFile.getPath()).waitFor();
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
      }
    }).start();
  }

  public static String saveByAbsolutePath(Context paramContext, String paramString1, String paramString2, byte[] paramArrayOfByte)
  {
    Object localObject = null;
    if (paramString1 != null);
    try
    {
      File localFile1 = new File(paramString1);
      if (!localFile1.exists())
        localFile1.mkdirs();
      File localFile2 = new File(paramString1 + File.separator + paramString2);
      if (localFile2.exists())
        localFile2.delete();
      localFile2.createNewFile();
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile2);
      localFileOutputStream.write(paramArrayOfByte);
      localFileOutputStream.close();
      String str = localFile2.getAbsolutePath();
      localObject = str;
      return localObject;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      localFileNotFoundException.printStackTrace();
      return null;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }

  public static String saveBytesToFile(Context paramContext, String paramString1, String paramString2, byte[] paramArrayOfByte, boolean paramBoolean)
  {
    try
    {
      String str1 = getFileDir(paramContext, paramString1, paramBoolean);
      Object localObject = null;
      if (str1 != null)
      {
        File localFile = new File(str1 + File.separator + paramString2);
        if (localFile.exists())
          localFile.delete();
        localFile.createNewFile();
        localFile.setLastModified(System.currentTimeMillis());
        FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
        localFileOutputStream.write(paramArrayOfByte);
        localFileOutputStream.close();
        String str2 = localFile.getAbsolutePath();
        localObject = str2;
      }
      return localObject;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      localFileNotFoundException.printStackTrace();
      return null;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }

  public static String saveBytesToFile(String paramString1, String paramString2, byte[] paramArrayOfByte)
  {
    try
    {
      File localFile1 = new File(paramString1);
      if (!localFile1.exists())
        localFile1.mkdirs();
      File localFile2 = new File(paramString1 + File.separator + paramString2);
      if (localFile2.exists())
        localFile2.delete();
      localFile2.createNewFile();
      localFile2.setLastModified(System.currentTimeMillis());
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile2);
      localFileOutputStream.write(paramArrayOfByte);
      localFileOutputStream.close();
      String str = localFile2.getAbsolutePath();
      return str;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      localFileNotFoundException.printStackTrace();
      return null;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }

  public static String saveBytesToFile2(Context paramContext, String paramString1, String paramString2, Bitmap paramBitmap, boolean paramBoolean)
  {
    byte[] arrayOfByte = ImageUtil.bitmap2Bytes(paramBitmap);
    try
    {
      String str1 = getFileDir(paramContext, paramString1, paramBoolean);
      Object localObject = null;
      if (str1 != null)
      {
        File localFile = new File(str1 + File.separator + System.currentTimeMillis() + "_" + paramString2);
        if (localFile.exists())
          localFile.delete();
        localFile.createNewFile();
        localFile.setLastModified(System.currentTimeMillis());
        FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
        localFileOutputStream.write(arrayOfByte);
        localFileOutputStream.close();
        String str2 = localFile.getAbsolutePath();
        localObject = str2;
      }
      return localObject;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      localFileNotFoundException.printStackTrace();
      return null;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }

  public static String saveDownToFile(Context paramContext, String paramString1, String paramString2, byte[] paramArrayOfByte, boolean paramBoolean)
  {
    String str1 = getRootPath(paramContext, paramBoolean);
    Object localObject = null;
    if (str1 != null)
    {
      localObject = null;
      if (paramString1 == null);
    }
    try
    {
      File localFile1 = new File(str1 + paramString1);
      if (!localFile1.exists())
        localFile1.mkdirs();
      File localFile2 = new File(str1 + paramString1 + File.separator + paramString2);
      if (localFile2.exists())
        localFile2.delete();
      localFile2.createNewFile();
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile2);
      localFileOutputStream.write(paramArrayOfByte);
      localFileOutputStream.close();
      String str2 = localFile2.getAbsolutePath();
      localObject = str2;
      return localObject;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      localFileNotFoundException.printStackTrace();
      return null;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }

  public static String saveStreamByAbsPath(Context paramContext, InputStream paramInputStream, String paramString1, String paramString2)
  {
    try
    {
      File localFile1 = new File(paramString1);
      if (!localFile1.exists())
        localFile1.mkdirs();
      File localFile2 = new File(paramString1 + File.separator + paramString2);
      if (!localFile2.exists())
        localFile2.createNewFile();
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile2);
      for (byte[] arrayOfByte = new byte[256]; ; arrayOfByte = new byte[256])
      {
        int i = paramInputStream.read(arrayOfByte);
        if (i == -1)
          break;
        localFileOutputStream.write(arrayOfByte, 0, i);
      }
      localFileOutputStream.flush();
      localFileOutputStream.close();
      paramInputStream.close();
      String str = localFile2.getAbsolutePath();
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.manager.CacheManager
 * JD-Core Version:    0.6.2
 */