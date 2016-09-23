package com.youqicai.AppStore.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.item.BoardAppItem;
import java.util.ArrayList;
import java.util.List;

public class AppInfoAdapter extends BaseAdapter
{
  private Context mContext;
  private List<AppInfoEntity> mData;

  public AppInfoAdapter(Context paramContext)
  {
    this.mContext = paramContext;
    this.mData = new ArrayList();
  }

  public void addAll(List<AppInfoEntity> paramList)
  {
    this.mData.addAll(paramList);
  }

  public void clear()
  {
    this.mData.clear();
  }

  public int getCount()
  {
    return this.mData.size();
  }

  public Object getItem(int paramInt)
  {
    return this.mData.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      paramView = new BoardAppItem(this.mContext);
    if (this.mData != null)
      ((BoardAppItem)paramView).applyData((AppInfoEntity)this.mData.get(paramInt));
    return paramView;
  }

  public void setAll(List<AppInfoEntity> paramList)
  {
    this.mData = paramList;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.adapter.AppInfoAdapter
 * JD-Core Version:    0.6.2
 */