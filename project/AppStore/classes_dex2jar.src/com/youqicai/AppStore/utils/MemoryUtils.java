package com.youqicai.AppStore.utils;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Context;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.text.DecimalFormat;

public class MemoryUtils
{
  private static DecimalFormat fileDecimalFormat = new DecimalFormat("#0.0");
  private static DecimalFormat fileIntegerFormat;
  private static long memTotal = 0L;

  static
  {
    fileIntegerFormat = new DecimalFormat("#0");
  }

  public static String formatFileSize(float paramFloat, boolean paramBoolean)
  {
    if (paramBoolean);
    for (DecimalFormat localDecimalFormat = fileIntegerFormat; paramFloat < 1024.0F; localDecimalFormat = fileDecimalFormat)
      return localDecimalFormat.format(paramFloat) + "B";
    if (paramFloat < 1048576.0F)
      return localDecimalFormat.format(paramFloat / 1024.0D) + "KB";
    if (paramFloat < 1.073742E+009F)
      return localDecimalFormat.format(paramFloat / 1048576.0D) + "MB";
    return localDecimalFormat.format(paramFloat / 1073741824.0D) + "GB";
  }

  public static String formatSize(long paramLong)
  {
    DecimalFormat localDecimalFormat = fileDecimalFormat;
    if (paramLong < 1024L)
      return localDecimalFormat.format(paramLong);
    if (paramLong < 1048576L)
      return localDecimalFormat.format(paramLong / 1024.0D);
    if (paramLong < 1073741824L)
      return localDecimalFormat.format(paramLong / 1048576.0D);
    return localDecimalFormat.format(paramLong / 1073741824.0D);
  }

  public static long getAvailableMemory(Context paramContext)
  {
    ActivityManager localActivityManager = (ActivityManager)paramContext.getSystemService("activity");
    ActivityManager.MemoryInfo localMemoryInfo = new ActivityManager.MemoryInfo();
    localActivityManager.getMemoryInfo(localMemoryInfo);
    return localMemoryInfo.availMem;
  }

  public static long getTotalMemorySize(Context paramContext)
  {
    if (memTotal != 0L)
      return memTotal;
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 2048);
      String str1 = localBufferedReader.readLine();
      String str2 = str1.substring(str1.indexOf("MemTotal:"));
      localBufferedReader.close();
      long l = 1024L * Integer.parseInt(str2.replaceAll("\\D+", ""));
      memTotal = l;
      return l;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return 0L;
  }

  public static int getUsedPercentValue(long paramLong1, long paramLong2)
  {
    return (int)(100.0F * ((float)(paramLong1 - paramLong2) / (float)paramLong1));
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.utils.MemoryUtils
 * JD-Core Version:    0.6.2
 */