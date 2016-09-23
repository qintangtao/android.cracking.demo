package com.jh.util;

import java.io.File;

public class MIMEUtil
{
  public static String getMIMEType(File paramFile)
  {
    String str1 = paramFile.getName();
    String str2 = str1.substring(1 + str1.lastIndexOf("."), str1.length()).toLowerCase();
    String str3;
    if ((str2.equals("m4a")) || (str2.equals("mp3")) || (str2.equals("mid")) || (str2.equals("xmf")) || (str2.equals("ogg")) || (str2.equals("wav")))
      str3 = "audio";
    while (true)
    {
      if (!str2.equals("apk"))
        str3 = str3 + "/*";
      return str3;
      if ((str2.equals("3gp")) || (str2.equals("mp4")))
        str3 = "video";
      else if ((str2.equals("jpg")) || (str2.equals("gif")) || (str2.equals("png")) || (str2.equals("jpeg")) || (str2.equals("bmp")))
        str3 = "image";
      else if (str2.equals("apk"))
        str3 = "application/vnd.android.package-archive";
      else
        str3 = "*";
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.util.MIMEUtil
 * JD-Core Version:    0.6.2
 */