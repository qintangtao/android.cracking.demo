package com.lidroid.xutils.bitmap.callback;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.Animation;
import com.lidroid.xutils.bitmap.BitmapDisplayConfig;
import java.lang.reflect.Method;

public class DefaultBitmapLoadCallBack<T extends View> extends BitmapLoadCallBack<T>
{
  private void animationDisplay(T paramT, Animation paramAnimation)
  {
    try
    {
      Method localMethod = Animation.class.getDeclaredMethod("clone", new Class[0]);
      localMethod.setAccessible(true);
      paramT.startAnimation((Animation)localMethod.invoke(paramAnimation, new Object[0]));
      return;
    }
    catch (Throwable localThrowable)
    {
      paramT.startAnimation(paramAnimation);
    }
  }

  public void onLoadCompleted(T paramT, String paramString, Bitmap paramBitmap, BitmapDisplayConfig paramBitmapDisplayConfig, BitmapLoadFrom paramBitmapLoadFrom)
  {
    setBitmap(paramT, paramBitmap);
    Animation localAnimation = paramBitmapDisplayConfig.getAnimation();
    if (localAnimation != null)
      animationDisplay(paramT, localAnimation);
  }

  public void onLoadFailed(T paramT, String paramString, Drawable paramDrawable)
  {
    setDrawable(paramT, paramDrawable);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.bitmap.callback.DefaultBitmapLoadCallBack
 * JD-Core Version:    0.6.2
 */