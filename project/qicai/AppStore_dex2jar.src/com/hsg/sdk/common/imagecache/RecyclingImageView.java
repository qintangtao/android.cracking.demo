package com.hsg.sdk.common.imagecache;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;

public class RecyclingImageView extends ImageView
{
  public RecyclingImageView(Context paramContext)
  {
    super(paramContext);
  }

  public RecyclingImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private static void notifyDrawable(Drawable paramDrawable, boolean paramBoolean)
  {
    if ((paramDrawable instanceof RecyclingBitmapDrawable))
      ((RecyclingBitmapDrawable)paramDrawable).setIsDisplayed(paramBoolean);
    while (true)
    {
      return;
      if ((paramDrawable instanceof LayerDrawable))
      {
        LayerDrawable localLayerDrawable = (LayerDrawable)paramDrawable;
        int i = 0;
        int j = localLayerDrawable.getNumberOfLayers();
        while (i < j)
        {
          notifyDrawable(localLayerDrawable.getDrawable(i), paramBoolean);
          i++;
        }
      }
    }
  }

  protected void onDetachedFromWindow()
  {
    setImageDrawable(null);
    super.onDetachedFromWindow();
  }

  public void setImageDrawable(Drawable paramDrawable)
  {
    Drawable localDrawable = getDrawable();
    super.setImageDrawable(paramDrawable);
    notifyDrawable(paramDrawable, true);
    notifyDrawable(localDrawable, false);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.imagecache.RecyclingImageView
 * JD-Core Version:    0.6.2
 */