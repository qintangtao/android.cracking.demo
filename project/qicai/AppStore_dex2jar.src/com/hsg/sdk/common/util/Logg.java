package com.hsg.sdk.common.util;

import android.util.Log;

public class Logg
{
  private static final int MAX_LOG_ROW_CHAR_SIZE = 1000;
  public static boolean Show_Log = false;
  private static final String TAG = "com.wlx.util.Logg";

  public static void d(String paramString)
  {
    if (Show_Log)
      d("com.wlx.util.Logg", paramString);
  }

  public static void d(String paramString1, String paramString2)
  {
    if (Show_Log);
    for (int i = 0; ; i++)
    {
      if (i > paramString2.length() / 1000)
        return;
      int j = i * 1000;
      int k = 1000 * (i + 1);
      if (k > paramString2.length())
        k = paramString2.length();
      Log.d(paramString1, paramString2.substring(j, k));
    }
  }

  public static void e(String paramString)
  {
    if (Show_Log)
      e("com.wlx.util.Logg", paramString);
  }

  public static void e(String paramString1, String paramString2)
  {
    if (Show_Log)
      Log.e(paramString1, paramString2);
  }

  public static void i(String paramString)
  {
    if (Show_Log)
      i("com.wlx.util.Logg", paramString);
  }

  public static void i(String paramString1, String paramString2)
  {
    if (Show_Log)
      Log.i(paramString1, paramString2);
  }

  public static void v(String paramString)
  {
    if (Show_Log)
      v("com.wlx.util.Logg", paramString);
  }

  public static void v(String paramString1, String paramString2)
  {
    if (Show_Log)
      Log.v(paramString1, paramString2);
  }

  public static void w(String paramString)
  {
    if (Show_Log)
      w("com.wlx.util.Logg", paramString);
  }

  public static void w(String paramString1, String paramString2)
  {
    if (Show_Log)
      Log.w(paramString1, paramString2);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.Logg
 * JD-Core Version:    0.6.2
 */