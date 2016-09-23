package com.youqicai.AppStore.card;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.youqicai.AppStore.CategoryActivity;
import com.youqicai.AppStore.GeneralActivity;
import com.youqicai.AppStore.entity.CardEntity;
import com.youqicai.AppStore.entity.NavigationItem;
import java.util.List;

public class NavigationCard extends BaseCard
  implements View.OnClickListener
{
  private View contentView;
  private Holder holder;

  public NavigationCard(Context paramContext)
  {
    super(paramContext, CardType.NAVIGATION);
  }

  public void applyCard(Object paramObject)
  {
    List localList;
    if (paramObject != null)
    {
      localList = ((CardEntity)paramObject).getNavigationItemList();
      if (localList != null)
        break label17;
    }
    label17: int i;
    do
    {
      do
      {
        return;
        i = localList.size();
      }
      while (i < 1);
      NavigationItem localNavigationItem1 = (NavigationItem)localList.get(0);
      setImage(this.holder.firNav, localNavigationItem1.getIconUrl(), null);
      setTextView(localNavigationItem1.getTitle(), this.holder.firTitle);
      this.holder.firstLayout.setTag(localNavigationItem1);
      this.holder.firstLayout.setVisibility(0);
      if (i >= 2)
      {
        NavigationItem localNavigationItem4 = (NavigationItem)localList.get(1);
        setImage(this.holder.secNav, localNavigationItem4.getIconUrl(), null);
        setTextView(localNavigationItem4.getTitle(), this.holder.secTitle);
        this.holder.secondLayout.setTag(localNavigationItem4);
        this.holder.secondLayout.setVisibility(0);
      }
      if (i >= 3)
      {
        NavigationItem localNavigationItem3 = (NavigationItem)localList.get(2);
        setImage(this.holder.thirdNav, localNavigationItem3.getIconUrl(), null);
        setTextView(localNavigationItem3.getTitle(), this.holder.thirdTitle);
        this.holder.thirdLayout.setTag(localNavigationItem3);
        this.holder.thirdLayout.setVisibility(0);
      }
    }
    while (i < 4);
    NavigationItem localNavigationItem2 = (NavigationItem)localList.get(3);
    setImage(this.holder.fourthNav, localNavigationItem2.getIconUrl(), null);
    setTextView(localNavigationItem2.getTitle(), this.holder.fourthTitle);
    this.holder.fourthLayout.setTag(localNavigationItem2);
    this.holder.fourthLayout.setVisibility(0);
  }

  protected void initCard()
  {
    this.contentView = this.mInflater.inflate(2130903064, null);
    addView(this.contentView, new LinearLayout.LayoutParams(-1, -2));
    this.holder = new Holder(null);
    this.holder.firNav = ((ImageView)this.contentView.findViewById(2131099779));
    this.holder.secNav = ((ImageView)this.contentView.findViewById(2131099729));
    this.holder.thirdNav = ((ImageView)this.contentView.findViewById(2131099732));
    this.holder.fourthNav = ((ImageView)this.contentView.findViewById(2131099735));
    this.holder.firTitle = ((TextView)this.contentView.findViewById(2131099780));
    this.holder.secTitle = ((TextView)this.contentView.findViewById(2131099730));
    this.holder.thirdTitle = ((TextView)this.contentView.findViewById(2131099733));
    this.holder.fourthTitle = ((TextView)this.contentView.findViewById(2131099736));
    this.holder.firstLayout = ((RelativeLayout)this.contentView.findViewById(2131099778));
    this.holder.secondLayout = ((RelativeLayout)this.contentView.findViewById(2131099781));
    this.holder.thirdLayout = ((RelativeLayout)this.contentView.findViewById(2131099782));
    this.holder.fourthLayout = ((RelativeLayout)this.contentView.findViewById(2131099734));
    this.holder.firstLayout.setOnClickListener(this);
    this.holder.secondLayout.setOnClickListener(this);
    this.holder.thirdLayout.setOnClickListener(this);
    this.holder.fourthLayout.setOnClickListener(this);
    this.holder.firstLayout.setVisibility(8);
    this.holder.secondLayout.setVisibility(8);
    this.holder.thirdLayout.setVisibility(8);
    this.holder.fourthLayout.setVisibility(8);
  }

  public void onClick(View paramView)
  {
    NavigationItem localNavigationItem = (NavigationItem)paramView.getTag();
    String str = localNavigationItem.getTarget();
    if (str.equalsIgnoreCase("category"))
    {
      localIntent1 = new Intent(this.mContext, CategoryActivity.class);
      localIntent1.putExtra("dataUrl", localNavigationItem.getDataUrl());
      localIntent1.putExtra("title", localNavigationItem.getTitle());
      this.mContext.startActivity(localIntent1);
    }
    while ((str.equalsIgnoreCase("categorylist")) || (str.equalsIgnoreCase("detail")) || (!str.equalsIgnoreCase("general")))
    {
      Intent localIntent1;
      return;
    }
    Intent localIntent2 = new Intent(this.mContext, GeneralActivity.class);
    localIntent2.putExtra("dataUrl", localNavigationItem.getDataUrl());
    localIntent2.putExtra("title", localNavigationItem.getTitle());
    this.mContext.startActivity(localIntent2);
  }

  private class Holder
  {
    ImageView firNav;
    TextView firTitle;
    RelativeLayout firstLayout;
    RelativeLayout fourthLayout;
    ImageView fourthNav;
    TextView fourthTitle;
    ImageView secNav;
    TextView secTitle;
    RelativeLayout secondLayout;
    RelativeLayout thirdLayout;
    ImageView thirdNav;
    TextView thirdTitle;

    private Holder()
    {
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.card.NavigationCard
 * JD-Core Version:    0.6.2
 */