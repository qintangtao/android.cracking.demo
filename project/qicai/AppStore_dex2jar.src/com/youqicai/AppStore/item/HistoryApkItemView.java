package com.youqicai.AppStore.item;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.youqicai.AppStore.card.BaseCardManager;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.manager.ApkManager;

public class HistoryApkItemView extends BaseItemView
{
  private View contentView;
  private Holder holder;
  private AppInfoEntity itemBean;
  private BaseCardManager manager;

  public HistoryApkItemView(Context paramContext)
  {
    super(paramContext);
  }

  public HistoryApkItemView(Context paramContext, View.OnClickListener paramOnClickListener)
  {
    super(paramContext, paramOnClickListener);
  }

  public void applyData(Object paramObject)
  {
    this.itemBean = ((AppInfoEntity)paramObject);
    if (this.itemBean == null)
      return;
    this.manager.applCard(paramObject);
    this.holder.desc.setText(this.itemBean.getBrief());
    this.holder.itemHead.setVisibility(8);
    findViewById(2131099829).setVisibility(8);
    findViewById(2131099824).setVisibility(8);
  }

  protected void initView()
  {
    this.contentView = this.mInflater.inflate(2130903078, null);
    addView(this.contentView, new LinearLayout.LayoutParams(-1, -2));
    this.manager = new BaseCardManager(this.mContext, this.contentView, this.downLayoutListener);
    this.holder = new Holder(null);
    this.holder.deletApk = ((RelativeLayout)this.contentView.findViewById(2131099826));
    this.holder.itemHead = ((RelativeLayout)this.contentView.findViewById(2131099809));
    this.holder.historycounttxt = ((TextView)this.contentView.findViewById(2131099825));
    this.holder.deletehistoryIcon = ((ImageView)this.contentView.findViewById(2131099827));
    this.holder.desc = ((TextView)this.contentView.findViewById(2131099777));
    this.holder.deletApk.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ApkManager.getInstance().deleteHistoryApkInfo(HistoryApkItemView.this.mContext, false);
        Intent localIntent = new Intent();
        localIntent.setAction("cn.update.action.broadcast");
        HistoryApkItemView.this.mContext.sendBroadcast(localIntent);
      }
    });
  }

  public void showBottomLine()
  {
  }

  public void showHeadView(int paramInt)
  {
    this.holder.itemHead.setVisibility(0);
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("下载历史 (").append(paramInt).append(")");
    setTextView(localStringBuffer.toString(), this.holder.historycounttxt);
    findViewById(2131099829).setVisibility(0);
    findViewById(2131099824).setVisibility(0);
  }

  private class Holder
  {
    RelativeLayout deletApk;
    ImageView deletehistoryIcon;
    TextView desc;
    TextView historycounttxt;
    RelativeLayout itemHead;

    private Holder()
    {
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.item.HistoryApkItemView
 * JD-Core Version:    0.6.2
 */