package com.android.kd.phone;

import android.app.Application;

public class AppContext extends Application
{
  private static AppContext instance;

  public static AppContext getInstance()
  {
    return instance;
  }

  public void onCreate()
  {
    super.onCreate();
    instance = this;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\Tool\classes_dex2jar.jar
 * Qualified Name:     com.android.kd.phone.AppContext
 * JD-Core Version:    0.6.2
 */