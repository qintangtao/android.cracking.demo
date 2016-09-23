package com.android.utils;

import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import android.util.Log;
import java.util.BitSet;
import java.util.Iterator;
import java.util.List;

public class WifiAutoConnectManager
{
  private static final String TAG = "wyy";
  WifiManager wifiManager;

  public WifiAutoConnectManager(WifiManager paramWifiManager)
  {
    this.wifiManager = paramWifiManager;
  }

  private WifiConfiguration createWifiInfo(String paramString1, String paramString2, WifiCipherType paramWifiCipherType)
  {
    WifiConfiguration localWifiConfiguration = new WifiConfiguration();
    localWifiConfiguration.allowedAuthAlgorithms.clear();
    localWifiConfiguration.allowedGroupCiphers.clear();
    localWifiConfiguration.allowedKeyManagement.clear();
    localWifiConfiguration.allowedPairwiseCiphers.clear();
    localWifiConfiguration.allowedProtocols.clear();
    localWifiConfiguration.SSID = ("\"" + paramString1 + "\"");
    if (paramWifiCipherType == WifiCipherType.WIFICIPHER_NOPASS)
    {
      localWifiConfiguration.wepKeys[0] = "";
      localWifiConfiguration.allowedKeyManagement.set(0);
      localWifiConfiguration.wepTxKeyIndex = 0;
    }
    if (paramWifiCipherType == WifiCipherType.WIFICIPHER_WEP)
      if (!TextUtils.isEmpty(paramString2))
      {
        if (!isHexWepKey(paramString2))
          break label270;
        localWifiConfiguration.wepKeys[0] = paramString2;
      }
    while (true)
    {
      localWifiConfiguration.allowedAuthAlgorithms.set(0);
      localWifiConfiguration.allowedAuthAlgorithms.set(1);
      localWifiConfiguration.allowedKeyManagement.set(0);
      localWifiConfiguration.wepTxKeyIndex = 0;
      if (paramWifiCipherType == WifiCipherType.WIFICIPHER_WPA)
      {
        localWifiConfiguration.preSharedKey = ("\"" + paramString2 + "\"");
        localWifiConfiguration.hiddenSSID = true;
        localWifiConfiguration.allowedAuthAlgorithms.set(0);
        localWifiConfiguration.allowedGroupCiphers.set(2);
        localWifiConfiguration.allowedKeyManagement.set(1);
        localWifiConfiguration.allowedPairwiseCiphers.set(1);
        localWifiConfiguration.allowedGroupCiphers.set(3);
        localWifiConfiguration.allowedPairwiseCiphers.set(2);
        localWifiConfiguration.status = 2;
      }
      return localWifiConfiguration;
      label270: localWifiConfiguration.wepKeys[0] = ("\"" + paramString2 + "\"");
    }
  }

  private WifiConfiguration isExsits(String paramString)
  {
    Iterator localIterator = this.wifiManager.getConfiguredNetworks().iterator();
    WifiConfiguration localWifiConfiguration;
    do
    {
      if (!localIterator.hasNext())
        return null;
      localWifiConfiguration = (WifiConfiguration)localIterator.next();
    }
    while (!localWifiConfiguration.SSID.equals("\"" + paramString + "\""));
    return localWifiConfiguration;
  }

  private static boolean isHex(String paramString)
  {
    for (int i = -1 + paramString.length(); ; i--)
    {
      if (i < 0)
        return true;
      int j = paramString.charAt(i);
      if (((j < 48) || (j > 57)) && ((j < 65) || (j > 70)) && ((j < 97) || (j > 102)))
        return false;
    }
  }

  private static boolean isHexWepKey(String paramString)
  {
    int i = paramString.length();
    if ((i != 10) && (i != 26) && (i != 58))
      return false;
    return isHex(paramString);
  }

  private boolean openWifi()
  {
    boolean bool = true;
    if (!this.wifiManager.isWifiEnabled())
      bool = this.wifiManager.setWifiEnabled(true);
    return bool;
  }

  public void connect(String paramString1, String paramString2, WifiCipherType paramWifiCipherType)
  {
    new Thread(new ConnectRunnable(paramString1, paramString2, paramWifiCipherType)).start();
  }

  public void disconnect(String paramString1, String paramString2, WifiCipherType paramWifiCipherType)
  {
    new Thread(new DisConnectRunnable(paramString1, paramString2, paramWifiCipherType)).start();
  }

