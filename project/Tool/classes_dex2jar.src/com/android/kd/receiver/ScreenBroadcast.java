package com.android.kd.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.android.kd.server.FWService;
import com.android.utils.AppManager;
import com.android.utils.SharedPreferUtils;
import com.google.kd.utils.AppContext;
import com.google.kd.utils.LogUtils;

public class ScreenBroadcast extends BroadcastReceiver
{
  private void startServer(Context paramContext)
  {
    paramContext.startService(new Intent(AppContext.getInstance(), FWService.class));
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (AppManager.isStop(paramContext))
      Log.e("wyy", "--isStopStart-!!");
    while ((!SharedPreferUtils.readStateToSp()) || (!paramIntent.getAction().equals("android.intent.action.SCREEN_ON")))
      return;
    LogUtils.d("wyy", "--ScreenBroadcast--");
    startServer(paramContext);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\Tool\classes_dex2jar.jar
 * Qualified Name:     com.android.kd.receiver.ScreenBroadcast
 * JD-Core Version:    0.6.2
 */