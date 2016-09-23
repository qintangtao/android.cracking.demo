package com.hsg.sdk.common.util;

import android.content.Context;

public class ContextUtil
{
  private static Context mAppContext = null;
  private static Context mContext = null;

  public static Context getAppContext()
  {
    return mAppContext;
  }

  public static Context getContext()
  {
    return mContext;
  }

  public static void setAppContext(Context paramContext)
  {
    mAppContext = paramContext;
  }

  public static void setContext(Context paramContext)
  {
    mContext = paramContext;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.ContextUtil
 * JD-Core Version:    0.6.2
 */