package com.hsg.sdk.common.util;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

public class Utility
{
  public static int dip2pix(Context paramContext, int paramInt)
  {
    return paramInt * paramContext.getResources().getDisplayMetrics().densityDpi / 160;
  }

  public static int pix2dip(Context paramContext, int paramInt)
  {
    int i = paramContext.getResources().getDisplayMetrics().densityDpi;
    return paramInt * 160 / i;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.Utility
 * JD-Core Version:    0.6.2
 */