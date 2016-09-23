package com.handmark.pulltorefresh.library;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.widget.GridView;
import com.handmark.pulltorefresh.library.internal.EmptyViewMethodAccessor;

public class PullToRefreshGridView extends PullToRefreshAdapterViewBase<GridView>
{
  public PullToRefreshGridView(Context paramContext)
  {
    super(paramContext);
  }

  public PullToRefreshGridView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public PullToRefreshGridView(Context paramContext, PullToRefreshBase.Mode paramMode)
  {
    super(paramContext, paramMode);
  }

  public PullToRefreshGridView(Context paramContext, PullToRefreshBase.Mode paramMode, PullToRefreshBase.AnimationStyle paramAnimationStyle)
  {
    super(paramContext, paramMode, paramAnimationStyle);
  }

  protected final GridView createRefreshableView(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (Build.VERSION.SDK_INT >= 9);
    for (Object localObject = new InternalGridViewSDK9(paramContext, paramAttributeSet); ; localObject = new InternalGridView(paramContext, paramAttributeSet))
    {
      ((GridView)localObject).setId(R.id.gridview);
      return localObject;
    }
  }

  public final PullToRefreshBase.Orientation getPullToRefreshScrollDirection()
  {
    return PullToRefreshBase.Orientation.VERTICAL;
  }

  class InternalGridView extends GridView
    implements EmptyViewMethodAccessor
  {
    public InternalGridView(Context paramAttributeSet, AttributeSet arg3)
    {
      super(localAttributeSet);
    }

    public void setEmptyView(View paramView)
    {
      PullToRefreshGridView.this.setEmptyView(paramView);
    }

    public void setEmptyViewInternal(View paramView)
    {
      super.setEmptyView(paramView);
    }
  }

  @TargetApi(9)
  final class InternalGridViewSDK9 extends PullToRefreshGridView.InternalGridView
  {
    public InternalGridViewSDK9(Context paramAttributeSet, AttributeSet arg3)
    {
      super(paramAttributeSet, localAttributeSet);
    }

    protected boolean overScrollBy(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, boolean paramBoolean)
    {
      boolean bool = super.overScrollBy(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramBoolean);
      OverscrollHelper.overScrollBy(PullToRefreshGridView.this, paramInt1, paramInt3, paramInt2, paramInt4, paramBoolean);
      return bool;
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.PullToRefreshGridView
 * JD-Core Version:    0.6.2
 */