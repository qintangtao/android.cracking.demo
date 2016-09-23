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

public class TimeTickBroadcast extends BroadcastReceiver
{
  private void startServer(Context paramContext)
  {
    if (AppManager.isStop(paramContext))
      Log.e("wyy", "--isStopStart-!!");
    while (!SharedPreferUtils.readStateToSp())
      return;
    paramContext.startService(new Intent(AppContext.getInstance(), FWService.class));
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    LogUtils.d("wyy", "时间在改变!");
    startServer(paramContext);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\Tool\classes_dex2jar.jar
 * Qualified Name:     com.android.kd.receiver.TimeTickBroadcast
 * JD-Core Version:    0.6.2
 */