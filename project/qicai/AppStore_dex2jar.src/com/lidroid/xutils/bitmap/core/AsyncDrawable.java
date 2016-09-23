package com.lidroid.xutils.bitmap.core;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.view.View;
import com.lidroid.xutils.BitmapUtils.BitmapLoadTask;
import java.lang.ref.WeakReference;

public class AsyncDrawable<T extends View> extends Drawable
{
  private final Drawable baseDrawable;
  private final WeakReference<BitmapUtils.BitmapLoadTask<T>> bitmapLoadTaskReference;

  public AsyncDrawable(Drawable paramDrawable, BitmapUtils.BitmapLoadTask<T> paramBitmapLoadTask)
  {
    if (paramBitmapLoadTask == null)
      throw new IllegalArgumentException("bitmapWorkerTask may not be null");
    this.baseDrawable = paramDrawable;
    this.bitmapLoadTaskReference = new WeakReference(paramBitmapLoadTask);
  }

  public void clearColorFilter()
  {
    if (this.baseDrawable != null)
      this.baseDrawable.clearColorFilter();
  }

  public void draw(Canvas paramCanvas)
  {
    if (this.baseDrawable != null)
      this.baseDrawable.draw(paramCanvas);
  }

  public BitmapUtils.BitmapLoadTask<T> getBitmapWorkerTask()
  {
    return (BitmapUtils.BitmapLoadTask)this.bitmapLoadTaskReference.get();
  }

  public int getChangingConfigurations()
  {
    if (this.baseDrawable == null)
      return 0;
    return this.baseDrawable.getChangingConfigurations();
  }

  public Drawable.ConstantState getConstantState()
  {
    if (this.baseDrawable == null)
      return null;
    return this.baseDrawable.getConstantState();
  }

  public Drawable getCurrent()
  {
    if (this.baseDrawable == null)
      return null;
    return this.baseDrawable.getCurrent();
  }

  public int getIntrinsicHeight()
  {
    if (this.baseDrawable == null)
      return 0;
    return this.baseDrawable.getIntrinsicHeight();
  }

  public int getIntrinsicWidth()
  {
    if (this.baseDrawable == null)
      return 0;
    return this.baseDrawable.getIntrinsicWidth();
  }

  public int getMinimumHeight()
  {
    if (this.baseDrawable == null)
      return 0;
    return this.baseDrawable.getMinimumHeight();
  }

  public int getMinimumWidth()
  {
    if (this.baseDrawable == null)
      return 0;
    return this.baseDrawable.getMinimumWidth();
  }

  public int getOpacity()
  {
    if (this.baseDrawable == null)
      return 127;
    return this.baseDrawable.getOpacity();
  }

  public boolean getPadding(Rect paramRect)
  {
    return (this.baseDrawable != null) && (this.baseDrawable.getPadding(paramRect));
  }

  public int[] getState()
  {
    if (this.baseDrawable == null)
      return null;
    return this.baseDrawable.getState();
  }

  public Region getTransparentRegion()
  {
    if (this.baseDrawable == null)
      return null;
    return this.baseDrawable.getTransparentRegion();
  }

  public void invalidateSelf()
  {
    if (this.baseDrawable != null)
      this.baseDrawable.invalidateSelf();
  }

  public boolean isStateful()
  {
    return (this.baseDrawable != null) && (this.baseDrawable.isStateful());
  }

  public Drawable mutate()
  {
    if (this.baseDrawable == null)
      return null;
    return this.baseDrawable.mutate();
  }

  public void scheduleSelf(Runnable paramRunnable, long paramLong)
  {
    if (this.baseDrawable != null)
      this.baseDrawable.scheduleSelf(paramRunnable, paramLong);
  }

  public void setAlpha(int paramInt)
  {
    if (this.baseDrawable != null)
      this.baseDrawable.setAlpha(paramInt);
  }

  public void setBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.baseDrawable != null)
      this.baseDrawable.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void setBounds(Rect paramRect)
  {
    if (this.baseDrawable != null)
      this.baseDrawable.setBounds(paramRect);
  }

  public void setChangingConfigurations(int paramInt)
  {
    if (this.baseDrawable != null)
      this.baseDrawable.setChangingConfigurations(paramInt);
  }

  public void setColorFilter(int paramInt, PorterDuff.Mode paramMode)
  {
    if (this.baseDrawable != null)
      this.baseDrawable.setColorFilter(paramInt, paramMode);
  }

  public void setColorFilter(ColorFilter paramColorFilter)
  {
    if (this.baseDrawable != null)
      this.baseDrawable.setColorFilter(paramColorFilter);
  }

  public void setDither(boolean paramBoolean)
  {
    if (this.baseDrawable != null)
      this.baseDrawable.setDither(paramBoolean);
  }

  public void setFilterBitmap(boolean paramBoolean)
  {
    if (this.baseDrawable != null)
      this.baseDrawable.setFilterBitmap(paramBoolean);
  }

  public boolean setState(int[] paramArrayOfInt)
  {
    return (this.baseDrawable != null) && (this.baseDrawable.setState(paramArrayOfInt));
  }

  public boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    return (this.baseDrawable != null) && (this.baseDrawable.setVisible(paramBoolean1, paramBoolean2));
  }

  public void unscheduleSelf(Runnable paramRunnable)
  {
    if (this.baseDrawable != null)
      this.baseDrawable.unscheduleSelf(paramRunnable);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.bitmap.core.AsyncDrawable
 * JD-Core Version:    0.6.2
 */