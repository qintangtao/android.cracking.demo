package com.youqicai.AppStore.card;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import com.youqicai.AppStore.entity.CardEntity;

public class BannerCard extends BaseCard
{
  private View contentView;
  private Holder holder;

  public BannerCard(Context paramContext)
  {
    super(paramContext, CardType.BANNER);
  }

  public void applyCard(Object paramObject)
  {
    if (paramObject != null)
    {
      CardEntity localCardEntity = (CardEntity)paramObject;
      setImage(this.holder.bannerView, localCardEntity.getBannerUrl(), null);
    }
  }

  protected void initCard()
  {
    this.contentView = this.mInflater.inflate(2130903061, null);
    addView(this.contentView, new LinearLayout.LayoutParams(-1, -2));
    this.holder = new Holder(null);
    this.holder.bannerView = ((ImageView)this.contentView.findViewById(2131099770));
  }

  private class Holder
  {
    ImageView bannerView;

    private Holder()
    {
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.card.BannerCard
 * JD-Core Version:    0.6.2
 */