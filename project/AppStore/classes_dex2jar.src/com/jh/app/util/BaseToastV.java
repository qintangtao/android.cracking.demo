package com.jh.app.util;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;

public class BaseToastV
{
  private static BaseToastV instance;
  private Context context;
  private Handler mainHandler;
  private Toast toast;

  private BaseToastV(Context paramContext)
  {
    this.context = paramContext.getApplicationContext();
    this.mainHandler = new Handler(Looper.getMainLooper());
    createToast();
  }

  private void createToast()
  {
    this.mainHandler.post(new Runnable()
    {
      public void run()
      {
        BaseToastV.this.toast = Toast.makeText(BaseToastV.this.context, "", 1);
      }
    });
  }

  public static BaseToastV getInstance(Context paramContext)
  {
    if (instance == null);
    try
    {
      if (instance == null)
        instance = new BaseToastV(paramContext);
      return instance;
    }
    finally
    {
    }
  }

  private void showToast(final String paramString, final int paramInt)
  {
    this.mainHandler.post(new Runnable()
    {
      public void run()
      {
        BaseToastV.this.toast.setText(paramString);
        BaseToastV.this.toast.setDuration(paramInt);
        BaseToastV.this.toast.show();
      }
    });
  }

  public void cancel()
  {
    if (this.toast != null)
      this.toast.cancel();
  }

  public void showToastLong(final String paramString)
  {
    if (this.toast != null)
    {
      showToast(paramString, 1);
      return;
    }
    createToast();
    this.mainHandler.post(new Runnable()
    {
      public void run()
      {
        BaseToastV.this.showToast(paramString, 1);
      }
    });
  }

  public void showToastShort(final String paramString)
  {
    if (this.toast != null)
    {
      showToast(paramString, 0);
      return;
    }
    createToast();
    this.mainHandler.post(new Runnable()
    {
      public void run()
      {
        BaseToastV.this.showToast(paramString, 0);
      }
    });
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.app.util.BaseToastV
 * JD-Core Version:    0.6.2
 */