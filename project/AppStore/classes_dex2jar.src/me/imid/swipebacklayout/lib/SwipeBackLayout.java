package me.imid.swipebacklayout.lib;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import com.youqicai.AppStore.R.styleable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SwipeBackLayout extends FrameLayout
{
  private static final int DEFAULT_SCRIM_COLOR = -1728053248;
  private static final float DEFAULT_SCROLL_THRESHOLD = 0.3F;
  public static final int EDGE_ALL = 11;
  public static final int EDGE_BOTTOM = 8;
  private static final int[] EDGE_FLAGS = { 1, 2, 8, 11 };
  public static final int EDGE_LEFT = 1;
  public static final int EDGE_RIGHT = 2;
  private static final int FULL_ALPHA = 255;
  private static final int MIN_FLING_VELOCITY = 400;
  private static final int OVERSCROLL_DISTANCE = 10;
  public static final int STATE_DRAGGING = 1;
  public static final int STATE_IDLE = 0;
  public static final int STATE_SETTLING = 2;
  private Activity mActivity;
  private int mContentLeft;
  private int mContentTop;
  private View mContentView;
  private ViewDragHelper mDragHelper = ViewDragHelper.create(this, new ViewDragCallback(null));
  private int mEdgeFlag;
  private boolean mEnable = true;
  private boolean mInLayout;
  private List<SwipeListener> mListeners;
  private int mScrimColor = -1728053248;
  private float mScrimOpacity;
  private float mScrollPercent;
  private float mScrollThreshold = 0.3F;
  private Drawable mShadowBottom;
  private Drawable mShadowLeft;
  private Drawable mShadowRight;
  private Rect mTmpRect = new Rect();
  private int mTrackingEdge;

  public SwipeBackLayout(Context paramContext)
  {
    this(paramContext, null);
  }

  public SwipeBackLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130772034);
  }

  public SwipeBackLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SwipeBackLayout, paramInt, 2131427334);
    int i = localTypedArray.getDimensionPixelSize(0, -1);
    if (i > 0)
      setEdgeSize(i);
    setEdgeTrackingEnabled(EDGE_FLAGS[localTypedArray.getInt(1, 0)]);
    int j = localTypedArray.getResourceId(2, 2130837680);
    int k = localTypedArray.getResourceId(3, 2130837681);
    int m = localTypedArray.getResourceId(4, 2130837679);
    setShadow(j, 1);
    setShadow(k, 2);
    setShadow(m, 8);
    localTypedArray.recycle();
    float f = 400.0F * getResources().getDisplayMetrics().density;
    this.mDragHelper.setMinVelocity(f);
    this.mDragHelper.setMaxVelocity(2.0F * f);
  }

  private void drawScrim(Canvas paramCanvas, View paramView)
  {
    int i = (int)(((0xFF000000 & this.mScrimColor) >>> 24) * this.mScrimOpacity) << 24 | 0xFFFFFF & this.mScrimColor;
    if ((0x1 & this.mTrackingEdge) != 0)
      paramCanvas.clipRect(0, 0, paramView.getLeft(), getHeight());
    while (true)
    {
      paramCanvas.drawColor(i);
      return;
      if ((0x2 & this.mTrackingEdge) != 0)
        paramCanvas.clipRect(paramView.getRight(), 0, getRight(), getHeight());
      else if ((0x8 & this.mTrackingEdge) != 0)
        paramCanvas.clipRect(paramView.getLeft(), paramView.getBottom(), getRight(), getHeight());
    }
  }

  private void drawShadow(Canvas paramCanvas, View paramView)
  {
    Rect localRect = this.mTmpRect;
    paramView.getHitRect(localRect);
    if ((0x1 & this.mEdgeFlag) != 0)
    {
      this.mShadowLeft.setBounds(localRect.left - this.mShadowLeft.getIntrinsicWidth(), localRect.top, localRect.left, localRect.bottom);
      this.mShadowLeft.setAlpha((int)(255.0F * this.mScrimOpacity));
      this.mShadowLeft.draw(paramCanvas);
    }
    if ((0x2 & this.mEdgeFlag) != 0)
    {
      this.mShadowRight.setBounds(localRect.right, localRect.top, localRect.right + this.mShadowRight.getIntrinsicWidth(), localRect.bottom);
      this.mShadowRight.setAlpha((int)(255.0F * this.mScrimOpacity));
      this.mShadowRight.draw(paramCanvas);
    }
    if ((0x8 & this.mEdgeFlag) != 0)
    {
      this.mShadowBottom.setBounds(localRect.left, localRect.bottom, localRect.right, localRect.bottom + this.mShadowBottom.getIntrinsicHeight());
      this.mShadowBottom.setAlpha((int)(255.0F * this.mScrimOpacity));
      this.mShadowBottom.draw(paramCanvas);
    }
  }

  private void setContentView(View paramView)
  {
    this.mContentView = paramView;
  }

  public void addSwipeListener(SwipeListener paramSwipeListener)
  {
    if (this.mListeners == null)
      this.mListeners = new ArrayList();
    this.mListeners.add(paramSwipeListener);
  }

  public void attachToActivity(Activity paramActivity)
  {
    this.mActivity = paramActivity;
    TypedArray localTypedArray = paramActivity.getTheme().obtainStyledAttributes(new int[] { 16842836 });
    int i = localTypedArray.getResourceId(0, 0);
    localTypedArray.recycle();
    ViewGroup localViewGroup1 = (ViewGroup)paramActivity.getWindow().getDecorView();
    ViewGroup localViewGroup2 = (ViewGroup)localViewGroup1.getChildAt(0);
    localViewGroup2.setBackgroundResource(i);
    localViewGroup1.removeView(localViewGroup2);
    addView(localViewGroup2);
    setContentView(localViewGroup2);
    localViewGroup1.addView(this);
  }

  public void computeScroll()
  {
    this.mScrimOpacity = (1.0F - this.mScrollPercent);
    if (this.mDragHelper.continueSettling(true))
      ViewCompat.postInvalidateOnAnimation(this);
  }

  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    if (paramView == this.mContentView);
    for (int i = 1; ; i = 0)
    {
      boolean bool = super.drawChild(paramCanvas, paramView, paramLong);
      if ((this.mScrimOpacity > 0.0F) && (i != 0) && (this.mDragHelper.getViewDragState() != 0))
      {
        drawShadow(paramCanvas, paramView);
        drawScrim(paramCanvas, paramView);
      }
      return bool;
    }
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.mEnable)
      return false;
    try
    {
      boolean bool = this.mDragHelper.shouldInterceptTouchEvent(paramMotionEvent);
      return bool;
    }
    catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException)
    {
    }
    return false;
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mInLayout = true;
    if (this.mContentView != null)
      this.mContentView.layout(this.mContentLeft, this.mContentTop, this.mContentLeft + this.mContentView.getMeasuredWidth(), this.mContentTop + this.mContentView.getMeasuredHeight());
    this.mInLayout = false;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.mEnable)
      return false;
    this.mDragHelper.processTouchEvent(paramMotionEvent);
    return true;
  }

  public void removeSwipeListener(SwipeListener paramSwipeListener)
  {
    if (this.mListeners == null)
      return;
    this.mListeners.remove(paramSwipeListener);
  }

  public void requestLayout()
  {
    if (!this.mInLayout)
      super.requestLayout();
  }

  public void scrollToFinishActivity()
  {
    int i = this.mContentView.getWidth();
    int j = this.mContentView.getHeight();
    int k = 0;
    int n;
    if ((0x1 & this.mEdgeFlag) != 0)
    {
      n = 10 + (i + this.mShadowLeft.getIntrinsicWidth());
      this.mTrackingEdge = 1;
    }
    while (true)
    {
      this.mDragHelper.smoothSlideViewTo(this.mContentView, n, k);
      invalidate();
      return;
      if ((0x2 & this.mEdgeFlag) != 0)
      {
        n = -10 + (-i - this.mShadowRight.getIntrinsicWidth());
        this.mTrackingEdge = 2;
        k = 0;
      }
      else
      {
        int m = 0x8 & this.mEdgeFlag;
        n = 0;
        k = 0;
        if (m != 0)
        {
          k = -10 + (-j - this.mShadowBottom.getIntrinsicHeight());
          this.mTrackingEdge = 8;
          n = 0;
        }
      }
    }
  }

  public void setEdgeSize(int paramInt)
  {
    this.mDragHelper.setEdgeSize(paramInt);
  }

  public void setEdgeTrackingEnabled(int paramInt)
  {
    this.mEdgeFlag = paramInt;
    this.mDragHelper.setEdgeTrackingEnabled(this.mEdgeFlag);
  }

  public void setEnableGesture(boolean paramBoolean)
  {
    this.mEnable = paramBoolean;
  }

  public void setScrimColor(int paramInt)
  {
    this.mScrimColor = paramInt;
    invalidate();
  }

  public void setScrollThresHold(float paramFloat)
  {
    if ((paramFloat >= 1.0F) || (paramFloat <= 0.0F))
      throw new IllegalArgumentException("Threshold value should be between 0 and 1.0");
    this.mScrollThreshold = paramFloat;
  }

  public void setSensitivity(Context paramContext, float paramFloat)
  {
    this.mDragHelper.setSensitivity(paramContext, paramFloat);
  }

  public void setShadow(int paramInt1, int paramInt2)
  {
    setShadow(getResources().getDrawable(paramInt1), paramInt2);
  }

  public void setShadow(Drawable paramDrawable, int paramInt)
  {
    if ((paramInt & 0x1) != 0)
      this.mShadowLeft = paramDrawable;
    while (true)
    {
      invalidate();
      return;
      if ((paramInt & 0x2) != 0)
        this.mShadowRight = paramDrawable;
      else if ((paramInt & 0x8) != 0)
        this.mShadowBottom = paramDrawable;
    }
  }

  @Deprecated
  public void setSwipeListener(SwipeListener paramSwipeListener)
  {
    addSwipeListener(paramSwipeListener);
  }

  public static abstract interface SwipeListener
  {
    public abstract void onEdgeTouch(int paramInt);

    public abstract void onScrollOverThreshold();

    public abstract void onScrollStateChange(int paramInt, float paramFloat);
  }

  private class ViewDragCallback extends ViewDragHelper.Callback
  {
    private boolean mIsScrollOverValid;

    private ViewDragCallback()
    {
    }

    public int clampViewPositionHorizontal(View paramView, int paramInt1, int paramInt2)
    {
      int j;
      if ((0x1 & SwipeBackLayout.this.mTrackingEdge) != 0)
        j = Math.min(paramView.getWidth(), Math.max(paramInt1, 0));
      int i;
      do
      {
        return j;
        i = 0x2 & SwipeBackLayout.this.mTrackingEdge;
        j = 0;
      }
      while (i == 0);
      return Math.min(0, Math.max(paramInt1, -paramView.getWidth()));
    }

    public int clampViewPositionVertical(View paramView, int paramInt1, int paramInt2)
    {
      int i = 0x8 & SwipeBackLayout.this.mTrackingEdge;
      int j = 0;
      if (i != 0)
        j = Math.min(0, Math.max(paramInt1, -paramView.getHeight()));
      return j;
    }

    public int getViewHorizontalDragRange(View paramView)
    {
      return 0x3 & SwipeBackLayout.this.mEdgeFlag;
    }

    public int getViewVerticalDragRange(View paramView)
    {
      return 0x8 & SwipeBackLayout.this.mEdgeFlag;
    }

    public void onViewDragStateChanged(int paramInt)
    {
      super.onViewDragStateChanged(paramInt);
      if ((SwipeBackLayout.this.mListeners != null) && (!SwipeBackLayout.this.mListeners.isEmpty()))
      {
        Iterator localIterator = SwipeBackLayout.this.mListeners.iterator();
        while (localIterator.hasNext())
          ((SwipeBackLayout.SwipeListener)localIterator.next()).onScrollStateChange(paramInt, SwipeBackLayout.this.mScrollPercent);
      }
    }

    public void onViewPositionChanged(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      super.onViewPositionChanged(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
      if ((0x1 & SwipeBackLayout.this.mTrackingEdge) != 0)
        SwipeBackLayout.access$502(SwipeBackLayout.this, Math.abs(paramInt1 / (SwipeBackLayout.this.mContentView.getWidth() + SwipeBackLayout.this.mShadowLeft.getIntrinsicWidth())));
      while (true)
      {
        SwipeBackLayout.access$1002(SwipeBackLayout.this, paramInt1);
        SwipeBackLayout.access$1102(SwipeBackLayout.this, paramInt2);
        SwipeBackLayout.this.invalidate();
        if ((SwipeBackLayout.this.mScrollPercent < SwipeBackLayout.this.mScrollThreshold) && (!this.mIsScrollOverValid))
          this.mIsScrollOverValid = true;
        if ((SwipeBackLayout.this.mListeners == null) || (SwipeBackLayout.this.mListeners.isEmpty()) || (SwipeBackLayout.this.mDragHelper.getViewDragState() != 1) || (SwipeBackLayout.this.mScrollPercent < SwipeBackLayout.this.mScrollThreshold) || (!this.mIsScrollOverValid))
          break;
        this.mIsScrollOverValid = false;
        Iterator localIterator = SwipeBackLayout.this.mListeners.iterator();
        while (localIterator.hasNext())
          ((SwipeBackLayout.SwipeListener)localIterator.next()).onScrollOverThreshold();
        if ((0x2 & SwipeBackLayout.this.mTrackingEdge) != 0)
          SwipeBackLayout.access$502(SwipeBackLayout.this, Math.abs(paramInt1 / (SwipeBackLayout.this.mContentView.getWidth() + SwipeBackLayout.this.mShadowRight.getIntrinsicWidth())));
        else if ((0x8 & SwipeBackLayout.this.mTrackingEdge) != 0)
          SwipeBackLayout.access$502(SwipeBackLayout.this, Math.abs(paramInt2 / (SwipeBackLayout.this.mContentView.getHeight() + SwipeBackLayout.this.mShadowBottom.getIntrinsicHeight())));
      }
      if ((SwipeBackLayout.this.mScrollPercent >= 1.0F) && (!SwipeBackLayout.this.mActivity.isFinishing()))
        SwipeBackLayout.this.mActivity.finish();
    }

    public void onViewReleased(View paramView, float paramFloat1, float paramFloat2)
    {
      int i = paramView.getWidth();
      int j = paramView.getHeight();
      int k = 0;
      int n;
      if ((0x1 & SwipeBackLayout.this.mTrackingEdge) != 0)
        if ((paramFloat1 > 0.0F) || ((paramFloat1 == 0.0F) && (SwipeBackLayout.this.mScrollPercent > SwipeBackLayout.this.mScrollThreshold)))
          n = 10 + (i + SwipeBackLayout.this.mShadowLeft.getIntrinsicWidth());
      int m;
      do
      {
        while (true)
        {
          SwipeBackLayout.this.mDragHelper.settleCapturedViewAt(n, k);
          SwipeBackLayout.this.invalidate();
          return;
          n = 0;
          k = 0;
        }
        if ((0x2 & SwipeBackLayout.this.mTrackingEdge) != 0)
        {
          if ((paramFloat1 < 0.0F) || ((paramFloat1 == 0.0F) && (SwipeBackLayout.this.mScrollPercent > SwipeBackLayout.this.mScrollThreshold)));
          for (n = -(10 + (i + SwipeBackLayout.this.mShadowLeft.getIntrinsicWidth())); ; n = 0)
          {
            k = 0;
            break;
          }
        }
        m = 0x8 & SwipeBackLayout.this.mTrackingEdge;
        n = 0;
        k = 0;
      }
      while (m == 0);
      if ((paramFloat2 < 0.0F) || ((paramFloat2 == 0.0F) && (SwipeBackLayout.this.mScrollPercent > SwipeBackLayout.this.mScrollThreshold)));
      for (k = -(10 + (j + SwipeBackLayout.this.mShadowBottom.getIntrinsicHeight())); ; k = 0)
      {
        n = 0;
        break;
      }
    }

    public boolean tryCaptureView(View paramView, int paramInt)
    {
      boolean bool = SwipeBackLayout.this.mDragHelper.isEdgeTouched(SwipeBackLayout.this.mEdgeFlag, paramInt);
      if (bool)
      {
        if (SwipeBackLayout.this.mDragHelper.isEdgeTouched(1, paramInt))
          SwipeBackLayout.access$302(SwipeBackLayout.this, 1);
        while ((SwipeBackLayout.this.mListeners != null) && (!SwipeBackLayout.this.mListeners.isEmpty()))
        {
          Iterator localIterator = SwipeBackLayout.this.mListeners.iterator();
          while (localIterator.hasNext())
            ((SwipeBackLayout.SwipeListener)localIterator.next()).onEdgeTouch(SwipeBackLayout.this.mTrackingEdge);
          if (SwipeBackLayout.this.mDragHelper.isEdgeTouched(2, paramInt))
            SwipeBackLayout.access$302(SwipeBackLayout.this, 2);
          else if (SwipeBackLayout.this.mDragHelper.isEdgeTouched(8, paramInt))
            SwipeBackLayout.access$302(SwipeBackLayout.this, 8);
        }
        this.mIsScrollOverValid = true;
      }
      return bool;
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     me.imid.swipebacklayout.lib.SwipeBackLayout
 * JD-Core Version:    0.6.2
 */