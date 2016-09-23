package com.lidroid.xutils.util;

import android.text.TextUtils;
import android.util.Log;

public class LogUtils
{
  public static boolean allowD = true;
  public static boolean allowE = true;
  public static boolean allowI = true;
  public static boolean allowV = true;
  public static boolean allowW = true;
  public static boolean allowWtf = true;
  public static CustomLogger customLogger;
  public static String customTagPrefix = "";

  public static void d(String paramString)
  {
    if (!allowD)
      return;
    String str = generateTag(OtherUtils.getCallerStackTraceElement());
    if (customLogger != null)
    {
      customLogger.d(str, paramString);
      return;
    }
    Log.d(str, paramString);
  }

  public static void d(String paramString, Throwable paramThrowable)
  {
    if (!allowD)
      return;
    String str = generateTag(OtherUtils.getCallerStackTraceElement());
    if (customLogger != null)
    {
      customLogger.d(str, paramString, paramThrowable);
      return;
    }
    Log.d(str, paramString, paramThrowable);
  }

  public static void e(String paramString)
  {
    if (!allowE)
      return;
    String str = generateTag(OtherUtils.getCallerStackTraceElement());
    if (customLogger != null)
    {
      customLogger.e(str, paramString);
      return;
    }
    Log.e(str, paramString);
  }

  public static void e(String paramString, Throwable paramThrowable)
  {
    if (!allowE)
      return;
    String str = generateTag(OtherUtils.getCallerStackTraceElement());
    if (customLogger != null)
    {
      customLogger.e(str, paramString, paramThrowable);
      return;
    }
    Log.e(str, paramString, paramThrowable);
  }

  private static String generateTag(StackTraceElement paramStackTraceElement)
  {
    String str1 = paramStackTraceElement.getClassName();
    String str2 = str1.substring(1 + str1.lastIndexOf("."));
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = str2;
    arrayOfObject[1] = paramStackTraceElement.getMethodName();
    arrayOfObject[2] = Integer.valueOf(paramStackTraceElement.getLineNumber());
    String str3 = String.format("%s.%s(L:%d)", arrayOfObject);
    if (TextUtils.isEmpty(customTagPrefix))
      return str3;
    return customTagPrefix + ":" + str3;
  }

  public static void i(String paramString)
  {
    if (!allowI)
      return;
    String str = generateTag(OtherUtils.getCallerStackTraceElement());
    if (customLogger != null)
    {
      customLogger.i(str, paramString);
      return;
    }
    Log.i(str, paramString);
  }

  public static void i(String paramString, Throwable paramThrowable)
  {
    if (!allowI)
      return;
    String str = generateTag(OtherUtils.getCallerStackTraceElement());
    if (customLogger != null)
    {
      customLogger.i(str, paramString, paramThrowable);
      return;
    }
    Log.i(str, paramString, paramThrowable);
  }

  public static void v(String paramString)
  {
    if (!allowV)
      return;
    String str = generateTag(OtherUtils.getCallerStackTraceElement());
    if (customLogger != null)
    {
      customLogger.v(str, paramString);
      return;
    }
    Log.v(str, paramString);
  }

  public static void v(String paramString, Throwable paramThrowable)
  {
    if (!allowV)
      return;
    String str = generateTag(OtherUtils.getCallerStackTraceElement());
    if (customLogger != null)
    {
      customLogger.v(str, paramString, paramThrowable);
      return;
    }
    Log.v(str, paramString, paramThrowable);
  }

  public static void w(String paramString)
  {
    if (!allowW)
      return;
    String str = generateTag(OtherUtils.getCallerStackTraceElement());
    if (customLogger != null)
    {
      customLogger.w(str, paramString);
      return;
    }
    Log.w(str, paramString);
  }

  public static void w(String paramString, Throwable paramThrowable)
  {
    if (!allowW)
      return;
    String str = generateTag(OtherUtils.getCallerStackTraceElement());
    if (customLogger != null)
    {
      customLogger.w(str, paramString, paramThrowable);
      return;
    }
    Log.w(str, paramString, paramThrowable);
  }

  public static void w(Throwable paramThrowable)
  {
    if (!allowW)
      return;
    String str = generateTag(OtherUtils.getCallerStackTraceElement());
    if (customLogger != null)
    {
      customLogger.w(str, paramThrowable);
      return;
    }
    Log.w(str, paramThrowable);
  }

  public static void wtf(String paramString)
  {
    if (!allowWtf)
      return;
    String str = generateTag(OtherUtils.getCallerStackTraceElement());
    if (customLogger != null)
    {
      customLogger.wtf(str, paramString);
      return;
    }
    Log.wtf(str, paramString);
  }

  public static void wtf(String paramString, Throwable paramThrowable)
  {
    if (!allowWtf)
      return;
    String str = generateTag(OtherUtils.getCallerStackTraceElement());
    if (customLogger != null)
    {
      customLogger.wtf(str, paramString, paramThrowable);
      return;
    }
    Log.wtf(str, paramString, paramThrowable);
  }

  public static void wtf(Throwable paramThrowable)
  {
    if (!allowWtf)
      return;
    String str = generateTag(OtherUtils.getCallerStackTraceElement());
    if (customLogger != null)
    {
      customLogger.wtf(str, paramThrowable);
      return;
    }
    Log.wtf(str, paramThrowable);
  }

  public static abstract interface CustomLogger
  {
    public abstract void d(String paramString1, String paramString2);

    public abstract void d(String paramString1, String paramString2, Throwable paramThrowable);

    public abstract void e(String paramString1, String paramString2);

    public abstract void e(String paramString1, String paramString2, Throwable paramThrowable);

    public abstract void i(String paramString1, String paramString2);

    public abstract void i(String paramString1, String paramString2, Throwable paramThrowable);

    public abstract void v(String paramString1, String paramString2);

    public abstract void v(String paramString1, String paramString2, Throwable paramThrowable);

    public abstract void w(String paramString1, String paramString2);

    public abstract void w(String paramString1, String paramString2, Throwable paramThrowable);

    public abstract void w(String paramString, Throwable paramThrowable);

    public abstract void wtf(String paramString1, String paramString2);

    public abstract void wtf(String paramString1, String paramString2, Throwable paramThrowable);

    public abstract void wtf(String paramString, Throwable paramThrowable);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.util.LogUtils
 * JD-Core Version:    0.6.2
 */