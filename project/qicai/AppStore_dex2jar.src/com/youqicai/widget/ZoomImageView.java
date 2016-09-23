package com.youqicai.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.OverScroller;
import android.widget.Scroller;

public class ZoomImageView extends ImageView
  implements View.OnTouchListener, ViewTreeObserver.OnGlobalLayoutListener
{
  public static final float DEFAULT_MAX_SCALE = 3.0F;
  public static final float DEFAULT_MID_SCALE = 1.75F;
  public static final float DEFAULT_MIN_SCALE = 1.0F;
  private static final int EDGE_BOTH = 2;
  private static final int EDGE_LEFT = 0;
  private static final int EDGE_NONE = -1;
  private static final int EDGE_RIGHT = 1;
  private boolean allowParentInterceptOnEdge = true;
  private final Matrix baseMatrix = new Matrix();
  private int bottom;
  private FlingRunnable currentFlingRunnable;
  private final RectF displayRect = new RectF();
  private final Matrix drawMatrix = new Matrix();
  private boolean isZoomEnabled;
  private int left;
  private View.OnLongClickListener longClickListener;
  private final float[] matrixValues = new float[9];
  private float maxScale = 3.0F;
  private float midScale = 1.75F;
  private float minScale = 1.0F;
  private MultiGestureDetector multiGestureDetector;
  private OnPhotoTapListener photoTapListener;
  private int right;
  private ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_CENTER;
  private int scrollEdge = 2;
  private final Matrix suppMatrix = new Matrix();
  private int top;
  private OnViewTapListener viewTapListener;

  public ZoomImageView(Context paramContext)
  {
    this(paramContext, null);
  }

  public ZoomImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ZoomImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    super.setScaleType(ImageView.ScaleType.MATRIX);
    setOnTouchListener(this);
    this.multiGestureDetector = new MultiGestureDetector(paramContext);
    setIsZoomEnabled(true);
  }

  private void checkAndDisplayMatrix()
  {
    checkMatrixBounds();
    setImageMatrix(getDisplayMatrix());
  }

  private void checkMatrixBounds()
  {
    label276: 
    while (true)
    {
      RectF localRectF;
      float f1;
      float f2;
      int i;
      int j;
      float f4;
      try
      {
        localRectF = getDisplayRect(getDisplayMatrix());
        if (localRectF == null)
          return;
        f1 = localRectF.height();
        f2 = localRectF.width();
        i = getHeight();
        if (f1 > i)
          break label200;
        switch (1.$SwitchMap$android$widget$ImageView$ScaleType[this.scaleType.ordinal()])
        {
        default:
          f3 = (i - f1) / 2.0F - localRectF.top;
          j = getWidth();
          if (f2 > j)
            break label276;
          switch (1.$SwitchMap$android$widget$ImageView$ScaleType[this.scaleType.ordinal()])
          {
          default:
            f4 = (j - f2) / 2.0F - localRectF.left;
            this.scrollEdge = 2;
            this.suppMatrix.postTranslate(f4, f3);
            return;
          case 1:
          case 2:
          }
          break;
        case 1:
        case 2:
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      float f3 = -localRectF.top;
      continue;
      f3 = i - f1 - localRectF.top;
      continue;
      label200: if (localRectF.top > 0.0F)
      {
        f3 = -localRectF.top;
      }
      else
      {
        boolean bool = localRectF.bottom < i;
        f3 = 0.0F;
        if (bool)
        {
          f3 = i - localRectF.bottom;
          continue;
          f4 = -localRectF.left;
          continue;
          f4 = j - f2 - localRectF.left;
          continue;
          if (localRectF.left > 0.0F)
          {
            this.scrollEdge = 0;
            f4 = -localRectF.left;
          }
          else if (localRectF.right < j)
          {
            f4 = j - localRectF.right;
            this.scrollEdge = 1;
          }
          else
          {
            this.scrollEdge = -1;
            f4 = 0.0F;
          }
        }
      }
    }
  }

  private void checkZoomLevels(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (paramFloat1 >= paramFloat2)
      throw new IllegalArgumentException("MinZoom should be less than MidZoom");
    if (paramFloat2 >= paramFloat3)
      throw new IllegalArgumentException("MidZoom should be less than MaxZoom");
  }

  private RectF getDisplayRect(Matrix paramMatrix)
  {
    Drawable localDrawable = getDrawable();
    if (localDrawable != null)
    {
      this.displayRect.set(0.0F, 0.0F, localDrawable.getIntrinsicWidth(), localDrawable.getIntrinsicHeight());
      paramMatrix.mapRect(this.displayRect);
      return this.displayRect;
    }
    return null;
  }

  @TargetApi(16)
  private void postOnAnimation(View paramView, Runnable paramRunnable)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramView.postOnAnimation(paramRunnable);
      return;
    }
    paramView.postDelayed(paramRunnable, 16L);
  }

  private void resetMatrix()
  {
    this.suppMatrix.reset();
    setImageMatrix(getDisplayMatrix());
    checkMatrixBounds();
  }

  private final void update()
  {
    if (this.isZoomEnabled)
    {
      super.setScaleType(ImageView.ScaleType.MATRIX);
      updateBaseMatrix(getDrawable());
      return;
    }
    resetMatrix();
  }

  private void updateBaseMatrix(Drawable paramDrawable)
  {
    if (paramDrawable == null)
      return;
    while (true)
    {
      float f1;
      float f2;
      int i;
      int j;
      float f3;
      float f4;
      try
      {
        f1 = getWidth();
        f2 = getHeight();
        i = paramDrawable.getIntrinsicWidth();
        j = paramDrawable.getIntrinsicHeight();
        this.baseMatrix.reset();
        f3 = f1 / i;
        f4 = f2 / j;
        if (this.scaleType == ImageView.ScaleType.CENTER)
        {
          this.baseMatrix.postTranslate((f1 - i) / 2.0F, (f2 - j) / 2.0F);
          resetMatrix();
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      if (this.scaleType == ImageView.ScaleType.CENTER_CROP)
      {
        float f6 = Math.max(f3, f4);
        this.baseMatrix.postScale(f6, f6);
        this.baseMatrix.postTranslate((f1 - f6 * i) / 2.0F, (f2 - f6 * j) / 2.0F);
      }
      else if (this.scaleType == ImageView.ScaleType.CENTER_INSIDE)
      {
        float f5 = Math.min(1.0F, Math.min(f3, f4));
        this.baseMatrix.postScale(f5, f5);
        this.baseMatrix.postTranslate((f1 - f5 * i) / 2.0F, (f2 - f5 * j) / 2.0F);
      }
      else
      {
        RectF localRectF1 = new RectF(0.0F, 0.0F, i, j);
        RectF localRectF2 = new RectF(0.0F, 0.0F, f1, f2);
        switch (1.$SwitchMap$android$widget$ImageView$ScaleType[this.scaleType.ordinal()])
        {
        case 1:
          this.baseMatrix.setRectToRect(localRectF1, localRectF2, Matrix.ScaleToFit.START);
          break;
        case 3:
          this.baseMatrix.setRectToRect(localRectF1, localRectF2, Matrix.ScaleToFit.CENTER);
          break;
        case 2:
          this.baseMatrix.setRectToRect(localRectF1, localRectF2, Matrix.ScaleToFit.END);
          break;
        case 4:
          this.baseMatrix.setRectToRect(localRectF1, localRectF2, Matrix.ScaleToFit.FILL);
        }
      }
    }
  }

  protected Matrix getDisplayMatrix()
  {
    this.drawMatrix.set(this.baseMatrix);
    this.drawMatrix.postConcat(this.suppMatrix);
    return this.drawMatrix;
  }

  public final RectF getDisplayRect()
  {
    checkMatrixBounds();
    return getDisplayRect(getDisplayMatrix());
  }

  public float getMaxScale()
  {
    return this.maxScale;
  }

  public float getMidScale()
  {
    return this.midScale;
  }

  public float getMinScale()
  {
    return this.minScale;
  }

  public final float getScale()
  {
    this.suppMatrix.getValues(this.matrixValues);
    return this.matrixValues[0];
  }

  public final ImageView.ScaleType getScaleType()
  {
    return this.scaleType;
  }

  public final boolean isZoomEnabled()
  {
    return this.isZoomEnabled;
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    getViewTreeObserver().addOnGlobalLayoutListener(this);
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    getViewTreeObserver().removeGlobalOnLayoutListener(this);
  }

  public final void onGlobalLayout()
  {
    if (this.isZoomEnabled)
    {
      int i = getTop();
      int j = getRight();
      int k = getBottom();
      int m = getLeft();
      if ((i != this.top) || (k != this.bottom) || (m != this.left) || (j != this.right))
      {
        updateBaseMatrix(getDrawable());
        this.top = i;
        this.right = j;
        this.bottom = k;
        this.left = m;
      }
    }
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    boolean bool1 = false;
    while (true)
    {
      try
      {
        boolean bool2 = this.isZoomEnabled;
        bool1 = false;
        if (!bool2)
          break;
        int i = paramMotionEvent.getAction();
        bool1 = false;
        switch (i)
        {
        case 2:
        default:
          if ((this.multiGestureDetector == null) || (!this.multiGestureDetector.onTouchEvent(paramMotionEvent)))
            break;
          return true;
        case 0:
          ViewParent localViewParent = paramView.getParent();
          bool1 = false;
          if (localViewParent != null)
            paramView.getParent().requestDisallowInterceptTouchEvent(true);
          FlingRunnable localFlingRunnable = this.currentFlingRunnable;
          bool1 = false;
          if (localFlingRunnable == null)
            continue;
          this.currentFlingRunnable.cancelFling();
          this.currentFlingRunnable = null;
          bool1 = false;
          continue;
        case 1:
        case 3:
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return bool1;
      }
      boolean bool3 = getScale() < this.minScale;
      bool1 = false;
      if (bool3)
      {
        RectF localRectF = getDisplayRect();
        bool1 = false;
        if (localRectF != null)
        {
          paramView.post(new AnimatedZoomRunnable(getScale(), this.minScale, localRectF.centerX(), localRectF.centerY()));
          bool1 = true;
        }
      }
    }
    return bool1;
  }

  public void setAllowParentInterceptOnEdge(boolean paramBoolean)
  {
    this.allowParentInterceptOnEdge = paramBoolean;
  }

  public void setImageBitmap(Bitmap paramBitmap)
  {
    super.setImageBitmap(paramBitmap);
    update();
  }

  public void setImageDrawable(Drawable paramDrawable)
  {
    super.setImageDrawable(paramDrawable);
    update();
  }

  public void setImageResource(int paramInt)
  {
    super.setImageResource(paramInt);
    update();
  }

  public void setImageURI(Uri paramUri)
  {
    super.setImageURI(paramUri);
    update();
  }

  public final void setIsZoomEnabled(boolean paramBoolean)
  {
    this.isZoomEnabled = paramBoolean;
    update();
  }

  public void setMaxScale(float paramFloat)
  {
    checkZoomLevels(this.minScale, this.midScale, paramFloat);
    this.maxScale = paramFloat;
  }

  public void setMidScale(float paramFloat)
  {
    checkZoomLevels(this.minScale, paramFloat, this.maxScale);
    this.midScale = paramFloat;
  }

  public void setMinScale(float paramFloat)
  {
    checkZoomLevels(paramFloat, this.midScale, this.maxScale);
    this.minScale = paramFloat;
  }

  public final void setOnLongClickListener(View.OnLongClickListener paramOnLongClickListener)
  {
    this.longClickListener = paramOnLongClickListener;
  }

  public final void setOnPhotoTapListener(OnPhotoTapListener paramOnPhotoTapListener)
  {
    this.photoTapListener = paramOnPhotoTapListener;
  }

  public final void setOnViewTapListener(OnViewTapListener paramOnViewTapListener)
  {
    this.viewTapListener = paramOnViewTapListener;
  }

  public final void setScaleType(ImageView.ScaleType paramScaleType)
  {
    if (paramScaleType == ImageView.ScaleType.MATRIX)
      throw new IllegalArgumentException(paramScaleType.name() + " is not supported in ZoomImageView");
    if (paramScaleType != this.scaleType)
    {
      this.scaleType = paramScaleType;
      update();
    }
  }

  private class AnimatedZoomRunnable
    implements Runnable
  {
    static final float ANIMATION_SCALE_PER_ITERATION_IN = 1.07F;
    static final float ANIMATION_SCALE_PER_ITERATION_OUT = 0.93F;
    private final float deltaScale;
    private final float focalX;
    private final float focalY;
    private final float targetZoom;

    public AnimatedZoomRunnable(float paramFloat1, float paramFloat2, float paramFloat3, float arg5)
    {
      this.targetZoom = paramFloat2;
      this.focalX = paramFloat3;
      Object localObject;
      this.focalY = localObject;
      if (paramFloat1 < paramFloat2)
      {
        this.deltaScale = 1.07F;
        return;
      }
      this.deltaScale = 0.93F;
    }

    public void run()
    {
      try
      {
        ZoomImageView.this.suppMatrix.postScale(this.deltaScale, this.deltaScale, this.focalX, this.focalY);
        ZoomImageView.this.checkAndDisplayMatrix();
        float f1 = ZoomImageView.this.getScale();
        if (((this.deltaScale > 1.0F) && (f1 < this.targetZoom)) || ((this.deltaScale < 1.0F) && (this.targetZoom < f1)))
        {
          ZoomImageView.this.postOnAnimation(ZoomImageView.this, this);
          return;
        }
        float f2 = this.targetZoom / f1;
        ZoomImageView.this.suppMatrix.postScale(f2, f2, this.focalX, this.focalY);
        ZoomImageView.this.checkAndDisplayMatrix();
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }

  private class FlingRunnable
    implements Runnable
  {
    private int currentX;
    private int currentY;
    private final ZoomImageView.ScrollerProxy scroller;

    public FlingRunnable(Context arg2)
    {
      Context localContext;
      this.scroller = new ZoomImageView.ScrollerProxy(ZoomImageView.this, localContext);
    }

    public void cancelFling()
    {
      this.scroller.forceFinished(true);
    }

    public void fling(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      while (true)
      {
        int i;
        int m;
        try
        {
          RectF localRectF = ZoomImageView.this.getDisplayRect();
          if (localRectF == null)
            return;
          i = Math.round(-localRectF.left);
          if (paramInt1 < localRectF.width())
          {
            j = 0;
            k = Math.round(localRectF.width() - paramInt1);
            m = Math.round(-localRectF.top);
            if (paramInt2 >= localRectF.height())
              break label161;
            n = 0;
            i1 = Math.round(localRectF.height() - paramInt2);
            this.currentX = i;
            this.currentY = m;
            if ((i == k) && (m == i1))
              break;
            this.scroller.fling(i, m, paramInt3, paramInt4, j, k, n, i1, 0, 0);
            return;
          }
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          return;
        }
        int k = i;
        int j = i;
        continue;
        label161: int i1 = m;
        int n = m;
      }
    }

    public void run()
    {
      try
      {
        if (this.scroller.computeScrollOffset())
        {
          int i = this.scroller.getCurrX();
          int j = this.scroller.getCurrY();
          ZoomImageView.this.suppMatrix.postTranslate(this.currentX - i, this.currentY - j);
          ZoomImageView.this.setImageMatrix(ZoomImageView.this.getDisplayMatrix());
          this.currentX = i;
          this.currentY = j;
          ZoomImageView.this.postOnAnimation(ZoomImageView.this, this);
        }
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }

  private class MultiGestureDetector extends GestureDetector.SimpleOnGestureListener
    implements ScaleGestureDetector.OnScaleGestureListener
  {
    private final GestureDetector gestureDetector;
    private boolean isDragging;
    private float lastPointerCount;
    private float lastTouchX;
    private float lastTouchY;
    private final ScaleGestureDetector scaleGestureDetector;
    private final float scaledMinimumFlingVelocity;
    private final float scaledTouchSlop;
    private VelocityTracker velocityTracker;

    public MultiGestureDetector(Context arg2)
    {
      Context localContext;
      this.scaleGestureDetector = new ScaleGestureDetector(localContext, this);
      this.gestureDetector = new GestureDetector(localContext, this);
      this.gestureDetector.setOnDoubleTapListener(this);
      ViewConfiguration localViewConfiguration = ViewConfiguration.get(localContext);
      this.scaledMinimumFlingVelocity = localViewConfiguration.getScaledMinimumFlingVelocity();
      this.scaledTouchSlop = localViewConfiguration.getScaledTouchSlop();
    }

    public boolean isScaling()
    {
      return this.scaleGestureDetector.isInProgress();
    }

    public boolean onDoubleTap(MotionEvent paramMotionEvent)
    {
      try
      {
        float f1 = ZoomImageView.this.getScale();
        float f2 = paramMotionEvent.getX();
        float f3 = paramMotionEvent.getY();
        if (f1 < ZoomImageView.this.midScale)
          ZoomImageView.this.post(new ZoomImageView.AnimatedZoomRunnable(ZoomImageView.this, f1, ZoomImageView.this.midScale, f2, f3));
        else if ((f1 >= ZoomImageView.this.midScale) && (f1 < ZoomImageView.this.maxScale))
          ZoomImageView.this.post(new ZoomImageView.AnimatedZoomRunnable(ZoomImageView.this, f1, ZoomImageView.this.maxScale, f2, f3));
        else
          ZoomImageView.this.post(new ZoomImageView.AnimatedZoomRunnable(ZoomImageView.this, f1, ZoomImageView.this.minScale, f2, f3));
        label155: return true;
      }
      catch (Exception localException)
      {
        break label155;
      }
    }

    public boolean onDoubleTapEvent(MotionEvent paramMotionEvent)
    {
      return false;
    }

    public void onLongPress(MotionEvent paramMotionEvent)
    {
      if (ZoomImageView.this.longClickListener != null)
        ZoomImageView.this.longClickListener.onLongClick(ZoomImageView.this);
    }

    public boolean onScale(ScaleGestureDetector paramScaleGestureDetector)
    {
      float f1 = ZoomImageView.this.getScale();
      float f2 = paramScaleGestureDetector.getScaleFactor();
      if ((ZoomImageView.this.getDrawable() != null) && ((f1 < ZoomImageView.this.maxScale) || (f2 <= 1.0F)) && ((f1 > 0.75D) || (f2 >= 1.0F)))
      {
        ZoomImageView.this.suppMatrix.postScale(f2, f2, paramScaleGestureDetector.getFocusX(), paramScaleGestureDetector.getFocusY());
        ZoomImageView.this.checkAndDisplayMatrix();
      }
      return true;
    }

    public boolean onScaleBegin(ScaleGestureDetector paramScaleGestureDetector)
    {
      return true;
    }

    public void onScaleEnd(ScaleGestureDetector paramScaleGestureDetector)
    {
    }

    public boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
    {
      try
      {
        if (ZoomImageView.this.photoTapListener != null)
        {
          RectF localRectF = ZoomImageView.this.getDisplayRect();
          if (localRectF != null)
          {
            float f1 = paramMotionEvent.getX();
            float f2 = paramMotionEvent.getY();
            if (localRectF.contains(f1, f2))
            {
              float f3 = (f1 - localRectF.left) / localRectF.width();
              float f4 = (f2 - localRectF.top) / localRectF.height();
              ZoomImageView.this.photoTapListener.onPhotoTap(ZoomImageView.this, f3, f4);
              return true;
            }
          }
        }
        if (ZoomImageView.this.viewTapListener != null)
          ZoomImageView.this.viewTapListener.onViewTap(ZoomImageView.this, paramMotionEvent.getX(), paramMotionEvent.getY());
        return false;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }

    public boolean onTouchEvent(MotionEvent paramMotionEvent)
    {
      float f3;
      float f4;
      try
      {
        if (this.gestureDetector.onTouchEvent(paramMotionEvent))
          return true;
        this.scaleGestureDetector.onTouchEvent(paramMotionEvent);
        float f1 = 0.0F;
        float f2 = 0.0F;
        int i = paramMotionEvent.getPointerCount();
        for (int j = 0; j < i; j++)
        {
          f1 += paramMotionEvent.getX(j);
          f2 += paramMotionEvent.getY(j);
        }
        f3 = f1 / i;
        f4 = f2 / i;
        if (i != this.lastPointerCount)
        {
          this.isDragging = false;
          if (this.velocityTracker != null)
            this.velocityTracker.clear();
          this.lastTouchX = f3;
          this.lastTouchY = f4;
        }
        this.lastPointerCount = i;
        switch (paramMotionEvent.getAction())
        {
        case 0:
          if (this.velocityTracker == null)
          {
            this.velocityTracker = VelocityTracker.obtain();
            this.velocityTracker.addMovement(paramMotionEvent);
            this.lastTouchX = f3;
            this.lastTouchY = f4;
            this.isDragging = false;
          }
          break;
        case 2:
        case 1:
        case 3:
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        while (true)
        {
          localIllegalArgumentException.printStackTrace();
          return false;
          this.velocityTracker.clear();
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return false;
      }
      float f7 = f3 - this.lastTouchX;
      float f8 = f4 - this.lastTouchY;
      if (!this.isDragging)
        if (Math.sqrt(f7 * f7 + f8 * f8) < this.scaledTouchSlop)
          break label647;
      label645: label647: for (boolean bool = true; ; bool = false)
      {
        this.isDragging = bool;
        if (this.isDragging)
        {
          if (ZoomImageView.this.getDrawable() != null)
          {
            ZoomImageView.this.suppMatrix.postTranslate(f7, f8);
            ZoomImageView.this.checkAndDisplayMatrix();
            if ((ZoomImageView.this.allowParentInterceptOnEdge) && (!ZoomImageView.this.multiGestureDetector.isScaling()) && ((ZoomImageView.this.scrollEdge == 2) || ((ZoomImageView.this.scrollEdge == 0) && (f7 >= 1.0F)) || ((ZoomImageView.this.scrollEdge == 1) && (f7 <= -1.0F))) && (ZoomImageView.this.getParent() != null))
              ZoomImageView.this.getParent().requestDisallowInterceptTouchEvent(false);
          }
          this.lastTouchX = f3;
          this.lastTouchY = f4;
          if (this.velocityTracker != null)
          {
            this.velocityTracker.addMovement(paramMotionEvent);
            break label645;
            if (this.isDragging)
            {
              this.lastTouchX = f3;
              this.lastTouchY = f4;
              this.velocityTracker.addMovement(paramMotionEvent);
              this.velocityTracker.computeCurrentVelocity(1000);
              float f5 = this.velocityTracker.getXVelocity();
              float f6 = this.velocityTracker.getYVelocity();
              if ((Math.max(Math.abs(f5), Math.abs(f6)) >= this.scaledMinimumFlingVelocity) && (ZoomImageView.this.getDrawable() != null))
              {
                ZoomImageView.access$502(ZoomImageView.this, new ZoomImageView.FlingRunnable(ZoomImageView.this, ZoomImageView.this.getContext()));
                ZoomImageView.this.currentFlingRunnable.fling(ZoomImageView.this.getWidth(), ZoomImageView.this.getHeight(), (int)-f5, (int)-f6);
                ZoomImageView.this.post(ZoomImageView.this.currentFlingRunnable);
              }
            }
            this.lastPointerCount = 0.0F;
            if (this.velocityTracker != null)
            {
              this.velocityTracker.recycle();
              this.velocityTracker = null;
            }
          }
        }
        return true;
      }
    }
  }

  public static abstract interface OnPhotoTapListener
  {
    public abstract void onPhotoTap(View paramView, float paramFloat1, float paramFloat2);
  }

  public static abstract interface OnViewTapListener
  {
    public abstract void onViewTap(View paramView, float paramFloat1, float paramFloat2);
  }

  @TargetApi(9)
  private class ScrollerProxy
  {
    private boolean isOld;
    private Object scroller;

    public ScrollerProxy(Context arg2)
    {
      Context localContext;
      if (Build.VERSION.SDK_INT < 9)
      {
        this.isOld = true;
        this.scroller = new Scroller(localContext);
        return;
      }
      this.isOld = false;
      this.scroller = new OverScroller(localContext);
    }

    public boolean computeScrollOffset()
    {
      if (this.isOld)
        return ((Scroller)this.scroller).computeScrollOffset();
      return ((OverScroller)this.scroller).computeScrollOffset();
    }

    public void fling(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10)
    {
      if (this.isOld)
      {
        ((Scroller)this.scroller).fling(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8);
        return;
      }
      ((OverScroller)this.scroller).fling(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramInt9, paramInt10);
    }

    public void forceFinished(boolean paramBoolean)
    {
      if (this.isOld)
      {
        ((Scroller)this.scroller).forceFinished(paramBoolean);
        return;
      }
      ((OverScroller)this.scroller).forceFinished(paramBoolean);
    }

    public int getCurrX()
    {
      if (this.isOld)
        return ((Scroller)this.scroller).getCurrX();
      return ((OverScroller)this.scroller).getCurrX();
    }

    public int getCurrY()
    {
      if (this.isOld)
        return ((Scroller)this.scroller).getCurrY();
      return ((OverScroller)this.scroller).getCurrY();
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.widget.ZoomImageView
 * JD-Core Version:    0.6.2
 */