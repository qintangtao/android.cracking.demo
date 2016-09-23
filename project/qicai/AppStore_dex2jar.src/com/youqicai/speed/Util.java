package com.youqicai.speed;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.Intent.ShortcutIconResource;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.youqicai.PhoneHelper.PreferencesHelper;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

public class Util
{
  private static final String APP_DETAILS_CLASS_NAME = "com.android.settings.InstalledAppDetails";
  private static final String APP_DETAILS_PACKAGE_NAME = "com.android.settings";
  private static final String APP_PKG_NAME_21 = "com.android.settings.ApplicationPkgName";
  private static final String APP_PKG_NAME_22 = "pkg";
  private static final String SCHEME = "package";

  public static boolean AppisRunningInFront(Context paramContext, String paramString)
  {
    List localList = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    if (localList.size() == 0);
    ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo;
    do
    {
      Iterator localIterator;
      while (!localIterator.hasNext())
      {
        return false;
        localIterator = localList.iterator();
      }
      localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
    }
    while ((!localRunningAppProcessInfo.processName.equals(paramString)) || ((localRunningAppProcessInfo.importance != 100) && (localRunningAppProcessInfo.importance != 300)));
    return true;
  }

  public static void addShortcut(Context paramContext)
  {
    if (!PreferencesHelper.getInstance(paramContext).isAddShortCut())
      addShortcut(paramContext, paramContext.getPackageName(), FSafeShortcutActivity.class.getName(), "一键加速", 2130837644);
    PreferencesHelper.getInstance(paramContext).saveShortCut(true);
  }

