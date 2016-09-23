package com.youqicai.AppStore.adapter;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

public abstract class RecyclingPagerAdapter extends PagerAdapter
{
  static final int IGNORE_ITEM_VIEW_TYPE = -1;
  private final RecycleBin recycleBin;

  public RecyclingPagerAdapter()
  {
    this(new RecycleBin());
  }

  RecyclingPagerAdapter(RecycleBin paramRecycleBin)
  {
    this.recycleBin = paramRecycleBin;
    paramRecycleBin.setViewTypeCount(getViewTypeCount());
  }

  public final void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    View localView = (View)paramObject;
    paramViewGroup.removeView(localView);
    int i = getItemViewType(paramInt);
    if (i != -1)
      this.recycleBin.addScrapView(localView, paramInt, i);
  }

  public int getItemViewType(int paramInt)
  {
    return 0;
  }

  public abstract View getView(int paramInt, View paramView, ViewGroup paramViewGroup);

  public int getViewTypeCount()
  {
    return 1;
  }

  public final Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
  {
    int i = getItemViewType(paramInt);
    View localView1 = null;
    if (i != -1)
      localView1 = this.recycleBin.getScrapView(paramInt, i);
    View localView2 = getView(paramInt, localView1, paramViewGroup);
    paramViewGroup.addView(localView2);
    return localView2;
  }

  public final boolean isViewFromObject(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }

  public void notifyDataSetChanged()
  {
    this.recycleBin.scrapActiveViews();
    super.notifyDataSetChanged();
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.adapter.RecyclingPagerAdapter
 * JD-Core Version:    0.6.2
 */