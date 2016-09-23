package com.youqicai.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;

public class LoadingView extends RelativeLayout
{
  private Context context;
  private RelativeLayout father;
  private ProgressBar progressBar;
  private TextView textName;

  public LoadingView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
    RelativeLayout localRelativeLayout = (RelativeLayout)LayoutInflater.from(paramContext).inflate(2130903106, null);
    addView(localRelativeLayout, new RelativeLayout.LayoutParams(-1, -1));
    this.father = localRelativeLayout;
    this.progressBar = ((ProgressBar)findViewById(2131099887));
    this.textName = ((TextView)findViewById(2131099888));
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.widget.LoadingView
 * JD-Core Version:    0.6.2
 */