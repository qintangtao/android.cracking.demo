package com.lidroid.xutils.view;

import android.content.Context;
import android.content.res.Resources;
import android.view.animation.AnimationUtils;

public class ResLoader
{
  public static Object loadRes(ResType paramResType, Context paramContext, int paramInt)
  {
    if ((paramContext == null) || (paramInt < 1))
      return null;
    switch ($SWITCH_TABLE$com$lidroid$xutils$view$ResType()[paramResType.ordinal()])
    {
    default:
      return null;
    case 1:
      return AnimationUtils.loadAnimation(paramContext, paramInt);
    case 2:
      return Boolean.valueOf(paramContext.getResources().getBoolean(paramInt));
    case 3:
      return Integer.valueOf(paramContext.getResources().getColor(paramInt));
    case 4:
      return paramContext.getResources().getColorStateList(paramInt);
    case 5:
      return Float.valueOf(paramContext.getResources().getDimension(paramInt));
    case 6:
      return Integer.valueOf(paramContext.getResources().getDimensionPixelOffset(paramInt));
    case 7:
      return Integer.valueOf(paramContext.getResources().getDimensionPixelSize(paramInt));
    case 8:
      return paramContext.getResources().getDrawable(paramInt);
    case 9:
      return Integer.valueOf(paramContext.getResources().getInteger(paramInt));
    case 10:
      return paramContext.getResources().getIntArray(paramInt);
    case 11:
      return paramContext.getResources().getMovie(paramInt);
    case 12:
      return paramContext.getResources().getString(paramInt);
    case 13:
      return paramContext.getResources().getStringArray(paramInt);
    case 14:
      return paramContext.getResources().getText(paramInt);
    case 15:
      return paramContext.getResources().getTextArray(paramInt);
    case 16:
    }
    return paramContext.getResources().getXml(paramInt);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.view.ResLoader
 * JD-Core Version:    0.6.2
 */