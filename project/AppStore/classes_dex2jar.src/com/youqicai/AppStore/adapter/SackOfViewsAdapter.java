package com.youqicai.AppStore.adapter;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.List;

public class SackOfViewsAdapter extends BaseAdapter
{
  private List<View> views = null;

  public SackOfViewsAdapter(int paramInt)
  {
    this.views = new ArrayList(paramInt);
    for (int i = 0; i < paramInt; i++)
      this.views.add(null);
  }

  public SackOfViewsAdapter(List<View> paramList)
  {
    this.views = paramList;
  }

  public boolean areAllItemsEnabled()
  {
    return false;
  }

  public int getCount()
  {
    return this.views.size();
  }

  public Object getItem(int paramInt)
  {
    return this.views.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public int getItemViewType(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = (View)this.views.get(paramInt);
    if (localView == null)
    {
      localView = newView(paramInt, paramViewGroup);
      this.views.set(paramInt, localView);
    }
    return localView;
  }

  public int getViewTypeCount()
  {
    return getCount();
  }

  public boolean hasView(View paramView)
  {
    return this.views.contains(paramView);
  }

  public boolean isEnabled(int paramInt)
  {
    return false;
  }

  protected View newView(int paramInt, ViewGroup paramViewGroup)
  {
    throw new RuntimeException("You must override newView()!");
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.adapter.SackOfViewsAdapter
 * JD-Core Version:    0.6.2
 */