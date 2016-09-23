package com.jh.util;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

public class GzipUtil
{
  public static String compress(String paramString)
    throws Exception
  {
    return new String(compress(paramString.getBytes("utf-8")), "utf-8");
  }

  public static byte[] compress(byte[] paramArrayOfByte)
    throws Exception
  {
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramArrayOfByte);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
    byte[] arrayOfByte = new byte[1024];
    while (true)
    {
      int i = localByteArrayInputStream.read(arrayOfByte, 0, 1024);
      if (i == -1)
      {
        localGZIPOutputStream.flush();
        localGZIPOutputStream.finish();
        localGZIPOutputStream.close();
        return localByteArrayOutputStream.toByteArray();
      }
      localGZIPOutputStream.write(arrayOfByte, 0, i);
    }
  }

  public static String decompress(String paramString)
    throws Exception
  {
    return new String(decompress(paramString.getBytes("utf-8")), "utf-8");
  }

  public static byte[] decompress(byte[] paramArrayOfByte)
    throws Exception
  {
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramArrayOfByte);
    GZIPInputStream localGZIPInputStream = new GZIPInputStream(localByteArrayInputStream);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[1024];
    while (true)
    {
      int i = localGZIPInputStream.read(arrayOfByte, 0, 1024);
      if (i == -1)
      {
        localByteArrayInputStream.close();
        localByteArrayOutputStream.flush();
        localByteArrayOutputStream.close();
        localGZIPInputStream.close();
        return localByteArrayOutputStream.toByteArray();
      }
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.util.GzipUtil
 * JD-Core Version:    0.6.2
 */