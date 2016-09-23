package com.jh.common.app.util;

import android.text.TextUtils;
import com.jh.util.BaseEncrypt;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Md5Util
{
  public static String getMD5Str(String paramString)
  {
    while (true)
    {
      int i;
      try
      {
        if (!TextUtils.isEmpty(paramString))
        {
          MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
          localMessageDigest.reset();
          localMessageDigest.update(paramString.getBytes("UTF-8"));
          byte[] arrayOfByte = localMessageDigest.digest();
          StringBuffer localStringBuffer = new StringBuffer();
          i = 0;
          if (i >= arrayOfByte.length)
            return localStringBuffer.toString();
          if (Integer.toHexString(0xFF & arrayOfByte[i]).length() == 1)
            localStringBuffer.append("0").append(Integer.toHexString(0xFF & arrayOfByte[i]));
          else
            localStringBuffer.append(Integer.toHexString(0xFF & arrayOfByte[i]));
        }
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        System.exit(-1);
        return "";
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        localUnsupportedEncodingException.printStackTrace();
        continue;
      }
      i++;
    }
  }

  public static String getMD5String(Object[] paramArrayOfObject)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = paramArrayOfObject.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return getMD5Str(localStringBuilder.toString());
      Object localObject = paramArrayOfObject[j];
      if (localObject != null)
        localStringBuilder.append(localObject.toString());
    }
  }

  public static void main(String[] paramArrayOfString)
  {
    getMD5String(new Object[] { "123", "中国", "abc" });
  }

  public static String toMD5(String paramString)
    throws Exception
  {
    return BaseEncrypt.byteTohex(BaseEncrypt.encryptMD5(paramString.getBytes("utf-8"))).toLowerCase();
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.common.app.util.Md5Util
 * JD-Core Version:    0.6.2
 */