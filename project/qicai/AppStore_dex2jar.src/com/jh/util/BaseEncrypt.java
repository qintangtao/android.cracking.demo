package com.jh.util;

import java.io.FileInputStream;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;

public class BaseEncrypt
{
  private static final char[] HEX_DIGITS = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };

  public static String byteTohex(byte[] paramArrayOfByte)
  {
    String str1 = "";
    int i = 0;
    if (i >= paramArrayOfByte.length)
      return str1.toUpperCase();
    String str2 = Integer.toHexString(0xFF & paramArrayOfByte[i]);
    if (str2.length() == 1);
    for (str1 = str1 + "0" + str2; ; str1 = str1 + str2)
    {
      i++;
      break;
    }
  }

  public static String encryptMD5(String paramString)
    throws Exception
  {
    byte[] arrayOfByte = encryptMD5ToByte(paramString);
    if (arrayOfByte != null)
      return byteTohex(arrayOfByte);
    return "";
  }

  public static byte[] encryptMD5(byte[] paramArrayOfByte)
    throws Exception
  {
    MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
    localMessageDigest.update(paramArrayOfByte);
    return localMessageDigest.digest();
  }

  public static byte[] encryptMD5ToByte(String paramString)
  {
    byte[] arrayOfByte = new byte[1024];
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(paramString);
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      while (true)
      {
        int i = localFileInputStream.read(arrayOfByte);
        if (i <= 0)
        {
          localFileInputStream.close();
          return localMessageDigest.digest();
        }
        localMessageDigest.update(arrayOfByte, 0, i);
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static byte[] encryptSHA(byte[] paramArrayOfByte)
    throws NoSuchAlgorithmException
  {
    MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
    localMessageDigest.update(paramArrayOfByte);
    return localMessageDigest.digest();
  }

  public static String encryptSHA1(String paramString)
    throws Exception
  {
    byte[] arrayOfByte = new byte[1024];
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(paramString);
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
      while (true)
      {
        int i = localFileInputStream.read(arrayOfByte);
        if (i <= 0)
        {
          localFileInputStream.close();
          return toHexString(localMessageDigest.digest());
        }
        localMessageDigest.update(arrayOfByte, 0, i);
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static String toHexString(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder(2 * paramArrayOfByte.length);
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfByte.length)
        return localStringBuilder.toString();
      localStringBuilder.append(HEX_DIGITS[((0xF0 & paramArrayOfByte[i]) >>> 4)]);
      localStringBuilder.append(HEX_DIGITS[(0xF & paramArrayOfByte[i])]);
    }
  }

  public byte[] encryDes()
    throws NoSuchAlgorithmException, UnsupportedEncodingException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException, BadPaddingException
  {
    SecureRandom localSecureRandom = new SecureRandom();
    KeyGenerator localKeyGenerator = KeyGenerator.getInstance("DES");
    localKeyGenerator.init(localSecureRandom);
    SecretKey localSecretKey = localKeyGenerator.generateKey();
    Cipher localCipher = Cipher.getInstance("DES");
    localCipher.init(1, localSecretKey, localSecureRandom);
    return localCipher.doFinal(new String("128262001060464772").getBytes("utf-8"));
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.util.BaseEncrypt
 * JD-Core Version:    0.6.2
 */