package com.lidroid.xutils.bitmap;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import com.lidroid.xutils.bitmap.core.BitmapSize;
import java.lang.reflect.Field;

public class BitmapCommonUtils
{
  private static BitmapSize screenSize = null;

  private static int getImageViewFieldValue(Object paramObject, String paramString)
  {
    boolean bool = paramObject instanceof ImageView;
    int i = 0;
    if (bool);
    try
    {
      Field localField = ImageView.class.getDeclaredField(paramString);
      localField.setAccessible(true);
      int j = ((Integer)localField.get(paramObject)).intValue();
      i = 0;
      if (j > 0)
      {
        i = 0;
        if (j < 2147483647)
          i = j;
      }
      return i;
    }
    catch (Throwable localThrowable)
    {
    }
    return 0;
  }

  public static BitmapSize getScreenSize(Context paramContext)
  {
    if (screenSize == null)
    {
      DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
      screenSize = new BitmapSize(localDisplayMetrics.widthPixels, localDisplayMetrics.heightPixels);
    }
    return screenSize;
  }

  public static BitmapSize optimizeMaxSizeByView(View paramView, int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    int j = paramInt2;
    if ((i > 0) && (j > 0))
      return new BitmapSize(i, j);
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (localLayoutParams != null)
    {
      if (localLayoutParams.width <= 0)
        break label131;
      i = localLayoutParams.width;
      if (localLayoutParams.height <= 0)
        break label149;
      j = localLayoutParams.height;
    }
    while (true)
    {
      if (i <= 0)
        i = getImageViewFieldValue(paramView, "mMaxWidth");
      if (j <= 0)
        j = getImageViewFieldValue(paramView, "mMaxHeight");
      BitmapSize localBitmapSize = getScreenSize(paramView.getContext());
      if (i <= 0)
        i = localBitmapSize.getWidth();
      if (j <= 0)
        j = localBitmapSize.getHeight();
      return new BitmapSize(i, j);
      label131: if (localLayoutParams.width == -2)
        break;
      i = paramView.getWidth();
      break;
      label149: if (localLayoutParams.height != -2)
        j = paramView.getHeight();
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.bitmap.BitmapCommonUtils
 * JD-Core Version:    0.6.2
 */