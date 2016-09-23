package com.youqicai.AppStore.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.youqicai.AppStore.card.BaseCard;
import com.youqicai.AppStore.card.HotwordsCard;
import com.youqicai.AppStore.card.HotwordsCard.ClickListener;
import com.youqicai.AppStore.entity.HotwordEntity;
import java.util.ArrayList;

public class HotWordsAdapter extends BaseAdapter
{
  private Context mContext;
  private ArrayList<HotwordEntity> mData;
  HotwordsCard.ClickListener tempClickListener;

  public HotWordsAdapter(Context paramContext)
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
      return (HotwordEntity)this.mData.get(paramInt);
    return null;
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      paramView = new HotwordsCard(this.mContext, this.tempClickListener);
    ((BaseCard)paramView).applyCard(this.mData.get(paramInt));
    return paramView;
  }

  public void setData(ArrayList<HotwordEntity> paramArrayList)
  {
    this.mData = ((ArrayList)paramArrayList.clone());
  }

  public void setHotwordListener(HotwordsCard.ClickListener paramClickListener)
  {
    this.tempClickListener = paramClickListener;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.adapter.HotWordsAdapter
 * JD-Core Version:    0.6.2
 */