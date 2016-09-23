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

public class EmptyDownLoadView extends RelativeLayout
{
  private Context context;
  private LinearLayout father;
  private Button gotoDownload;
  private ImageView mEmptyImage;
  private TextView mEmptyTips;
  private Button mGotoDownload;
  private IGotoDownloadCallback mIGotoDownloadCallback = null;
  private TextView net_state_text;
  private ImageView netstate_icon;

  public EmptyDownLoadView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
    LinearLayout localLinearLayout = (LinearLayout)LayoutInflater.from(paramContext).inflate(2130903104, null);
    addView(localLinearLayout, new RelativeLayout.LayoutParams(-1, -1));
    this.mEmptyImage = ((ImageView)localLinearLayout.findViewById(2131099879));
    this.mEmptyTips = ((TextView)localLinearLayout.findViewById(2131099880));
    this.mGotoDownload = ((Button)localLinearLayout.findViewById(2131099881));
    this.father = localLinearLayout;
    this.father.setVisibility(0);
    this.gotoDownload = ((Button)findViewById(2131099881));
    setListener(paramContext);
  }

  private void setListener(Context paramContext)
  {
    this.gotoDownload.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (EmptyDownLoadView.this.mIGotoDownloadCallback != null)
          EmptyDownLoadView.this.mIGotoDownloadCallback.onGotoDownloadViewClicked();
      }
    });
  }

  public void setEmptyIcon(int paramInt)
  {
    if (this.mEmptyImage != null)
      this.mEmptyImage.setImageResource(paramInt);
  }

  public void setEmptyTips(int paramInt)
  {
    if (this.mEmptyTips != null)
      this.mEmptyTips.setText(paramInt);
  }

  public void setGotoDownloadCallback(IGotoDownloadCallback paramIGotoDownloadCallback)
  {
    this.mIGotoDownloadCallback = paramIGotoDownloadCallback;
  }

  public void setGotoDownloadInVisiable(int paramInt)
  {
    if (this.mGotoDownload != null)
      this.mGotoDownload.setVisibility(paramInt);
  }

  public void setGotoDownloadVisiable(int paramInt)
  {
    if (this.mGotoDownload != null)
      this.mGotoDownload.setVisibility(paramInt);
  }

  public static abstract interface IGotoDownloadCallback
  {
    public abstract void onGotoDownloadViewClicked();
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.widget.EmptyDownLoadView
 * JD-Core Version:    0.6.2
 */