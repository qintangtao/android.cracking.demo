package com.lidroid.xutils.bitmap.core;

public class BitmapSize
{
  public static final BitmapSize ZERO = new BitmapSize(0, 0);
  private final int height;
  private final int width;

  public BitmapSize(int paramInt1, int paramInt2)
  {
    this.width = paramInt1;
    this.height = paramInt2;
  }

  public int getHeight()
  {
    return this.height;
  }

  public int getWidth()
  {
    return this.width;
  }

  public BitmapSize scale(float paramFloat)
  {
    return new BitmapSize((int)(paramFloat * this.width), (int)(paramFloat * this.height));
  }

  public BitmapSize scaleDown(int paramInt)
  {
    return new BitmapSize(this.width / paramInt, this.height / paramInt);
  }

  public String toString()
  {
    return "_" + this.width + "_" + this.height;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.bitmap.core.BitmapSize
 * JD-Core Version:    0.6.2
 */