package com.youqicai.AppStore.card;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout.LayoutParams;

public class HasNoMoreCard extends BaseCard
{
  private View contentView;

  public HasNoMoreCard(Context paramContext)
  {
    super(paramContext, CardType.HAS_NO_MORE);
  }

  public void applyCard(Object paramObject)
  {
  }

  protected void initCard()
  {
    this.contentView = this.mInflater.inflate(2130903089, null);
    addView(this.contentView, new LinearLayout.LayoutParams(-1, -2));
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.card.HasNoMoreCard
 * JD-Core Version:    0.6.2
 */