  @SuppressLint({"InlinedApi"})
  private static void addShortcut(Context paramContext, String paramString1, String paramString2, String paramString3, int paramInt)
  {
    if (shortCutIsExist(paramContext, paramString1, paramString3))
    {
      PreferencesHelper.getInstance(paramContext).saveShortCut(true);
      return;
    }
    Intent localIntent1 = new Intent();
    localIntent1.setAction("android.intent.action.MAIN");
    localIntent1.setFlags(268468224);
    localIntent1.addCategory("android.intent.category.LAUNCHER");
    localIntent1.setComponent(new ComponentName(paramString1, paramString2));
    localIntent1.putExtra("fromShortcut", true);
    Intent localIntent2 = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
    localIntent2.putExtra("android.intent.extra.shortcut.NAME", paramString3);
    localIntent2.putExtra("duplicate", false);
    localIntent2.putExtra("android.intent.extra.shortcut.INTENT", localIntent1);
    localIntent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(paramContext, paramInt));
    paramContext.sendBroadcast(localIntent2);
  }

  public static void closeDialog(Dialog paramDialog)
  {
    if (paramDialog != null)
      try
      {
        Context localContext = paramDialog.getContext();
        if ((localContext != null) && ((localContext instanceof Activity)) && (((Activity)localContext).isFinishing()))
          return;
        if (paramDialog.isShowing())
        {
          paramDialog.dismiss();
          return;
        }
      }
      catch (Throwable localThrowable)
      {
      }
  }

  public static int computeProgress(long paramLong1, long paramLong2)
  {
    long l = 0L;
    if (paramLong2 == l);
    while (true)
    {
      return (int)l;
      l = 100L * paramLong1 / paramLong2;
    }
  }

  public static Drawable getAppIcon(Context paramContext, String paramString)
  {
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      List localList = localPackageManager.getInstalledPackages(0);
      if ((localList != null) && (localList.size() > 0))
      {
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          PackageInfo localPackageInfo = (PackageInfo)localIterator.next();
          if ((localPackageInfo != null) && (localPackageInfo.packageName.equals(paramString)))
          {
            Drawable localDrawable = localPackageInfo.applicationInfo.loadIcon(localPackageManager);
            return localDrawable;
          }
        }
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static long getAvailMem(Context paramContext)
  {
    ActivityManager.MemoryInfo localMemoryInfo = new ActivityManager.MemoryInfo();
    ((ActivityManager)paramContext.getSystemService("activity")).getMemoryInfo(localMemoryInfo);
    return localMemoryInfo.availMem;
  }

  public static int getStatusBarHeight(Context paramContext)
  {
    Resources localResources = paramContext.getResources();
    int i = localResources.getIdentifier("status_bar_height", "dimen", "android");
    int j = 0;
    if (i > 0)
      j = localResources.getDimensionPixelSize(i);
    return j;
  }

  public static long getTotalMemory()
  {
    long l = 0L;
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
      l = 1024L * Long.valueOf(localBufferedReader.readLine().split("\\s+")[1]).longValue();
      localBufferedReader.close();
      return l;
    }
    catch (IOException localIOException)
    {
    }
    return l;
  }

  public static boolean isInstalledApk(Context paramContext, String paramString)
  {
    try
    {
      if (TextUtils.isEmpty(paramString))
        return false;
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(paramString, 0);
      if (localPackageInfo != null)
        return true;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public static boolean isInstalledApk(Context paramContext, String paramString, int paramInt)
  {
    try
    {
      if (TextUtils.isEmpty(paramString))
        return false;
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(paramString, 0);
      if (localPackageInfo != null)
      {
        int i = localPackageInfo.versionCode;
        if (i >= paramInt)
          return true;
      }
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public static boolean isThisASystemPackage(Context paramContext, String paramString)
  {
    PackageManager localPackageManager = null;
    try
    {
      localPackageManager = paramContext.getPackageManager();
      PackageInfo localPackageInfo3 = localPackageManager.getPackageInfo(paramString, 8768);
      localPackageInfo1 = localPackageInfo3;
      try
      {
        PackageInfo localPackageInfo2 = localPackageManager.getPackageInfo("android", 64);
        boolean bool1 = false;
        if (localPackageInfo1 != null)
        {
          Signature[] arrayOfSignature = localPackageInfo1.signatures;
          bool1 = false;
          if (arrayOfSignature != null)
          {
            boolean bool2 = localPackageInfo2.signatures[0].equals(localPackageInfo1.signatures[0]);
            bool1 = false;
            if (bool2)
              bool1 = true;
          }
        }
        return bool1;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        return false;
      }
    }
    catch (Exception localException)
    {
      while (true)
        PackageInfo localPackageInfo1 = null;
    }
  }

  public static boolean isUserApp(Context paramContext, String paramString)
  {
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(paramString, 0);
      if (localPackageInfo == null)
        return false;
      if ((0x1 & localPackageInfo.applicationInfo.flags) != 0)
      {
        int i = localPackageInfo.applicationInfo.flags;
        if ((i & 0x80) <= 0);
      }
      else
      {
        return true;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }

  private static boolean shortCutIsExist(Context paramContext, String paramString1, String paramString2)
  {
    Uri localUri1 = Uri.parse("content://" + "com.android.launcher.settings" + "/" + "favorites" + "?notify=true");
    Uri localUri2 = Uri.parse("content://" + "com.android.launcher2.settings" + "/" + "favorites" + "?notify=true");
    Uri localUri3 = Uri.parse("content://" + "com.miui.home.launcher.settings" + "/" + "favorites" + "?notify=true");
    try
    {
      ContentResolver localContentResolver1 = paramContext.getContentResolver();
      String[] arrayOfString1 = new String[2];
      arrayOfString1[0] = paramString2;
      arrayOfString1[1] = ("%" + paramString1 + "%");
      Cursor localCursor = localContentResolver1.query(localUri1, null, "title=? and intent like ? ", arrayOfString1, null);
      if (localCursor == null)
      {
        ContentResolver localContentResolver2 = paramContext.getContentResolver();
        String[] arrayOfString2 = new String[2];
        arrayOfString2[0] = paramString2;
        arrayOfString2[1] = ("%" + paramString1 + "%");
        localCursor = localContentResolver2.query(localUri2, null, "title=? and intent like ? ", arrayOfString2, null);
      }
      if (localCursor == null)
      {
        ContentResolver localContentResolver3 = paramContext.getContentResolver();
        String[] arrayOfString3 = new String[2];
        arrayOfString3[0] = paramString2;
        arrayOfString3[1] = ("%" + paramString1 + "%");
        localCursor = localContentResolver3.query(localUri3, null, "title=? and intent like ? ", arrayOfString3, null);
      }
      if ((localCursor != null) && (localCursor.getCount() > 0))
      {
        localCursor.close();
        return true;
      }
      if (localCursor != null)
        localCursor.close();
      label368: return false;
    }
    catch (Exception localException)
    {
      break label368;
    }
  }

  @SuppressLint({"InlinedApi"})
  public static void showInstalledAppDetails(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.setFlags(268435456);
    int i = Build.VERSION.SDK_INT;
    if (i >= 9)
    {
      localIntent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
      localIntent.setData(Uri.fromParts("package", paramString, null));
      paramContext.startActivity(localIntent);
      return;
    }
    if (i == 8);
    for (String str = "pkg"; ; str = "com.android.settings.ApplicationPkgName")
    {
      localIntent.setAction("android.intent.action.VIEW");
      localIntent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
      localIntent.putExtra(str, paramString);
      break;
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.speed.Util
 * JD-Core Version:    0.6.2
 */