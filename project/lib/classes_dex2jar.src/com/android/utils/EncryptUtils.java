package com.android.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class EncryptUtils
{
  private static final String encrypt(String paramString1, String paramString2)
    throws NoSuchAlgorithmException
  {
    return toHexString(encrypt(paramString1.getBytes(), paramString2));
  }

  private static final byte[] encrypt(byte[] paramArrayOfByte, String paramString)
    throws NoSuchAlgorithmException
  {
    MessageDigest localMessageDigest = MessageDigest.getInstance(paramString);
    localMessageDigest.reset();
    localMessageDigest.update(paramArrayOfByte);
    return localMessageDigest.digest();
  }

  public static final String encryptMD5(String paramString)
  {
    if (paramString == null)
      paramString = "";
    try
    {
      String str = encrypt(paramString, "MD5");
      return str;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new RuntimeException(localNoSuchAlgorithmException);
    }
  }

  public static final String encryptSHA(String paramString)
  {
    if (paramString == null)
      paramString = "";
    try
    {
      String str = encrypt(paramString, "SHA");
      return str;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new RuntimeException(localNoSuchAlgorithmException);
    }
  }

  private static final String toHexString(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer(paramArrayOfByte.length << 1);
    for (int i = 0; i < paramArrayOfByte.length; i++)
    {
      String str = Integer.toHexString(0xFF & paramArrayOfByte[i]);
      if (str.length() == 1)
        str = '0' + str;
      localStringBuffer.append(str);
    }
    return localStringBuffer.toString().toUpperCase();
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.utils.EncryptUtils
 * JD-Core Version:    0.6.2
 */