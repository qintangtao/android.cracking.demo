package com.jh.persistence.file;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.Environment;
import android.text.TextUtils;
import com.jh.exception.ILegalException;
import com.jh.exception.JHException;
import com.jh.net.JHIOException;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.RejectedExecutionException;
import org.apache.http.util.EncodingUtils;

public class FileUtil
{
  private static final int BITMAP_SIZE = 100;
  public static final String ENCODEFORMAT = "UTF-8";

  public static byte[] bitmap2Bytes(Bitmap paramBitmap)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, 100, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }

  public static int copyFile(String paramString1, String paramString2)
  {
    int i = 0;
    try
    {
      File localFile1 = new File(paramString1);
      File localFile2 = new File(paramString2);
      if ((localFile1.exists()) && (localFile1.length() > 0L))
      {
        if (!localFile2.getParentFile().exists())
          localFile2.getParentFile().mkdirs();
        FileInputStream localFileInputStream = new FileInputStream(localFile1);
        FileOutputStream localFileOutputStream = new FileOutputStream(localFile2);
        byte[] arrayOfByte = new byte[1024];
        while (true)
        {
          int j = localFileInputStream.read(arrayOfByte);
          if (j == -1)
          {
            localFileInputStream.close();
            localFileOutputStream.close();
            return 1;
          }
          i += j;
          localFileOutputStream.write(arrayOfByte, 0, j);
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return 0;
    }
    return 2;
  }

  public static void copyStream(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(paramOutputStream);
    try
    {
      byte[] arrayOfByte = new byte[1024];
      while (true)
      {
        int i = paramInputStream.read(arrayOfByte, 0, 1024);
        if (i == -1)
        {
          localBufferedOutputStream.flush();
          localBufferedOutputStream.close();
          return;
        }
        localBufferedOutputStream.write(arrayOfByte, 0, i);
      }
    }
    catch (NullPointerException localNullPointerException)
    {
      localNullPointerException.printStackTrace();
      return;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
      localIndexOutOfBoundsException.printStackTrace();
      return;
    }
    catch (RejectedExecutionException localRejectedExecutionException)
    {
      localRejectedExecutionException.printStackTrace();
      return;
    }
    catch (JHIOException localJHIOException)
    {
      localJHIOException.printStackTrace();
      return;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      localMalformedURLException.printStackTrace();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }

  public static File createSdcardFile(String paramString)
    throws FileUtil.ExternalStorageInValidException, JHIOException
  {
    if (ExternalStorageState.canWrite())
    {
      File localFile = new File(paramString);
      localFile.getParentFile().mkdirs();
      try
      {
        localFile.createNewFile();
        return localFile;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        throw new JHIOException(localIOException);
      }
    }
    throw new ExternalStorageInValidException();
  }

  public static File createSdcardImageFile()
    throws FileUtil.ExternalStorageInValidException, JHIOException
  {
    String str1 = Environment.getExternalStorageDirectory().getPath();
    String str2 = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date()) + ".jpg";
    if (ExternalStorageState.canWrite())
    {
      File localFile = new File(str1 + "/freeSmsData" + "/" + str2);
      localFile.getParentFile().mkdirs();
      try
      {
        localFile.createNewFile();
        return localFile;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        throw new JHIOException(localIOException);
      }
    }
    throw new ExternalStorageInValidException();
  }

  // ERROR //
  public static File createTmpFile(android.content.Context paramContext)
    throws FileUtil.ExternalStorageInValidException
  {
    // Byte code:
    //   0: invokestatic 184	com/jh/persistence/file/FileUtil:createSdcardImageFile	()Ljava/io/File;
    //   3: astore 6
    //   5: aload 6
    //   7: astore_2
    //   8: aload_2
    //   9: ifnonnull +59 -> 68
    //   12: new 146	java/lang/StringBuilder
    //   15: dup
    //   16: new 148	java/text/SimpleDateFormat
    //   19: dup
    //   20: ldc 150
    //   22: invokespecial 151	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   25: new 153	java/util/Date
    //   28: dup
    //   29: invokespecial 154	java/util/Date:<init>	()V
    //   32: invokevirtual 158	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   35: invokestatic 164	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   38: invokespecial 165	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   41: ldc 167
    //   43: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   49: astore_3
    //   50: new 42	java/io/File
    //   53: dup
    //   54: aload_3
    //   55: invokespecial 45	java/io/File:<init>	(Ljava/lang/String;)V
    //   58: astore_2
    //   59: aload_0
    //   60: aload_3
    //   61: iconst_0
    //   62: invokevirtual 190	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   65: invokevirtual 78	java/io/FileOutputStream:close	()V
    //   68: aload_2
    //   69: areturn
    //   70: astore_1
    //   71: aload_1
    //   72: invokevirtual 191	com/jh/persistence/file/FileUtil$ExternalStorageInValidException:printStackTrace	()V
    //   75: aconst_null
    //   76: astore_2
    //   77: goto -69 -> 8
    //   80: astore 5
    //   82: aload 5
    //   84: invokevirtual 192	java/io/FileNotFoundException:printStackTrace	()V
    //   87: new 194	com/jh/net/JHFileNotFoundException
    //   90: dup
    //   91: invokespecial 195	com/jh/net/JHFileNotFoundException:<init>	()V
    //   94: athrow
    //   95: astore 4
    //   97: aload 4
    //   99: invokevirtual 118	java/io/IOException:printStackTrace	()V
    //   102: new 95	com/jh/net/JHIOException
    //   105: dup
    //   106: aload 4
    //   108: invokespecial 133	com/jh/net/JHIOException:<init>	(Ljava/lang/Exception;)V
    //   111: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   0	5	70	com/jh/persistence/file/FileUtil$ExternalStorageInValidException
    //   59	68	80	java/io/FileNotFoundException
    //   59	68	95	java/io/IOException
  }

  public static void deleteFile(String paramString)
  {
    new File(paramString).deleteOnExit();
  }

  public static void deleteFolderFile(String paramString)
    throws IOException
  {
    File localFile;
    File[] arrayOfFile;
    int i;
    if (!TextUtils.isEmpty(paramString))
    {
      localFile = new File(paramString);
      if (localFile.isDirectory())
      {
        arrayOfFile = localFile.listFiles();
        i = 0;
        if (i < arrayOfFile.length)
          break label53;
      }
      if (localFile.isDirectory())
        break label70;
      localFile.delete();
    }
    label53: label70: 
    while (localFile.listFiles().length != 0)
    {
      return;
      deleteFolderFile(arrayOfFile[i].getAbsolutePath());
      i++;
      break;
    }
    localFile.delete();
  }

  public static String file2String(File paramFile)
  {
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(paramFile);
      byte[] arrayOfByte = new byte[localFileInputStream.available()];
      localFileInputStream.read(arrayOfByte);
      String str = EncodingUtils.getString(arrayOfByte, "UTF-8");
      localFileInputStream.close();
      return str;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }

  public static String getFileName(String paramString)
  {
    int i = paramString.lastIndexOf("/");
    if (i == -1)
      return paramString;
    return paramString.substring(i);
  }

  public static String getFileSize(long paramLong)
  {
    float f1 = (float)paramLong;
    if (f1 < 1024.0F)
      return f1 + "字节";
    float f2 = f1 / 1024.0F;
    if (f2 < 1024.0F)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Float.valueOf(f2);
      return String.format("%.2f", arrayOfObject2) + "kb";
    }
    float f3 = f2 / 1024.0F;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Float.valueOf(f3);
    return String.format("%.2f", arrayOfObject1) + "mb";
  }

  public static String getFileSize(String paramString)
  {
    File localFile = new File(paramString);
    float f1 = (float)localFile.length();
    if (f1 < 1024.0F)
      return localFile.length() + "字节";
    float f2 = f1 / 1024.0F;
    if (f2 < 1024.0F)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Float.valueOf(f2);
      return String.format("%.2f", arrayOfObject2) + "kb";
    }
    float f3 = f2 / 1024.0F;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Float.valueOf(f3);
    return String.format("%.2f", arrayOfObject1) + "mb";
  }

  public static String getFileSizeToString(long paramLong, String paramString)
  {
    DecimalFormat localDecimalFormat = new DecimalFormat(paramString);
    long l1 = 1024L * 1024L;
    long l2 = l1 * 1024L;
    if (paramLong < 1024L)
      return localDecimalFormat.format(paramLong) + "B";
    if (paramLong < l1)
      return localDecimalFormat.format(paramLong / 1024L) + "K";
    if (paramLong < l2)
      return localDecimalFormat.format(paramLong / l1) + "M";
    return localDecimalFormat.format(paramLong / l2) + "G";
  }

  public static String getFileType(String paramString)
    throws ILegalException
  {
    int i = paramString.lastIndexOf(".");
    if (i + 1 < paramString.length())
      return paramString.substring(i + 1);
    throw new ILegalException();
  }

  // ERROR //
  public static byte[] readStream(InputStream paramInputStream)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aconst_null
    //   3: astore_2
    //   4: new 299	java/io/BufferedInputStream
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 302	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   12: astore_3
    //   13: new 19	java/io/ByteArrayOutputStream
    //   16: dup
    //   17: invokespecial 20	java/io/ByteArrayOutputStream:<init>	()V
    //   20: astore 4
    //   22: sipush 1024
    //   25: newarray byte
    //   27: astore 9
    //   29: aload_3
    //   30: aload 9
    //   32: invokevirtual 303	java/io/BufferedInputStream:read	([B)I
    //   35: istore 10
    //   37: iload 10
    //   39: iconst_m1
    //   40: if_icmpne +21 -> 61
    //   43: aload 4
    //   45: astore_2
    //   46: aload_2
    //   47: invokevirtual 304	java/io/ByteArrayOutputStream:flush	()V
    //   50: aload_2
    //   51: invokevirtual 36	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   54: astore_1
    //   55: aload_2
    //   56: invokevirtual 305	java/io/ByteArrayOutputStream:close	()V
    //   59: aload_1
    //   60: areturn
    //   61: aload 4
    //   63: aload 9
    //   65: iconst_0
    //   66: iload 10
    //   68: invokevirtual 306	java/io/ByteArrayOutputStream:write	([BII)V
    //   71: goto -42 -> 29
    //   74: astore 7
    //   76: aload 4
    //   78: astore_2
    //   79: aload 7
    //   81: invokevirtual 118	java/io/IOException:printStackTrace	()V
    //   84: goto -38 -> 46
    //   87: astore 8
    //   89: goto -43 -> 46
    //   92: astore 6
    //   94: aload 6
    //   96: invokevirtual 118	java/io/IOException:printStackTrace	()V
    //   99: aload_1
    //   100: areturn
    //   101: astore 5
    //   103: aload 4
    //   105: astore_2
    //   106: goto -60 -> 46
    //   109: astore 7
    //   111: aconst_null
    //   112: astore_2
    //   113: goto -34 -> 79
    //
    // Exception table:
    //   from	to	target	type
    //   22	29	74	java/io/IOException
    //   29	37	74	java/io/IOException
    //   61	71	74	java/io/IOException
    //   4	22	87	finally
    //   79	84	87	finally
    //   46	59	92	java/io/IOException
    //   22	29	101	finally
    //   29	37	101	finally
    //   61	71	101	finally
    //   4	22	109	java/io/IOException
  }

  public static byte[] readstream(String paramString)
  {
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(new File(paramString));
      byte[] arrayOfByte1 = new byte[1024];
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      while (true)
      {
        int i = localFileInputStream.read(arrayOfByte1);
        if (i == -1)
        {
          byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
          localByteArrayOutputStream.close();
          localFileInputStream.close();
          return arrayOfByte2;
        }
        localByteArrayOutputStream.write(arrayOfByte1, 0, i);
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  // ERROR //
  public static void saveToFile(String paramString, InputStream paramInputStream)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: sipush 1024
    //   7: newarray byte
    //   9: astore 4
    //   11: new 299	java/io/BufferedInputStream
    //   14: dup
    //   15: aload_1
    //   16: invokespecial 302	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   19: astore 5
    //   21: new 67	java/io/FileOutputStream
    //   24: dup
    //   25: aload_0
    //   26: invokespecial 311	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   29: astore 6
    //   31: aload 5
    //   33: aload 4
    //   35: invokevirtual 303	java/io/BufferedInputStream:read	([B)I
    //   38: istore 9
    //   40: iload 9
    //   42: iconst_m1
    //   43: if_icmpne +14 -> 57
    //   46: aload 6
    //   48: invokevirtual 78	java/io/FileOutputStream:close	()V
    //   51: aload 5
    //   53: invokevirtual 312	java/io/BufferedInputStream:close	()V
    //   56: return
    //   57: aload 6
    //   59: aload 4
    //   61: iconst_0
    //   62: iload 9
    //   64: invokevirtual 82	java/io/FileOutputStream:write	([BII)V
    //   67: goto -36 -> 31
    //   70: astore 8
    //   72: aload 5
    //   74: astore_3
    //   75: aload 6
    //   77: astore_2
    //   78: aload 8
    //   80: invokevirtual 85	java/lang/Exception:printStackTrace	()V
    //   83: aload_2
    //   84: invokevirtual 78	java/io/FileOutputStream:close	()V
    //   87: aload_3
    //   88: invokevirtual 312	java/io/BufferedInputStream:close	()V
    //   91: return
    //   92: astore 7
    //   94: aload_2
    //   95: invokevirtual 78	java/io/FileOutputStream:close	()V
    //   98: aload_3
    //   99: invokevirtual 312	java/io/BufferedInputStream:close	()V
    //   102: aload 7
    //   104: athrow
    //   105: astore 7
    //   107: aload 5
    //   109: astore_3
    //   110: aconst_null
    //   111: astore_2
    //   112: goto -18 -> 94
    //   115: astore 7
    //   117: aload 5
    //   119: astore_3
    //   120: aload 6
    //   122: astore_2
    //   123: goto -29 -> 94
    //   126: astore 8
    //   128: aconst_null
    //   129: astore_3
    //   130: aconst_null
    //   131: astore_2
    //   132: goto -54 -> 78
    //   135: astore 8
    //   137: aload 5
    //   139: astore_3
    //   140: aconst_null
    //   141: astore_2
    //   142: goto -64 -> 78
    //
    // Exception table:
    //   from	to	target	type
    //   31	40	70	java/lang/Exception
    //   57	67	70	java/lang/Exception
    //   11	21	92	finally
    //   78	83	92	finally
    //   21	31	105	finally
    //   31	40	115	finally
    //   57	67	115	finally
    //   11	21	126	java/lang/Exception
    //   21	31	135	java/lang/Exception
  }

  // ERROR //
  public static boolean string2File(String paramString, File paramFile)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +5 -> 6
    //   4: iconst_0
    //   5: ireturn
    //   6: new 67	java/io/FileOutputStream
    //   9: dup
    //   10: aload_1
    //   11: invokespecial 68	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   14: astore_2
    //   15: aload_2
    //   16: aload_0
    //   17: ldc 11
    //   19: invokevirtual 317	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   22: invokevirtual 320	java/io/FileOutputStream:write	([B)V
    //   25: aload_2
    //   26: invokevirtual 321	java/io/FileOutputStream:flush	()V
    //   29: aload_2
    //   30: invokevirtual 78	java/io/FileOutputStream:close	()V
    //   33: iconst_1
    //   34: ireturn
    //   35: astore_3
    //   36: aload_3
    //   37: invokevirtual 118	java/io/IOException:printStackTrace	()V
    //   40: iconst_0
    //   41: ireturn
    //   42: astore_3
    //   43: goto -7 -> 36
    //
    // Exception table:
    //   from	to	target	type
    //   6	15	35	java/io/IOException
    //   15	33	42	java/io/IOException
  }

  public static class ExternalStorageInValidException extends JHException
  {
    private static final long serialVersionUID = 5269615745895702965L;

    public String getMessage()
    {
      return "sd卡不可用";
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.persistence.file.FileUtil
 * JD-Core Version:    0.6.2
 */