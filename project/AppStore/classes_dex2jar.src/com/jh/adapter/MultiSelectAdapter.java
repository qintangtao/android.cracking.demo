package com.jh.adapter;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckedTextView;
import java.util.LinkedList;
import java.util.List;

public class MultiSelectAdapter<T> extends BaseAdapter
{
  private Context context;
  private LayoutInflater inflater;
  private List<T> items;
  private List<T> selected;

  public MultiSelectAdapter(List<T> paramList, Context paramContext)
  {
    this.items = paramList;
    this.context = paramContext;
    this.selected = new LinkedList();
    this.inflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }

  public void clearSelect()
  {
    this.selected.clear();
  }

  public int getCount()
  {
    return this.items.size();
  }

  public Object getItem(int paramInt)
  {
    return this.items.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public List<T> getSelect()
  {
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.addAll(this.selected);
    return localLinkedList;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView != null);
    Object localObject;
    for (CheckedTextView localCheckedTextView = (CheckedTextView)paramView; ; localCheckedTextView = (CheckedTextView)this.inflater.inflate(2130903043, null))
    {
      localObject = this.items.get(paramInt);
      if (paramInt != -1 + this.items.size())
        break;
      localCheckedTextView.setCheckMarkDrawable(0);
      localCheckedTextView.setText(this.items.get(paramInt).toString());
      return localCheckedTextView;
    }
    TypedArray localTypedArray = this.context.getTheme().obtainStyledAttributes(new int[] { 16843290 });
    localCheckedTextView.setCheckMarkDrawable(localTypedArray.getDrawable(0));
    if (this.selected.contains(localObject))
      localCheckedTextView.setChecked(true);
    while (true)
    {
      localTypedArray.recycle();
      break;
      localCheckedTextView.setChecked(false);
    }
  }

  public boolean isSelected(int paramInt)
  {
    return this.selected.contains(this.items.get(paramInt));
  }

  public void setSelectList(List<T> paramList)
  {
    this.selected.clear();
    if (paramList != null)
      this.selected.addAll(paramList);
  }

  public void setSelected(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (!this.selected.contains(this.items.get(paramInt)))
        this.selected.add(this.items.get(paramInt));
      return;
    }
    this.selected.remove(this.items.get(paramInt));
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.adapter.MultiSelectAdapter
 * JD-Core Version:    0.6.2
 */