package com.youqicai.datasdk;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.telephony.ServiceState;
import android.telephony.TelephonyManager;
import com.youqicai.AppStore.AppStoreApplication;

public class NetworkStatus
{
  private static NetworkStatus mInstance;
  private ConnectivityManager connectivityManager;
  private Context mcontext;
  private TelephonyManager telephonyManager;

  public NetworkStatus(Context paramContext)
  {
    this.mcontext = paramContext.getApplicationContext();
    this.connectivityManager = ((ConnectivityManager)this.mcontext.getSystemService("connectivity"));
    this.telephonyManager = ((TelephonyManager)this.mcontext.getSystemService("phone"));
  }

  public static NetworkStatus getInstance()
  {
    if (mInstance == null)
      mInstance = new NetworkStatus(AppStoreApplication.getInstance().getApplicationContext());
    return mInstance;
  }

  public boolean isConnected()
  {
    NetworkInfo localNetworkInfo = this.connectivityManager.getActiveNetworkInfo();
    if (localNetworkInfo != null)
      return localNetworkInfo.isConnected();
    return false;
  }

  public boolean isMobileConnected()
  {
    NetworkInfo localNetworkInfo = this.connectivityManager.getNetworkInfo(0);
    boolean bool = false;
    if (localNetworkInfo != null)
    {
      NetworkInfo.State localState1 = localNetworkInfo.getState();
      NetworkInfo.State localState2 = NetworkInfo.State.CONNECTED;
      bool = false;
      if (localState1 == localState2)
        bool = true;
    }
    return bool;
  }

  public boolean isRadioOff()
  {
    return new ServiceState().getState() == 3;
  }

  public boolean isWiFiConnected()
  {
    NetworkInfo localNetworkInfo = this.connectivityManager.getNetworkInfo(1);
    if (localNetworkInfo != null)
      return localNetworkInfo.getState() == NetworkInfo.State.CONNECTED;
    return false;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.datasdk.NetworkStatus
 * JD-Core Version:    0.6.2
 */