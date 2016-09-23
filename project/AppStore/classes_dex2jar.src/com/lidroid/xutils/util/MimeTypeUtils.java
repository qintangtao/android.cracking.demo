package com.lidroid.xutils.util;

import android.webkit.MimeTypeMap;

public class MimeTypeUtils
{
  public static String getMimeType(String paramString)
  {
    String str1 = "application/octet-stream";
    int i = paramString.lastIndexOf(".");
    if (i != -1)
    {
      String str2 = paramString.substring(i + 1);
      str1 = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str2);
    }
    return str1;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.util.MimeTypeUtils
 * JD-Core Version:    0.6.2
 */