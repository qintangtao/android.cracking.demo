package com.lidroid.xutils.bitmap.callback;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.View;

public abstract interface BitmapSetter<T extends View>
{
  public abstract Drawable getDrawable(T paramT);

  public abstract void setBitmap(T paramT, Bitmap paramBitmap);

  public abstract void setDrawable(T paramT, Drawable paramDrawable);
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.bitmap.callback.BitmapSetter
 * JD-Core Version:    0.6.2
 */