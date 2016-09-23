package com.handmark.pulltorefresh.library;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ScrollView;

public class PullToRefreshScrollView extends PullToRefreshBase<ScrollView>
{
  public PullToRefreshScrollView(Context paramContext)
  {
    super(paramContext);
  }

  public PullToRefreshScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public PullToRefreshScrollView(Context paramContext, PullToRefreshBase.Mode paramMode)
  {
    super(paramContext, paramMode);
  }

  public PullToRefreshScrollView(Context paramContext, PullToRefreshBase.Mode paramMode, PullToRefreshBase.AnimationStyle paramAnimationStyle)
  {
    super(paramContext, paramMode, paramAnimationStyle);
  }

  protected ScrollView createRefreshableView(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (Build.VERSION.SDK_INT >= 9);
    for (Object localObject = new InternalScrollViewSDK9(paramContext, paramAttributeSet); ; localObject = new ScrollView(paramContext, paramAttributeSet))
    {
      ((ScrollView)localObject).setId(R.id.scrollview);
      return localObject;
    }
  }

  public final PullToRefreshBase.Orientation getPullToRefreshScrollDirection()
  {
    return PullToRefreshBase.Orientation.VERTICAL;
  }

  protected boolean isReadyForPullEnd()
  {
    View localView = ((ScrollView)this.mRefreshableView).getChildAt(0);
    if (localView != null)
      return ((ScrollView)this.mRefreshableView).getScrollY() >= localView.getHeight() - getHeight();
    return false;
  }

  protected boolean isReadyForPullStart()
  {
    return ((ScrollView)this.mRefreshableView).getScrollY() == 0;
  }

  @TargetApi(9)
  final class InternalScrollViewSDK9 extends ScrollView
  {
    public InternalScrollViewSDK9(Context paramAttributeSet, AttributeSet arg3)
    {
      super(localAttributeSet);
    }

    private int getScrollRange()
    {
      int i = getChildCount();
      int j = 0;
      if (i > 0)
        j = Math.max(0, getChildAt(0).getHeight() - (getHeight() - getPaddingBottom() - getPaddingTop()));
      return j;
    }

    protected boolean overScrollBy(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, boolean paramBoolean)
    {
      boolean bool = super.overScrollBy(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramBoolean);
      OverscrollHelper.overScrollBy(PullToRefreshScrollView.this, paramInt1, paramInt3, paramInt2, paramInt4, getScrollRange(), paramBoolean);
      return bool;
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.PullToRefreshScrollView
 * JD-Core Version:    0.6.2
 */