package com.youqicai.AppStore.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.youqicai.AppStore.card.BannerCard;
import com.youqicai.AppStore.card.BaseCard;
import com.youqicai.AppStore.card.CardType;
import com.youqicai.AppStore.card.HasNoMoreCard;
import com.youqicai.AppStore.card.HotwordsCard;
import com.youqicai.AppStore.card.HotwordsCard.ClickListener;
import com.youqicai.AppStore.card.NavigationCard;
import com.youqicai.AppStore.card.RectAppsCard;
import com.youqicai.AppStore.card.SingleAppCard;
import com.youqicai.AppStore.card.SpecialBannerCard;
import com.youqicai.AppStore.card.SpecialCard;
import com.youqicai.AppStore.entity.CardEntity;
import java.util.ArrayList;
import java.util.List;

public class CardAdapter extends BaseAdapter
{
  private Context mContext;
  private List<CardEntity> mData;
  HotwordsCard.ClickListener tempClickListener;

  public CardAdapter(Context paramContext)
  {
    this.mContext = paramContext;
    this.mData = new ArrayList();
  }

  public void addAll(List<CardEntity> paramList)
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

  public int getItemViewType(int paramInt)
  {
    if ((this.mData != null) && (this.mData.size() > paramInt))
      return ((CardEntity)this.mData.get(paramInt)).getCardType().getmIntValue();
    return -1;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      if (getItemViewType(paramInt) == CardType.BANNER.getmIntValue())
        paramView = new BannerCard(this.mContext);
    while (true)
    {
      ((BaseCard)paramView).applyCard(this.mData.get(paramInt));
      return paramView;
      if (getItemViewType(paramInt) == CardType.NAVIGATION.getmIntValue())
      {
        paramView = new NavigationCard(this.mContext);
      }
      else if (getItemViewType(paramInt) == CardType.SPECIAL_BANNER.getmIntValue())
      {
        paramView = new SpecialBannerCard(this.mContext);
      }
      else if (getItemViewType(paramInt) == CardType.SINGLE_APP.getmIntValue())
      {
        paramView = new SingleAppCard(this.mContext);
      }
      else if (getItemViewType(paramInt) == CardType.HOT_WORDS.getmIntValue())
      {
        paramView = new HotwordsCard(this.mContext, this.tempClickListener);
      }
      else if (getItemViewType(paramInt) == CardType.HAS_NO_MORE.getmIntValue())
      {
        paramView = new HasNoMoreCard(this.mContext);
      }
      else if (getItemViewType(paramInt) == CardType.RECT_APPS.getmIntValue())
      {
        paramView = new RectAppsCard(this.mContext);
      }
      else if (getItemViewType(paramInt) == CardType.SPECIAL.getmIntValue())
      {
        paramView = new SpecialCard(this.mContext);
        continue;
        if (getItemViewType(paramInt) == CardType.BANNER.getmIntValue())
        {
          if (!(paramView instanceof BannerCard))
            paramView = new BannerCard(this.mContext);
        }
        else if (getItemViewType(paramInt) == CardType.NAVIGATION.getmIntValue())
        {
          if (!(paramView instanceof NavigationCard))
            paramView = new NavigationCard(this.mContext);
        }
        else if (getItemViewType(paramInt) == CardType.SPECIAL_BANNER.getmIntValue())
        {
          if (!(paramView instanceof SpecialBannerCard))
            paramView = new SpecialBannerCard(this.mContext);
        }
        else if (getItemViewType(paramInt) == CardType.SINGLE_APP.getmIntValue())
        {
          if (!(paramView instanceof SingleAppCard))
            paramView = new SingleAppCard(this.mContext);
        }
        else if (getItemViewType(paramInt) == CardType.HOT_WORDS.getmIntValue())
        {
          if (!(paramView instanceof HotwordsCard))
            paramView = new HotwordsCard(this.mContext, this.tempClickListener);
        }
        else if (getItemViewType(paramInt) == CardType.HAS_NO_MORE.getmIntValue())
        {
          if (!(paramView instanceof HasNoMoreCard))
            paramView = new HasNoMoreCard(this.mContext);
        }
        else if (getItemViewType(paramInt) == CardType.RECT_APPS.getmIntValue())
        {
          if (!(paramView instanceof RectAppsCard))
            paramView = new RectAppsCard(this.mContext);
        }
        else if ((getItemViewType(paramInt) == CardType.SPECIAL.getmIntValue()) && (!(paramView instanceof SpecialCard)))
          paramView = new SpecialCard(this.mContext);
      }
    }
  }

  public void setAll(List<CardEntity> paramList)
  {
    this.mData = paramList;
  }

  public void setHotwordListener(HotwordsCard.ClickListener paramClickListener)
  {
    this.tempClickListener = paramClickListener;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.adapter.CardAdapter
 * JD-Core Version:    0.6.2
 */