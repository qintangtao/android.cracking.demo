package com.youqicai.AppStore.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.item.UpdateItem;
import java.util.ArrayList;

public class UpdateApplistAdapter extends BaseAdapter
{
  private Context mContext;
  private ArrayList<AppInfoEntity> mData;

  public UpdateApplistAdapter(Context paramContext)
  {
    this.mContext = paramContext;
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
      return (AppInfoEntity)this.mData.get(paramInt);
    return null;
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      paramView = new UpdateItem(this.mContext);
    if (this.mData != null)
      ((UpdateItem)paramView).applyData((AppInfoEntity)this.mData.get(paramInt));
    return paramView;
  }

  public void setData(ArrayList<AppInfoEntity> paramArrayList)
  {
    this.mData = paramArrayList;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.adapter.UpdateApplistAdapter
 * JD-Core Version:    0.6.2
 */