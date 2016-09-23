package com.youqicai.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;

public class FailLoadingView extends RelativeLayout
  implements View.OnClickListener
{
  private LinearLayout father;
  private RefreshListener listener;

  public FailLoadingView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LinearLayout localLinearLayout = (LinearLayout)LayoutInflater.from(paramContext).inflate(2130903105, null);
    addView(localLinearLayout, new RelativeLayout.LayoutParams(-1, -1));
    this.father = localLinearLayout;
    this.father.setVisibility(0);
    ((ImageView)findViewById(2131099883));
    ((TextView)findViewById(2131099884));
    ((Button)findViewById(2131099885)).setOnClickListener(this);
  }

  public void onClick(View paramView)
  {
    if ((paramView.getId() == 2131099885) && (this.listener != null))
      this.listener.onClickRefresh();
  }

  public void setListener(RefreshListener paramRefreshListener)
  {
    this.listener = paramRefreshListener;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.widget.FailLoadingView
 * JD-Core Version:    0.6.2
 */