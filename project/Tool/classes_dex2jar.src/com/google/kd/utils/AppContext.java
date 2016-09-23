package com.google.kd.utils;

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
 * Qualified Name:     com.google.kd.utils.AppContext
 * JD-Core Version:    0.6.2
 */