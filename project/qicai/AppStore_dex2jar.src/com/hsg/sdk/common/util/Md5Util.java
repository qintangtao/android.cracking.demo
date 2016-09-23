package com.hsg.sdk.common.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Md5Util
{
  private static String HexEncode(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder(2 * paramArrayOfByte.length);
    int i = paramArrayOfByte.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return localStringBuilder.toString().toUpperCase();
      int k = paramArrayOfByte[j];
      localStringBuilder.append(Integer.toHexString((k & 0xF0) >>> 4));
      localStringBuilder.append(Integer.toHexString(k & 0xF));
    }
  }

  public static String MD5Encode(byte[] paramArrayOfByte)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.reset();
      localMessageDigest.update(paramArrayOfByte);
      String str = HexEncode(localMessageDigest.digest());
      return str;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      localNoSuchAlgorithmException.printStackTrace();
    }
    return "";
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.Md5Util
 * JD-Core Version:    0.6.2
 */