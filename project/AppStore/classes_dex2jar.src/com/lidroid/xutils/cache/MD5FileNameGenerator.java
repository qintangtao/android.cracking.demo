package com.lidroid.xutils.cache;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5FileNameGenerator
  implements FileNameGenerator
{
  private String bytesToHexString(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfByte.length)
        return localStringBuilder.toString();
      String str = Integer.toHexString(0xFF & paramArrayOfByte[i]);
      if (str.length() == 1)
        localStringBuilder.append('0');
      localStringBuilder.append(str);
    }
  }

  public String generate(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes());
      String str = bytesToHexString(localMessageDigest.digest());
      return str;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
    }
    return String.valueOf(paramString.hashCode());
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.cache.MD5FileNameGenerator
 * JD-Core Version:    0.6.2
 */