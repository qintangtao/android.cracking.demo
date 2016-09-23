package com.mycheering.data;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class DES
{
  private static byte[] iv = { 1, 2, 3, 4, 5, 6, 7, 8 };

  public static String decryptDES(String paramString1, String paramString2)
    throws Exception
  {
    new Base64();
    byte[] arrayOfByte = Base64.decode(paramString1);
    IvParameterSpec localIvParameterSpec = new IvParameterSpec(iv);
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramString2.getBytes(), "DES");
    Cipher localCipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
    localCipher.init(2, localSecretKeySpec, localIvParameterSpec);
    return new String(localCipher.doFinal(arrayOfByte));
  }

  public static String encryptDES(String paramString1, String paramString2)
    throws Exception
  {
    IvParameterSpec localIvParameterSpec = new IvParameterSpec(iv);
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramString2.getBytes(), "DES");
    Cipher localCipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
    localCipher.init(1, localSecretKeySpec, localIvParameterSpec);
    return Base64.encode(localCipher.doFinal(paramString1.getBytes()));
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.mycheering.data.DES
 * JD-Core Version:    0.6.2
 */