package com.google.kd.utils;

import android.util.Log;

public class LogUtils
{
  public static boolean debug = false;

  public static void d(String paramString1, String paramString2)
  {
    if (debug)
      Log.d(paramString1, paramString2);
  }

  public static void e(String paramString1, String paramString2)
  {
    if (debug)
      Log.e(paramString1, paramString2);
  }

  public static void i(String paramString1, String paramString2)
  {
    if (debug)
      Log.i(paramString1, paramString2);
  }

  public static void w(String paramString1, String paramString2)
  {
    if (debug)
      Log.w(paramString1, paramString2);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\Tool\classes_dex2jar.jar
 * Qualified Name:     com.google.kd.utils.LogUtils
 * JD-Core Version:    0.6.2
 */