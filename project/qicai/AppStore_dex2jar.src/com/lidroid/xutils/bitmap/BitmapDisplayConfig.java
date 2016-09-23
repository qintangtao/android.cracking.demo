package com.lidroid.xutils.bitmap;

import android.graphics.Bitmap.Config;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import com.lidroid.xutils.bitmap.core.BitmapSize;
import com.lidroid.xutils.bitmap.factory.BitmapFactory;
import com.lidroid.xutils.task.Priority;

public class BitmapDisplayConfig
{
  private Animation animation;
  private boolean autoRotation = false;
  private Bitmap.Config bitmapConfig = Bitmap.Config.RGB_565;
  private BitmapFactory bitmapFactory;
  private BitmapSize bitmapMaxSize;
  private Drawable loadFailedDrawable;
  private Drawable loadingDrawable;
  private Priority priority;
  private boolean showOriginal = false;

  public BitmapDisplayConfig cloneNew()
  {
    BitmapDisplayConfig localBitmapDisplayConfig = new BitmapDisplayConfig();
    localBitmapDisplayConfig.bitmapMaxSize = this.bitmapMaxSize;
    localBitmapDisplayConfig.animation = this.animation;
    localBitmapDisplayConfig.loadingDrawable = this.loadingDrawable;
    localBitmapDisplayConfig.loadFailedDrawable = this.loadFailedDrawable;
    localBitmapDisplayConfig.autoRotation = this.autoRotation;
    localBitmapDisplayConfig.showOriginal = this.showOriginal;
    localBitmapDisplayConfig.bitmapConfig = this.bitmapConfig;
    localBitmapDisplayConfig.bitmapFactory = this.bitmapFactory;
    localBitmapDisplayConfig.priority = this.priority;
    return localBitmapDisplayConfig;
  }

  public Animation getAnimation()
  {
    return this.animation;
  }

  public Bitmap.Config getBitmapConfig()
  {
    return this.bitmapConfig;
  }

  public BitmapFactory getBitmapFactory()
  {
    return this.bitmapFactory;
  }

  public BitmapSize getBitmapMaxSize()
  {
    if (this.bitmapMaxSize == null)
      return BitmapSize.ZERO;
    return this.bitmapMaxSize;
  }

  public Drawable getLoadFailedDrawable()
  {
    return this.loadFailedDrawable;
  }

  public Drawable getLoadingDrawable()
  {
    return this.loadingDrawable;
  }

  public Priority getPriority()
  {
    return this.priority;
  }

  public boolean isAutoRotation()
  {
    return this.autoRotation;
  }

  public boolean isShowOriginal()
  {
    return this.showOriginal;
  }

  public void setAnimation(Animation paramAnimation)
  {
    this.animation = paramAnimation;
  }

  public void setAutoRotation(boolean paramBoolean)
  {
    this.autoRotation = paramBoolean;
  }

  public void setBitmapConfig(Bitmap.Config paramConfig)
  {
    this.bitmapConfig = paramConfig;
  }

  public void setBitmapFactory(BitmapFactory paramBitmapFactory)
  {
    this.bitmapFactory = paramBitmapFactory;
  }

  public void setBitmapMaxSize(BitmapSize paramBitmapSize)
  {
    this.bitmapMaxSize = paramBitmapSize;
  }

  public void setLoadFailedDrawable(Drawable paramDrawable)
  {
    this.loadFailedDrawable = paramDrawable;
  }

  public void setLoadingDrawable(Drawable paramDrawable)
  {
    this.loadingDrawable = paramDrawable;
  }

  public void setPriority(Priority paramPriority)
  {
    this.priority = paramPriority;
  }

  public void setShowOriginal(boolean paramBoolean)
  {
    this.showOriginal = paramBoolean;
  }

  public String toString()
  {
    String str1;
    StringBuilder localStringBuilder;
    if (isShowOriginal())
    {
      str1 = "";
      localStringBuilder = new StringBuilder(String.valueOf(str1));
      if (this.bitmapFactory != null)
        break label52;
    }
    label52: for (String str2 = ""; ; str2 = this.bitmapFactory.getClass().getName())
    {
      return str2;
      str1 = this.bitmapMaxSize.toString();
      break;
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.bitmap.BitmapDisplayConfig
 * JD-Core Version:    0.6.2
 */