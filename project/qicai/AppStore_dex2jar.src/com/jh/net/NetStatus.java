package com.jh.net;

import android.content.Context;

public class NetStatus
{
  public static final int CMNET = 3;
  public static final int CMWAP = 2;
  public static final int NONET = -1;
  public static final int WIFI = 1;

  public static int getAPNType(Context paramContext)
  {
    return NetworkUtils.getNetworkType(paramContext);
  }

  public static boolean hasNet(Context paramContext)
  {
    return isNetworkAvailable(paramContext);
  }

  public static boolean isNetworkAvailable(Context paramContext)
  {
    return NetworkUtils.isNetworkAvailable(paramContext);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.net.NetStatus
 * JD-Core Version:    0.6.2
 */