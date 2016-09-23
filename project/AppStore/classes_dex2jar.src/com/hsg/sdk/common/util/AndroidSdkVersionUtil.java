package com.hsg.sdk.common.util;

import android.os.Build.VERSION;

public class AndroidSdkVersionUtil
{
  public static boolean hasFroyo()
  {
    return Build.VERSION.SDK_INT >= 8;
  }

  public static boolean hasGingerbread()
  {
    return Build.VERSION.SDK_INT >= 9;
  }

  public static boolean hasHoneycomb()
  {
    return Build.VERSION.SDK_INT >= 11;
  }

  public static boolean hasHoneycombMR1()
  {
    return Build.VERSION.SDK_INT >= 12;
  }

  public static boolean hasJellyBean()
  {
    return Build.VERSION.SDK_INT >= 17;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.AndroidSdkVersionUtil
 * JD-Core Version:    0.6.2
 */