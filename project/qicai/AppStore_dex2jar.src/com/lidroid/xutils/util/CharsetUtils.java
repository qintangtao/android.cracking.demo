package com.lidroid.xutils.util;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CharsetUtils
{
  public static final String DEFAULT_ENCODING_CHARSET = "ISO-8859-1";
  public static final List<String> SUPPORT_CHARSET = new ArrayList();

  static
  {
    SUPPORT_CHARSET.add("ISO-8859-1");
    SUPPORT_CHARSET.add("GB2312");
    SUPPORT_CHARSET.add("GBK");
    SUPPORT_CHARSET.add("GB18030");
    SUPPORT_CHARSET.add("US-ASCII");
    SUPPORT_CHARSET.add("ASCII");
    SUPPORT_CHARSET.add("ISO-2022-KR");
    SUPPORT_CHARSET.add("ISO-8859-2");
    SUPPORT_CHARSET.add("ISO-2022-JP");
    SUPPORT_CHARSET.add("ISO-2022-JP-2");
    SUPPORT_CHARSET.add("UTF-8");
  }

  public static String getEncoding(String paramString, int paramInt)
  {
    Iterator localIterator = SUPPORT_CHARSET.iterator();
    String str;
    do
    {
      if (!localIterator.hasNext())
        return "ISO-8859-1";
      str = (String)localIterator.next();
    }
    while (!isCharset(paramString, str, paramInt));
    return str;
  }

  public static boolean isCharset(String paramString1, String paramString2, int paramInt)
  {
    try
    {
      if (paramString1.length() > paramInt);
      for (String str = paramString1.substring(0, paramInt); ; str = paramString1)
      {
        boolean bool = str.equals(new String(str.getBytes(paramString2), paramString2));
        return bool;
      }
    }
    catch (Throwable localThrowable)
    {
    }
    return false;
  }

  public static String toCharset(String paramString1, String paramString2, int paramInt)
  {
    try
    {
      String str = new String(paramString1.getBytes(getEncoding(paramString1, paramInt)), paramString2);
      return str;
    }
    catch (Throwable localThrowable)
    {
      LogUtils.w(localThrowable);
    }
    return paramString1;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.util.CharsetUtils
 * JD-Core Version:    0.6.2
 */