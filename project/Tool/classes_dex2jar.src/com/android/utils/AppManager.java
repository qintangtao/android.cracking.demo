package com.android.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

public class AppManager
{
  public static long getAppfistInstallTime(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      long l = localPackageManager.getPackageInfo(paramContext.getPackageName(), 0).firstInstallTime;
      return l;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 0L;
  }

  public static boolean isStop(Context paramContext)
  {
    long l = getAppfistInstallTime(paramContext);
    if (l == 0L);
    while (System.currentTimeMillis() - l > Commems.app_stop_time)
      return true;
    return false;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\Tool\classes_dex2jar.jar
 * Qualified Name:     com.android.utils.AppManager
 * JD-Core Version:    0.6.2
 */