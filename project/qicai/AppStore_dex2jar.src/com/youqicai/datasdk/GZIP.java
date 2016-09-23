package com.youqicai.datasdk;

import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

public class GZIP
{
  public static byte[] gzipCompress(String paramString)
    throws IOException
  {
    if ((paramString == null) || (paramString.length() == 0))
      return new byte[0];
    return gzipCompress(paramString.getBytes());
  }

  public static byte[] gzipCompress(byte[] paramArrayOfByte)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
    localGZIPOutputStream.write(paramArrayOfByte);
    localGZIPOutputStream.close();
    return localByteArrayOutputStream.toByteArray();
  }

  public static byte[] gzipDecompress(InputStream paramInputStream)
  {
    byte[] arrayOfByte1 = null;
    GZIPInputStream localGZIPInputStream;
    ByteArrayOutputStream localByteArrayOutputStream;
    try
    {
      localGZIPInputStream = new GZIPInputStream(paramInputStream);
      byte[] arrayOfByte2 = new byte[1024];
      localByteArrayOutputStream = new ByteArrayOutputStream();
      while (true)
      {
        int i = localGZIPInputStream.read(arrayOfByte2, 0, arrayOfByte2.length);
        if (i == -1)
          break;
        localByteArrayOutputStream.write(arrayOfByte2, 0, i);
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return arrayOfByte1;
    }
    arrayOfByte1 = localByteArrayOutputStream.toByteArray();
    localByteArrayOutputStream.flush();
    localByteArrayOutputStream.close();
    localGZIPInputStream.close();
    paramInputStream.close();
    return arrayOfByte1;
  }

  public static byte[] gzipDecompress(String paramString)
    throws IOException
  {
    if (TextUtils.isEmpty(paramString))
      return new byte[0];
    return gzipDecompress(paramString.getBytes());
  }

  public static byte[] gzipDecompress(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte1 = null;
    ByteArrayInputStream localByteArrayInputStream;
    GZIPInputStream localGZIPInputStream;
    ByteArrayOutputStream localByteArrayOutputStream;
    try
    {
      localByteArrayInputStream = new ByteArrayInputStream(paramArrayOfByte);
      localGZIPInputStream = new GZIPInputStream(localByteArrayInputStream);
      byte[] arrayOfByte2 = new byte[1024];
      localByteArrayOutputStream = new ByteArrayOutputStream();
      while (true)
      {
        int i = localGZIPInputStream.read(arrayOfByte2, 0, arrayOfByte2.length);
        if (i == -1)
          break;
        localByteArrayOutputStream.write(arrayOfByte2, 0, i);
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return arrayOfByte1;
    }
    arrayOfByte1 = localByteArrayOutputStream.toByteArray();
    localByteArrayOutputStream.flush();
    localByteArrayOutputStream.close();
    localGZIPInputStream.close();
    localByteArrayInputStream.close();
    return arrayOfByte1;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.datasdk.GZIP
 * JD-Core Version:    0.6.2
 */