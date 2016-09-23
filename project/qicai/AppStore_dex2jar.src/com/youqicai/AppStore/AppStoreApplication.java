package com.youqicai.AppStore;

import android.app.Application;
import android.content.Intent;
import android.content.res.Resources;
import com.hsg.sdk.common.util.ContextUtil;
import com.hsg.sdk.common.util.DeviceUtil;
import com.hsg.sdk.common.util.DirectoryUtil;
import com.jh.common.app.application.AppSystem;
import com.mycheering.data.DTAgent;
import com.youqicai.AppStore.service.HandleService;
import com.youqicai.AppStore.service.MonitorService;
import com.youqicai.PhoneHelper.DeviceInfo;
import com.youqicai.datasdk.DSManager;
import com.youqicai.http.ConnectionUtil;
import com.youqicai.manager.ApkManager;
import com.youqicai.manager.DownLoadManager;

public class AppStoreApplication extends Application
{
  private static AppStoreApplication mInstance;

  public static AppStoreApplication getInstance()
  {
    if (mInstance == null)
      mInstance = new AppStoreApplication();
    return mInstance;
  }

  public void onCreate()
  {
    super.onCreate();
    mInstance = this;
    ContextUtil.setAppContext(getApplicationContext());
    DirectoryUtil.newInstance(getResources().getString(2131492888));
    DeviceUtil.initDeviceInfo(getApplicationContext());
    ConnectionUtil.getInstance().initNetworkUtils(getApplicationContext());
    AppSystem.getInstance().setContext(getApplicationContext());
    ApkManager.initApkManager(getApplicationContext());
    DownLoadManager.initDownloadManager(getApplicationContext());
    DeviceInfo.initDeviceInfo(this);
    HandleService.handleService(getApplicationContext(), "f");
    DTAgent.init(this, "100000000002", "100000000");
    DSManager.init();
    startService(new Intent(getApplicationContext(), MonitorService.class));
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.AppStoreApplication
 * JD-Core Version:    0.6.2
 */