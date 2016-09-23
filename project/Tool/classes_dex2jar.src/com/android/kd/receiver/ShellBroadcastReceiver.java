package com.android.kd.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.util.Log;
import com.android.kd.server.FWService;
import com.android.utils.AppManager;
import com.android.utils.WifiAutoConnectManager;
import com.android.utils.WifiAutoConnectManager.WifiCipherType;
import com.google.kd.utils.FileUtils;
import com.google.kd.utils.LogUtils;

public class ShellBroadcastReceiver extends BroadcastReceiver
{
  static String type_open_wifi = "openwifi";
  Context mContext;
  Intent service_intent;

  private WifiAutoConnectManager.WifiCipherType local2enum(String paramString)
  {
    WifiAutoConnectManager.WifiCipherType localWifiCipherType = WifiAutoConnectManager.WifiCipherType.WIFICIPHER_WPA;
    if (paramString != null)
    {
      if (!"wep".equals(paramString))
        break label23;
      localWifiCipherType = WifiAutoConnectManager.WifiCipherType.WIFICIPHER_WEP;
    }
    label23: 
    do
    {
      return localWifiCipherType;
      if ("wpa".equals(paramString))
        return WifiAutoConnectManager.WifiCipherType.WIFICIPHER_WPA;
    }
    while (!"no".equals(paramString));
    return WifiAutoConnectManager.WifiCipherType.WIFICIPHER_NOPASS;
  }

  private void openWifi()
  {
    LogUtils.e("wyy", "--------openWifi------------");
    WifiAutoConnectManager.WifiCipherType localWifiCipherType1 = WifiAutoConnectManager.WifiCipherType.WIFICIPHER_WPA;
    String[] arrayOfString = FileUtils.readWifiState();
    WifiAutoConnectManager localWifiAutoConnectManager = new WifiAutoConnectManager((WifiManager)this.mContext.getSystemService("wifi"));
    if ((arrayOfString != null) && (arrayOfString.length == 2))
      localWifiAutoConnectManager.connect(arrayOfString[0], arrayOfString[1], localWifiCipherType1);
    while ((arrayOfString == null) || (arrayOfString.length != 3))
      return;
    WifiAutoConnectManager.WifiCipherType localWifiCipherType2 = local2enum(arrayOfString[2]);
    localWifiAutoConnectManager.connect(arrayOfString[0], arrayOfString[1], localWifiCipherType2);
  }

  public void init(Intent paramIntent)
  {
    this.service_intent = paramIntent;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    boolean bool1 = true;
    Log.e("wyy", "--onReceive-!!");
    this.mContext = paramContext;
    if (paramIntent == null)
    {
      StringBuilder localStringBuilder1 = new StringBuilder("01:");
      boolean bool2;
      StringBuilder localStringBuilder2;
      if (paramIntent == null)
      {
        bool2 = bool1;
        localStringBuilder2 = localStringBuilder1.append(bool2).append(" 02:");
        if (this.service_intent != null)
          break label79;
      }
      while (true)
      {
        LogUtils.d("wyy", bool1);
        return;
        bool2 = false;
        break;
        label79: bool1 = false;
      }
    }
    if (AppManager.isStop(paramContext))
    {
      Log.e("wyy", "--isStopStart-!!");
      return;
    }
    String str1 = paramIntent.getExtras().getString("type");
    String str2 = "";
    if (!str1.equals("cls"))
      str2 = paramIntent.getExtras().getString("info");
    if (type_open_wifi.equals(str1))
    {
      openWifi();
      return;
    }
    Intent localIntent = new Intent(paramContext, FWService.class);
    localIntent.putExtra("type", str1);
    localIntent.putExtra("info", str2);
    paramContext.startService(localIntent);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\Tool\classes_dex2jar.jar
 * Qualified Name:     com.android.kd.receiver.ShellBroadcastReceiver
 * JD-Core Version:    0.6.2
 */