package com.mycheering.data;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import java.io.File;
import java.io.FileReader;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

class DeviceInfo
{
  public static JSONObject appInfo;
  public static String appVersion;
  private static String carrier = "";
  private static Context context;
  public static JSONObject deviceInfo;
  public static String did = "";
  private static PreferencesHelper helper;
  private static boolean init = false;

  public static boolean checkPermissions(String paramString)
  {
    if (context == null);
    while (context.getPackageManager().checkPermission(paramString, context.getPackageName()) != 0)
      return false;
    return true;
  }

  public static String getActivityName()
  {
    if (context == null)
      return "";
    ActivityManager localActivityManager = (ActivityManager)context.getSystemService("activity");
    if (checkPermissions("android.permission.GET_TASKS"))
      return ((ActivityManager.RunningTaskInfo)localActivityManager.getRunningTasks(1).get(0)).topActivity.getClassName();
    if (DTConfig.isDebugEnable())
      Log.e("DTAgent", "android.permission.GET_TASKS");
    return "";
  }

  @TargetApi(9)
  private static long getAppFirstInstallTime(Context paramContext, PackageManager paramPackageManager)
  {
    try
    {
      if (Build.VERSION.SDK_INT > 8)
        return paramPackageManager.getPackageInfo(paramContext.getPackageName(), 0).firstInstallTime;
      long l = new File(paramPackageManager.getApplicationInfo(paramContext.getPackageName(), 0).sourceDir).lastModified();
      return l;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return 0L;
  }

  public static String getAppKey(Context paramContext, PackageManager paramPackageManager)
  {
    if (paramContext == null)
      return "";
    try
    {
      ApplicationInfo localApplicationInfo = paramPackageManager.getApplicationInfo(paramContext.getPackageName(), 128);
      if (localApplicationInfo != null)
      {
        String str = localApplicationInfo.metaData.getString("DT_APPKEY");
        if (str != null)
          return str.trim();
        if (DTConfig.isDebugEnable())
          Log.i("DTAgent", "Could not read DT_APPKEY meta-data from AndroidManifest.xml.");
      }
      return "";
    }
    catch (Exception localException)
    {
      while (true)
        if (DTConfig.isDebugEnable())
        {
          Log.i("DTAgent", "Could not read DT_APPKEY meta-data from AndroidManifest.xml.");
          localException.printStackTrace();
        }
    }
  }

  public static String getChannelId(Context paramContext, PackageManager paramPackageManager)
  {
    if (paramContext == null)
      return "";
    try
    {
      ApplicationInfo localApplicationInfo = paramPackageManager.getApplicationInfo(paramContext.getPackageName(), 128);
      if (localApplicationInfo != null)
      {
        String str = localApplicationInfo.metaData.getString("DT_CHANNELID");
        if (str != null)
          return str.trim();
        if (DTConfig.isDebugEnable())
          Log.i("DTAgent", "Could not read DT_CHANNELID meta-data from AndroidManifest.xml.");
      }
      return "";
    }
    catch (Exception localException)
    {
      while (true)
        if (DTConfig.isDebugEnable())
        {
          Log.i("DTAgent", "Could not read DT_CHANNELID meta-data from AndroidManifest.xml.");
          localException.printStackTrace();
        }
    }
  }

  // ERROR //
  private static String getHardware()
  {
    // Byte code:
    //   0: ldc 21
    //   2: astore_0
    //   3: aconst_null
    //   4: astore_1
    //   5: new 175	java/io/BufferedReader
    //   8: dup
    //   9: new 177	java/io/FileReader
    //   12: dup
    //   13: ldc 179
    //   15: invokespecial 180	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   18: bipush 50
    //   20: invokespecial 183	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   23: astore_2
    //   24: aload_2
    //   25: invokevirtual 186	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   28: astore 7
    //   30: aload 7
    //   32: ifnull +16 -> 48
    //   35: aload 7
    //   37: ldc 188
    //   39: invokevirtual 192	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   42: ifeq -18 -> 24
    //   45: aload 7
    //   47: astore_0
    //   48: aload_0
    //   49: ldc 194
    //   51: invokevirtual 198	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   54: iconst_1
    //   55: aaload
    //   56: invokevirtual 159	java/lang/String:trim	()Ljava/lang/String;
    //   59: astore 8
    //   61: aload 8
    //   63: astore_0
    //   64: aload_2
    //   65: ifnull +63 -> 128
    //   68: aload_2
    //   69: invokevirtual 201	java/io/BufferedReader:close	()V
    //   72: aload_0
    //   73: areturn
    //   74: astore 9
    //   76: aload_0
    //   77: areturn
    //   78: astore_3
    //   79: aload_3
    //   80: invokevirtual 167	java/lang/Exception:printStackTrace	()V
    //   83: aload_1
    //   84: ifnull -12 -> 72
    //   87: aload_1
    //   88: invokevirtual 201	java/io/BufferedReader:close	()V
    //   91: aload_0
    //   92: areturn
    //   93: astore 4
    //   95: aload_1
    //   96: ifnull +7 -> 103
    //   99: aload_1
    //   100: invokevirtual 201	java/io/BufferedReader:close	()V
    //   103: aload 4
    //   105: athrow
    //   106: astore 6
    //   108: aload_0
    //   109: areturn
    //   110: astore 5
    //   112: goto -9 -> 103
    //   115: astore 4
    //   117: aload_2
    //   118: astore_1
    //   119: goto -24 -> 95
    //   122: astore_3
    //   123: aload_2
    //   124: astore_1
    //   125: goto -46 -> 79
    //   128: aload_0
    //   129: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   68	72	74	java/lang/Exception
    //   5	24	78	java/lang/Exception
    //   5	24	93	finally
    //   79	83	93	finally
    //   87	91	106	java/lang/Exception
    //   99	103	110	java/lang/Exception
    //   24	30	115	finally
    //   35	45	115	finally
    //   48	61	115	finally
    //   24	30	122	java/lang/Exception
    //   35	45	122	java/lang/Exception
    //   48	61	122	java/lang/Exception
  }

  public static String getLauncherPackageName(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.addCategory("android.intent.category.HOME");
    ResolveInfo localResolveInfo = paramContext.getPackageManager().resolveActivity(localIntent, 0);
    if (localResolveInfo.activityInfo == null)
      return "";
    if (localResolveInfo.activityInfo.packageName.equals("android"))
      return "";
    return localResolveInfo.activityInfo.packageName;
  }

  public static int getNetWorkState(Context paramContext)
  {
    if (paramContext == null);
    String str;
    do
    {
      NetworkInfo localNetworkInfo;
      do
      {
        return 0;
        localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      }
      while ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()));
      str = localNetworkInfo.getTypeName();
      if (str.equalsIgnoreCase("WIFI"))
        return 1;
    }
    while (!str.equalsIgnoreCase("MOBILE"));
    return isFastMobileNetwork(paramContext);
  }

  public static String getTimeStamp()
  {
    return String.valueOf(System.currentTimeMillis() / 1000L);
  }

  public static final String initCarrier(Context paramContext)
  {
    if (!TextUtils.isEmpty(carrier))
      return carrier;
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    if (localTelephonyManager != null)
    {
      if ((localTelephonyManager.getPhoneType() != 2) || (localTelephonyManager.getSimState() != 5))
        break label55;
      carrier = localTelephonyManager.getNetworkOperator();
    }
    while (true)
    {
      return carrier;
      label55: if (localTelephonyManager.getSimState() == 5)
        carrier = localTelephonyManager.getSimOperator();
    }
  }

  public static void initDeviceInfo(Context paramContext, String paramString1, String paramString2)
  {
    context = paramContext;
    if (init)
      return;
    int i = 0;
    String str1 = "";
    long l1 = System.currentTimeMillis();
    try
    {
      PackageManager localPackageManager = context.getPackageManager();
      PackageInfo localPackageInfo = localPackageManager.getPackageInfo(context.getPackageName(), 0);
      appVersion = localPackageInfo.versionName;
      i = localPackageInfo.versionCode;
      str1 = localPackageInfo.applicationInfo.loadLabel(localPackageManager).toString();
      long l4 = getAppFirstInstallTime(context, localPackageManager);
      l1 = l4;
      try
      {
        label89: appInfo = new JSONObject();
        appInfo.put("ai", paramString1);
        appInfo.put("av", appVersion);
        appInfo.put("vc", i);
        appInfo.put("an", str1);
        appInfo.put("pkg", context.getPackageName());
        appInfo.put("chl", paramString2);
        appInfo.put("ist", l1);
        TelephonyManager localTelephonyManager = (TelephonyManager)context.getSystemService("phone");
        WifiManager localWifiManager = (WifiManager)context.getSystemService("wifi");
        str2 = DoubleSimUtil.getImei(context, localTelephonyManager);
        str3 = localWifiManager.getConnectionInfo().getMacAddress();
        str4 = localTelephonyManager.getSubscriberId();
        str5 = Build.VERSION.RELEASE;
        WindowManager localWindowManager = (WindowManager)context.getSystemService("window");
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        localWindowManager.getDefaultDisplay().getMetrics(localDisplayMetrics);
        j = localDisplayMetrics.widthPixels;
        k = localDisplayMetrics.heightPixels;
        m = localDisplayMetrics.densityDpi;
        if (j > k)
        {
          str6 = j + "x" + k;
          str7 = Build.MODEL.replaceAll("_", "!");
          str8 = getHardware();
          str9 = Build.MANUFACTURER;
          str10 = Locale.getDefault().getLanguage();
          str11 = Calendar.getInstance().getTimeZone().getDisplayName(false, 0);
          n = getNetWorkState(context);
          str12 = initCarrier(context);
          helper = PreferencesHelper.getInstance(paramContext);
          did = helper.getDid();
          l2 = helper.getKid();
          if ((TextUtils.isEmpty(did)) || (l2 == 0L))
          {
            localContentResolver = paramContext.getContentResolver();
            did = Settings.System.getString(localContentResolver, DTConfig.DID);
            l2 = Settings.System.getLong(localContentResolver, DTConfig.KID, 0L);
            if ((TextUtils.isEmpty(did)) || (l2 == 0L))
            {
              localFile = new File(PreferencesHelper.getSdcardPath() + "/Android/data/.sys");
              str13 = readStringFromFile(localFile);
            }
          }
        }
      }
      catch (JSONException localException2)
      {
        try
        {
          ContentResolver localContentResolver;
          File localFile;
          String str13;
          did = str13.substring(0, str13.indexOf(","));
          long l3 = Long.parseLong(str13.substring(1 + str13.indexOf(","), str13.length()));
          l2 = l3;
          if ((TextUtils.isEmpty(did)) || (l2 == 0L))
          {
            l2 = (str2 + str3).hashCode();
            if ((TextUtils.isEmpty(str2)) || (str2.equals("0")) || (str2.matches("^[0]*$")))
              l2 = System.currentTimeMillis();
            did = MD5.getMD5(str2 + str3 + l2);
          }
          Settings.System.putString(localContentResolver, DTConfig.DID, did);
          Settings.System.putLong(localContentResolver, DTConfig.KID, l2);
          helper.saveDid(did);
          helper.saveKid(l2);
          writeStringToFile(localFile, did + "," + l2);
        }
        catch (Exception localException2)
        {
          try
          {
            while (true)
            {
              String str2;
              String str3;
              String str4;
              String str5;
              int j;
              int k;
              int m;
              String str7;
              String str8;
              String str9;
              String str10;
              String str11;
              int n;
              String str12;
              long l2;
              deviceInfo = new JSONObject();
              deviceInfo.put("ime", str2);
              deviceInfo.put("mac", str3);
              deviceInfo.put("ims", str4);
              deviceInfo.put("ov", str5);
              deviceInfo.put("dpi", m);
              deviceInfo.put("rsl", str6);
              deviceInfo.put("cpu", str8);
              deviceInfo.put("mf", str9);
              deviceInfo.put("mdl", str7);
              deviceInfo.put("rt", 0);
              deviceInfo.put("lg", str10);
              deviceInfo.put("tz", str11);
              deviceInfo.put("net", n);
              deviceInfo.put("opt", str12);
              deviceInfo.put("lch", getLauncherPackageName(context));
              deviceInfo.put("kid", l2);
              init = true;
              return;
              localJSONException = localJSONException;
              localJSONException.printStackTrace();
              continue;
              String str6 = k + "x" + j;
            }
            localException2 = localException2;
            localException2.printStackTrace();
          }
          catch (Exception localException3)
          {
            while (true)
              localException3.printStackTrace();
          }
        }
      }
    }
    catch (Exception localException1)
    {
      break label89;
    }
  }

  public static boolean isAppExit(Context paramContext)
  {
    if (paramContext == null);
    do
    {
      return true;
      String str = paramContext.getPackageName();
      ActivityManager localActivityManager = (ActivityManager)paramContext.getSystemService("activity");
      if (checkPermissions("android.permission.GET_TASKS"))
      {
        if (!str.equals(((ActivityManager.RunningTaskInfo)localActivityManager.getRunningTasks(1).get(0)).topActivity.getPackageName()));
        for (boolean bool = true; ; bool = false)
          return bool;
      }
    }
    while (!isAppOnForeground());
    return false;
  }

  public static boolean isAppOnForeground()
  {
    String str = context.getPackageName();
    List localList = ((ActivityManager)context.getSystemService("activity")).getRunningAppProcesses();
    if (localList == null);
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
    while ((!localRunningAppProcessInfo.processName.equals(str)) || (localRunningAppProcessInfo.importance != 100));
    return true;
  }

  private static int isFastMobileNetwork(Context paramContext)
  {
    switch (((TelephonyManager)paramContext.getSystemService("phone")).getNetworkType())
    {
    case 0:
    case 1:
    case 2:
    case 4:
    case 7:
    case 11:
    default:
      return 2;
    case 5:
      return 3;
    case 6:
      return 3;
    case 8:
      return 4;
    case 10:
      return 3;
    case 9:
      return 4;
    case 3:
      return 3;
    case 14:
      return 4;
    case 12:
      return 4;
    case 15:
      return 4;
    case 13:
    }
    return 4;
  }

  protected static boolean isWifiConnected(Context paramContext)
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (localNetworkInfo.getState() != NetworkInfo.State.CONNECTED))
      return false;
    return localNetworkInfo.getType() == 1;
  }

  public static String readStringFromFile(File paramFile)
  {
    try
    {
      FileReader localFileReader = new FileReader(paramFile);
      StringBuffer localStringBuffer;
      try
      {
        localStringBuffer = new StringBuffer();
        char[] arrayOfChar = new char[1024];
        while (true)
        {
          int i = localFileReader.read(arrayOfChar);
          if (i == -1)
            break;
          localStringBuffer.append(arrayOfChar, 0, i);
        }
      }
      catch (Exception localException1)
      {
      }
      label52: localException1.printStackTrace();
      return null;
      localFileReader.close();
      String str = localStringBuffer.toString();
      return str;
    }
    catch (Exception localException2)
    {
      break label52;
    }
  }

  // ERROR //
  public static void writeStringToFile(File paramFile, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 665	java/io/File:exists	()Z
    //   4: ifeq +8 -> 12
    //   7: aload_0
    //   8: invokevirtual 668	java/io/File:delete	()Z
    //   11: pop
    //   12: aload_0
    //   13: invokevirtual 671	java/io/File:createNewFile	()Z
    //   16: pop
    //   17: new 673	java/io/FileWriter
    //   20: dup
    //   21: aload_0
    //   22: invokespecial 674	java/io/FileWriter:<init>	(Ljava/io/File;)V
    //   25: astore 4
    //   27: aload 4
    //   29: aload_1
    //   30: invokevirtual 677	java/io/FileWriter:write	(Ljava/lang/String;)V
    //   33: aload 4
    //   35: invokevirtual 678	java/io/FileWriter:close	()V
    //   38: return
    //   39: astore_2
    //   40: aload_2
    //   41: invokevirtual 167	java/lang/Exception:printStackTrace	()V
    //   44: return
    //   45: astore_2
    //   46: goto -6 -> 40
    //
    // Exception table:
    //   from	to	target	type
    //   0	12	39	java/lang/Exception
    //   12	27	39	java/lang/Exception
    //   27	38	45	java/lang/Exception
  }

  public class NetworkState
  {
    public static final int NS_2G = 2;
    public static final int NS_3G = 3;
    public static final int NS_4G = 4;
    public static final int NS_UNKNOWN = 0;
    public static final int NS_WIFI = 1;

    public NetworkState()
    {
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.mycheering.data.DeviceInfo
 * JD-Core Version:    0.6.2
 */