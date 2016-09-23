package com.youqicai.AppStore.item;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.hsg.sdk.common.imagecache.ImageFetcher;
import com.hsg.sdk.common.imagecache.ImageWorker.SimpleProcessCallback;

public abstract class BaseItemView extends LinearLayout
{
  protected View.OnClickListener downLayoutListener;
  protected Context mContext;
  protected LayoutInflater mInflater;

  public BaseItemView(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mInflater = ((LayoutInflater)this.mContext.getSystemService("layout_inflater"));
    initView();
  }

  public BaseItemView(Context paramContext, View.OnClickListener paramOnClickListener)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mInflater = ((LayoutInflater)this.mContext.getSystemService("layout_inflater"));
    this.downLayoutListener = paramOnClickListener;
    initView();
  }

  public abstract void applyData(Object paramObject);

  protected abstract void initView();

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

  public void setImage(ImageView paramImageView, String paramString, Drawable paramDrawable)
  {
    if (paramImageView == null)
      return;
    if (paramDrawable != null)
      paramImageView.setImageDrawable(paramDrawable);
    ImageFetcher.getInstance(this.mContext.getApplicationContext()).loadImage(paramString, paramImageView, new ImageWorker.SimpleProcessCallback()
    {
    });
  }

  protected void setTextView(String paramString, TextView paramTextView)
  {
    if ((paramString != null) && (paramTextView != null))
      paramTextView.setText(paramString);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.item.BaseItemView
 * JD-Core Version:    0.6.2
 */