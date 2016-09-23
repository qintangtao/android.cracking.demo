package com.youqicai.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ImageView;

public class ParallaxImageView extends ImageView
{
  private int mCurrentTranslation;

  public ParallaxImageView(Context paramContext)
  {
    super(paramContext);
  }

  public ParallaxImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public ParallaxImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public void draw(Canvas paramCanvas)
  {
    paramCanvas.save();
    paramCanvas.translate(0.0F, -this.mCurrentTranslation / 2);
    super.draw(paramCanvas);
    paramCanvas.restore();
  }

  public void setCurrentTranslation(int paramInt)
  {
    this.mCurrentTranslation = paramInt;
    invalidate();
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.widget.ParallaxImageView
 * JD-Core Version:    0.6.2
 */