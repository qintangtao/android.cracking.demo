package com.youqicai.AppStore.entity;

import android.graphics.drawable.Drawable;
import java.io.Serializable;
import java.util.ArrayList;

public class AppInfoEntity
  implements Serializable
{
  public static final int DOWNLOAD = 0;
  public static final int DOWNLOADING = 1;
  public static final int DOWNLOAD_FAILED = 8;
  public static final int INSTALL = 4;
  public static final int OPENAPP = 6;
  public static final int REDOWNLOAD = 3;
  public static final int UNINSTALL = 7;
  public static final int UPDATAAPP = 5;
  public static final int WAITING = 2;
  private String UpdateTime;
  private String againstVersion = "0";
  private String apkId;
  private String apkMd5;
  public String apkUrl;
  private String appId;
  private String appName;
  private int appStatus = 0;
  private String author;
  private String brief;
  private String categoryId;
  private String categoryName;
  private Drawable defaultIcon = null;
  private String description;
  private String downCount;
  private float downloadProgress = 10.0F;
  private String downloadTime;
  private String fileSize;
  private int flag = 0;
  private long getDataTime = 0L;
  private String iconUrl;
  private boolean isChecked;
  private boolean isExpand;
  private int minSdkVersion;
  private String newFeature;
  private String packageId = "aa";
  private String packageName;
  private int rank;
  private String savedFilePath;
  private String score;
  private String signatureMd5;
  private ArrayList<String> snapshotsUrlList;
  private float speed = 0.0F;
  private String tags;
  private float vDownloadSize = 0.0F;
  private int versionCode = 0;
  private String versionName = "0";

  public String getAgainstVersion()
  {
    return this.againstVersion;
  }

  public String getApkId()
  {
    return this.apkId;
  }

  public String getApkMd5()
  {
    return this.apkMd5;
  }

  public String getApkUrl()
  {
    return this.apkUrl;
  }

  public String getAppId()
  {
    return this.appId;
  }

  public String getAppName()
  {
    return this.appName;
  }

  public int getAppStatus()
  {
    return this.appStatus;
  }

  public String getAuthor()
  {
    return this.author;
  }

  public String getBrief()
  {
    return this.brief;
  }

  public String getCategoryId()
  {
    return this.categoryId;
  }

  public String getCategoryName()
  {
    return this.categoryName;
  }

  public Drawable getDefaultDrawableIcon()
  {
    return this.defaultIcon;
  }

  public Drawable getDefaultIcon()
  {
    return this.defaultIcon;
  }

  public String getDescription()
  {
    return this.description;
  }

  public String getDownCount()
  {
    return this.downCount;
  }

  public float getDownloadProgress()
  {
    return this.downloadProgress;
  }

  public String getDownloadTime()
  {
    return this.downloadTime;
  }

  public String getFileSize()
  {
    return this.fileSize;
  }

  public int getFlag()
  {
    return this.flag;
  }

  public String getIconUrl()
  {
    return this.iconUrl;
  }

  public int getMinSdkVersion()
  {
    return this.minSdkVersion;
  }

  public String getNewFeature()
  {
    return this.newFeature;
  }

  public String getPackageId()
  {
    return this.packageId;
  }

  public String getPackageName()
  {
    return this.packageName;
  }

  public int getRank()
  {
    return this.rank;
  }

  public String getSavedFilePath()
  {
    return this.savedFilePath;
  }

  public String getScore()
  {
    return this.score;
  }

  public String getSignatureMd5()
  {
    return this.signatureMd5;
  }

  public ArrayList<String> getSnapshotsUrlList()
  {
    return this.snapshotsUrlList;
  }

  public float getSpeed()
  {
    return this.speed;
  }

  public String getTags()
  {
    return this.tags;
  }

  public String getUpdateTime()
  {
    return this.UpdateTime;
  }

  public int getVersionCode()
  {
    return this.versionCode;
  }

  public String getVersionName()
  {
    return this.versionName;
  }

  public float getdownloadProgress()
  {
    return this.downloadProgress;
  }

  public boolean isChecked()
  {
    return this.isChecked;
  }

  public boolean isExpand()
  {
    return this.isExpand;
  }

  public void setAgainstVersion(String paramString)
  {
    this.againstVersion = paramString;
  }

  public void setApkId(String paramString)
  {
    this.apkId = paramString;
  }

  public void setApkMd5(String paramString)
  {
    this.apkMd5 = paramString;
  }

  public void setApkUrl(String paramString)
  {
    this.apkUrl = paramString;
  }

  public void setAppId(String paramString)
  {
    this.appId = paramString;
  }

  public void setAppName(String paramString)
  {
    this.appName = paramString;
  }

  public void setAppStatus(int paramInt)
  {
    this.appStatus = paramInt;
  }

  public void setAuthor(String paramString)
  {
    this.author = paramString;
  }

  public void setBrief(String paramString)
  {
    this.brief = paramString;
  }

  public void setCategoryId(String paramString)
  {
    this.categoryId = paramString;
  }

  public void setCategoryName(String paramString)
  {
    this.categoryName = paramString;
  }

  public void setChecked(boolean paramBoolean)
  {
    this.isChecked = paramBoolean;
  }

  public void setDefaultDrawwableIcon(Drawable paramDrawable)
  {
    this.defaultIcon = paramDrawable;
  }

  public void setDefaultIcon(Drawable paramDrawable)
  {
    this.defaultIcon = paramDrawable;
  }

  public void setDescription(String paramString)
  {
    this.description = paramString;
  }

  public void setDownCount(String paramString)
  {
    this.downCount = paramString;
  }

  public void setDownloadProgress(float paramFloat)
  {
    this.downloadProgress = paramFloat;
  }

  public void setDownloadTime(String paramString)
  {
    this.downloadTime = paramString;
  }

  public void setExpand(boolean paramBoolean)
  {
    this.isExpand = paramBoolean;
  }

  public void setFileSize(String paramString)
  {
    this.fileSize = paramString;
  }

  public void setFlag(int paramInt)
  {
    this.flag = paramInt;
  }

  public void setIconUrl(String paramString)
  {
    this.iconUrl = paramString;
  }

  public void setMinSdkVersion(int paramInt)
  {
    this.minSdkVersion = paramInt;
  }

  public void setNewFeature(String paramString)
  {
    this.newFeature = paramString;
  }

  public void setPackageId(String paramString)
  {
    this.packageId = paramString;
  }

  public void setPackageName(String paramString)
  {
    this.packageName = paramString;
  }

  public void setRank(int paramInt)
  {
    this.rank = paramInt;
  }

  public void setSavedFilePath(String paramString)
  {
    this.savedFilePath = paramString;
  }

  public void setScore(String paramString)
  {
    this.score = paramString;
  }

  public void setSignatureMd5(String paramString)
  {
    this.signatureMd5 = paramString;
  }

  public void setSnapshotsUrlList(ArrayList<String> paramArrayList)
  {
    this.snapshotsUrlList = paramArrayList;
  }

  public void setTags(String paramString)
  {
    this.tags = paramString;
  }

  public void setUpdateTime(String paramString)
  {
    this.UpdateTime = paramString;
  }

  public void setVersionCode(int paramInt)
  {
    this.versionCode = paramInt;
  }

  public void setVersionName(String paramString)
  {
    this.versionName = paramString;
  }

  public void setdownloadProgress(float paramFloat)
  {
    if (this.vDownloadSize < 0.0F)
      this.vDownloadSize = 0.0F;
    if (System.currentTimeMillis() - this.getDataTime > 1500L)
    {
      float f = (float)(System.currentTimeMillis() - this.getDataTime);
      this.getDataTime = System.currentTimeMillis();
      this.speed = (1000.0F * this.vDownloadSize / (1024.0F * (f * 1024.0F)));
      this.speed = ((float)(Math.round(100.0F * this.speed) / 100.0D));
    }
    for (this.vDownloadSize = 0.0F; ; this.vDownloadSize = (paramFloat - this.downloadProgress + this.vDownloadSize))
    {
      this.downloadProgress = paramFloat;
      return;
    }
  }

  public String toString()
  {
    return "AppInfoEntity{, appId='" + this.appId + '\'' + ", appName='" + this.appName + '\'' + ", packageName='" + this.packageName + '\'' + ", appStatus=" + this.appStatus + ", apkUrl=" + this.apkUrl + '}';
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.entity.AppInfoEntity
 * JD-Core Version:    0.6.2
 */