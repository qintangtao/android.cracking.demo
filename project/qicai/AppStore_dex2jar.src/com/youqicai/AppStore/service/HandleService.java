package com.youqicai.AppStore.service;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ResolveInfo.DisplayNameComparator;
import android.net.TrafficStats;
import android.os.Bundle;
import android.text.TextUtils;
import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.db.sqlite.Selector;
import com.mycheering.data.DTAgent;
import com.youqicai.AppStore.utils.MD5FileUtil;
import com.youqicai.PhoneHelper.BatteryInfo;
import com.youqicai.PhoneHelper.BatterySipper;
import com.youqicai.PhoneHelper.DeviceInfo;
import com.youqicai.PhoneHelper.PreferencesHelper;
import com.youqicai.datasdk.AppMD5;
import com.youqicai.datasdk.MessageUtils;
import com.youqicai.datasdk.Track;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class HandleService extends IntentService
{
  public static final String ACTION_APK_ADDED = "b";
  public static final String ACTION_APK_REMOVED = "e";
  public static final String ACTION_BOOT_COMPLETE = "a";
  public static final String ACTION_COLLECT_DATA = "j";
  public static final String ACTION_CONNECTIVITY = "c";
  public static final String ACTION_DOWNLOAD = "h";
  public static final String ACTION_START = "f";
  public static final String ACTION_START_UPLOAD_LOG = "d";
  public static final String ACTION_SUBMIT_DATA = "i";
  public static HashMap<String, Double> batteryMap = new HashMap();
  public static HashMap<String, Integer> trafficMap = new HashMap();
  private DbUtils dbUtils;

  public HandleService()
  {
    super("HandleService");
  }

  public static JSONArray getAppsArray(Context paramContext)
  {
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      Intent localIntent = new Intent("android.intent.action.MAIN", null);
      localIntent.addCategory("android.intent.category.LAUNCHER");
      List localList = localPackageManager.queryIntentActivities(localIntent, 0);
      Collections.sort(localList, new ResolveInfo.DisplayNameComparator(localPackageManager));
      JSONArray localJSONArray = new JSONArray();
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
        try
        {
          PackageInfo localPackageInfo = localPackageManager.getPackageInfo(localResolveInfo.activityInfo.packageName, 0);
          JSONObject localJSONObject = new JSONObject();
          localJSONObject.put("pkg", localPackageInfo.packageName);
          localJSONObject.put("am", MD5FileUtil.getFileMD5String(localPackageInfo.applicationInfo.publicSourceDir));
          localJSONArray.put(localJSONObject);
        }
        catch (Exception localException)
        {
        }
      }
      return localJSONArray;
    }
    finally
    {
    }
  }

  public static void getBatteryMap(Context paramContext)
  {
    BatteryInfo localBatteryInfo = new BatteryInfo(paramContext);
    List localList = localBatteryInfo.getBatteryStats();
    if (batteryMap == null)
      batteryMap = new HashMap();
    while (true)
    {
      batteryMap = new HashMap();
      if (localBatteryInfo.testType != 1)
        break;
      Iterator localIterator2 = localList.iterator();
      while (localIterator2.hasNext())
      {
        BatterySipper localBatterySipper2 = (BatterySipper)localIterator2.next();
        if (!DeviceInfo.ignoreActivePkg.contains(localBatterySipper2.getDefaultPackageName()))
          batteryMap.put(localBatterySipper2.getDefaultPackageName(), Double.valueOf(localBatterySipper2.getPercentOfTotal()));
      }
      batteryMap.clear();
    }
    Iterator localIterator1 = localList.iterator();
    while (localIterator1.hasNext())
    {
      BatterySipper localBatterySipper1 = (BatterySipper)localIterator1.next();
      if (!DeviceInfo.ignoreActivePkg.contains(localBatterySipper1.getDefaultPackageName()))
        batteryMap.put(localBatterySipper1.getDefaultPackageName(), Double.valueOf(localBatterySipper1.getPercentOfTotal()));
    }
  }

  // ERROR //
  public static String getCustomChannelInfo(Context paramContext)
  {
    // Byte code:
    //   0: ldc 213
    //   2: astore_1
    //   3: aconst_null
    //   4: astore_2
    //   5: aconst_null
    //   6: astore_3
    //   7: aconst_null
    //   8: astore 4
    //   10: aload_0
    //   11: invokevirtual 217	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   14: getfield 220	android/content/pm/ApplicationInfo:sourceDir	Ljava/lang/String;
    //   17: astore 13
    //   19: new 222	java/util/zip/ZipFile
    //   22: dup
    //   23: aload 13
    //   25: invokespecial 223	java/util/zip/ZipFile:<init>	(Ljava/lang/String;)V
    //   28: astore 14
    //   30: new 225	java/io/BufferedInputStream
    //   33: dup
    //   34: new 227	java/io/FileInputStream
    //   37: dup
    //   38: aload 13
    //   40: invokespecial 228	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   43: invokespecial 231	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   46: astore 15
    //   48: new 233	java/util/zip/ZipInputStream
    //   51: dup
    //   52: aload 15
    //   54: invokespecial 234	java/util/zip/ZipInputStream:<init>	(Ljava/io/InputStream;)V
    //   57: astore 16
    //   59: aload 14
    //   61: invokevirtual 238	java/util/zip/ZipFile:entries	()Ljava/util/Enumeration;
    //   64: astore 17
    //   66: aload 17
    //   68: invokeinterface 243 1 0
    //   73: ifeq +62 -> 135
    //   76: aload 17
    //   78: invokeinterface 246 1 0
    //   83: checkcast 248	java/util/zip/ZipEntry
    //   86: astore 21
    //   88: aload 21
    //   90: invokevirtual 251	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   93: ldc 253
    //   95: invokevirtual 259	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   98: ifeq -32 -> 66
    //   101: aload 21
    //   103: invokevirtual 251	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   106: astore 22
    //   108: aload 22
    //   110: ldc_w 261
    //   113: invokevirtual 265	java/lang/String:length	()I
    //   116: aload 22
    //   118: ldc_w 267
    //   121: invokevirtual 271	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   124: invokevirtual 275	java/lang/String:substring	(II)Ljava/lang/String;
    //   127: astore 23
    //   129: aload 23
    //   131: astore_1
    //   132: goto -66 -> 66
    //   135: aload 15
    //   137: ifnull +8 -> 145
    //   140: aload 15
    //   142: invokevirtual 280	java/io/InputStream:close	()V
    //   145: aload 16
    //   147: ifnull +8 -> 155
    //   150: aload 16
    //   152: invokevirtual 283	java/util/zip/ZipInputStream:closeEntry	()V
    //   155: aload 14
    //   157: ifnull +205 -> 362
    //   160: aload 16
    //   162: invokevirtual 283	java/util/zip/ZipInputStream:closeEntry	()V
    //   165: aload_1
    //   166: areturn
    //   167: astore 18
    //   169: aload_1
    //   170: areturn
    //   171: astore 9
    //   173: aload 9
    //   175: invokevirtual 286	java/lang/Exception:printStackTrace	()V
    //   178: aload_3
    //   179: ifnull +7 -> 186
    //   182: aload_3
    //   183: invokevirtual 280	java/io/InputStream:close	()V
    //   186: aload 4
    //   188: ifnull +8 -> 196
    //   191: aload 4
    //   193: invokevirtual 283	java/util/zip/ZipInputStream:closeEntry	()V
    //   196: aload_2
    //   197: ifnull -32 -> 165
    //   200: aload 4
    //   202: invokevirtual 283	java/util/zip/ZipInputStream:closeEntry	()V
    //   205: aload_1
    //   206: areturn
    //   207: astore 10
    //   209: aload_1
    //   210: areturn
    //   211: astore 5
    //   213: aload_3
    //   214: ifnull +7 -> 221
    //   217: aload_3
    //   218: invokevirtual 280	java/io/InputStream:close	()V
    //   221: aload 4
    //   223: ifnull +8 -> 231
    //   226: aload 4
    //   228: invokevirtual 283	java/util/zip/ZipInputStream:closeEntry	()V
    //   231: aload_2
    //   232: ifnull +8 -> 240
    //   235: aload 4
    //   237: invokevirtual 283	java/util/zip/ZipInputStream:closeEntry	()V
    //   240: aload 5
    //   242: athrow
    //   243: astore 20
    //   245: goto -100 -> 145
    //   248: astore 19
    //   250: goto -95 -> 155
    //   253: astore 12
    //   255: goto -69 -> 186
    //   258: astore 11
    //   260: goto -64 -> 196
    //   263: astore 8
    //   265: goto -44 -> 221
    //   268: astore 7
    //   270: goto -39 -> 231
    //   273: astore 6
    //   275: goto -35 -> 240
    //   278: astore 5
    //   280: aload 14
    //   282: astore_2
    //   283: aconst_null
    //   284: astore_3
    //   285: aconst_null
    //   286: astore 4
    //   288: goto -75 -> 213
    //   291: astore 5
    //   293: aload 15
    //   295: astore_3
    //   296: aload 14
    //   298: astore_2
    //   299: aconst_null
    //   300: astore 4
    //   302: goto -89 -> 213
    //   305: astore 5
    //   307: aload 16
    //   309: astore 4
    //   311: aload 15
    //   313: astore_3
    //   314: aload 14
    //   316: astore_2
    //   317: goto -104 -> 213
    //   320: astore 9
    //   322: aload 14
    //   324: astore_2
    //   325: aconst_null
    //   326: astore_3
    //   327: aconst_null
    //   328: astore 4
    //   330: goto -157 -> 173
    //   333: astore 9
    //   335: aload 15
    //   337: astore_3
    //   338: aload 14
    //   340: astore_2
    //   341: aconst_null
    //   342: astore 4
    //   344: goto -171 -> 173
    //   347: astore 9
    //   349: aload 16
    //   351: astore 4
    //   353: aload 15
    //   355: astore_3
    //   356: aload 14
    //   358: astore_2
    //   359: goto -186 -> 173
    //   362: aload_1
    //   363: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   160	165	167	java/lang/Exception
    //   10	30	171	java/lang/Exception
    //   200	205	207	java/lang/Exception
    //   10	30	211	finally
    //   173	178	211	finally
    //   140	145	243	java/lang/Exception
    //   150	155	248	java/lang/Exception
    //   182	186	253	java/lang/Exception
    //   191	196	258	java/lang/Exception
    //   217	221	263	java/lang/Exception
    //   226	231	268	java/lang/Exception
    //   235	240	273	java/lang/Exception
    //   30	48	278	finally
    //   48	59	291	finally
    //   59	66	305	finally
    //   66	129	305	finally
    //   30	48	320	java/lang/Exception
    //   48	59	333	java/lang/Exception
    //   59	66	347	java/lang/Exception
    //   66	129	347	java/lang/Exception
  }

  protected static JSONObject getHeaderJSON(Context paramContext, int paramInt, JSONArray paramJSONArray)
  {
    JSONObject localJSONObject = new JSONObject();
    while (true)
    {
      try
      {
        localJSONObject.put("mid", 2);
        localJSONObject.put("did", DeviceInfo.did);
        localJSONObject.put("cid", DeviceInfo.getCid(paramContext));
        localJSONObject.put("ccid", "");
        localJSONObject.put("ver", "46");
        localJSONObject.put("ts", System.currentTimeMillis() / 1000L);
        if (!DeviceInfo.getSim())
          break label147;
        i = 1;
        localJSONObject.put("si", i);
        localJSONObject.put("mt", paramInt);
        if (paramInt == 3)
        {
          localJSONObject.put("records", paramJSONArray);
          return localJSONObject;
        }
        if (paramInt == 2)
        {
          localJSONObject.put("apps", paramJSONArray);
          return localJSONObject;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        localJSONObject = null;
      }
      return localJSONObject;
      label147: int i = 0;
    }
  }

  public static void getTrafficMap(Context paramContext)
  {
    List localList = paramContext.getPackageManager().getInstalledPackages(12288);
    label44: int j;
    label88: String str;
    long l1;
    long l2;
    if (trafficMap == null)
    {
      trafficMap = new HashMap();
      trafficMap = new HashMap();
      Iterator localIterator = localList.iterator();
      PackageInfo localPackageInfo;
      String[] arrayOfString;
      do
      {
        if (!localIterator.hasNext())
          break;
        localPackageInfo = (PackageInfo)localIterator.next();
        arrayOfString = localPackageInfo.requestedPermissions;
      }
      while ((arrayOfString == null) || (arrayOfString.length <= 0));
      int i = arrayOfString.length;
      j = 0;
      if (j < i)
        if ("android.permission.INTERNET".equals(arrayOfString[j]))
        {
          int k = localPackageInfo.applicationInfo.uid;
          str = localPackageInfo.packageName;
          if (!DeviceInfo.ignoreActivePkg.contains(str))
          {
            l1 = TrafficStats.getUidRxBytes(k);
            l2 = TrafficStats.getUidTxBytes(k);
            if ((l1 > 0L) && (l2 > 0L))
              break label180;
          }
        }
    }
    while (true)
    {
      j++;
      break label88;
      break label44;
      trafficMap.clear();
      break;
      label180: trafficMap.put(str, Integer.valueOf(Integer.parseInt(String.valueOf(l1 + l2))));
    }
  }

  // ERROR //
  private void handleAppInstall(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 371	com/youqicai/AppStore/service/HandleService:getPackageManager	()Landroid/content/pm/PackageManager;
    //   4: astore_2
    //   5: aload_2
    //   6: aload_1
    //   7: iconst_0
    //   8: invokevirtual 129	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   11: astore 18
    //   13: aload 18
    //   15: getfield 147	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   18: getfield 152	android/content/pm/ApplicationInfo:publicSourceDir	Ljava/lang/String;
    //   21: invokestatic 158	com/youqicai/AppStore/utils/MD5FileUtil:getFileMD5String	(Ljava/lang/String;)Ljava/lang/String;
    //   24: astore 19
    //   26: aload_0
    //   27: invokestatic 377	com/youqicai/manager/BaseDbAdapter:getInstance	(Landroid/content/Context;)Lcom/youqicai/manager/BaseDbAdapter;
    //   30: aload_1
    //   31: invokevirtual 380	com/youqicai/manager/BaseDbAdapter:getApkMD5	(Ljava/lang/String;)Ljava/lang/String;
    //   34: astore 20
    //   36: new 97	org/json/JSONArray
    //   39: dup
    //   40: invokespecial 98	org/json/JSONArray:<init>	()V
    //   43: astore 21
    //   45: new 131	org/json/JSONObject
    //   48: dup
    //   49: invokespecial 132	org/json/JSONObject:<init>	()V
    //   52: astore 22
    //   54: aload 22
    //   56: ldc 134
    //   58: aload_1
    //   59: invokevirtual 141	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   62: pop
    //   63: aload 22
    //   65: ldc 143
    //   67: aload 19
    //   69: invokevirtual 141	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   72: pop
    //   73: aload 22
    //   75: ldc_w 382
    //   78: iconst_1
    //   79: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   82: pop
    //   83: aload 22
    //   85: ldc_w 384
    //   88: invokestatic 316	java/lang/System:currentTimeMillis	()J
    //   91: ldc2_w 317
    //   94: ldiv
    //   95: invokevirtual 321	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   98: pop
    //   99: aload 22
    //   101: ldc_w 386
    //   104: iconst_0
    //   105: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   108: pop
    //   109: aload 22
    //   111: ldc_w 388
    //   114: aload_0
    //   115: aload_1
    //   116: invokevirtual 391	com/youqicai/AppStore/service/HandleService:isPkgFirstInstall	(Ljava/lang/String;)I
    //   119: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   122: pop
    //   123: aload 19
    //   125: aload 20
    //   127: invokevirtual 394	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   130: ifeq +353 -> 483
    //   133: invokestatic 399	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   136: bipush 6
    //   138: invokevirtual 403	java/util/Calendar:get	(I)I
    //   141: aload_0
    //   142: invokestatic 408	com/youqicai/PhoneHelper/PreferencesHelper:getInstance	(Landroid/content/Context;)Lcom/youqicai/PhoneHelper/PreferencesHelper;
    //   145: invokevirtual 411	com/youqicai/PhoneHelper/PreferencesHelper:getInstallDayOfYear	()I
    //   148: if_icmpne +148 -> 296
    //   151: aload 22
    //   153: ldc_w 413
    //   156: iconst_1
    //   157: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   160: pop
    //   161: aload 22
    //   163: ldc_w 290
    //   166: iconst_2
    //   167: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   170: pop
    //   171: aload 21
    //   173: aload 22
    //   175: invokevirtual 161	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   178: pop
    //   179: aload_0
    //   180: aload_0
    //   181: iconst_3
    //   182: aload 21
    //   184: invokestatic 415	com/youqicai/AppStore/service/HandleService:getHeaderJSON	(Landroid/content/Context;ILorg/json/JSONArray;)Lorg/json/JSONObject;
    //   187: invokevirtual 418	org/json/JSONObject:toString	()Ljava/lang/String;
    //   190: invokestatic 424	com/youqicai/datasdk/MessageUtils:insertMsg	(Landroid/content/Context;Ljava/lang/String;)V
    //   193: aload_0
    //   194: aload_0
    //   195: invokestatic 430	com/lidroid/xutils/DbUtils:create	(Landroid/content/Context;)Lcom/lidroid/xutils/DbUtils;
    //   198: putfield 432	com/youqicai/AppStore/service/HandleService:dbUtils	Lcom/lidroid/xutils/DbUtils;
    //   201: aload_0
    //   202: getfield 432	com/youqicai/AppStore/service/HandleService:dbUtils	Lcom/lidroid/xutils/DbUtils;
    //   205: ldc_w 434
    //   208: invokestatic 440	com/lidroid/xutils/db/sqlite/Selector:from	(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;
    //   211: ldc_w 442
    //   214: ldc_w 444
    //   217: aload 18
    //   219: getfield 137	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   222: invokevirtual 448	com/lidroid/xutils/db/sqlite/Selector:where	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;
    //   225: invokevirtual 452	com/lidroid/xutils/DbUtils:findFirst	(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;
    //   228: checkcast 434	com/youqicai/datasdk/AppMD5
    //   231: astore 33
    //   233: new 434	com/youqicai/datasdk/AppMD5
    //   236: dup
    //   237: invokespecial 453	com/youqicai/datasdk/AppMD5:<init>	()V
    //   240: astore 34
    //   242: aload 34
    //   244: aload_1
    //   245: invokevirtual 456	com/youqicai/datasdk/AppMD5:setPkgName	(Ljava/lang/String;)V
    //   248: aload 34
    //   250: aload 19
    //   252: invokevirtual 459	com/youqicai/datasdk/AppMD5:setMd5	(Ljava/lang/String;)V
    //   255: aload 33
    //   257: ifnull +249 -> 506
    //   260: aload 34
    //   262: aload 33
    //   264: invokevirtual 462	com/youqicai/datasdk/AppMD5:getId	()I
    //   267: invokevirtual 466	com/youqicai/datasdk/AppMD5:setId	(I)V
    //   270: aload_0
    //   271: getfield 432	com/youqicai/AppStore/service/HandleService:dbUtils	Lcom/lidroid/xutils/DbUtils;
    //   274: aload 34
    //   276: iconst_2
    //   277: anewarray 255	java/lang/String
    //   280: dup
    //   281: iconst_0
    //   282: ldc_w 442
    //   285: aastore
    //   286: dup
    //   287: iconst_1
    //   288: ldc_w 468
    //   291: aastore
    //   292: invokevirtual 472	com/lidroid/xutils/DbUtils:update	(Ljava/lang/Object;[Ljava/lang/String;)V
    //   295: return
    //   296: aload 22
    //   298: ldc_w 413
    //   301: iconst_2
    //   302: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   305: pop
    //   306: goto -145 -> 161
    //   309: astore_3
    //   310: aload_0
    //   311: aload_3
    //   312: invokestatic 478	com/mycheering/data/DTAgent:onError	(Landroid/content/Context;Ljava/lang/Throwable;)V
    //   315: aload_2
    //   316: aload_1
    //   317: iconst_0
    //   318: invokevirtual 129	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   321: getfield 147	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   324: getfield 152	android/content/pm/ApplicationInfo:publicSourceDir	Ljava/lang/String;
    //   327: invokestatic 158	com/youqicai/AppStore/utils/MD5FileUtil:getFileMD5String	(Ljava/lang/String;)Ljava/lang/String;
    //   330: astore 5
    //   332: new 97	org/json/JSONArray
    //   335: dup
    //   336: invokespecial 98	org/json/JSONArray:<init>	()V
    //   339: astore 6
    //   341: new 131	org/json/JSONObject
    //   344: dup
    //   345: invokespecial 132	org/json/JSONObject:<init>	()V
    //   348: astore 7
    //   350: aload 7
    //   352: ldc 134
    //   354: aload_1
    //   355: invokevirtual 141	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   358: pop
    //   359: aload 7
    //   361: ldc 143
    //   363: aload 5
    //   365: invokevirtual 141	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   368: pop
    //   369: aload 7
    //   371: ldc_w 382
    //   374: iconst_1
    //   375: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   378: pop
    //   379: aload 7
    //   381: ldc_w 384
    //   384: invokestatic 316	java/lang/System:currentTimeMillis	()J
    //   387: ldc2_w 317
    //   390: ldiv
    //   391: invokevirtual 321	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   394: pop
    //   395: aload 7
    //   397: ldc_w 386
    //   400: iconst_0
    //   401: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   404: pop
    //   405: aload 7
    //   407: ldc_w 388
    //   410: aload_0
    //   411: aload_1
    //   412: invokevirtual 391	com/youqicai/AppStore/service/HandleService:isPkgFirstInstall	(Ljava/lang/String;)I
    //   415: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   418: pop
    //   419: invokestatic 399	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   422: bipush 6
    //   424: invokevirtual 403	java/util/Calendar:get	(I)I
    //   427: aload_0
    //   428: invokestatic 408	com/youqicai/PhoneHelper/PreferencesHelper:getInstance	(Landroid/content/Context;)Lcom/youqicai/PhoneHelper/PreferencesHelper;
    //   431: invokevirtual 411	com/youqicai/PhoneHelper/PreferencesHelper:getInstallDayOfYear	()I
    //   434: if_icmpne +90 -> 524
    //   437: aload 7
    //   439: ldc_w 413
    //   442: iconst_1
    //   443: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   446: pop
    //   447: aload 7
    //   449: ldc_w 290
    //   452: iconst_2
    //   453: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   456: pop
    //   457: aload 6
    //   459: aload 7
    //   461: invokevirtual 161	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   464: pop
    //   465: aload_0
    //   466: aload_0
    //   467: iconst_3
    //   468: aload 6
    //   470: invokestatic 415	com/youqicai/AppStore/service/HandleService:getHeaderJSON	(Landroid/content/Context;ILorg/json/JSONArray;)Lorg/json/JSONObject;
    //   473: invokevirtual 418	org/json/JSONObject:toString	()Ljava/lang/String;
    //   476: invokestatic 424	com/youqicai/datasdk/MessageUtils:insertMsg	(Landroid/content/Context;Ljava/lang/String;)V
    //   479: return
    //   480: astore 4
    //   482: return
    //   483: aload 22
    //   485: ldc_w 290
    //   488: iconst_0
    //   489: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   492: pop
    //   493: aload 22
    //   495: ldc_w 413
    //   498: iconst_1
    //   499: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   502: pop
    //   503: goto -332 -> 171
    //   506: aload_0
    //   507: getfield 432	com/youqicai/AppStore/service/HandleService:dbUtils	Lcom/lidroid/xutils/DbUtils;
    //   510: aload 34
    //   512: invokevirtual 482	com/lidroid/xutils/DbUtils:save	(Ljava/lang/Object;)V
    //   515: return
    //   516: astore 32
    //   518: aload 32
    //   520: invokevirtual 286	java/lang/Exception:printStackTrace	()V
    //   523: return
    //   524: aload 7
    //   526: ldc_w 413
    //   529: iconst_2
    //   530: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   533: pop
    //   534: goto -87 -> 447
    //
    // Exception table:
    //   from	to	target	type
    //   5	161	309	java/lang/Exception
    //   161	171	309	java/lang/Exception
    //   171	193	309	java/lang/Exception
    //   296	306	309	java/lang/Exception
    //   483	503	309	java/lang/Exception
    //   518	523	309	java/lang/Exception
    //   315	447	480	java/lang/Exception
    //   447	479	480	java/lang/Exception
    //   524	534	480	java/lang/Exception
    //   193	255	516	java/lang/Exception
    //   260	295	516	java/lang/Exception
    //   506	515	516	java/lang/Exception
  }

  private void handleAppUninstall(String paramString)
  {
    this.dbUtils = DbUtils.create(this);
    try
    {
      AppMD5 localAppMD5 = (AppMD5)this.dbUtils.findFirst(Selector.from(AppMD5.class).where("pkgName", "=", paramString));
      if (localAppMD5 != null)
      {
        JSONArray localJSONArray = new JSONArray();
        JSONObject localJSONObject = new JSONObject();
        localJSONObject.put("pkg", paramString);
        localJSONObject.put("am", localAppMD5.getMd5());
        localJSONObject.put("rt", 3);
        localJSONObject.put("st", System.currentTimeMillis() / 1000L);
        localJSONObject.put("du", 0);
        localJSONObject.put("mid", 0);
        localJSONArray.put(localJSONObject);
        MessageUtils.insertMsg(this, getHeaderJSON(this, 3, localJSONArray).toString());
        this.dbUtils.deleteById(AppMD5.class, Integer.valueOf(localAppMD5.getId()));
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static void handleService(Context paramContext, String paramString)
  {
    handleService(paramContext, paramString, null);
  }

  public static void handleService(Context paramContext, String paramString, Bundle paramBundle)
  {
    paramContext.startService(handleServiceIntent(paramContext, paramString, paramBundle));
  }

  public static Intent handleServiceIntent(Context paramContext, String paramString, Bundle paramBundle)
  {
    Intent localIntent = new Intent(paramContext, HandleService.class);
    localIntent.putExtra("action", paramString);
    if (paramBundle != null)
      localIntent.putExtras(paramBundle);
    return localIntent;
  }

  private void handleUploadActive()
  {
    if (PreferencesHelper.getInstance(this).isTodayUpload());
    while (PreferencesHelper.getInstance(this).isOverUpload())
      return;
    MessageUtils.insertMsg(this, getHeaderJSON(this, 2, getAppsArray(this)).toString(), 2);
  }

  // ERROR //
  private void saveAppsToDB(Context paramContext, DbUtils paramDbUtils)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnull +298 -> 299
    //   4: aload_2
    //   5: ldc_w 434
    //   8: invokevirtual 533	com/lidroid/xutils/DbUtils:findAll	(Ljava/lang/Class;)Ljava/util/List;
    //   11: astore 4
    //   13: aload 4
    //   15: ifnull +13 -> 28
    //   18: aload 4
    //   20: invokeinterface 536 1 0
    //   25: ifne +217 -> 242
    //   28: aload_1
    //   29: invokevirtual 65	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   32: astore 5
    //   34: new 67	android/content/Intent
    //   37: dup
    //   38: ldc 69
    //   40: aconst_null
    //   41: invokespecial 72	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   44: astore 6
    //   46: aload 6
    //   48: ldc 74
    //   50: invokevirtual 78	android/content/Intent:addCategory	(Ljava/lang/String;)Landroid/content/Intent;
    //   53: pop
    //   54: aload 5
    //   56: aload 6
    //   58: iconst_0
    //   59: invokevirtual 84	android/content/pm/PackageManager:queryIntentActivities	(Landroid/content/Intent;I)Ljava/util/List;
    //   62: astore 8
    //   64: new 86	android/content/pm/ResolveInfo$DisplayNameComparator
    //   67: dup
    //   68: aload 5
    //   70: invokespecial 89	android/content/pm/ResolveInfo$DisplayNameComparator:<init>	(Landroid/content/pm/PackageManager;)V
    //   73: astore 9
    //   75: aload 8
    //   77: aload 9
    //   79: invokestatic 95	java/util/Collections:sort	(Ljava/util/List;Ljava/util/Comparator;)V
    //   82: aload 8
    //   84: invokeinterface 104 1 0
    //   89: astore 10
    //   91: aload 10
    //   93: invokeinterface 110 1 0
    //   98: ifeq +201 -> 299
    //   101: aload 10
    //   103: invokeinterface 114 1 0
    //   108: checkcast 116	android/content/pm/ResolveInfo
    //   111: astore 11
    //   113: aload 5
    //   115: aload 11
    //   117: getfield 120	android/content/pm/ResolveInfo:activityInfo	Landroid/content/pm/ActivityInfo;
    //   120: getfield 125	android/content/pm/ActivityInfo:packageName	Ljava/lang/String;
    //   123: iconst_0
    //   124: invokevirtual 129	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   127: astore 13
    //   129: aload_2
    //   130: ldc_w 434
    //   133: invokestatic 440	com/lidroid/xutils/db/sqlite/Selector:from	(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;
    //   136: ldc_w 442
    //   139: ldc_w 444
    //   142: aload 13
    //   144: getfield 137	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   147: invokevirtual 448	com/lidroid/xutils/db/sqlite/Selector:where	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;
    //   150: invokevirtual 452	com/lidroid/xutils/DbUtils:findFirst	(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;
    //   153: checkcast 434	com/youqicai/datasdk/AppMD5
    //   156: astore 14
    //   158: new 434	com/youqicai/datasdk/AppMD5
    //   161: dup
    //   162: invokespecial 453	com/youqicai/datasdk/AppMD5:<init>	()V
    //   165: astore 15
    //   167: aload 15
    //   169: aload 13
    //   171: getfield 137	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   174: invokevirtual 456	com/youqicai/datasdk/AppMD5:setPkgName	(Ljava/lang/String;)V
    //   177: aload 15
    //   179: aload 13
    //   181: getfield 147	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   184: getfield 152	android/content/pm/ApplicationInfo:publicSourceDir	Ljava/lang/String;
    //   187: invokestatic 158	com/youqicai/AppStore/utils/MD5FileUtil:getFileMD5String	(Ljava/lang/String;)Ljava/lang/String;
    //   190: invokevirtual 459	com/youqicai/datasdk/AppMD5:setMd5	(Ljava/lang/String;)V
    //   193: aload 14
    //   195: ifnull +38 -> 233
    //   198: aload 15
    //   200: aload 14
    //   202: invokevirtual 462	com/youqicai/datasdk/AppMD5:getId	()I
    //   205: invokevirtual 466	com/youqicai/datasdk/AppMD5:setId	(I)V
    //   208: aload_2
    //   209: aload 15
    //   211: iconst_2
    //   212: anewarray 255	java/lang/String
    //   215: dup
    //   216: iconst_0
    //   217: ldc_w 442
    //   220: aastore
    //   221: dup
    //   222: iconst_1
    //   223: ldc_w 468
    //   226: aastore
    //   227: invokevirtual 472	com/lidroid/xutils/DbUtils:update	(Ljava/lang/Object;[Ljava/lang/String;)V
    //   230: goto -139 -> 91
    //   233: aload_2
    //   234: aload 15
    //   236: invokevirtual 482	com/lidroid/xutils/DbUtils:save	(Ljava/lang/Object;)V
    //   239: goto -148 -> 91
    //   242: new 538	java/util/HashSet
    //   245: dup
    //   246: invokespecial 539	java/util/HashSet:<init>	()V
    //   249: astore 16
    //   251: aload 4
    //   253: invokeinterface 104 1 0
    //   258: astore 17
    //   260: aload 17
    //   262: invokeinterface 110 1 0
    //   267: ifeq +33 -> 300
    //   270: aload 16
    //   272: aload 17
    //   274: invokeinterface 114 1 0
    //   279: checkcast 434	com/youqicai/datasdk/AppMD5
    //   282: invokevirtual 542	com/youqicai/datasdk/AppMD5:getPkgName	()Ljava/lang/String;
    //   285: invokeinterface 545 2 0
    //   290: pop
    //   291: goto -31 -> 260
    //   294: astore_3
    //   295: aload_3
    //   296: invokevirtual 286	java/lang/Exception:printStackTrace	()V
    //   299: return
    //   300: aload_1
    //   301: invokevirtual 65	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   304: astore 18
    //   306: new 67	android/content/Intent
    //   309: dup
    //   310: ldc 69
    //   312: aconst_null
    //   313: invokespecial 72	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   316: astore 19
    //   318: aload 19
    //   320: ldc 74
    //   322: invokevirtual 78	android/content/Intent:addCategory	(Ljava/lang/String;)Landroid/content/Intent;
    //   325: pop
    //   326: aload 18
    //   328: aload 19
    //   330: iconst_0
    //   331: invokevirtual 84	android/content/pm/PackageManager:queryIntentActivities	(Landroid/content/Intent;I)Ljava/util/List;
    //   334: astore 21
    //   336: new 86	android/content/pm/ResolveInfo$DisplayNameComparator
    //   339: dup
    //   340: aload 18
    //   342: invokespecial 89	android/content/pm/ResolveInfo$DisplayNameComparator:<init>	(Landroid/content/pm/PackageManager;)V
    //   345: astore 22
    //   347: aload 21
    //   349: aload 22
    //   351: invokestatic 95	java/util/Collections:sort	(Ljava/util/List;Ljava/util/Comparator;)V
    //   354: new 97	org/json/JSONArray
    //   357: dup
    //   358: invokespecial 98	org/json/JSONArray:<init>	()V
    //   361: astore 23
    //   363: aload 21
    //   365: invokeinterface 104 1 0
    //   370: astore 24
    //   372: aload 24
    //   374: invokeinterface 110 1 0
    //   379: ifeq +236 -> 615
    //   382: aload 24
    //   384: invokeinterface 114 1 0
    //   389: checkcast 116	android/content/pm/ResolveInfo
    //   392: astore 27
    //   394: aload 18
    //   396: aload 27
    //   398: getfield 120	android/content/pm/ResolveInfo:activityInfo	Landroid/content/pm/ActivityInfo;
    //   401: getfield 125	android/content/pm/ActivityInfo:packageName	Ljava/lang/String;
    //   404: iconst_0
    //   405: invokevirtual 129	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   408: astore 29
    //   410: aload 16
    //   412: aload 29
    //   414: getfield 137	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   417: invokeinterface 193 2 0
    //   422: ifne -50 -> 372
    //   425: new 131	org/json/JSONObject
    //   428: dup
    //   429: invokespecial 132	org/json/JSONObject:<init>	()V
    //   432: astore 30
    //   434: aload 30
    //   436: ldc 134
    //   438: aload 29
    //   440: getfield 137	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   443: invokevirtual 141	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   446: pop
    //   447: aload 30
    //   449: ldc 143
    //   451: aload 29
    //   453: getfield 147	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   456: getfield 152	android/content/pm/ApplicationInfo:publicSourceDir	Ljava/lang/String;
    //   459: invokestatic 158	com/youqicai/AppStore/utils/MD5FileUtil:getFileMD5String	(Ljava/lang/String;)Ljava/lang/String;
    //   462: invokevirtual 141	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   465: pop
    //   466: aload 30
    //   468: ldc_w 382
    //   471: iconst_1
    //   472: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   475: pop
    //   476: aload 30
    //   478: ldc_w 384
    //   481: invokestatic 316	java/lang/System:currentTimeMillis	()J
    //   484: ldc2_w 317
    //   487: ldiv
    //   488: invokevirtual 321	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   491: pop
    //   492: aload 30
    //   494: ldc_w 386
    //   497: iconst_0
    //   498: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   501: pop
    //   502: aload 30
    //   504: ldc_w 388
    //   507: iconst_1
    //   508: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   511: pop
    //   512: invokestatic 399	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   515: bipush 6
    //   517: invokevirtual 403	java/util/Calendar:get	(I)I
    //   520: aload_0
    //   521: invokestatic 408	com/youqicai/PhoneHelper/PreferencesHelper:getInstance	(Landroid/content/Context;)Lcom/youqicai/PhoneHelper/PreferencesHelper;
    //   524: invokevirtual 411	com/youqicai/PhoneHelper/PreferencesHelper:getInstallDayOfYear	()I
    //   527: if_icmpne +75 -> 602
    //   530: aload 30
    //   532: ldc_w 413
    //   535: iconst_1
    //   536: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   539: pop
    //   540: aload 30
    //   542: ldc_w 290
    //   545: iconst_2
    //   546: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   549: pop
    //   550: aload 23
    //   552: aload 30
    //   554: invokevirtual 161	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   557: pop
    //   558: new 434	com/youqicai/datasdk/AppMD5
    //   561: dup
    //   562: invokespecial 453	com/youqicai/datasdk/AppMD5:<init>	()V
    //   565: astore 40
    //   567: aload 40
    //   569: aload 29
    //   571: getfield 137	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   574: invokevirtual 456	com/youqicai/datasdk/AppMD5:setPkgName	(Ljava/lang/String;)V
    //   577: aload 40
    //   579: aload 29
    //   581: getfield 147	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   584: getfield 152	android/content/pm/ApplicationInfo:publicSourceDir	Ljava/lang/String;
    //   587: invokestatic 158	com/youqicai/AppStore/utils/MD5FileUtil:getFileMD5String	(Ljava/lang/String;)Ljava/lang/String;
    //   590: invokevirtual 459	com/youqicai/datasdk/AppMD5:setMd5	(Ljava/lang/String;)V
    //   593: aload_2
    //   594: aload 40
    //   596: invokevirtual 482	com/lidroid/xutils/DbUtils:save	(Ljava/lang/Object;)V
    //   599: goto -227 -> 372
    //   602: aload 30
    //   604: ldc_w 413
    //   607: iconst_2
    //   608: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   611: pop
    //   612: goto -72 -> 540
    //   615: aload 23
    //   617: invokevirtual 546	org/json/JSONArray:length	()I
    //   620: ifeq +17 -> 637
    //   623: aload_0
    //   624: aload_0
    //   625: iconst_3
    //   626: aload 23
    //   628: invokestatic 415	com/youqicai/AppStore/service/HandleService:getHeaderJSON	(Landroid/content/Context;ILorg/json/JSONArray;)Lorg/json/JSONObject;
    //   631: invokevirtual 418	org/json/JSONObject:toString	()Ljava/lang/String;
    //   634: invokestatic 424	com/youqicai/datasdk/MessageUtils:insertMsg	(Landroid/content/Context;Ljava/lang/String;)V
    //   637: aload_2
    //   638: ldc_w 434
    //   641: invokevirtual 533	com/lidroid/xutils/DbUtils:findAll	(Ljava/lang/Class;)Ljava/util/List;
    //   644: astore 25
    //   646: ldc_w 548
    //   649: new 550	java/lang/StringBuilder
    //   652: dup
    //   653: invokespecial 551	java/lang/StringBuilder:<init>	()V
    //   656: aload 25
    //   658: invokeinterface 536 1 0
    //   663: invokevirtual 555	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   666: ldc_w 557
    //   669: invokevirtual 560	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   672: aload 16
    //   674: invokeinterface 561 1 0
    //   679: invokevirtual 555	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   682: invokevirtual 562	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   685: invokestatic 567	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   688: pop
    //   689: return
    //   690: astore 12
    //   692: goto -601 -> 91
    //   695: astore 28
    //   697: goto -325 -> 372
    //
    // Exception table:
    //   from	to	target	type
    //   4	13	294	java/lang/Exception
    //   18	28	294	java/lang/Exception
    //   28	91	294	java/lang/Exception
    //   91	113	294	java/lang/Exception
    //   242	260	294	java/lang/Exception
    //   260	291	294	java/lang/Exception
    //   300	372	294	java/lang/Exception
    //   372	394	294	java/lang/Exception
    //   615	637	294	java/lang/Exception
    //   637	689	294	java/lang/Exception
    //   113	193	690	java/lang/Exception
    //   198	230	690	java/lang/Exception
    //   233	239	690	java/lang/Exception
    //   394	540	695	java/lang/Exception
    //   540	599	695	java/lang/Exception
    //   602	612	695	java/lang/Exception
  }

  private void sendDevice(Context paramContext)
  {
    int i = 1;
    if (PreferencesHelper.getInstance(paramContext).isDeviceTodayUpload())
      return;
    while (true)
    {
      try
      {
        JSONObject localJSONObject1 = DeviceInfo.device;
        JSONObject localJSONObject2 = new JSONObject();
        localJSONObject2.put("mt", 1);
        localJSONObject2.put("device", localJSONObject1);
        localJSONObject2.put("mid", 2);
        localJSONObject2.put("did", DeviceInfo.did);
        localJSONObject2.put("cid", DeviceInfo.getCid(paramContext));
        localJSONObject2.put("ccid", "");
        localJSONObject2.put("ver", "46");
        localJSONObject2.put("ts", System.currentTimeMillis() / 1000L);
        if (DeviceInfo.getSim())
        {
          localJSONObject2.put("si", i);
          MessageUtils.insertMsg(paramContext, localJSONObject2.toString(), 1);
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      i = 0;
    }
  }

  private void sendDownloadTrack(Track paramTrack)
  {
    if (paramTrack == null)
      return;
    while (true)
    {
      JSONObject localJSONObject;
      try
      {
        JSONArray localJSONArray = new JSONArray();
        localJSONObject = new JSONObject();
        localJSONObject.put("pkg", paramTrack.getPackageId());
        localJSONObject.put("am", MD5FileUtil.getFileMD5String(paramTrack.getPackageName()));
        localJSONObject.put("rt", 4);
        localJSONObject.put("st", System.currentTimeMillis() / 1000L);
        localJSONObject.put("du", 0);
        localJSONObject.put("ste", 1);
        localJSONObject.put("mid", 2);
        if (Calendar.getInstance().get(6) == PreferencesHelper.getInstance(this).getInstallDayOfYear())
        {
          localJSONObject.put("t", 1);
          localJSONArray.put(localJSONObject);
          MessageUtils.insertMsg(this, getHeaderJSON(this, 3, localJSONArray).toString());
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      localJSONObject.put("t", 2);
    }
  }

  private void sendTrack(Track paramTrack)
  {
    if (paramTrack != null);
    try
    {
      this.dbUtils = DbUtils.create(this);
      AppMD5 localAppMD5 = (AppMD5)this.dbUtils.findFirst(Selector.from(AppMD5.class).where("pkgName", "=", paramTrack.getPackageName()));
      JSONArray localJSONArray2 = new JSONArray();
      JSONObject localJSONObject2 = new JSONObject();
      localJSONObject2.put("pkg", paramTrack.getPackageName());
      localJSONObject2.put("am", localAppMD5.getMd5());
      localJSONObject2.put("rt", 2);
      localJSONObject2.put("st", System.currentTimeMillis() / 1000L);
      localJSONObject2.put("du", paramTrack.getUsageTime());
      localJSONObject2.put("mid", 0);
      localJSONArray2.put(localJSONObject2);
      MessageUtils.insertMsg(this, getHeaderJSON(this, 3, localJSONArray2).toString());
      HashMap localHashMap = new HashMap();
      localHashMap.put("did", DeviceInfo.did);
      localHashMap.put("pkg", paramTrack.getPackageName());
      localHashMap.put("du", paramTrack.getUsageTime() + "");
      DTAgent.recordEvent("use", localHashMap);
      return;
    }
    catch (Exception localException1)
    {
      while (true)
        try
        {
          JSONArray localJSONArray1 = new JSONArray();
          JSONObject localJSONObject1 = new JSONObject();
          localJSONObject1.put("pkg", paramTrack.getPackageName());
          localJSONObject1.put("am", DeviceInfo.getApkMd5(this, paramTrack.getPackageName()));
          localJSONObject1.put("rt", 2);
          localJSONObject1.put("st", System.currentTimeMillis() / 1000L);
          localJSONObject1.put("du", paramTrack.getUsageTime());
          localJSONObject1.put("mid", 0);
          localJSONArray1.put(localJSONObject1);
          MessageUtils.insertMsg(this, getHeaderJSON(this, 3, localJSONArray1).toString());
        }
        catch (Exception localException2)
        {
        }
    }
  }

  public int isPkgFirstInstall(String paramString)
  {
    try
    {
      this.dbUtils = DbUtils.create(this);
      AppMD5 localAppMD5 = (AppMD5)this.dbUtils.findFirst(Selector.from(AppMD5.class).where("pkgName", "=", paramString));
      if (localAppMD5 != null)
        return 0;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 1;
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  protected void onHandleIntent(Intent paramIntent)
  {
    if (paramIntent == null);
    while (true)
    {
      return;
      try
      {
        DeviceInfo.initDeviceInfo(this);
        String str1 = paramIntent.getStringExtra("action");
        String str2 = DeviceInfo.getCid(this);
        if ((TextUtils.isEmpty(str2)) || (str2.equals("100000000")))
          DeviceInfo.saveCid(this, getCustomChannelInfo(this));
        sendDevice(this);
        handleUploadActive();
        if (!"a".equals(str1))
        {
          if ("b".equals(str1))
          {
            handleAppInstall(paramIntent.getStringExtra("pkg"));
            return;
          }
          if ((!"c".equals(str1)) && (!"d".equals(str1)))
          {
            if ("e".equals(str1))
            {
              handleAppUninstall(paramIntent.getStringExtra("pkg"));
              return;
            }
            if ("f".equals(str1))
            {
              this.dbUtils = DbUtils.create(this);
              saveAppsToDB(this, this.dbUtils);
              return;
            }
            if ("i".equals(str1))
            {
              sendTrack((Track)paramIntent.getSerializableExtra("track"));
              return;
            }
            if ("h".equals(str1))
            {
              sendDownloadTrack((Track)paramIntent.getSerializableExtra("down"));
              return;
            }
            if ("j".equals(str1))
            {
              boolean bool = PreferencesHelper.getInstance(this).isDeviceTodayStat();
              if (!bool)
                try
                {
                  getBatteryMap(this);
                  getTrafficMap(this);
                  sendCollectData();
                  PreferencesHelper.getInstance(this).saveDeviceTodayStat();
                  return;
                }
                catch (Exception localException2)
                {
                }
            }
          }
        }
      }
      catch (Exception localException1)
      {
      }
    }
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
  }

  // ERROR //
  public void sendCollectData()
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_0
    //   2: invokestatic 430	com/lidroid/xutils/DbUtils:create	(Landroid/content/Context;)Lcom/lidroid/xutils/DbUtils;
    //   5: putfield 432	com/youqicai/AppStore/service/HandleService:dbUtils	Lcom/lidroid/xutils/DbUtils;
    //   8: new 97	org/json/JSONArray
    //   11: dup
    //   12: invokespecial 98	org/json/JSONArray:<init>	()V
    //   15: astore_1
    //   16: getstatic 48	com/youqicai/AppStore/service/HandleService:trafficMap	Ljava/util/HashMap;
    //   19: invokevirtual 675	java/util/HashMap:keySet	()Ljava/util/Set;
    //   22: invokeinterface 676 1 0
    //   27: astore_2
    //   28: aload_2
    //   29: invokeinterface 110 1 0
    //   34: ifeq +832 -> 866
    //   37: aload_2
    //   38: invokeinterface 114 1 0
    //   43: checkcast 255	java/lang/String
    //   46: astore_3
    //   47: aconst_null
    //   48: astore 4
    //   50: aload_0
    //   51: getfield 432	com/youqicai/AppStore/service/HandleService:dbUtils	Lcom/lidroid/xutils/DbUtils;
    //   54: ldc_w 678
    //   57: invokestatic 440	com/lidroid/xutils/db/sqlite/Selector:from	(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;
    //   60: ldc_w 442
    //   63: ldc_w 444
    //   66: aload_3
    //   67: invokevirtual 448	com/lidroid/xutils/db/sqlite/Selector:where	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;
    //   70: invokevirtual 452	com/lidroid/xutils/DbUtils:findFirst	(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;
    //   73: checkcast 678	com/youqicai/datasdk/ActiveObj
    //   76: astore 4
    //   78: aload_0
    //   79: getfield 432	com/youqicai/AppStore/service/HandleService:dbUtils	Lcom/lidroid/xutils/DbUtils;
    //   82: ldc_w 434
    //   85: invokestatic 440	com/lidroid/xutils/db/sqlite/Selector:from	(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;
    //   88: ldc_w 442
    //   91: ldc_w 444
    //   94: aload_3
    //   95: invokevirtual 448	com/lidroid/xutils/db/sqlite/Selector:where	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;
    //   98: invokevirtual 452	com/lidroid/xutils/DbUtils:findFirst	(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;
    //   101: checkcast 434	com/youqicai/datasdk/AppMD5
    //   104: astore 6
    //   106: aload 4
    //   108: ifnull +484 -> 592
    //   111: getstatic 48	com/youqicai/AppStore/service/HandleService:trafficMap	Ljava/util/HashMap;
    //   114: aload_3
    //   115: invokevirtual 681	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   118: checkcast 363	java/lang/Integer
    //   121: invokevirtual 684	java/lang/Integer:intValue	()I
    //   124: istore 30
    //   126: iload 30
    //   128: aload 4
    //   130: invokevirtual 687	com/youqicai/datasdk/ActiveObj:getTraffic	()I
    //   133: if_icmple +113 -> 246
    //   136: new 131	org/json/JSONObject
    //   139: dup
    //   140: invokespecial 132	org/json/JSONObject:<init>	()V
    //   143: astore 31
    //   145: aload 31
    //   147: ldc 134
    //   149: aload_3
    //   150: invokevirtual 141	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   153: pop
    //   154: aload 31
    //   156: ldc 143
    //   158: aload 6
    //   160: invokevirtual 486	com/youqicai/datasdk/AppMD5:getMd5	()Ljava/lang/String;
    //   163: invokevirtual 141	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   166: pop
    //   167: aload 31
    //   169: ldc_w 382
    //   172: iconst_2
    //   173: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   176: pop
    //   177: aload 31
    //   179: ldc_w 384
    //   182: invokestatic 316	java/lang/System:currentTimeMillis	()J
    //   185: ldc2_w 317
    //   188: ldiv
    //   189: invokevirtual 321	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   192: pop
    //   193: aload 31
    //   195: ldc_w 386
    //   198: iconst_0
    //   199: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   202: pop
    //   203: aload 31
    //   205: ldc_w 290
    //   208: iconst_0
    //   209: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   212: pop
    //   213: aload_1
    //   214: aload 31
    //   216: invokevirtual 161	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   219: pop
    //   220: aload 4
    //   222: iload 30
    //   224: invokevirtual 690	com/youqicai/datasdk/ActiveObj:setTraffic	(I)V
    //   227: aload_0
    //   228: getfield 432	com/youqicai/AppStore/service/HandleService:dbUtils	Lcom/lidroid/xutils/DbUtils;
    //   231: aload 4
    //   233: iconst_1
    //   234: anewarray 255	java/lang/String
    //   237: dup
    //   238: iconst_0
    //   239: ldc_w 692
    //   242: aastore
    //   243: invokevirtual 472	com/lidroid/xutils/DbUtils:update	(Ljava/lang/Object;[Ljava/lang/String;)V
    //   246: getstatic 50	com/youqicai/AppStore/service/HandleService:batteryMap	Ljava/util/HashMap;
    //   249: aload_3
    //   250: invokevirtual 695	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   253: ifeq -225 -> 28
    //   256: getstatic 50	com/youqicai/AppStore/service/HandleService:batteryMap	Ljava/util/HashMap;
    //   259: aload_3
    //   260: invokevirtual 681	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   263: checkcast 199	java/lang/Double
    //   266: invokevirtual 698	java/lang/Double:doubleValue	()D
    //   269: dstore 36
    //   271: dload 36
    //   273: aload 4
    //   275: invokevirtual 701	com/youqicai/datasdk/ActiveObj:getBattery	()D
    //   278: dcmpl
    //   279: ifle -251 -> 28
    //   282: new 131	org/json/JSONObject
    //   285: dup
    //   286: invokespecial 132	org/json/JSONObject:<init>	()V
    //   289: astore 38
    //   291: aload 38
    //   293: ldc 134
    //   295: aload_3
    //   296: invokevirtual 141	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   299: pop
    //   300: aload 38
    //   302: ldc 143
    //   304: aload 6
    //   306: invokevirtual 486	com/youqicai/datasdk/AppMD5:getMd5	()Ljava/lang/String;
    //   309: invokevirtual 141	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   312: pop
    //   313: aload 38
    //   315: ldc_w 382
    //   318: iconst_2
    //   319: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   322: pop
    //   323: aload 38
    //   325: ldc_w 384
    //   328: invokestatic 316	java/lang/System:currentTimeMillis	()J
    //   331: ldc2_w 317
    //   334: ldiv
    //   335: invokevirtual 321	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   338: pop
    //   339: aload 38
    //   341: ldc_w 386
    //   344: iconst_0
    //   345: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   348: pop
    //   349: aload 38
    //   351: ldc_w 290
    //   354: iconst_0
    //   355: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   358: pop
    //   359: aload_1
    //   360: aload 38
    //   362: invokevirtual 161	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   365: pop
    //   366: aload 4
    //   368: dload 36
    //   370: invokevirtual 705	com/youqicai/datasdk/ActiveObj:setBattery	(D)V
    //   373: aload_0
    //   374: getfield 432	com/youqicai/AppStore/service/HandleService:dbUtils	Lcom/lidroid/xutils/DbUtils;
    //   377: aload 4
    //   379: iconst_1
    //   380: anewarray 255	java/lang/String
    //   383: dup
    //   384: iconst_0
    //   385: ldc_w 707
    //   388: aastore
    //   389: invokevirtual 472	com/lidroid/xutils/DbUtils:update	(Ljava/lang/Object;[Ljava/lang/String;)V
    //   392: goto -364 -> 28
    //   395: astore 50
    //   397: aload 50
    //   399: invokevirtual 708	com/lidroid/xutils/exception/DbException:printStackTrace	()V
    //   402: goto -374 -> 28
    //   405: astore 5
    //   407: aload 5
    //   409: invokevirtual 286	java/lang/Exception:printStackTrace	()V
    //   412: aconst_null
    //   413: astore 6
    //   415: goto -309 -> 106
    //   418: astore 58
    //   420: aload 58
    //   422: invokevirtual 708	com/lidroid/xutils/exception/DbException:printStackTrace	()V
    //   425: goto -179 -> 246
    //   428: astore 34
    //   430: aload 4
    //   432: iload 30
    //   434: invokevirtual 690	com/youqicai/datasdk/ActiveObj:setTraffic	(I)V
    //   437: aload_0
    //   438: getfield 432	com/youqicai/AppStore/service/HandleService:dbUtils	Lcom/lidroid/xutils/DbUtils;
    //   441: aload 4
    //   443: iconst_1
    //   444: anewarray 255	java/lang/String
    //   447: dup
    //   448: iconst_0
    //   449: ldc_w 692
    //   452: aastore
    //   453: invokevirtual 472	com/lidroid/xutils/DbUtils:update	(Ljava/lang/Object;[Ljava/lang/String;)V
    //   456: goto -210 -> 246
    //   459: astore 35
    //   461: aload 35
    //   463: invokevirtual 708	com/lidroid/xutils/exception/DbException:printStackTrace	()V
    //   466: goto -220 -> 246
    //   469: astore 32
    //   471: aload 4
    //   473: iload 30
    //   475: invokevirtual 690	com/youqicai/datasdk/ActiveObj:setTraffic	(I)V
    //   478: aload_0
    //   479: getfield 432	com/youqicai/AppStore/service/HandleService:dbUtils	Lcom/lidroid/xutils/DbUtils;
    //   482: aload 4
    //   484: iconst_1
    //   485: anewarray 255	java/lang/String
    //   488: dup
    //   489: iconst_0
    //   490: ldc_w 692
    //   493: aastore
    //   494: invokevirtual 472	com/lidroid/xutils/DbUtils:update	(Ljava/lang/Object;[Ljava/lang/String;)V
    //   497: aload 32
    //   499: athrow
    //   500: astore 33
    //   502: aload 33
    //   504: invokevirtual 708	com/lidroid/xutils/exception/DbException:printStackTrace	()V
    //   507: goto -10 -> 497
    //   510: astore 41
    //   512: aload 4
    //   514: dload 36
    //   516: invokevirtual 705	com/youqicai/datasdk/ActiveObj:setBattery	(D)V
    //   519: aload_0
    //   520: getfield 432	com/youqicai/AppStore/service/HandleService:dbUtils	Lcom/lidroid/xutils/DbUtils;
    //   523: aload 4
    //   525: iconst_1
    //   526: anewarray 255	java/lang/String
    //   529: dup
    //   530: iconst_0
    //   531: ldc_w 707
    //   534: aastore
    //   535: invokevirtual 472	com/lidroid/xutils/DbUtils:update	(Ljava/lang/Object;[Ljava/lang/String;)V
    //   538: goto -510 -> 28
    //   541: astore 42
    //   543: aload 42
    //   545: invokevirtual 708	com/lidroid/xutils/exception/DbException:printStackTrace	()V
    //   548: goto -520 -> 28
    //   551: astore 39
    //   553: aload 4
    //   555: dload 36
    //   557: invokevirtual 705	com/youqicai/datasdk/ActiveObj:setBattery	(D)V
    //   560: aload_0
    //   561: getfield 432	com/youqicai/AppStore/service/HandleService:dbUtils	Lcom/lidroid/xutils/DbUtils;
    //   564: aload 4
    //   566: iconst_1
    //   567: anewarray 255	java/lang/String
    //   570: dup
    //   571: iconst_0
    //   572: ldc_w 707
    //   575: aastore
    //   576: invokevirtual 472	com/lidroid/xutils/DbUtils:update	(Ljava/lang/Object;[Ljava/lang/String;)V
    //   579: aload 39
    //   581: athrow
    //   582: astore 40
    //   584: aload 40
    //   586: invokevirtual 708	com/lidroid/xutils/exception/DbException:printStackTrace	()V
    //   589: goto -10 -> 579
    //   592: getstatic 48	com/youqicai/AppStore/service/HandleService:trafficMap	Ljava/util/HashMap;
    //   595: aload_3
    //   596: invokevirtual 681	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   599: checkcast 363	java/lang/Integer
    //   602: invokevirtual 684	java/lang/Integer:intValue	()I
    //   605: istore 7
    //   607: iload 7
    //   609: ifle +87 -> 696
    //   612: new 131	org/json/JSONObject
    //   615: dup
    //   616: invokespecial 132	org/json/JSONObject:<init>	()V
    //   619: astore 8
    //   621: aload 8
    //   623: ldc 134
    //   625: aload_3
    //   626: invokevirtual 141	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   629: pop
    //   630: aload 8
    //   632: ldc 143
    //   634: aload 6
    //   636: invokevirtual 486	com/youqicai/datasdk/AppMD5:getMd5	()Ljava/lang/String;
    //   639: invokevirtual 141	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   642: pop
    //   643: aload 8
    //   645: ldc_w 382
    //   648: iconst_2
    //   649: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   652: pop
    //   653: aload 8
    //   655: ldc_w 384
    //   658: invokestatic 316	java/lang/System:currentTimeMillis	()J
    //   661: ldc2_w 317
    //   664: ldiv
    //   665: invokevirtual 321	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   668: pop
    //   669: aload 8
    //   671: ldc_w 386
    //   674: iconst_0
    //   675: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   678: pop
    //   679: aload 8
    //   681: ldc_w 290
    //   684: iconst_0
    //   685: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   688: pop
    //   689: aload_1
    //   690: aload 8
    //   692: invokevirtual 161	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   695: pop
    //   696: dconst_0
    //   697: dstore 10
    //   699: getstatic 50	com/youqicai/AppStore/service/HandleService:batteryMap	Ljava/util/HashMap;
    //   702: aload_3
    //   703: invokevirtual 695	java/util/HashMap:containsKey	(Ljava/lang/Object;)Z
    //   706: ifeq +109 -> 815
    //   709: getstatic 50	com/youqicai/AppStore/service/HandleService:batteryMap	Ljava/util/HashMap;
    //   712: aload_3
    //   713: invokevirtual 681	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   716: checkcast 199	java/lang/Double
    //   719: invokevirtual 698	java/lang/Double:doubleValue	()D
    //   722: dstore 10
    //   724: dload 10
    //   726: dconst_0
    //   727: dcmpl
    //   728: ifle +87 -> 815
    //   731: new 131	org/json/JSONObject
    //   734: dup
    //   735: invokespecial 132	org/json/JSONObject:<init>	()V
    //   738: astore 14
    //   740: aload 14
    //   742: ldc 134
    //   744: aload_3
    //   745: invokevirtual 141	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   748: pop
    //   749: aload 14
    //   751: ldc 143
    //   753: aload 6
    //   755: invokevirtual 486	com/youqicai/datasdk/AppMD5:getMd5	()Ljava/lang/String;
    //   758: invokevirtual 141	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   761: pop
    //   762: aload 14
    //   764: ldc_w 382
    //   767: iconst_2
    //   768: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   771: pop
    //   772: aload 14
    //   774: ldc_w 384
    //   777: invokestatic 316	java/lang/System:currentTimeMillis	()J
    //   780: ldc2_w 317
    //   783: ldiv
    //   784: invokevirtual 321	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   787: pop
    //   788: aload 14
    //   790: ldc_w 386
    //   793: iconst_0
    //   794: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   797: pop
    //   798: aload 14
    //   800: ldc_w 290
    //   803: iconst_0
    //   804: invokevirtual 293	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   807: pop
    //   808: aload_1
    //   809: aload 14
    //   811: invokevirtual 161	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   814: pop
    //   815: new 678	com/youqicai/datasdk/ActiveObj
    //   818: dup
    //   819: invokespecial 709	com/youqicai/datasdk/ActiveObj:<init>	()V
    //   822: astore 12
    //   824: aload 12
    //   826: aload_3
    //   827: invokevirtual 710	com/youqicai/datasdk/ActiveObj:setPkgName	(Ljava/lang/String;)V
    //   830: aload 12
    //   832: iload 7
    //   834: invokevirtual 690	com/youqicai/datasdk/ActiveObj:setTraffic	(I)V
    //   837: aload 12
    //   839: dload 10
    //   841: invokevirtual 705	com/youqicai/datasdk/ActiveObj:setBattery	(D)V
    //   844: aload_0
    //   845: getfield 432	com/youqicai/AppStore/service/HandleService:dbUtils	Lcom/lidroid/xutils/DbUtils;
    //   848: aload 12
    //   850: invokevirtual 482	com/lidroid/xutils/DbUtils:save	(Ljava/lang/Object;)V
    //   853: goto -825 -> 28
    //   856: astore 13
    //   858: aload 13
    //   860: invokevirtual 286	java/lang/Exception:printStackTrace	()V
    //   863: goto -835 -> 28
    //   866: aload_0
    //   867: aload_0
    //   868: iconst_3
    //   869: aload_1
    //   870: invokestatic 415	com/youqicai/AppStore/service/HandleService:getHeaderJSON	(Landroid/content/Context;ILorg/json/JSONArray;)Lorg/json/JSONObject;
    //   873: invokevirtual 418	org/json/JSONObject:toString	()Ljava/lang/String;
    //   876: invokestatic 424	com/youqicai/datasdk/MessageUtils:insertMsg	(Landroid/content/Context;Ljava/lang/String;)V
    //   879: return
    //   880: astore 15
    //   882: goto -67 -> 815
    //   885: astore 9
    //   887: goto -191 -> 696
    //
    // Exception table:
    //   from	to	target	type
    //   373	392	395	com/lidroid/xutils/exception/DbException
    //   50	106	405	java/lang/Exception
    //   227	246	418	com/lidroid/xutils/exception/DbException
    //   145	220	428	java/lang/Exception
    //   437	456	459	com/lidroid/xutils/exception/DbException
    //   145	220	469	finally
    //   478	497	500	com/lidroid/xutils/exception/DbException
    //   291	366	510	java/lang/Exception
    //   519	538	541	com/lidroid/xutils/exception/DbException
    //   291	366	551	finally
    //   560	579	582	com/lidroid/xutils/exception/DbException
    //   844	853	856	java/lang/Exception
    //   740	815	880	java/lang/Exception
    //   621	696	885	java/lang/Exception
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.service.HandleService
 * JD-Core Version:    0.6.2
 */