package com.youqicai.speed;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import java.util.Timer;
import java.util.TimerTask;

public class DesktopSafeView extends View
{
  private int index = -1;
  private Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      DesktopSafeView.this.invalidate();
    }
  };
  private int startindex = -2;
  Timer timer = new Timer();

  public DesktopSafeView(Context paramContext)
  {
    super(paramContext);
  }

  public DesktopSafeView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public DesktopSafeView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    Paint localPaint1 = new Paint();
    localPaint1.setAntiAlias(true);
    localPaint1.setStyle(Paint.Style.STROKE);
    int i = UiUtil.getIntBy720(getContext(), 26);
    localPaint1.setStrokeWidth(i);
    localPaint1.setColor(-14689832);
    Paint localPaint2 = new Paint();
    localPaint2.setAntiAlias(true);
    localPaint2.setStyle(Paint.Style.STROKE);
    localPaint2.setStrokeWidth(i);
    localPaint2.setColor(16777215);
    int j = this.startindex;
    if (j < 12 + this.startindex)
    {
      RectF localRectF = new RectF(i / 2, i / 2, getWidth() - i / 2, getWidth() - i / 2);
      if (this.index == -1)
        paramCanvas.drawArc(localRectF, -16 + j * 30, 24.0F, false, localPaint2);
      while (true)
      {
        paramCanvas.drawArc(localRectF, -16 + (24 + j * 30), 6.0F, false, localPaint2);
        j++;
        break;
        if (j <= this.index)
          paramCanvas.drawArc(localRectF, -16 + j * 30, 24.0F, false, localPaint1);
        else
          paramCanvas.drawArc(localRectF, -16 + j * 30, 24.0F, false, localPaint2);
      }
    }
  }

  public void reSet()
  {
    this.index = (12 + this.startindex);
    this.mHandler.sendEmptyMessage(0);
  }

  public void start()
  {
    this.index = 0;
    this.timer.schedule(new TimerTask()
    {
      public void run()
      {
        if (DesktopSafeView.this.index > 12 + DesktopSafeView.this.startindex)
        {
          DesktopSafeView.access$002(DesktopSafeView.this, 12 + DesktopSafeView.this.startindex);
          cancel();
          return;
        }
        DesktopSafeView.access$008(DesktopSafeView.this);
        DesktopSafeView.this.mHandler.sendEmptyMessage(0);
      }
    }
    , 0L, 100L);
  }

  public void stop()
  {
    this.index = -1;
    this.mHandler.sendEmptyMessage(0);
    if (this.timer != null)
    {
      this.timer.cancel();
      this.timer = null;
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.speed.DesktopSafeView
 * JD-Core Version:    0.6.2
 */