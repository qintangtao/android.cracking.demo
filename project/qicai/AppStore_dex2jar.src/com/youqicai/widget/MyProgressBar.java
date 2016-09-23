package com.youqicai.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetrics;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.ProgressBar;

public class MyProgressBar extends ProgressBar
{
  private boolean isMaxValueSetted = false;
  private float mDownLoadAllSize = 1.0F;
  private Paint mPaint = null;
  private String mText = "";
  float textSize = 30.0F;
  private int x = 0;
  float y = 0.0F;

  public MyProgressBar(Context paramContext)
  {
    super(paramContext);
    initText();
  }

  public MyProgressBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initText();
  }

  public MyProgressBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    initText();
  }

  private void initText()
  {
    this.mPaint = new Paint();
    this.mPaint.setColor(-1);
  }

  protected void onDraw(Canvas paramCanvas)
  {
    try
    {
      super.onDraw(paramCanvas);
      if ((this.x == 0) || (this.y == 0.0F))
      {
        this.textSize = getResources().getDimension(2131361833);
        Rect localRect = new Rect();
        this.mPaint.setTextAlign(Paint.Align.CENTER);
        this.mPaint.getTextBounds(this.mText, 0, this.mText.length(), localRect);
        this.mPaint.setTextSize(this.textSize);
        this.x = (getWidth() / 2 - localRect.centerX());
        Paint.FontMetrics localFontMetrics = this.mPaint.getFontMetrics();
        float f = localFontMetrics.bottom - localFontMetrics.top;
        this.y = (getHeight() - (getHeight() - f) / 2.0F - localFontMetrics.bottom);
      }
      paramCanvas.drawText(this.mText, this.x, this.y, this.mPaint);
      return;
    }
    finally
    {
    }
  }

  public void setProgress(float paramFloat)
  {
    float f = 100.0F * paramFloat;
    try
    {
      int i = (int)(f / this.mDownLoadAllSize);
      this.mText = (String.valueOf(i) + "%");
      super.setProgress(i);
      invalidate();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setProgressMax(float paramFloat)
  {
    try
    {
      this.mDownLoadAllSize = paramFloat;
      if (!this.isMaxValueSetted)
      {
        this.isMaxValueSetted = true;
        super.setMax(100);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setText(String paramString)
  {
    this.mText = paramString;
    invalidate();
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.widget.MyProgressBar
 * JD-Core Version:    0.6.2
 */