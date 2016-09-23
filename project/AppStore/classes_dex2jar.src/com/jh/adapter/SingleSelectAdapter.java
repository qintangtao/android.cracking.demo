package com.jh.adapter;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckedTextView;
import java.util.List;

public class SingleSelectAdapter extends BaseAdapter
{
  private Context context;
  private LayoutInflater inflater;
  private List<String> items;
  private String selected;

  public SingleSelectAdapter(List<String> paramList, Context paramContext)
  {
    this.items = paramList;
    this.context = paramContext;
    this.selected = "";
    this.inflater = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }

  public void clearSelect()
  {
    this.selected = "";
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

  public String getSelect()
  {
    return this.selected;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    CheckedTextView localCheckedTextView;
    Object localObject;
    if (paramView != null)
    {
      localCheckedTextView = (CheckedTextView)paramView;
      localObject = this.items.get(paramInt);
      if (paramInt != -1 + this.items.size())
        break label85;
      localCheckedTextView.setCheckMarkDrawable(0);
    }
    while (true)
    {
      localCheckedTextView.setText(((String)this.items.get(paramInt)).toString());
      return localCheckedTextView;
      localCheckedTextView = (CheckedTextView)this.inflater.inflate(2130903043, null);
      break;
      label85: localCheckedTextView.setCheckMarkDrawable(this.context.getTheme().obtainStyledAttributes(new int[] { 16843289 }).getDrawable(0));
      if (this.selected.equals(localObject))
        localCheckedTextView.setChecked(true);
      else
        localCheckedTextView.setChecked(false);
    }
  }

  public void setListItems(List<String> paramList)
  {
    this.items = paramList;
  }

  public void setSelected(int paramInt, boolean paramBoolean)
  {
    if ((paramBoolean) && (this.selected != this.items.get(paramInt)))
      this.selected = ((String)this.items.get(paramInt));
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.adapter.SingleSelectAdapter
 * JD-Core Version:    0.6.2
 */