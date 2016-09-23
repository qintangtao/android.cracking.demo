package com.jh.net;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;

public class NetworkUtils
{
  public static final int NETWORK_TYPE_MOBILE = 0;
  public static final int NETWORK_TYPE_WIFI = 1;

  public static int getNetworkType(Context paramContext)
  {
    try
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (localConnectivityManager == null)
        return 0;
      NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
      if ((localNetworkInfo != null) && (localNetworkInfo.isAvailable()))
      {
        int i = localNetworkInfo.getType();
        if (i == 1)
          return 1;
      }
    }
    catch (Exception localException)
    {
    }
    return 0;
  }

  public static boolean isNetworkAvailable(Context paramContext)
  {
    try
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (localConnectivityManager == null)
        return false;
      NetworkInfo[] arrayOfNetworkInfo = localConnectivityManager.getAllNetworkInfo();
      if (arrayOfNetworkInfo != null)
        for (int i = 0; i < arrayOfNetworkInfo.length; i++)
        {
          NetworkInfo.State localState1 = arrayOfNetworkInfo[i].getState();
          NetworkInfo.State localState2 = NetworkInfo.State.CONNECTED;
          if (localState1 == localState2)
            return true;
        }
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public static boolean isNetworkAvaliable(Context paramContext)
  {
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      boolean bool1 = false;
      if (localNetworkInfo != null)
      {
        boolean bool2 = localNetworkInfo.isAvailable();
        bool1 = false;
        if (bool2)
        {
          boolean bool3 = localNetworkInfo.isConnected();
          bool1 = false;
          if (bool3)
            bool1 = true;
        }
      }
      return bool1;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public static boolean isServiceReachable(Context paramContext, int paramInt)
  {
    try
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      boolean bool = localConnectivityManager.requestRouteToHost(localConnectivityManager.getActiveNetworkInfo().getType(), paramInt);
      return bool;
    }
    catch (Exception localException)
    {
    }
    return false;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.net.NetworkUtils
 * JD-Core Version:    0.6.2
 */