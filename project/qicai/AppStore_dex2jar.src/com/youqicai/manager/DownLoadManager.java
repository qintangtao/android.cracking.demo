package com.youqicai.manager;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.service.HandleService;
import com.youqicai.AppStore.utils.GlobalData;
import com.youqicai.datasdk.Track;
import com.youqicai.download.DownloadListener;
import com.youqicai.download.DownloadService;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class DownLoadManager
{
  private static DownLoadManager instance;
  private static Context mContext;
  private HashMap<String, AppInfoEntity> appInfoEntityMap = new HashMap();
  private HashMap<String, listenerTag> listeners = new HashMap();

  public static DownLoadManager getInstance()
  {
    try
    {
      if (instance == null)
        instance = new DownLoadManager();
      DownLoadManager localDownLoadManager = instance;
      return localDownLoadManager;
    }
    finally
    {
    }
  }

  public static void initDownloadManager(Context paramContext)
  {
    mContext = paramContext;
  }

  public void cleanListener()
  {
    if (this.appInfoEntityMap != null)
      this.appInfoEntityMap.clear();
    if (this.listeners != null)
      this.listeners.clear();
  }

  public Map<String, AppInfoEntity> getAppinfoEntityMap()
  {
    return this.appInfoEntityMap;
  }

  public boolean isHasApkDownLoading()
  {
    return (this.appInfoEntityMap != null) && (this.appInfoEntityMap.size() > 0);
  }

  public void registerReceivedNotifyListener(String paramString, MutiDownLoadListener paramMutiDownLoadListener, int[] paramArrayOfInt)
  {
    synchronized (this.listeners)
    {
      if (this.listeners.containsKey(paramString))
        this.listeners.remove(paramString);
      listenerTag locallistenerTag = new listenerTag(null);
      locallistenerTag.l = paramMutiDownLoadListener;
      if ((paramArrayOfInt != null) && (paramArrayOfInt.length > 0))
        locallistenerTag.id = paramArrayOfInt[0];
      this.listeners.put(paramString, locallistenerTag);
      return;
    }
  }

  public void removeUrl(String paramString)
  {
    try
    {
      if ((!TextUtils.isEmpty(paramString)) && (this.appInfoEntityMap.containsKey(paramString)))
        this.appInfoEntityMap.remove(paramString);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void startDownload(AppInfoEntity paramAppInfoEntity)
  {
    Log.e("doll --------------------- ", paramAppInfoEntity.getApkUrl());
    String str1 = ApkManager.getInstance().getApkPath();
    String str2 = str1 + File.separator + paramAppInfoEntity.getPackageName() + ".apk";
    DownloadService.getInstance().executeAdvanceDownloadTask(paramAppInfoEntity.getApkUrl(), str2, null, new String[] { "application/vnd.android.package-archive" }, new ApkDownloadListener(paramAppInfoEntity));
    synchronized (this.appInfoEntityMap)
    {
      if (!this.appInfoEntityMap.containsKey(paramAppInfoEntity.getApkUrl()))
        this.appInfoEntityMap.put(paramAppInfoEntity.getApkUrl(), paramAppInfoEntity);
      return;
    }
  }

  public void stopAllDownloadTask()
  {
    try
    {
      synchronized (this.appInfoEntityMap)
      {
        Iterator localIterator = this.appInfoEntityMap.keySet().iterator();
        if (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          stopDownload(((AppInfoEntity)this.appInfoEntityMap.get(str)).getApkUrl());
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    cleanListener();
  }

  public void stopDownload(String paramString)
  {
    try
    {
      if (!TextUtils.isEmpty(paramString))
      {
        DownloadService.getInstance().stopDownload(paramString);
        if (this.appInfoEntityMap.containsKey(paramString))
          this.appInfoEntityMap.remove(paramString);
      }
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void unregisterReceivedNotifyListener(String paramString)
  {
    synchronized (this.listeners)
    {
      if (this.listeners.containsKey(paramString))
        this.listeners.remove(paramString);
      return;
    }
  }

  private class ApkDownloadListener
    implements DownloadListener
  {
    private int maxRate = 100;
    private String packageId;
    private int rate = 0;
    private String srcUrl;

    public ApkDownloadListener(AppInfoEntity arg2)
    {
      Object localObject;
      this.srcUrl = localObject.getApkUrl();
      this.packageId = localObject.getPackageId();
    }

    private DownLoadManager.listenerTag getListener()
    {
      if ((DownLoadManager.this.listeners != null) && (DownLoadManager.this.listeners.containsKey(this.srcUrl)))
        return (DownLoadManager.listenerTag)DownLoadManager.this.listeners.get(this.srcUrl);
      return null;
    }

    public void failed(String paramString, Exception paramException)
    {
      paramException.printStackTrace();
      Log.e("doll " + paramString, " --------> ");
      DownLoadManager.listenerTag locallistenerTag = getListener();
      if ((locallistenerTag != null) && (locallistenerTag.l != null))
        locallistenerTag.l.failed(paramString, paramException, locallistenerTag.id);
    }

    public AppInfoEntity getEntity()
    {
      if ((DownLoadManager.this.appInfoEntityMap != null) && (DownLoadManager.this.appInfoEntityMap.containsKey(this.srcUrl)))
        return (AppInfoEntity)DownLoadManager.this.appInfoEntityMap.get(this.srcUrl);
      return null;
    }

    public AppInfoEntity getEntity(String paramString)
    {
      if ((DownLoadManager.this.appInfoEntityMap != null) && (DownLoadManager.this.appInfoEntityMap.containsKey(paramString)))
        return (AppInfoEntity)DownLoadManager.this.appInfoEntityMap.get(paramString);
      return null;
    }

    public void setDownAllSize(float paramFloat)
    {
      DownLoadManager.listenerTag locallistenerTag = getListener();
      if ((locallistenerTag != null) && (locallistenerTag.l != null))
        locallistenerTag.l.setDownAllSize(paramFloat, locallistenerTag.id);
    }

    public void setDownloadedSize(float paramFloat)
    {
      AppInfoEntity localAppInfoEntity = getEntity();
      DownLoadManager.listenerTag locallistenerTag = getListener();
      if ((localAppInfoEntity != null) && (locallistenerTag != null) && (locallistenerTag.l != null))
      {
        int i = (int)(paramFloat * this.maxRate / Float.valueOf(localAppInfoEntity.getFileSize()).floatValue());
        if ((i - this.rate >= 1) || (paramFloat == Float.valueOf(localAppInfoEntity.getFileSize()).floatValue()))
        {
          this.rate = i;
          locallistenerTag.l.setDownloadedSize(paramFloat, locallistenerTag.id);
        }
      }
      if (localAppInfoEntity != null)
        localAppInfoEntity.setdownloadProgress(paramFloat);
    }

    public void success(String paramString1, String paramString2)
    {
      AppInfoEntity localAppInfoEntity = getEntity(paramString1);
      if (localAppInfoEntity != null)
      {
        localAppInfoEntity.setAppStatus(4);
        DownLoadManager.this.appInfoEntityMap.remove(paramString1);
        BaseDbAdapter.getInstance(DownLoadManager.mContext).updateDownloadAppStatusOfPackageId(this.packageId, 4, String.valueOf(System.currentTimeMillis()));
        ApkManager.getInstance().delDownUrlList(this.packageId, paramString1);
        ApkManager.getInstance().installApk(DownLoadManager.mContext, localAppInfoEntity.getPackageName() + ".apk");
        GlobalData.getInstance().addInstallPackage(localAppInfoEntity.getPackageName());
      }
      try
      {
        Track localTrack = new Track();
        localTrack.setPackageId(localAppInfoEntity.getPackageName());
        localTrack.setPackageName(paramString2);
        Bundle localBundle = new Bundle();
        localBundle.putSerializable("down", localTrack);
        HandleService.handleService(DownLoadManager.mContext, "h", localBundle);
        BaseDbAdapter.getInstance(DownLoadManager.mContext).updateDownloadAppStatusOfPackageId(this.packageId, 4, String.valueOf(System.currentTimeMillis()));
        ApkManager.getInstance().delDownUrlList(this.packageId, paramString1);
        DownLoadManager.listenerTag locallistenerTag = getListener();
        if ((locallistenerTag != null) && (locallistenerTag.l != null))
        {
          locallistenerTag.l.success(paramString1, paramString2, locallistenerTag.id);
          if (DownLoadManager.this.listeners.containsKey(paramString1))
            DownLoadManager.this.listeners.remove(paramString1);
        }
        return;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  }

  public static abstract interface MutiDownLoadListener
  {
    public abstract void failed(String paramString, Exception paramException, int paramInt);

    public abstract void setDownAllSize(float paramFloat, int paramInt);

    public abstract void setDownloadedSize(float paramFloat, int paramInt);

    public abstract void success(String paramString1, String paramString2, int paramInt);
  }

  private class listenerTag
  {
    public int id;
    public DownLoadManager.MutiDownLoadListener l;

    private listenerTag()
    {
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.manager.DownLoadManager
 * JD-Core Version:    0.6.2
 */