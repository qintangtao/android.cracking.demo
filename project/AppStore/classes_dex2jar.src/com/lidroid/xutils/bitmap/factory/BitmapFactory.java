package com.lidroid.xutils.bitmap.factory;

import android.graphics.Bitmap;

public abstract interface BitmapFactory
{
  public abstract BitmapFactory cloneNew();

  public abstract Bitmap createBitmap(Bitmap paramBitmap);
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.bitmap.factory.BitmapFactory
 * JD-Core Version:    0.6.2
 */