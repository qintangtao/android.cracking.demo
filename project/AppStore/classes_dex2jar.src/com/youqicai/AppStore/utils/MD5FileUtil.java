package com.youqicai.AppStore.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5FileUtil
{
  protected static char[] hexDigits = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  protected static MessageDigest messagedigest = null;

  static
  {
    try
    {
      messagedigest = MessageDigest.getInstance("MD5");
      return;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
    }
  }

  private static void appendHexPair(byte paramByte, StringBuffer paramStringBuffer)
  {
    char c1 = hexDigits[((paramByte & 0xF0) >> 4)];
    char c2 = hexDigits[(paramByte & 0xF)];
    paramStringBuffer.append(c1);
    paramStringBuffer.append(c2);
  }

  private static String bufferToHex(byte[] paramArrayOfByte)
  {
    return bufferToHex(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  private static String bufferToHex(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    StringBuffer localStringBuffer = new StringBuffer(paramInt2 * 2);
    int i = paramInt1 + paramInt2;
    for (int j = paramInt1; j < i; j++)
      appendHexPair(paramArrayOfByte[j], localStringBuffer);
    return localStringBuffer.toString();
  }

  public static String getFileMD5String(String paramString)
    throws Exception
  {
    File localFile = new File(paramString);
    if (!localFile.isFile())
      return null;
    FileInputStream localFileInputStream = new FileInputStream(localFile);
    byte[] arrayOfByte = new byte[1024];
    while (true)
    {
      int i = localFileInputStream.read(arrayOfByte);
      if (i <= 0)
        break;
      messagedigest.update(arrayOfByte, 0, i);
    }
    localFileInputStream.close();
    return bufferToHex(messagedigest.digest());
  }

  public static String getMD5String(String paramString)
  {
    return getMD5String(paramString.getBytes());
  }

  public static String getMD5String(byte[] paramArrayOfByte)
  {
    messagedigest.update(paramArrayOfByte);
    return bufferToHex(messagedigest.digest());
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.utils.MD5FileUtil
 * JD-Core Version:    0.6.2
 */