package com.jh.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.util.Log;
import com.jh.common.app.application.AppSystem;
import com.jh.common.cache.FileCache;
import java.io.IOException;
import java.io.OutputStream;

public class LogUtil
{
  private static boolean release = false;
  private static final String warnName = "log_warn.txt";
  private Context context;
  private String filePath;
  private String tag;

  private LogUtil(Context paramContext)
  {
    this(paramContext, paramContext.getPackageName());
  }

  private LogUtil(Context paramContext, String paramString)
  {
    this.context = paramContext;
    this.tag = paramString;
    this.filePath = FileCache.getInstance(paramContext).createOtherFile("log_warn.txt");
    if (isApkDebugable(paramContext));
    for (boolean bool = false; ; bool = true)
    {
      release = bool;
      return;
    }
  }

  private void close(OutputStream paramOutputStream)
  {
    if (paramOutputStream != null);
    try
    {
      paramOutputStream.flush();
      paramOutputStream.close();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }

  public static boolean isApkDebugable(Context paramContext)
  {
    try
    {
      int i = paramContext.getApplicationInfo().flags;
      int j = i & 0x2;
      boolean bool = false;
      if (j != 0)
        bool = true;
      return bool;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public static LogUtil newInstance(Context paramContext)
  {
    return new LogUtil(paramContext);
  }

  public static LogUtil newInstance(Context paramContext, String paramString)
  {
    return new LogUtil(paramContext, paramString);
  }

  public static void println(String paramString)
  {
    new LogUtil(AppSystem.getInstance().getContext()).info(paramString);
  }

  // ERROR //
  private void writeFile(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: ldc 11
    //   2: monitorenter
    //   3: new 103	java/io/BufferedOutputStream
    //   6: dup
    //   7: new 105	java/io/FileOutputStream
    //   10: dup
    //   11: aload_0
    //   12: getfield 48	com/jh/util/LogUtil:filePath	Ljava/lang/String;
    //   15: invokespecial 107	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   18: invokespecial 109	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   21: astore_3
    //   22: aload_3
    //   23: ifnull +94 -> 117
    //   26: aload_3
    //   27: aload_1
    //   28: ldc 111
    //   30: invokevirtual 117	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   33: invokevirtual 121	java/io/OutputStream:write	([B)V
    //   36: aload_3
    //   37: ldc 123
    //   39: ldc 111
    //   41: invokevirtual 117	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   44: invokevirtual 121	java/io/OutputStream:write	([B)V
    //   47: aload_3
    //   48: aload_2
    //   49: ldc 111
    //   51: invokevirtual 117	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   54: invokevirtual 121	java/io/OutputStream:write	([B)V
    //   57: aload_3
    //   58: ldc 125
    //   60: ldc 111
    //   62: invokevirtual 117	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   65: invokevirtual 121	java/io/OutputStream:write	([B)V
    //   68: aload_3
    //   69: ldc 127
    //   71: ldc 111
    //   73: invokevirtual 117	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   76: invokevirtual 121	java/io/OutputStream:write	([B)V
    //   79: aload_3
    //   80: new 129	java/lang/Throwable
    //   83: dup
    //   84: invokespecial 130	java/lang/Throwable:<init>	()V
    //   87: invokevirtual 134	java/lang/Throwable:getStackTrace	()[Ljava/lang/StackTraceElement;
    //   90: invokevirtual 137	java/lang/Object:toString	()Ljava/lang/String;
    //   93: ldc 111
    //   95: invokevirtual 117	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   98: invokevirtual 121	java/io/OutputStream:write	([B)V
    //   101: aload_3
    //   102: ldc 125
    //   104: ldc 111
    //   106: invokevirtual 117	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   109: invokevirtual 121	java/io/OutputStream:write	([B)V
    //   112: aload_0
    //   113: aload_3
    //   114: invokespecial 139	com/jh/util/LogUtil:close	(Ljava/io/OutputStream;)V
    //   117: ldc 11
    //   119: monitorexit
    //   120: return
    //   121: astore 6
    //   123: aload 6
    //   125: invokevirtual 140	java/io/UnsupportedEncodingException:printStackTrace	()V
    //   128: goto -11 -> 117
    //   131: astore 5
    //   133: ldc 11
    //   135: monitorexit
    //   136: aload 5
    //   138: athrow
    //   139: astore 4
    //   141: aload 4
    //   143: invokevirtual 66	java/io/IOException:printStackTrace	()V
    //   146: goto -29 -> 117
    //
    // Exception table:
    //   from	to	target	type
    //   3	22	121	java/io/UnsupportedEncodingException
    //   26	117	121	java/io/UnsupportedEncodingException
    //   3	22	131	finally
    //   26	117	131	finally
    //   117	120	131	finally
    //   123	128	131	finally
    //   133	136	131	finally
    //   141	146	131	finally
    //   3	22	139	java/io/IOException
    //   26	117	139	java/io/IOException
  }

  public void error(String paramString)
  {
    error(this.tag, paramString);
  }

  public void error(String paramString1, String paramString2)
  {
    if (!release)
      Log.e(paramString1, paramString2);
    writeFile(paramString1, paramString2);
  }

  public void info(String paramString)
  {
    info(this.tag, paramString);
  }

  public void info(String paramString1, String paramString2)
  {
    if (!release)
      Log.i(paramString1, paramString2);
  }

  public void warn(String paramString)
  {
    warn(this.tag, paramString);
  }

  public void warn(String paramString1, String paramString2)
  {
    if (!release)
      Log.w(paramString1, paramString2);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.util.LogUtil
 * JD-Core Version:    0.6.2
 */