package com.youqicai.manager;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.widget.Toast;
import com.hsg.sdk.common.util.Logg;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.utils.GlobalData;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

public class ApkManager
{
  public static ArrayList<String> downUrlList = new ArrayList();
  private static int downloadingCount = 0;
  private static ApkManager instance = null;
  private static Context mContext;
  private static UpDowningCountListener upDowningCountListener;
  private String apkRootPath = "";

  public static ApkManager getInstance()
  {
    if (instance == null)
      return new ApkManager();
    return instance;
  }

  public static void initApkManager(Context paramContext)
  {
    mContext = paramContext;
  }

  public static boolean isValidApk(Context paramContext, String paramString)
  {
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageArchiveInfo(paramString, 1);
      return localPackageInfo != null;
    }
    catch (Throwable localThrowable)
    {
    }
    return false;
  }

  public static void setDownLoadingCount(int paramInt)
  {
    downloadingCount = paramInt;
    if (upDowningCountListener != null)
      upDowningCountListener.upDowningCount(downloadingCount);
  }

  public void checkDownloadStatus(ArrayList<AppInfoEntity> paramArrayList)
  {
    while (true)
    {
      ArrayList localArrayList;
      AppInfoEntity localAppInfoEntity1;
      int i;
      try
      {
        localArrayList = BaseDbAdapter.getInstance(mContext).getAllDownAPPinfo();
        if ((paramArrayList == null) || (paramArrayList.size() <= 0))
          break;
        Iterator localIterator1 = paramArrayList.iterator();
        if (!localIterator1.hasNext())
          break;
        localAppInfoEntity1 = (AppInfoEntity)localIterator1.next();
        localAppInfoEntity1.setAppStatus(0);
        i = getAppStatus(mContext, localAppInfoEntity1.getPackageName(), localAppInfoEntity1.getVersionName(), localAppInfoEntity1.getVersionCode());
        if (i == 6)
        {
          localAppInfoEntity1.setAppStatus(i);
          localAppInfoEntity1.setdownloadProgress(Float.valueOf(localAppInfoEntity1.getFileSize()).floatValue());
          continue;
        }
      }
      catch (Exception localException)
      {
        throw new RuntimeException(localException);
      }
      if (i == 5)
        localAppInfoEntity1.setAppStatus(5);
      if ((localArrayList != null) && (localArrayList.size() > 0))
      {
        Iterator localIterator2 = localArrayList.iterator();
        while (localIterator2.hasNext())
        {
          AppInfoEntity localAppInfoEntity2 = (AppInfoEntity)localIterator2.next();
          if (localAppInfoEntity2.getAppId().equals(localAppInfoEntity1.getAppId()))
          {
            localAppInfoEntity1.setAppStatus(localAppInfoEntity2.getAppStatus());
            localAppInfoEntity1.setdownloadProgress(localAppInfoEntity2.getdownloadProgress());
            localAppInfoEntity1.setDownloadTime(localAppInfoEntity2.getDownloadTime());
          }
        }
      }
    }
  }

  public boolean compareApkVersion(AppInfoEntity paramAppInfoEntity1, AppInfoEntity paramAppInfoEntity2)
  {
    if ((paramAppInfoEntity1 != null) && (paramAppInfoEntity2 != null) && (paramAppInfoEntity1.getVersionName() != null) && (paramAppInfoEntity2.getVersionName() != null))
    {
      int i = "00000000".length();
      try
      {
        String str1 = paramAppInfoEntity2.getVersionName().replaceAll("\\.", "");
        String str2 = paramAppInfoEntity1.getVersionName().replaceAll("\\.", "");
        String str3;
        if (str2.length() <= i)
        {
          str3 = str2 + "00000000".substring(str2.length());
          if (str1.length() > i)
            break label172;
        }
        label172: String str4;
        for (Object localObject = str1 + "00000000".substring(str1.length()); ; localObject = str4)
        {
          long l = Integer.valueOf((String)localObject).intValue();
          if (Integer.valueOf(str3).intValue() <= l)
            break label190;
          return true;
          str3 = str2.substring(0, i);
          break;
          str4 = str1.substring(0, i);
        }
      }
      catch (Exception localException)
      {
      }
    }
    label190: return false;
  }

  public boolean compareApkVersionCode(AppInfoEntity paramAppInfoEntity1, AppInfoEntity paramAppInfoEntity2)
  {
    boolean bool = false;
    if (paramAppInfoEntity1 != null)
    {
      bool = false;
      if (paramAppInfoEntity2 != null)
      {
        int i = paramAppInfoEntity1.getVersionCode();
        int j = paramAppInfoEntity2.getVersionCode();
        bool = false;
        if (i > j)
          bool = true;
      }
    }
    return bool;
  }

  public void delDownUrlList(String paramString1, String paramString2)
  {
    if (downUrlList.contains(paramString1))
    {
      downUrlList.remove(paramString1);
      if (upDowningCountListener != null)
      {
        ArrayList localArrayList = BaseDbAdapter.getInstance(mContext).getDownLoadingAPPinfo();
        if (localArrayList != null)
        {
          upDowningCountListener.upDowningCount(localArrayList.size());
          DownLoadManager.getInstance().removeUrl(paramString2);
        }
      }
    }
  }

  public void deletApk(String paramString)
  {
    String str = this.apkRootPath + File.separator + paramString;
    Logg.d("huashao", "apkPath==" + str);
    File localFile = new File(str);
    if (localFile.exists())
      localFile.delete();
  }

  public void deleteApk(Context paramContext, String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("package:").append(paramString);
    paramContext.startActivity(new Intent("android.intent.action.DELETE", Uri.parse(localStringBuffer.toString())));
  }

  public void deleteApkInfo(Context paramContext, AppInfoEntity paramAppInfoEntity)
  {
    DownLoadManager.getInstance().stopDownload(paramAppInfoEntity.getApkUrl());
    BaseDbAdapter.getInstance(paramContext).deleteDownloadingApkInfo(paramAppInfoEntity.getAppId());
    deletApk(paramAppInfoEntity.getPackageName() + ".apk");
  }

  public void deleteApkInfo(Context paramContext, AppInfoEntity paramAppInfoEntity, boolean paramBoolean)
  {
    DownLoadManager.getInstance().stopDownload(paramAppInfoEntity.getApkUrl());
    BaseDbAdapter.getInstance(paramContext).deleteDownloadingApkInfo(paramAppInfoEntity.getAppId());
    if (paramBoolean)
      deletApk(paramAppInfoEntity.getPackageName() + ".apk");
  }

  public void deleteHistoryApkInfo(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      ArrayList localArrayList = BaseDbAdapter.getInstance(paramContext).getAllDownAPPinfo();
      if ((localArrayList != null) && (localArrayList.size() > 0))
      {
        Iterator localIterator = localArrayList.iterator();
        while (localIterator.hasNext())
        {
          AppInfoEntity localAppInfoEntity = (AppInfoEntity)localIterator.next();
          if ((localAppInfoEntity.getAppStatus() == 4) || (localAppInfoEntity.getAppStatus() == 6) || (localAppInfoEntity.getAppStatus() == 5))
            deletApk(localAppInfoEntity.getPackageName() + ".apk");
        }
      }
    }
    BaseDbAdapter.getInstance(mContext).deleteAllHistoryApkInfo();
  }

  public void getApkPackageInfo(Context paramContext, String paramString)
  {
    String str = this.apkRootPath + File.separator + paramString;
    PackageManager localPackageManager = paramContext.getPackageManager();
    PackageInfo localPackageInfo = localPackageManager.getPackageArchiveInfo(str, 1);
    ApplicationInfo localApplicationInfo;
    if (localPackageInfo != null)
    {
      localApplicationInfo = localPackageInfo.applicationInfo;
      localPackageManager.getApplicationLabel(localApplicationInfo).toString();
    }
  }

  public void getApkPackageInfo(Context paramContext, String paramString1, String paramString2)
  {
    String str = paramString2 + File.separator + paramString1;
    PackageManager localPackageManager = paramContext.getPackageManager();
    PackageInfo localPackageInfo = localPackageManager.getPackageArchiveInfo(str, 1);
    ApplicationInfo localApplicationInfo;
    if (localPackageInfo != null)
    {
      localApplicationInfo = localPackageInfo.applicationInfo;
      localPackageManager.getApplicationLabel(localApplicationInfo).toString();
    }
  }

  public String getApkPath()
  {
    return this.apkRootPath;
  }

  // ERROR //
  public int getAppStatus(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokestatic 339	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: istore 6
    //   6: iconst_0
    //   7: istore 7
    //   9: iload 6
    //   11: ifne +103 -> 114
    //   14: aload_1
    //   15: invokevirtual 86	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   18: astore 8
    //   20: iconst_0
    //   21: istore 7
    //   23: aload 8
    //   25: ifnull +89 -> 114
    //   28: aload 8
    //   30: aload_2
    //   31: iconst_0
    //   32: invokevirtual 342	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   35: astore 10
    //   37: iconst_0
    //   38: istore 7
    //   40: aload 10
    //   42: ifnull +72 -> 114
    //   45: new 134	com/youqicai/AppStore/entity/AppInfoEntity
    //   48: dup
    //   49: invokespecial 343	com/youqicai/AppStore/entity/AppInfoEntity:<init>	()V
    //   52: astore 11
    //   54: aload 11
    //   56: aload_3
    //   57: invokevirtual 346	com/youqicai/AppStore/entity/AppInfoEntity:setVersionName	(Ljava/lang/String;)V
    //   60: aload 11
    //   62: iload 4
    //   64: invokevirtual 349	com/youqicai/AppStore/entity/AppInfoEntity:setVersionCode	(I)V
    //   67: new 134	com/youqicai/AppStore/entity/AppInfoEntity
    //   70: dup
    //   71: invokespecial 343	com/youqicai/AppStore/entity/AppInfoEntity:<init>	()V
    //   74: astore 13
    //   76: aload 13
    //   78: aload 10
    //   80: getfield 329	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   83: invokevirtual 346	com/youqicai/AppStore/entity/AppInfoEntity:setVersionName	(Ljava/lang/String;)V
    //   86: aload 13
    //   88: aload 10
    //   90: getfield 352	android/content/pm/PackageInfo:versionCode	I
    //   93: invokevirtual 349	com/youqicai/AppStore/entity/AppInfoEntity:setVersionCode	(I)V
    //   96: aload_0
    //   97: aload 11
    //   99: aload 13
    //   101: invokevirtual 354	com/youqicai/manager/ApkManager:compareApkVersionCode	(Lcom/youqicai/AppStore/entity/AppInfoEntity;Lcom/youqicai/AppStore/entity/AppInfoEntity;)Z
    //   104: istore 14
    //   106: iload 14
    //   108: ifeq +11 -> 119
    //   111: iconst_5
    //   112: istore 7
    //   114: iload 7
    //   116: ireturn
    //   117: astore 12
    //   119: bipush 6
    //   121: ireturn
    //   122: astore 5
    //   124: iconst_3
    //   125: ireturn
    //   126: astore 9
    //   128: iconst_0
    //   129: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   45	106	117	java/lang/Exception
    //   0	6	122	java/lang/Exception
    //   14	20	122	java/lang/Exception
    //   28	37	122	java/lang/Exception
    //   28	37	126	android/content/pm/PackageManager$NameNotFoundException
    //   45	106	126	android/content/pm/PackageManager$NameNotFoundException
  }

  public int getInstallApkCount(Context paramContext)
  {
    downUrlList = new ArrayList();
    ArrayList localArrayList = BaseDbAdapter.getInstance(paramContext).getDownLoadingAPPinfo();
    downUrlList.addAll(localArrayList);
    return localArrayList.size();
  }

  public void installApk(Context paramContext, String paramString)
  {
    GlobalData.getInstance().addInstallPackage(paramString.substring(0, -4 + paramString.length()));
    String str = this.apkRootPath + File.separator + paramString;
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setFlags(268435456);
    localIntent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.android.package-archive");
    paramContext.startActivity(localIntent);
  }

  public void installApk(Context paramContext, String paramString1, String paramString2)
  {
    String str = paramString2 + File.separator + paramString1;
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.android.package-archive");
    paramContext.startActivity(localIntent);
  }

  public void installApk2(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    try
    {
      localIntent.putExtra("android.intent.extra.UID", paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 64).applicationInfo.uid);
      localIntent.addFlags(268435456);
      localIntent.setDataAndType(Uri.parse("file://" + paramString), "application/vnd.android.package-archive");
      paramContext.startActivity(localIntent);
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        localNameNotFoundException.printStackTrace();
    }
  }

  public boolean isExitApp(Context paramContext, String paramString)
  {
    return CacheManager.isFileExist(paramContext, this.apkRootPath, paramString + ".apk") != null;
  }

  public void setDownUrlList(String paramString)
  {
    if (!downUrlList.contains(paramString))
    {
      downUrlList.add(paramString);
      if (upDowningCountListener != null)
        upDowningCountListener.upDowningCount(downUrlList.size());
    }
  }

  public void setUpDowningCountListener(UpDowningCountListener paramUpDowningCountListener)
  {
    upDowningCountListener = paramUpDowningCountListener;
  }

  public void startApk(Context paramContext, String paramString)
  {
    try
    {
      paramContext.startActivity(paramContext.getPackageManager().getLaunchIntentForPackage(paramString));
      return;
    }
    catch (Exception localException)
    {
      Toast.makeText(paramContext, "没有安装", 1).show();
    }
  }

  public ArrayList<AppInfoEntity> updateDownLoadStatus(Context paramContext)
  {
    ArrayList localArrayList = BaseDbAdapter.getInstance(paramContext).getAllDownAPPinfo();
    if ((localArrayList != null) && (localArrayList.size() > 0))
    {
      Iterator localIterator = localArrayList.iterator();
      if (localIterator.hasNext())
      {
        AppInfoEntity localAppInfoEntity = (AppInfoEntity)localIterator.next();
        int i = getAppStatus(paramContext, localAppInfoEntity.getPackageName(), localAppInfoEntity.getVersionName(), localAppInfoEntity.getVersionCode());
        if (i == 6)
        {
          localAppInfoEntity.setAppStatus(6);
          localAppInfoEntity.setdownloadProgress(Float.valueOf(localAppInfoEntity.getFileSize()).floatValue());
        }
        while (true)
        {
          BaseDbAdapter.getInstance(paramContext).saveDownloadAppInfo(localAppInfoEntity);
          break;
          if (i == 5)
          {
            if ((localAppInfoEntity.getAppStatus() == 4) || (localAppInfoEntity.getAppStatus() == 2) || (localAppInfoEntity.getAppStatus() == 1) || (localAppInfoEntity.getAppStatus() == 3))
            {
              String str3 = getInstance().getApkPath();
              String str4 = str3 + File.separator + localAppInfoEntity.getPackageName() + ".apk";
              File localFile2 = new File(str4);
              if (localFile2.exists())
              {
                float f2 = (float)localFile2.length();
                localAppInfoEntity.setdownloadProgress(f2);
                if (f2 == Float.valueOf(localAppInfoEntity.getFileSize()).floatValue())
                  localAppInfoEntity.setAppStatus(4);
                else if (isValidApk(paramContext, str4))
                  localAppInfoEntity.setAppStatus(4);
                else if (localAppInfoEntity.getAppStatus() == 4)
                  localAppInfoEntity.setAppStatus(1);
              }
              else
              {
                localAppInfoEntity.setdownloadProgress(0.0F);
                if (localAppInfoEntity.getAppStatus() == 4)
                  localAppInfoEntity.setAppStatus(5);
              }
            }
            else
            {
              localAppInfoEntity.setAppStatus(5);
            }
          }
          else
          {
            String str1 = getInstance().getApkPath();
            String str2 = str1 + File.separator + localAppInfoEntity.getPackageName() + ".apk";
            File localFile1 = new File(str2);
            if (localFile1.exists())
            {
              float f1 = (float)localFile1.length();
              localAppInfoEntity.setdownloadProgress(f1);
              if (f1 == Float.valueOf(localAppInfoEntity.getFileSize()).floatValue())
                localAppInfoEntity.setAppStatus(4);
              else if (isValidApk(paramContext, str2))
                localAppInfoEntity.setAppStatus(4);
              else if (localAppInfoEntity.getAppStatus() == 4)
                localAppInfoEntity.setAppStatus(1);
            }
            else
            {
              localAppInfoEntity.setdownloadProgress(0.0F);
              if ((localAppInfoEntity.getAppStatus() == 4) || (localAppInfoEntity.getAppStatus() == 6))
                localAppInfoEntity.setAppStatus(3);
            }
          }
        }
      }
    }
    return localArrayList;
  }

  public void updateDownLoadStatusThread(final Context paramContext)
  {
    new Thread()
    {
      public void run()
      {
        ApkManager.this.updateDownLoadStatus(paramContext);
        super.run();
      }
    }
    .start();
  }

  public class ApkStatus
  {
    public static final int APK_STATUS_DOWNLOAD_FINISH = 3;
    public static final int APK_STATUS_INSTALLED_VERSION_LAST = 2;
    public static final int APK_STATUS_INSTALLED_VERSION_LOW = 1;
    public static final int APK_STATUS_NOT_INSTALLED;

    public ApkStatus()
    {
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.manager.ApkManager
 * JD-Core Version:    0.6.2
 */