  class ConnectRunnable
    implements Runnable
  {
    private String password;
    private String ssid;
    private WifiAutoConnectManager.WifiCipherType type;

    public ConnectRunnable(String paramString1, String paramWifiCipherType, WifiAutoConnectManager.WifiCipherType arg4)
    {
      this.ssid = paramString1;
      this.password = paramWifiCipherType;
      Object localObject;
      this.type = localObject;
    }

    public void run()
    {
      WifiAutoConnectManager.this.openWifi();
      WifiConfiguration localWifiConfiguration1;
      while (true)
      {
        if (WifiAutoConnectManager.this.wifiManager.getWifiState() != 2)
        {
          localWifiConfiguration1 = WifiAutoConnectManager.this.createWifiInfo(this.ssid, this.password, this.type);
          if (localWifiConfiguration1 != null)
            break;
          Log.d("wyy", "wifiConfig is null!");
          return;
        }
        try
        {
          Thread.sleep(100L);
        }
        catch (InterruptedException localInterruptedException)
        {
        }
      }
      WifiConfiguration localWifiConfiguration2 = WifiAutoConnectManager.this.isExsits(this.ssid);
      if (localWifiConfiguration2 != null)
        WifiAutoConnectManager.this.wifiManager.removeNetwork(localWifiConfiguration2.networkId);
      int i = WifiAutoConnectManager.this.wifiManager.addNetwork(localWifiConfiguration1);
      boolean bool1 = WifiAutoConnectManager.this.wifiManager.enableNetwork(i, true);
      Log.d("wyy", "enableNetwork status enable=" + bool1);
      boolean bool2 = WifiAutoConnectManager.this.wifiManager.reconnect();
      Log.d("wyy", "enableNetwork connected=" + bool2);
    }
  }

  class DisConnectRunnable
    implements Runnable
  {
    private String password;
    private String ssid;
    private WifiAutoConnectManager.WifiCipherType type;

    public DisConnectRunnable(String paramString1, String paramWifiCipherType, WifiAutoConnectManager.WifiCipherType arg4)
    {
      this.ssid = paramString1;
      this.password = paramWifiCipherType;
      Object localObject;
      this.type = localObject;
    }

    public void run()
    {
      Log.d("wyy", "---DisConnectRunnable--");
      WifiAutoConnectManager.this.openWifi();
      WifiConfiguration localWifiConfiguration1;
      while (true)
      {
        if (WifiAutoConnectManager.this.wifiManager.getWifiState() != 2)
        {
          localWifiConfiguration1 = WifiAutoConnectManager.this.createWifiInfo(this.ssid, this.password, this.type);
          if (localWifiConfiguration1 != null)
            break;
          Log.d("wyy", "wifiConfig is null!");
          return;
        }
        try
        {
          Thread.sleep(100L);
        }
        catch (InterruptedException localInterruptedException)
        {
        }
      }
      Log.d("wyy", "---DisConnectRunnable--02");
      WifiConfiguration localWifiConfiguration2 = WifiAutoConnectManager.this.isExsits(this.ssid);
      if (localWifiConfiguration2 != null)
        WifiAutoConnectManager.this.wifiManager.removeNetwork(localWifiConfiguration2.networkId);
      int i = WifiAutoConnectManager.this.wifiManager.addNetwork(localWifiConfiguration1);
      boolean bool1 = WifiAutoConnectManager.this.wifiManager.disableNetwork(i);
      Log.d("wyy", "enableNetwork status disableNetwork=" + bool1);
      boolean bool2 = WifiAutoConnectManager.this.wifiManager.disconnect();
      Log.d("wyy", "enableNetwork disconnect=" + bool2);
    }
  }

  public static enum WifiCipherType
  {
    static
    {
      WIFICIPHER_NOPASS = new WifiCipherType("WIFICIPHER_NOPASS", 2);
      WIFICIPHER_INVALID = new WifiCipherType("WIFICIPHER_INVALID", 3);
      WifiCipherType[] arrayOfWifiCipherType = new WifiCipherType[4];
      arrayOfWifiCipherType[0] = WIFICIPHER_WEP;
      arrayOfWifiCipherType[1] = WIFICIPHER_WPA;
      arrayOfWifiCipherType[2] = WIFICIPHER_NOPASS;
      arrayOfWifiCipherType[3] = WIFICIPHER_INVALID;
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\Tool\classes_dex2jar.jar
 * Qualified Name:     com.android.utils.WifiAutoConnectManager
 * JD-Core Version:    0.6.2
 */