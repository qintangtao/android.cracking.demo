package com.youqicai.AppStore.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.youqicai.AppStore.card.CategoryCard;
import com.youqicai.AppStore.entity.Category;
import java.util.List;

public class CategoryAdapter extends BaseAdapter
{
  private Context context;
  private List<Category> mData;

  public CategoryAdapter(Context paramContext)
  {
    this.context = paramContext;
  }

  public int getCount()
  {
    if (this.mData != null)
      return this.mData.size();
    return 0;
  }

  public Object getItem(int paramInt)
  {
    if (this.mData != null)
      return (Category)this.mData.get(paramInt);
    return null;
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    CategoryCard localCategoryCard;
    if (paramView == null)
    {
      ViewHolder localViewHolder = new ViewHolder();
      localViewHolder.categoryCard = new CategoryCard(this.context);
      localCategoryCard = localViewHolder.categoryCard;
      localCategoryCard.setTag(localViewHolder);
    }
    while (true)
    {
      ((CategoryCard)localCategoryCard).applyCard(this.mData.get(paramInt));
      return localCategoryCard;
      localCategoryCard = ((ViewHolder)paramView.getTag()).categoryCard;
    }
  }

  public void setData(List<Category> paramList)
  {
    this.mData = paramList;
    notifyDataSetChanged();
  }

  public class ViewHolder
  {
    public CategoryCard categoryCard;

    public ViewHolder()
    {
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.adapter.CategoryAdapter
 * JD-Core Version:    0.6.2
 */