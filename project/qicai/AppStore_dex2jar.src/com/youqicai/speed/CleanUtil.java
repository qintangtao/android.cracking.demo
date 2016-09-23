package com.youqicai.speed;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CleanUtil
{
  public static float[] getSystemAvaialbeMemoryProgressSize(Context paramContext)
  {
    float[] arrayOfFloat = new float[2];
    float f1 = getTotalMemory(paramContext);
    float f2 = getSystemAvaialbeMemorySize(paramContext);
    arrayOfFloat[0] = ((int)(100.0F * (1.0F * (f1 - f2) / f1)));
    arrayOfFloat[1] = f2;
    return arrayOfFloat;
  }

  public static float getSystemAvaialbeMemorySize(Context paramContext)
  {
    ActivityManager localActivityManager = (ActivityManager)paramContext.getSystemService("activity");
    ActivityManager.MemoryInfo localMemoryInfo = new ActivityManager.MemoryInfo();
    localActivityManager.getMemoryInfo(localMemoryInfo);
    return (float)localMemoryInfo.availMem / 1.073742E+009F;
  }

  public static float getTotalMemory(Context paramContext)
  {
    long l = 0L;
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
      String str1 = localBufferedReader.readLine();
      for (String str2 : str1.split("\\s+"))
        Log.i(str1, str2 + "\t");
      l = 1024L * Long.valueOf(???[1]).longValue();
      localBufferedReader.close();
      label110: return (float)l / 1.073742E+009F;
    }
    catch (IOException localIOException)
    {
      break label110;
    }
  }

  public static boolean isSystemApp(Context paramContext, String paramString)
  {
    try
    {
      int i = paramContext.getPackageManager().getApplicationInfo(paramString, 0).flags;
      int j = i & 0x1;
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

  public static void killProcress(Context paramContext, String paramString)
  {
    ActivityManager localActivityManager = (ActivityManager)paramContext.getSystemService("activity");
    try
    {
      Method localMethod = localActivityManager.getClass().getDeclaredMethod("restartPackage", new Class[] { String.class });
      localMethod.setAccessible(true);
      localMethod.invoke(localActivityManager, new Object[] { paramString });
      return;
    }
    catch (Exception localException)
    {
      localActivityManager.killBackgroundProcesses(paramString);
    }
  }

  public static List<String> queryAllRunningAppInfo(Context paramContext)
  {
    List localList = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = localList.iterator();
    if (localIterator.hasNext())
    {
      ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
      String str1 = localRunningAppProcessInfo.processName;
      String[] arrayOfString = localRunningAppProcessInfo.pkgList;
      int i = 0;
      label65: String str2;
      if (i < arrayOfString.length)
      {
        str2 = arrayOfString[i];
        if ((!str1.equals("system")) && ((localRunningAppProcessInfo.importance > 200) || (!isSystemApp(paramContext, str2))) && (!str1.contains("com.mycheering.apps")) && (!str1.contains("com.mycheering.browser")) && (!str1.contains("com.best.browser")) && (!str1.contains("com.mycheering.launcher")) && (!str1.contains("com.fun.appstore")) && (!str1.contains("com.fun.launcher")) && (!str1.contains("com.fun.games")))
          break label186;
      }
      while (true)
      {
        i++;
        break label65;
        break;
        label186: localArrayList.add(str2);
      }
    }
    return localArrayList;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.speed.CleanUtil
 * JD-Core Version:    0.6.2
 */