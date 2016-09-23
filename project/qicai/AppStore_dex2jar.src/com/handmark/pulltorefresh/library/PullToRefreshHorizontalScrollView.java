package com.handmark.pulltorefresh.library;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.widget.HorizontalScrollView;

public class PullToRefreshHorizontalScrollView extends PullToRefreshBase<HorizontalScrollView>
{
  public PullToRefreshHorizontalScrollView(Context paramContext)
  {
    super(paramContext);
  }

  public PullToRefreshHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public PullToRefreshHorizontalScrollView(Context paramContext, PullToRefreshBase.Mode paramMode)
  {
    super(paramContext, paramMode);
  }

  public PullToRefreshHorizontalScrollView(Context paramContext, PullToRefreshBase.Mode paramMode, PullToRefreshBase.AnimationStyle paramAnimationStyle)
  {
    super(paramContext, paramMode, paramAnimationStyle);
  }

  protected HorizontalScrollView createRefreshableView(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (Build.VERSION.SDK_INT >= 9);
    for (Object localObject = new InternalHorizontalScrollViewSDK9(paramContext, paramAttributeSet); ; localObject = new HorizontalScrollView(paramContext, paramAttributeSet))
    {
      ((HorizontalScrollView)localObject).setId(R.id.scrollview);
      return localObject;
    }
  }

  public final PullToRefreshBase.Orientation getPullToRefreshScrollDirection()
  {
    return PullToRefreshBase.Orientation.HORIZONTAL;
  }

  protected boolean isReadyForPullEnd()
  {
    View localView = ((HorizontalScrollView)this.mRefreshableView).getChildAt(0);
    if (localView != null)
      return ((HorizontalScrollView)this.mRefreshableView).getScrollX() >= localView.getWidth() - getWidth();
    return false;
  }

  protected boolean isReadyForPullStart()
  {
    return ((HorizontalScrollView)this.mRefreshableView).getScrollX() == 0;
  }

  @TargetApi(9)
  final class InternalHorizontalScrollViewSDK9 extends HorizontalScrollView
  {
    public InternalHorizontalScrollViewSDK9(Context paramAttributeSet, AttributeSet arg3)
    {
      super(localAttributeSet);
    }

    private int getScrollRange()
    {
      int i = getChildCount();
      int j = 0;
      if (i > 0)
        j = Math.max(0, getChildAt(0).getWidth() - (getWidth() - getPaddingLeft() - getPaddingRight()));
      return j;
    }

    protected boolean overScrollBy(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, boolean paramBoolean)
    {
      boolean bool = super.overScrollBy(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramBoolean);
      OverscrollHelper.overScrollBy(PullToRefreshHorizontalScrollView.this, paramInt1, paramInt3, paramInt2, paramInt4, getScrollRange(), paramBoolean);
      return bool;
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.PullToRefreshHorizontalScrollView
 * JD-Core Version:    0.6.2
 */