package com.youqicai.AppStore.service;

import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import com.youqicai.AppStore.receiver.InstallReceiver;
import com.youqicai.AppStore.receiver.ScreenReceiver;

public class MonitorService extends Service
{
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    Intent localIntent = new Intent(this, InstallReceiver.class);
    localIntent.setAction("com.dingkai.action.start_track");
    sendBroadcast(localIntent);
    IntentFilter localIntentFilter = new IntentFilter("android.intent.action.SCREEN_ON");
    localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
    localIntentFilter.setPriority(1000);
    registerReceiver(new ScreenReceiver(), localIntentFilter);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.service.MonitorService
 * JD-Core Version:    0.6.2
 */