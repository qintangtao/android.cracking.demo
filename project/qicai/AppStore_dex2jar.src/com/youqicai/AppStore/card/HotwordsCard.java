package com.youqicai.AppStore.card;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.youqicai.AppStore.entity.CardEntity;
import com.youqicai.AppStore.entity.HotwordEntity;

public class HotwordsCard extends BaseCard
  implements View.OnClickListener
{
  private ClickListener clickListener;
  private View contentView;
  private Holder holder;

  public HotwordsCard(Context paramContext, ClickListener paramClickListener)
  {
    super(paramContext, CardType.HOT_WORDS);
    this.clickListener = paramClickListener;
  }

  public void applyCard(Object paramObject)
  {
    HotwordEntity localHotwordEntity2;
    if (paramObject != null)
    {
      if (!(paramObject instanceof HotwordEntity))
        break label51;
      localHotwordEntity2 = (HotwordEntity)paramObject;
      if (localHotwordEntity2 != null)
        break label21;
    }
    label21: label51: HotwordEntity localHotwordEntity1;
    do
    {
      return;
      this.holder.mHotwords.setTag(localHotwordEntity2.getHotword());
      setTextView(localHotwordEntity2.getHotword(), this.holder.mHotwords);
      return;
      localHotwordEntity1 = ((CardEntity)paramObject).getHotwordEntity();
    }
    while (localHotwordEntity1 == null);
    this.holder.mHotwords.setTag(localHotwordEntity1.getHotword());
    setTextView(localHotwordEntity1.getHotword(), this.holder.mHotwords);
  }

  protected void initCard()
  {
    this.contentView = this.mInflater.inflate(2130903087, null);
    addView(this.contentView, new LinearLayout.LayoutParams(-1, -2));
    this.holder = new Holder(null);
    this.holder.mHotwords = ((TextView)this.contentView.findViewById(2131099859));
    this.holder.mHotwords.setOnClickListener(this);
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131099859)
    {
      String str = String.valueOf(paramView.getTag());
      if (this.clickListener != null)
        this.clickListener.onClickItem(str);
    }
  }

  public static abstract interface ClickListener
  {
    public abstract void onClickItem(String paramString);
  }

  private class Holder
  {
    TextView mHotwords;

    private Holder()
    {
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.card.HotwordsCard
 * JD-Core Version:    0.6.2
 */