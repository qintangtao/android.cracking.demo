package com.youqicai.AppStore.card;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.hsg.sdk.common.imagecache.ImageFetcher;
import com.hsg.sdk.common.imagecache.ImageWorker.SimpleProcessCallback;
import com.youqicai.AppStore.utils.ViewTools;

public abstract class BaseCard extends LinearLayout
{
  protected CardType mCardType;
  protected Context mContext;
  protected LayoutInflater mInflater;

  public BaseCard(Context paramContext, CardType paramCardType)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mInflater = ((LayoutInflater)this.mContext.getSystemService("layout_inflater"));
    this.mCardType = paramCardType;
    initCard();
  }

  public abstract void applyCard(Object paramObject);

  public CardType getmCardType()
  {
    return this.mCardType;
  }

  public void increaseClickRegion(View paramView)
  {
    ViewTools.increaseClickRegion(paramView, 15, 15, 15, 15);
  }

  protected abstract void initCard();

  public void setImage(ImageView paramImageView, String paramString, int paramInt)
  {
    if (paramImageView == null)
      return;
    if (paramInt != -1)
      paramImageView.setImageResource(paramInt);
    ImageFetcher.getInstance(this.mContext.getApplicationContext()).loadImage(paramString, paramImageView, new ImageWorker.SimpleProcessCallback()
    {
    });
  }

  public void setImage(final ImageView paramImageView, String paramString, Drawable paramDrawable)
  {
    if (paramImageView == null)
      return;
    if (paramDrawable != null)
      paramImageView.setImageDrawable(paramDrawable);
    ImageFetcher.getInstance(this.mContext.getApplicationContext()).loadImage(paramString, paramImageView, new ImageWorker.SimpleProcessCallback()
    {
      public void onMemoryOver(BitmapDrawable paramAnonymousBitmapDrawable)
      {
        super.onMemoryOver(paramAnonymousBitmapDrawable);
        paramImageView.setScaleType(ImageView.ScaleType.FIT_XY);
      }

      public void onTaskOver(Drawable paramAnonymousDrawable)
      {
        super.onTaskOver(paramAnonymousDrawable);
        paramImageView.setScaleType(ImageView.ScaleType.FIT_XY);
      }
    });
  }

  protected void setTextView(String paramString, TextView paramTextView)
  {
    if ((paramString != null) && (paramTextView != null))
      paramTextView.setText(paramString);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.card.BaseCard
 * JD-Core Version:    0.6.2
 */