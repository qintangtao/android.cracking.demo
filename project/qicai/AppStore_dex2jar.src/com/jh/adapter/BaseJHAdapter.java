package com.jh.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class BaseJHAdapter<T> extends BaseAdapter
{
  private Context context;
  private List<T> items = new ArrayList();
  private LayoutInflater layoutInflater;
  private int layoutResId = -1;
  private ViewGroup parent;

  public BaseJHAdapter(Context paramContext, List<T> paramList)
  {
    this.context = paramContext;
    this.layoutInflater = LayoutInflater.from(paramContext);
  }

  public BaseJHAdapter(Context paramContext, List<T> paramList, int paramInt)
  {
    this(paramContext, paramList);
    this.layoutResId = paramInt;
  }

  public void addItem(int paramInt, T paramT)
  {
    this.items.add(paramInt, paramT);
    notifyDataSetChanged();
  }

  public void addItemFirst(T paramT)
  {
    this.items.add(0, paramT);
    notifyDataSetChanged();
  }

  public View bindView(int paramInt, View paramView)
  {
    return null;
  }

  public int getCount()
  {
    if (this.items == null)
      return 0;
    return this.items.size();
  }

  public Object getItem(int paramInt)
  {
    return null;
  }

  public View getItemChildViewById(View paramView, int paramInt)
  {
    ViewHolder localViewHolder = (ViewHolder)paramView.getTag();
    if ((localViewHolder != null) && (localViewHolder.viewMap.get(Integer.valueOf(paramInt)) != null))
      return (View)localViewHolder.viewMap.get(Integer.valueOf(paramInt));
    View localView = paramView.findViewById(paramInt);
    if (localViewHolder != null)
      localViewHolder.viewMap.put(Integer.valueOf(paramInt), localView);
    return localView;
  }

  public long getItemId(int paramInt)
  {
    return 0L;
  }

  public List<T> getList()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.addAll(localArrayList);
    return localArrayList;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    this.parent = paramViewGroup;
    View localView;
    ViewHolder localViewHolder;
    if (paramView == null)
    {
      localView = newView(this.layoutInflater, paramInt, paramViewGroup);
      localViewHolder = new ViewHolder(null);
      localView.setTag(localViewHolder);
    }
    while (true)
    {
      localViewHolder.position = paramInt;
      bindView(paramInt, localView);
      return localView;
      localView = paramView;
      localViewHolder = (ViewHolder)localView.getTag();
      localViewHolder.viewMap.clear();
    }
  }

  public View getViewByPosition(int paramInt)
  {
    int i;
    if (this.parent != null)
    {
      i = 0;
      if (i < this.parent.getChildCount());
    }
    else
    {
      return null;
    }
    View localView = this.parent.getChildAt(i);
    ViewHolder localViewHolder = (ViewHolder)localView.getTag();
    if (localViewHolder == null);
    while (localViewHolder.position != paramInt)
    {
      i++;
      break;
    }
    return localView;
  }

  public void initClickListener()
  {
  }

  public void invalidateItem(int paramInt)
  {
    View localView = getViewByPosition(paramInt);
    if (localView != null)
      localView.invalidate();
  }

  public View newView(LayoutInflater paramLayoutInflater, int paramInt, ViewGroup paramViewGroup)
  {
    int i = this.layoutResId;
    View localView = null;
    if (i != -1)
      localView = paramLayoutInflater.inflate(this.layoutResId, null);
    return localView;
  }

  public void removeItem(int paramInt)
  {
    this.items.remove(paramInt);
    notifyDataSetChanged();
  }

  public void removeItem(T paramT)
  {
    this.items.remove(paramT);
    notifyDataSetChanged();
  }

  public void resetList(List<T> paramList)
  {
    this.items.clear();
    this.items.addAll(paramList);
    notifyDataSetChanged();
  }

  private class ViewHolder
  {
    public int position;
    public HashMap<Integer, View> viewMap = new HashMap();

    private ViewHolder()
    {
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.adapter.BaseJHAdapter
 * JD-Core Version:    0.6.2
 */