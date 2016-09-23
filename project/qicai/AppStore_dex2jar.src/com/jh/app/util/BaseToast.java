package com.jh.app.util;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;

public class BaseToast
{
  private static Handler mainHandler;
  private static String message;
  private static Toast toast;

  public static void cancle()
  {
    mainHandler.post(new Runnable()
    {
      public void run()
      {
        if (BaseToast.toast != null)
          BaseToast.toast = null;
      }
    });
  }

  public static Toast getInstance(Context paramContext, int paramInt)
  {
    return getInstance(paramContext, paramContext.getString(paramInt));
  }

  public static Toast getInstance(Context paramContext, String paramString)
  {
    if (toast == null)
    {
      toast = Toast.makeText(paramContext.getApplicationContext(), paramString, 0);
      mainHandler = new Handler(Looper.getMainLooper());
    }
    while (true)
    {
      return toast;
      toast.setText(paramString);
      message = paramString;
    }
  }

  public static void hide()
  {
    mainHandler.post(new Runnable()
    {
      public void run()
      {
        if (BaseToast.toast != null)
          BaseToast.toast.cancel();
      }
    });
  }

  public static void show(Context paramContext, int paramInt)
  {
    toast = getInstance(paramContext, paramInt);
    mainHandler.post(new Runnable()
    {
      public void run()
      {
        BaseToast.toast.show();
      }
    });
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.app.util.BaseToast
 * JD-Core Version:    0.6.2
 */