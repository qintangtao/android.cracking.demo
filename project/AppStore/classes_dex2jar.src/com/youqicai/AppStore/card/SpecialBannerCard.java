package com.youqicai.AppStore.card;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.youqicai.AppStore.CategoryActivity;
import com.youqicai.AppStore.GeneralActivity;
import com.youqicai.AppStore.entity.BannerItem;
import com.youqicai.AppStore.entity.CardEntity;

public class SpecialBannerCard extends BaseCard
  implements View.OnClickListener
{
  private BannerItem bannerItem;
  private View contentView;
  private Holder holder;

  public SpecialBannerCard(Context paramContext)
  {
    super(paramContext, CardType.SPECIAL_BANNER);
  }

  public void applyCard(Object paramObject)
  {
    CardEntity localCardEntity;
    if (paramObject != null)
    {
      localCardEntity = (CardEntity)paramObject;
      this.bannerItem = localCardEntity.getBannerItem();
      if (this.bannerItem != null);
    }
    else
    {
      return;
    }
    String str = localCardEntity.getBannerItem().getBannerUrl();
    setImage(this.holder.bannerView, str, null);
    setTextView(localCardEntity.getBannerItem().getTitle(), this.holder.bannerTitle);
    setTextView(localCardEntity.getBannerItem().getDescription(), this.holder.bannerDes);
  }

  protected void initCard()
  {
    this.contentView = this.mInflater.inflate(2130903067, null);
    addView(this.contentView, new LinearLayout.LayoutParams(-1, -2));
    this.holder = new Holder(null);
    this.holder.bannerView = ((ImageView)this.contentView.findViewById(2131099795));
    this.holder.bannerDes = ((TextView)this.contentView.findViewById(2131099796));
    this.holder.bannerTitle = ((TextView)this.contentView.findViewById(2131099794));
    this.contentView.setOnClickListener(this);
  }

  public void onClick(View paramView)
  {
    String str;
    if (this.bannerItem != null)
    {
      str = this.bannerItem.getTarget();
      if (!str.equalsIgnoreCase("category"))
        break label75;
      localIntent1 = new Intent(this.mContext, CategoryActivity.class);
      localIntent1.putExtra("dataUrl", this.bannerItem.getDataUrl());
      localIntent1.putExtra("title", this.bannerItem.getTitle());
      this.mContext.startActivity(localIntent1);
    }
    label75: 
    while ((str.equalsIgnoreCase("categorylist")) || (str.equalsIgnoreCase("detail")) || (!str.equalsIgnoreCase("general")))
    {
      Intent localIntent1;
      return;
    }
    Intent localIntent2 = new Intent(this.mContext, GeneralActivity.class);
    localIntent2.putExtra("dataUrl", this.bannerItem.getDataUrl());
    localIntent2.putExtra("title", this.bannerItem.getTitle());
    this.mContext.startActivity(localIntent2);
  }

  private class Holder
  {
    TextView bannerDes;
    TextView bannerTitle;
    ImageView bannerView;

    private Holder()
    {
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.card.SpecialBannerCard
 * JD-Core Version:    0.6.2
 */