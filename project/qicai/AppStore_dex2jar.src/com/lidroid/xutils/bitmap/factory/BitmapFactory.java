package com.lidroid.xutils.bitmap.factory;

import android.graphics.Bitmap;

public abstract interface BitmapFactory
{
  public abstract BitmapFactory cloneNew();

  public abstract Bitmap createBitmap(Bitmap paramBitmap);
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.bitmap.factory.BitmapFactory
 * JD-Core Version:    0.6.2
 */