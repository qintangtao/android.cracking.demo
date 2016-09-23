package com.youqicai.http;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;

public class ConnectionUtil
{
  private static final String TAG = "ConnectionUtil";
  private static ConnectionUtil instance = new ConnectionUtil();
  private static boolean isInit = false;
  public int netWorkType = 0;

  public static ConnectionUtil getInstance()
  {
    if (instance == null)
      instance = new ConnectionUtil();
    return instance;
  }

  private int getNetworkType(Context paramContext)
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (localNetworkInfo.getState() != NetworkInfo.State.CONNECTED))
      return -1;
    int i = localNetworkInfo.getType();
    if (i == 1)
      return 0;
    if (i == 0)
    {
      String str = localNetworkInfo.getExtraInfo();
      if (str == null)
        return 4;
      if (str.equalsIgnoreCase("cmwap"))
        return 1;
      if (str.equalsIgnoreCase("ctwap"))
        return 3;
      return 2;
    }
    return 4;
  }

  public static boolean isConnected(Context paramContext)
  {
    boolean bool = true;
    try
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      NetworkInfo localNetworkInfo1 = localConnectivityManager.getNetworkInfo(0);
      NetworkInfo localNetworkInfo2 = localConnectivityManager.getNetworkInfo(1);
      if ((localNetworkInfo2 != null) && (!localNetworkInfo2.isConnectedOrConnecting()) && (localNetworkInfo1 != null) && (!localNetworkInfo1.isConnectedOrConnecting()))
      {
        NetworkInfo localNetworkInfo3 = localConnectivityManager.getActiveNetworkInfo();
        if (localNetworkInfo3 == null)
          bool = false;
      }
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return bool;
  }

  public static boolean isNetWork2G(Context paramContext)
  {
    boolean bool;
    try
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (localConnectivityManager == null)
        return true;
      NetworkInfo localNetworkInfo1 = localConnectivityManager.getNetworkInfo(1);
      if ((localNetworkInfo1 != null) && (localNetworkInfo1.isConnectedOrConnecting()))
        return false;
      NetworkInfo localNetworkInfo2 = localConnectivityManager.getActiveNetworkInfo();
      if (localNetworkInfo2 == null)
      {
        bool = false;
      }
      else
      {
        if (localNetworkInfo2.getType() == 0)
        {
          int j = localNetworkInfo2.getSubtype();
          if ((j == 2) || (j == 4))
            break label121;
          if (j != 1)
            break label126;
          break label121;
        }
        int i = localNetworkInfo2.getType();
        if (i == 1)
          bool = false;
        else
          bool = false;
      }
    }
    catch (Exception localException)
    {
      bool = false;
    }
    while (true)
    {
      return bool;
      label121: bool = true;
      continue;
      label126: bool = false;
    }
  }

  public void initNetworkUtils(Context paramContext)
  {
    if (isInit);
    while (paramContext == null)
      return;
    this.netWorkType = getNetworkType(paramContext);
  }

  public static abstract interface NetworkType
  {
    public static final int CMWAP = 1;
    public static final int CTWAP = 3;
    public static final int NET = 2;
    public static final int UNAVAILABLE = -1;
    public static final int UNKNOW = 4;
    public static final int WIFI;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.http.ConnectionUtil
 * JD-Core Version:    0.6.2
 */