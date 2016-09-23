package com.jh.app.util;

import android.os.Handler;
import android.os.Looper;

public class MainHandler
{
  private static Handler mainHandler = new Handler(Looper.getMainLooper());

  public static Handler getHandler()
  {
    return mainHandler;
  }

  public static Handler newInstance()
  {
    return new Handler(Looper.getMainLooper());
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.app.util.MainHandler
 * JD-Core Version:    0.6.2
 */