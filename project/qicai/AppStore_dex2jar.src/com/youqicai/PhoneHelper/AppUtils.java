package com.youqicai.PhoneHelper;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Base64;
import android.util.Log;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.utils.MD5FileUtil;
import com.youqicai.AppStore.utils.ShellUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class AppUtils
{
  private static final List<AppInfoEntity> appInfoEntityList = new ArrayList(50);
  private static final Set<String> pkgNameSet = new HashSet(100);

  public static String drawableToByte(Drawable paramDrawable)
  {
    if (paramDrawable != null);
    try
    {
      int i = paramDrawable.getIntrinsicWidth();
      int j = paramDrawable.getIntrinsicHeight();
      Bitmap.Config localConfig;
      String str2;
      if (paramDrawable.getOpacity() != -1)
      {
        localConfig = Bitmap.Config.ARGB_8888;
        Bitmap localBitmap = Bitmap.createBitmap(i, j, localConfig);
        Canvas localCanvas = new Canvas(localBitmap);
        paramDrawable.setBounds(0, 0, paramDrawable.getIntrinsicWidth(), paramDrawable.getIntrinsicHeight());
        paramDrawable.draw(localCanvas);
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(4 * (localBitmap.getWidth() * localBitmap.getHeight()));
        localBitmap.compress(Bitmap.CompressFormat.PNG, 80, localByteArrayOutputStream);
        str2 = Base64.encodeToString(localByteArrayOutputStream.toByteArray(), 0);
      }
      for (String str1 = str2; ; str1 = null)
      {
        return str1;
        localConfig = Bitmap.Config.RGB_565;
        break;
      }
    }
    finally
    {
    }
  }

  private static long getApkFileSize(String paramString)
  {
    File localFile = new File(paramString);
    if (localFile.exists())
      return localFile.length();
    return 0L;
  }

  // ERROR //
  public static JSONObject getAppInfos(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: invokevirtual 123	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   7: astore_2
    //   8: new 14	java/util/ArrayList
    //   11: dup
    //   12: invokespecial 124	java/util/ArrayList:<init>	()V
    //   15: astore_3
    //   16: new 126	android/content/Intent
    //   19: dup
    //   20: ldc 128
    //   22: aconst_null
    //   23: invokespecial 131	android/content/Intent:<init>	(Ljava/lang/String;Landroid/net/Uri;)V
    //   26: astore 4
    //   28: aload 4
    //   30: ldc 133
    //   32: invokevirtual 137	android/content/Intent:addCategory	(Ljava/lang/String;)Landroid/content/Intent;
    //   35: pop
    //   36: aload_2
    //   37: aload 4
    //   39: iconst_0
    //   40: invokevirtual 143	android/content/pm/PackageManager:queryIntentActivities	(Landroid/content/Intent;I)Ljava/util/List;
    //   43: astore 6
    //   45: aload 6
    //   47: new 145	android/content/pm/ResolveInfo$DisplayNameComparator
    //   50: dup
    //   51: aload_2
    //   52: invokespecial 148	android/content/pm/ResolveInfo$DisplayNameComparator:<init>	(Landroid/content/pm/PackageManager;)V
    //   55: invokestatic 154	java/util/Collections:sort	(Ljava/util/List;Ljava/util/Comparator;)V
    //   58: aload 6
    //   60: invokeinterface 160 1 0
    //   65: astore 7
    //   67: aload 7
    //   69: invokeinterface 165 1 0
    //   74: ifeq +297 -> 371
    //   77: aload 7
    //   79: invokeinterface 169 1 0
    //   84: checkcast 171	android/content/pm/ResolveInfo
    //   87: astore 9
    //   89: aload_2
    //   90: aload 9
    //   92: getfield 175	android/content/pm/ResolveInfo:activityInfo	Landroid/content/pm/ActivityInfo;
    //   95: getfield 181	android/content/pm/ActivityInfo:packageName	Ljava/lang/String;
    //   98: iconst_0
    //   99: invokevirtual 185	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   102: astore 11
    //   104: new 187	com/youqicai/PhoneHelper/AppHolder
    //   107: dup
    //   108: invokespecial 188	com/youqicai/PhoneHelper/AppHolder:<init>	()V
    //   111: astore 12
    //   113: aload 12
    //   115: new 190	java/lang/StringBuilder
    //   118: dup
    //   119: invokespecial 191	java/lang/StringBuilder:<init>	()V
    //   122: aload 11
    //   124: getfield 197	android/content/pm/PackageInfo:versionCode	I
    //   127: invokevirtual 201	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   130: ldc 203
    //   132: invokevirtual 206	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: invokevirtual 210	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   138: invokevirtual 213	com/youqicai/PhoneHelper/AppHolder:setVersionCode	(Ljava/lang/String;)V
    //   141: aload 12
    //   143: aload 11
    //   145: getfield 216	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   148: invokevirtual 219	com/youqicai/PhoneHelper/AppHolder:setVersionName	(Ljava/lang/String;)V
    //   151: aload 11
    //   153: getfield 223	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   156: aload_2
    //   157: invokevirtual 229	android/content/pm/ApplicationInfo:loadLabel	(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    //   160: astore 13
    //   162: aload 13
    //   164: ifnonnull +174 -> 338
    //   167: ldc 203
    //   169: astore 14
    //   171: aload 12
    //   173: aload 14
    //   175: invokevirtual 232	com/youqicai/PhoneHelper/AppHolder:setAppName	(Ljava/lang/String;)V
    //   178: aload 12
    //   180: aload 11
    //   182: getfield 233	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   185: invokevirtual 236	com/youqicai/PhoneHelper/AppHolder:setPackageName	(Ljava/lang/String;)V
    //   188: aload 12
    //   190: aload 11
    //   192: getfield 223	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   195: getfield 239	android/content/pm/ApplicationInfo:publicSourceDir	Ljava/lang/String;
    //   198: invokevirtual 242	com/youqicai/PhoneHelper/AppHolder:setInstallPath	(Ljava/lang/String;)V
    //   201: aload 12
    //   203: aload 11
    //   205: getfield 246	android/content/pm/PackageInfo:firstInstallTime	J
    //   208: invokevirtual 250	com/youqicai/PhoneHelper/AppHolder:setFirstInstallTime	(J)V
    //   211: aload 12
    //   213: aload 11
    //   215: getfield 253	android/content/pm/PackageInfo:lastUpdateTime	J
    //   218: invokevirtual 256	com/youqicai/PhoneHelper/AppHolder:setLastUpdateTime	(J)V
    //   221: aload 11
    //   223: getfield 223	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   226: ifnull +124 -> 350
    //   229: iconst_1
    //   230: aload 11
    //   232: getfield 223	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   235: getfield 259	android/content/pm/ApplicationInfo:flags	I
    //   238: iand
    //   239: ifle +111 -> 350
    //   242: aload 12
    //   244: iconst_0
    //   245: invokevirtual 262	com/youqicai/PhoneHelper/AppHolder:setAppType	(I)V
    //   248: aload 12
    //   250: iconst_0
    //   251: invokevirtual 265	com/youqicai/PhoneHelper/AppHolder:setInstallLocation	(I)V
    //   254: aload 12
    //   256: aload 12
    //   258: invokevirtual 268	com/youqicai/PhoneHelper/AppHolder:getInstallPath	()Ljava/lang/String;
    //   261: invokestatic 270	com/youqicai/PhoneHelper/AppUtils:getApkFileSize	(Ljava/lang/String;)J
    //   264: invokevirtual 273	com/youqicai/PhoneHelper/AppHolder:setFileSize	(J)V
    //   267: aload 12
    //   269: aload 9
    //   271: getfield 175	android/content/pm/ResolveInfo:activityInfo	Landroid/content/pm/ActivityInfo;
    //   274: getfield 276	android/content/pm/ActivityInfo:name	Ljava/lang/String;
    //   277: invokevirtual 279	com/youqicai/PhoneHelper/AppHolder:setMainActivity	(Ljava/lang/String;)V
    //   280: aload 12
    //   282: aload 11
    //   284: getfield 223	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   287: aload_2
    //   288: invokevirtual 283	android/content/pm/ApplicationInfo:loadIcon	(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    //   291: aload 11
    //   293: getfield 233	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   296: invokestatic 287	com/youqicai/PhoneHelper/AppUtils:getIconByPackageName	(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Ljava/lang/String;
    //   299: invokevirtual 290	com/youqicai/PhoneHelper/AppHolder:setIconBase64	(Ljava/lang/String;)V
    //   302: aload 12
    //   304: ldc_w 292
    //   307: invokevirtual 290	com/youqicai/PhoneHelper/AppHolder:setIconBase64	(Ljava/lang/String;)V
    //   310: aload 12
    //   312: ldc_w 294
    //   315: invokevirtual 297	com/youqicai/PhoneHelper/AppHolder:setApkMd5	(Ljava/lang/String;)V
    //   318: aload 12
    //   320: ldc_w 299
    //   323: invokevirtual 302	com/youqicai/PhoneHelper/AppHolder:setSignatureMd5	(Ljava/lang/String;)V
    //   326: aload_3
    //   327: aload 12
    //   329: invokeinterface 306 2 0
    //   334: pop
    //   335: goto -268 -> 67
    //   338: aload 13
    //   340: invokeinterface 309 1 0
    //   345: astore 14
    //   347: goto -176 -> 171
    //   350: aload 12
    //   352: iconst_1
    //   353: invokevirtual 265	com/youqicai/PhoneHelper/AppHolder:setInstallLocation	(I)V
    //   356: aload 12
    //   358: iconst_1
    //   359: invokevirtual 262	com/youqicai/PhoneHelper/AppHolder:setAppType	(I)V
    //   362: goto -108 -> 254
    //   365: astore_1
    //   366: ldc 2
    //   368: monitorexit
    //   369: aload_1
    //   370: athrow
    //   371: aload_3
    //   372: invokestatic 313	com/youqicai/PhoneHelper/AppUtils:jsonObjAppInfo	(Ljava/util/List;)Lorg/json/JSONObject;
    //   375: astore 8
    //   377: ldc 2
    //   379: monitorexit
    //   380: aload 8
    //   382: areturn
    //   383: astore 10
    //   385: goto -318 -> 67
    //
    // Exception table:
    //   from	to	target	type
    //   3	67	365	finally
    //   67	89	365	finally
    //   89	162	365	finally
    //   171	254	365	finally
    //   254	335	365	finally
    //   338	347	365	finally
    //   350	362	365	finally
    //   371	377	365	finally
    //   89	162	383	java/lang/Exception
    //   171	254	383	java/lang/Exception
    //   254	335	383	java/lang/Exception
    //   338	347	383	java/lang/Exception
    //   350	362	383	java/lang/Exception
  }

  public static List<AppInfoEntity> getApps(Context paramContext)
  {
    try
    {
      if (appInfoEntityList.size() == 0)
      {
        appInfoEntityList.clear();
        PackageManager localPackageManager = paramContext.getPackageManager();
        Intent localIntent = new Intent("android.intent.action.MAIN", null);
        localIntent.addCategory("android.intent.category.LAUNCHER");
        Iterator localIterator = localPackageManager.queryIntentActivities(localIntent, 0).iterator();
        while (localIterator.hasNext())
        {
          ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
          try
          {
            PackageInfo localPackageInfo = localPackageManager.getPackageInfo(localResolveInfo.activityInfo.packageName, 0);
            AppInfoEntity localAppInfoEntity = new AppInfoEntity();
            localAppInfoEntity.setPackageName(localPackageInfo.packageName);
            localAppInfoEntity.setVersionName(localPackageInfo.versionName);
            localAppInfoEntity.setVersionCode(localPackageInfo.versionCode);
            localAppInfoEntity.setApkMd5(MD5FileUtil.getFileMD5String(localPackageInfo.applicationInfo.publicSourceDir));
            appInfoEntityList.add(localAppInfoEntity);
          }
          catch (Exception localException)
          {
          }
        }
      }
      List localList = appInfoEntityList;
      return localList;
    }
    finally
    {
    }
  }

  public static String getIconByPackageName(Drawable paramDrawable, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    String str1 = "IconGetIsNull";
    if (paramString == null)
      return str1;
    try
    {
      Bitmap localBitmap = ((BitmapDrawable)paramDrawable).getBitmap();
      String str2 = paramString + ".png";
      File localFile1 = new File("/sdcard/icon");
      if (!localFile1.exists())
        localFile1.mkdirs();
      if (!localFile1.exists())
      {
        File localFile2 = new File("/sdcard/icon");
        if (!localFile2.exists())
          localFile2.mkdirs();
        if (localFile2.exists());
      }
      File localFile3 = new File("/sdcard/icon", str2);
      localArrayList.add("chmod 777 " + localFile1.getAbsolutePath());
      if (localFile3.exists())
        return str1;
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile3);
      localBitmap.compress(Bitmap.CompressFormat.PNG, 90, localFileOutputStream);
      localFileOutputStream.flush();
      localFileOutputStream.close();
      str1 = localFile3.getAbsolutePath();
      localArrayList.add("chmod 777 " + str1);
      ShellUtils.execCommand(localArrayList, false);
      return str1;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      while (true)
        localFileNotFoundException.printStackTrace();
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  // ERROR //
  public static boolean isPkgInstall(String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 25	com/youqicai/PhoneHelper/AppUtils:pkgNameSet	Ljava/util/Set;
    //   6: invokeinterface 389 1 0
    //   11: ifne +69 -> 80
    //   14: getstatic 25	com/youqicai/PhoneHelper/AppUtils:pkgNameSet	Ljava/util/Set;
    //   17: invokeinterface 390 1 0
    //   22: invokestatic 396	com/youqicai/AppStore/AppStoreApplication:getInstance	()Lcom/youqicai/AppStore/AppStoreApplication;
    //   25: invokevirtual 397	com/youqicai/AppStore/AppStoreApplication:getPackageManager	()Landroid/content/pm/PackageManager;
    //   28: iconst_0
    //   29: invokevirtual 401	android/content/pm/PackageManager:getInstalledPackages	(I)Ljava/util/List;
    //   32: invokeinterface 160 1 0
    //   37: astore 6
    //   39: aload 6
    //   41: invokeinterface 165 1 0
    //   46: ifeq +34 -> 80
    //   49: aload 6
    //   51: invokeinterface 169 1 0
    //   56: checkcast 193	android/content/pm/PackageInfo
    //   59: astore 7
    //   61: getstatic 25	com/youqicai/PhoneHelper/AppUtils:pkgNameSet	Ljava/util/Set;
    //   64: aload 7
    //   66: getfield 233	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   69: invokeinterface 402 2 0
    //   74: pop
    //   75: goto -36 -> 39
    //   78: astore 5
    //   80: getstatic 25	com/youqicai/PhoneHelper/AppUtils:pkgNameSet	Ljava/util/Set;
    //   83: aload_0
    //   84: invokeinterface 405 2 0
    //   89: istore 4
    //   91: iload 4
    //   93: istore_3
    //   94: ldc 2
    //   96: monitorexit
    //   97: iload_3
    //   98: ireturn
    //   99: astore_1
    //   100: ldc 2
    //   102: monitorexit
    //   103: aload_1
    //   104: athrow
    //   105: astore_2
    //   106: iconst_0
    //   107: istore_3
    //   108: goto -14 -> 94
    //
    // Exception table:
    //   from	to	target	type
    //   22	39	78	java/lang/Exception
    //   39	75	78	java/lang/Exception
    //   3	22	99	finally
    //   22	39	99	finally
    //   39	75	99	finally
    //   80	91	99	finally
    //   80	91	105	java/lang/Exception
  }

  public static JSONObject jsonObjAppInfo(List<AppHolder> paramList)
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONArray localJSONArray = new JSONArray();
    try
    {
      localJSONObject1.put("status", "0");
      for (int i = 0; i < paramList.size(); i++)
      {
        AppHolder localAppHolder = (AppHolder)paramList.get(i);
        JSONObject localJSONObject2 = new JSONObject();
        localJSONObject2.put("versionCode", localAppHolder.getVersionCode());
        localJSONObject2.put("versionName", localAppHolder.getVersionName());
        localJSONObject2.put("appName", localAppHolder.getAppName());
        localJSONObject2.put("packageName", localAppHolder.getPackageName());
        localJSONObject2.put("installLocation", localAppHolder.getInstallLocation());
        localJSONObject2.put("installPath", localAppHolder.getInstallPath());
        localJSONObject2.put("firstInstallTime", localAppHolder.getFirstInstallTime());
        localJSONObject2.put("lastUpdateTime", localAppHolder.getLastUpdateTime());
        localJSONObject2.put("appType", localAppHolder.getAppType());
        localJSONObject2.put("fileSize", localAppHolder.getFileSize());
        localJSONObject2.put("mainActivity", localAppHolder.getMainActivity());
        localJSONObject2.put("iconBase64", localAppHolder.getIconBase64());
        localJSONObject2.put("apkMd5", localAppHolder.getApkMd5());
        localJSONObject2.put("signatureMd5", localAppHolder.getSignatureMd5());
        localJSONArray.put(localJSONObject2);
      }
      localJSONObject1.put("status", "1");
      localJSONObject1.put("contents", localJSONArray);
      Log.e("doll", System.currentTimeMillis() + " end");
      return localJSONObject1;
    }
    catch (JSONException localJSONException)
    {
      while (true)
        localJSONException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.PhoneHelper.AppUtils
 * JD-Core Version:    0.6.2
 */