package com.youqicai.AppStore.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class ScreenReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Intent localIntent = new Intent(paramContext, InstallReceiver.class);
    if (paramIntent.getAction().equals("android.intent.action.SCREEN_ON"))
      localIntent.setAction("com.dingkai.action.start_track");
    if (paramIntent.getAction().equals("android.intent.action.SCREEN_OFF"))
      localIntent.setAction("com.dingkai.action.stop_track");
    paramContext.sendBroadcast(localIntent);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.receiver.ScreenReceiver
 * JD-Core Version:    0.6.2
 */