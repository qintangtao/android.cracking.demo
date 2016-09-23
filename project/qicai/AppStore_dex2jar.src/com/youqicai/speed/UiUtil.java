package com.youqicai.speed;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

public class UiUtil
{
  public static int getColor(Context paramContext, int paramInt)
  {
    return paramContext.getResources().getColor(paramInt);
  }

  public static int getDialogHeightPixels(Context paramContext)
  {
    return 855 * getWidthPixels(paramContext) / 720;
  }

  public static int getDialogWidthPixels(Context paramContext)
  {
    return 600 * getWidthPixels(paramContext) / 720;
  }

  public static int getHeightPixels(Context paramContext)
  {
    return paramContext.getResources().getDisplayMetrics().heightPixels;
  }

  public static float getIntBy720(Context paramContext, float paramFloat)
  {
    return (float)(getWidthPixels(paramContext) * paramFloat / 720.0D);
  }

  public static int getIntBy720(Context paramContext, int paramInt)
  {
    return (int)(getWidthPixels(paramContext) * paramInt / 720.0D);
  }

  public static float getTextSize(Context paramContext, int paramInt)
  {
    float f = paramContext.getResources().getDisplayMetrics().scaledDensity;
    return paramInt / f;
  }

  public static int getWidthPixels(Context paramContext)
  {
    return paramContext.getResources().getDisplayMetrics().widthPixels;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.speed.UiUtil
 * JD-Core Version:    0.6.2
 */