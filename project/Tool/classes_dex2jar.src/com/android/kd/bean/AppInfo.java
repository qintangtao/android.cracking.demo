package com.android.kd.bean;

public class AppInfo
{
  private String appApkFileCrc = "appApkFileCrc_is_null";
  private String appApkFileSize = "appApkFileSize_is_null";
  private String appInstallPath = "appInstallPath_is_null";
  private String appIsSystem = "appIsSystem_is_null";
  private String appMainActivity = "appMainActivity_is_null";
  private String appName = "appName_is_null";
  private String appPackageName = "appPackageName_is_null";
  private String appSfFileCrc = "appSfFileCrc_is_null";
  private String appVersion = "appVersion_is_null";

  public AppInfo()
  {
  }

  public AppInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9)
  {
    this.appName = paramString1;
    this.appPackageName = paramString2;
    this.appInstallPath = paramString3;
    this.appMainActivity = paramString4;
    this.appSfFileCrc = paramString5;
    this.appApkFileCrc = paramString6;
    this.appIsSystem = paramString7;
    this.appApkFileSize = paramString8;
    this.appVersion = paramString9;
  }

  public String getAppApkFileCrc()
  {
    return this.appApkFileCrc;
  }

  public String getAppApkFileSize()
  {
    return this.appApkFileSize;
  }

  public String getAppInstallPath()
  {
    return this.appInstallPath;
  }

  public String getAppIsSystem()
  {
    return this.appIsSystem;
  }

  public String getAppMainActivity()
  {
    return this.appMainActivity;
  }

  public String getAppName()
  {
    return this.appName;
  }

  public String getAppPackageName()
  {
    return this.appPackageName;
  }

  public String getAppSfFileCrc()
  {
    return this.appSfFileCrc;
  }

  public String getAppVersion()
  {
    return this.appVersion;
  }

  public void setAppApkFileCrc(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
      this.appApkFileCrc = paramString;
  }

  public void setAppApkFileSize(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
      this.appApkFileSize = paramString;
  }

  public void setAppInstallPath(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
      this.appInstallPath = paramString;
  }

  public void setAppIsSystem(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
      this.appIsSystem = paramString;
  }

  public void setAppMainActivity(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
      this.appMainActivity = paramString;
  }

  public void setAppName(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
      this.appName = paramString;
  }

  public void setAppPackageName(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
      this.appPackageName = paramString;
  }

  public void setAppSfFileCrc(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
      this.appSfFileCrc = paramString;
  }

  public void setAppVersion(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
      this.appVersion = paramString;
  }

  public String toString()
  {
    return this.appName + "|" + this.appPackageName + "|" + this.appMainActivity;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\Tool\classes_dex2jar.jar
 * Qualified Name:     com.android.kd.bean.AppInfo
 * JD-Core Version:    0.6.2
 */