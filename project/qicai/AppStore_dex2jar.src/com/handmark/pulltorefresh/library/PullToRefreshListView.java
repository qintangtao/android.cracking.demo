package com.handmark.pulltorefresh.library;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.handmark.pulltorefresh.library.internal.EmptyViewMethodAccessor;
import com.handmark.pulltorefresh.library.internal.LoadingLayout;

public class PullToRefreshListView extends PullToRefreshAdapterViewBase<ListView>
{
  private LoadingLayout mFooterLoadingView;
  private LoadingLayout mHeaderLoadingView;
  private boolean mListViewExtrasEnabled;
  private FrameLayout mLvFooterLoadingFrame;

  public PullToRefreshListView(Context paramContext)
  {
    super(paramContext);
  }

  public PullToRefreshListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public PullToRefreshListView(Context paramContext, PullToRefreshBase.Mode paramMode)
  {
    super(paramContext, paramMode);
  }

  public PullToRefreshListView(Context paramContext, PullToRefreshBase.Mode paramMode, PullToRefreshBase.AnimationStyle paramAnimationStyle)
  {
    super(paramContext, paramMode, paramAnimationStyle);
  }

  protected ListView createListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (Build.VERSION.SDK_INT >= 9)
      return new InternalListViewSDK9(paramContext, paramAttributeSet);
    return new InternalListView(paramContext, paramAttributeSet);
  }

  protected LoadingLayoutProxy createLoadingLayoutProxy(boolean paramBoolean1, boolean paramBoolean2)
  {
    LoadingLayoutProxy localLoadingLayoutProxy = super.createLoadingLayoutProxy(paramBoolean1, paramBoolean2);
    if (this.mListViewExtrasEnabled)
    {
      PullToRefreshBase.Mode localMode = getMode();
      if ((paramBoolean1) && (localMode.showHeaderLoadingLayout()))
        localLoadingLayoutProxy.addLayout(this.mHeaderLoadingView);
      if ((paramBoolean2) && (localMode.showFooterLoadingLayout()))
        localLoadingLayoutProxy.addLayout(this.mFooterLoadingView);
    }
    return localLoadingLayoutProxy;
  }

  protected ListView createRefreshableView(Context paramContext, AttributeSet paramAttributeSet)
  {
    ListView localListView = createListView(paramContext, paramAttributeSet);
    localListView.setId(16908298);
    return localListView;
  }

  public final PullToRefreshBase.Orientation getPullToRefreshScrollDirection()
  {
    return PullToRefreshBase.Orientation.VERTICAL;
  }

  protected void handleStyledAttributes(TypedArray paramTypedArray)
  {
    super.handleStyledAttributes(paramTypedArray);
    this.mListViewExtrasEnabled = paramTypedArray.getBoolean(14, true);
    if (this.mListViewExtrasEnabled)
    {
      FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -2, 1);
      FrameLayout localFrameLayout = new FrameLayout(getContext());
      this.mHeaderLoadingView = createLoadingLayout(getContext(), PullToRefreshBase.Mode.PULL_FROM_START, paramTypedArray);
      this.mHeaderLoadingView.setVisibility(8);
      localFrameLayout.addView(this.mHeaderLoadingView, localLayoutParams);
      ((ListView)this.mRefreshableView).addHeaderView(localFrameLayout, null, false);
      this.mLvFooterLoadingFrame = new FrameLayout(getContext());
      this.mFooterLoadingView = createLoadingLayout(getContext(), PullToRefreshBase.Mode.PULL_FROM_END, paramTypedArray);
      this.mFooterLoadingView.setVisibility(8);
      this.mLvFooterLoadingFrame.addView(this.mFooterLoadingView, localLayoutParams);
      if (!paramTypedArray.hasValue(13))
        setScrollingWhileRefreshingEnabled(true);
    }
  }

  protected void onRefreshing(boolean paramBoolean)
  {
    ListAdapter localListAdapter = ((ListView)this.mRefreshableView).getAdapter();
    if ((!this.mListViewExtrasEnabled) || (!getShowViewWhileRefreshing()) || (localListAdapter == null) || (localListAdapter.isEmpty()))
    {
      super.onRefreshing(paramBoolean);
      return;
    }
    super.onRefreshing(false);
    LoadingLayout localLoadingLayout1;
    LoadingLayout localLoadingLayout2;
    LoadingLayout localLoadingLayout3;
    int i;
    switch (1.$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode[getCurrentMode().ordinal()])
    {
    default:
      localLoadingLayout1 = getHeaderLayout();
      localLoadingLayout2 = this.mHeaderLoadingView;
      localLoadingLayout3 = this.mFooterLoadingView;
      i = 0;
    case 1:
    case 2:
    }
    for (int j = getScrollY() + getHeaderSize(); ; j = getScrollY() - getFooterSize())
    {
      localLoadingLayout1.reset();
      localLoadingLayout1.hideAllViews();
      localLoadingLayout3.setVisibility(8);
      localLoadingLayout2.setVisibility(0);
      localLoadingLayout2.refreshing();
      if (!paramBoolean)
        break;
      disableLoadingLayoutVisibilityChanges();
      setHeaderScroll(j);
      ((ListView)this.mRefreshableView).setSelection(i);
      smoothScrollTo(0);
      return;
      localLoadingLayout1 = getFooterLayout();
      localLoadingLayout2 = this.mFooterLoadingView;
      localLoadingLayout3 = this.mHeaderLoadingView;
      i = -1 + ((ListView)this.mRefreshableView).getCount();
    }
  }

  protected void onReset()
  {
    int i = 1;
    if (!this.mListViewExtrasEnabled)
    {
      super.onReset();
      return;
    }
    LoadingLayout localLoadingLayout1;
    LoadingLayout localLoadingLayout2;
    int k;
    int j;
    switch (1.$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode[getCurrentMode().ordinal()])
    {
    default:
      localLoadingLayout1 = getHeaderLayout();
      localLoadingLayout2 = this.mHeaderLoadingView;
      k = -getHeaderSize();
      int m = Math.abs(((ListView)this.mRefreshableView).getFirstVisiblePosition() - 0);
      j = 0;
      if (m > i)
        break;
    case 1:
    case 2:
    }
    while (true)
    {
      if (localLoadingLayout2.getVisibility() == 0)
      {
        localLoadingLayout1.showInvisibleViews();
        localLoadingLayout2.setVisibility(8);
        if ((i != 0) && (getState() != PullToRefreshBase.State.MANUAL_REFRESHING))
        {
          ((ListView)this.mRefreshableView).setSelection(j);
          setHeaderScroll(k);
        }
      }
      super.onReset();
      return;
      localLoadingLayout1 = getFooterLayout();
      localLoadingLayout2 = this.mFooterLoadingView;
      j = -1 + ((ListView)this.mRefreshableView).getCount();
      k = getFooterSize();
      if (Math.abs(((ListView)this.mRefreshableView).getLastVisiblePosition() - j) > i)
      {
        while (true)
          i = 0;
        i = 0;
        j = 0;
      }
    }
  }

  protected class InternalListView extends ListView
    implements EmptyViewMethodAccessor
  {
    private boolean mAddedLvFooter = false;

    public InternalListView(Context paramAttributeSet, AttributeSet arg3)
    {
      super(localAttributeSet);
    }

    protected void dispatchDraw(Canvas paramCanvas)
    {
      try
      {
        super.dispatchDraw(paramCanvas);
        return;
      }
      catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
      {
        localIndexOutOfBoundsException.printStackTrace();
      }
    }

    public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
    {
      try
      {
        boolean bool = super.dispatchTouchEvent(paramMotionEvent);
        return bool;
      }
      catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
      {
        localIndexOutOfBoundsException.printStackTrace();
      }
      return false;
    }

    public void setAdapter(ListAdapter paramListAdapter)
    {
      if ((PullToRefreshListView.this.mLvFooterLoadingFrame != null) && (!this.mAddedLvFooter))
      {
        addFooterView(PullToRefreshListView.this.mLvFooterLoadingFrame, null, false);
        this.mAddedLvFooter = true;
      }
      super.setAdapter(paramListAdapter);
    }

    public void setEmptyView(View paramView)
    {
      PullToRefreshListView.this.setEmptyView(paramView);
    }

    public void setEmptyViewInternal(View paramView)
    {
      super.setEmptyView(paramView);
    }
  }

  @TargetApi(9)
  final class InternalListViewSDK9 extends PullToRefreshListView.InternalListView
  {
    public InternalListViewSDK9(Context paramAttributeSet, AttributeSet arg3)
    {
      super(paramAttributeSet, localAttributeSet);
    }

    protected boolean overScrollBy(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, boolean paramBoolean)
    {
      boolean bool = super.overScrollBy(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramInt7, paramInt8, paramBoolean);
      OverscrollHelper.overScrollBy(PullToRefreshListView.this, paramInt1, paramInt3, paramInt2, paramInt4, paramBoolean);
      return bool;
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.PullToRefreshListView
 * JD-Core Version:    0.6.2
 */