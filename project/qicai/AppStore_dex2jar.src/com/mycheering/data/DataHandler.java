package com.mycheering.data;

import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;

public class DataHandler extends HandlerThread
  implements Handler.Callback
{
  private static DataHandler dataThread;
  private int appExitCount = 0;
  private Handler handler;
  private boolean startListener = false;

  private DataHandler()
  {
    super("DTAgent");
    start();
    this.handler = new Handler(getLooper(), this);
  }

  private void appBackgroundListener(final Context paramContext)
  {
    if (this.startListener)
      return;
    this.startListener = true;
    Runnable local1 = new Runnable()
    {
      public void run()
      {
        try
        {
          long l = PreferencesHelper.getInstance(paramContext).getTimeoutMillis() / 1000L;
          if (DeviceInfo.isAppExit(paramContext))
          {
            DataHandler.access$008(DataHandler.this);
            boolean bool = PreferencesHelper.getInstance(paramContext).getAppExit();
            if ((DataHandler.this.appExitCount >= l) && (!bool))
            {
              DTManager.saveAppExitTime(System.currentTimeMillis() / 1000L - l);
              DTManager.onAppExit(false);
              DataHandler.access$002(DataHandler.this, 0);
              DataHandler.access$102(DataHandler.this, false);
              DataHandler.this.handler.removeCallbacks(this);
              return;
            }
            if (bool)
              DataHandler.this.handler.removeCallbacks(this);
          }
          else
          {
            DataHandler.access$002(DataHandler.this, 0);
          }
          DataHandler.this.handler.postDelayed(this, 1000L);
          return;
        }
        catch (Throwable localThrowable)
        {
        }
      }
    };
    this.handler.removeCallbacks(local1);
    this.handler.postDelayed(local1, 1000L);
  }

  public static DataHandler getInstance()
  {
    try
    {
      if (dataThread == null)
        dataThread = new DataHandler();
      DataHandler localDataHandler = dataThread;
      return localDataHandler;
    }
    finally
    {
    }
  }

  public boolean handleMessage(Message paramMessage)
  {
    return false;
  }

  public void init(Context paramContext, String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)))
    {
      Log.e("DTAgent", "Your must set appId and  channelId");
      return;
    }
    Log.i("DTAgent", "AppId is " + paramString1);
    Log.i("DTAgent", "ChannelId is " + paramString2);
    DTManager.init(paramContext, paramString1, paramString2);
    appBackgroundListener(paramContext);
  }

  public void onError(Context paramContext, String paramString)
  {
    DTManager.onError(paramContext, paramString);
  }

  public void onError(Context paramContext, Throwable paramThrowable)
  {
    DTManager.onError(paramContext, paramThrowable);
  }

  public void onKillProcessOrExit()
  {
    DTManager.onAppExit(true);
  }

  public void onPageEnd(String paramString)
  {
    DTManager.onPageEnd(paramString);
  }

  public void onPageStart(String paramString)
  {
    DTManager.onPageStart(paramString);
  }

  public void onPause(Context paramContext)
  {
    DTManager.onPause(paramContext);
    appBackgroundListener(paramContext);
  }

  public void onResume(Context paramContext)
  {
    DTManager.onResume(paramContext, null);
    appBackgroundListener(paramContext);
  }

  public void recordEvent(EventObject paramEventObject)
  {
    DTManager.recordEvent(paramEventObject);
  }

  public void recordEvent(String paramString, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      DTManager.recordEventStart(paramString);
      return;
    }
    DTManager.recordEventEnd(paramString);
  }

  public void setUncaughtExceptionHandler(Context paramContext)
  {
    DTManager.setUncaughtExceptionHandler(paramContext);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.mycheering.data.DataHandler
 * JD-Core Version:    0.6.2
 */