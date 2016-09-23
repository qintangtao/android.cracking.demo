package com.hsg.sdk.common.util;

import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

public class TextUtil
{
  public static String SpecialMark = "???";

  public static String bytes2String(byte[] paramArrayOfByte, String paramString)
  {
    try
    {
      String str = new String(paramArrayOfByte, paramString);
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
    }
    return null;
  }

  public static byte[] inputStream2Bytes(InputStream paramInputStream)
  {
    byte[] arrayOfByte1 = new byte[1024];
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    Object localObject;
    try
    {
      i = paramInputStream.read(arrayOfByte1, 0, 1024);
      if (i <= 0)
      {
        int j = localByteArrayOutputStream.size();
        localObject = null;
        if (j > 0)
        {
          byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
          localObject = arrayOfByte2;
        }
      }
    }
    catch (IOException localIOException1)
    {
      try
      {
        while (true)
        {
          int i;
          localByteArrayOutputStream.close();
          return localObject;
          localByteArrayOutputStream.write(arrayOfByte1, 0, i);
          continue;
          localIOException1 = localIOException1;
          localIOException1.printStackTrace();
          localObject = null;
        }
      }
      catch (IOException localIOException2)
      {
        localIOException2.printStackTrace();
      }
    }
    return localObject;
  }

  public static JSONObject inputStream2Json(InputStream paramInputStream, String paramString)
  {
    byte[] arrayOfByte = inputStream2Bytes(paramInputStream);
    if (arrayOfByte == null)
      return null;
    try
    {
      JSONObject localJSONObject = new JSONObject(new String(arrayOfByte, paramString));
      return localJSONObject;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
      return null;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    return null;
  }

  public static String inputStream2String(InputStream paramInputStream, String paramString)
  {
    byte[] arrayOfByte = inputStream2Bytes(paramInputStream);
    if (arrayOfByte == null)
      return null;
    return bytes2String(arrayOfByte, paramString);
  }

  public static boolean isValidUrl(String paramString)
  {
    if (TextUtils.isEmpty(paramString));
    while ((paramString.length() <= 10) || ((!paramString.substring(0, 7).equalsIgnoreCase("http://")) && (!paramString.substring(0, 8).equalsIgnoreCase("https://"))))
      return false;
    return true;
  }

  public static String removeSpecialChar(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
      return paramString;
    StringBuffer localStringBuffer = new StringBuffer("");
    for (int i = 0; ; i++)
    {
      if (i >= paramString.length())
        return localStringBuffer.toString();
      char c = paramString.charAt(i);
      if (SpecialMark.indexOf(c) == -1)
        localStringBuffer.append(c);
    }
  }

  public static String replaceSpecialChar(String paramString)
  {
    return paramString.replaceAll("&nbsp;", " ");
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.TextUtil
 * JD-Core Version:    0.6.2
 */