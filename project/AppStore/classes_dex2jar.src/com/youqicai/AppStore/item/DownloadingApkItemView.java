package com.youqicai.AppStore.item;

import android.content.Context;
import android.content.res.Resources;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.http.ConnectionUtil;
import com.youqicai.manager.ApkManager;
import com.youqicai.manager.BaseDbAdapter;
import com.youqicai.manager.DownLoadManager;
import com.youqicai.manager.DownLoadManager.MutiDownLoadListener;

public class DownloadingApkItemView extends BaseItemView
  implements DownLoadManager.MutiDownLoadListener, View.OnClickListener
{
  private final int APP_FAILED_DOWNLOAD = 10;
  private View contentView;
  View.OnClickListener dowLoadListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      switch (DownloadingApkItemView.this.itemBean.getAppStatus())
      {
      case 4:
      case 5:
      case 6:
      case 7:
      default:
        return;
      case 1:
      case 2:
        DownloadingApkItemView.this.itemBean.setAppStatus(3);
        BaseDbAdapter.getInstance(DownloadingApkItemView.this.mContext).updateDownloadAppInfo(DownloadingApkItemView.this.itemBean.getAppId(), DownloadingApkItemView.this.itemBean.getAppStatus());
        BaseDbAdapter.getInstance(DownloadingApkItemView.this.mContext).updateDownloadProgressAppInfo(DownloadingApkItemView.this.itemBean.getAppId(), DownloadingApkItemView.this.itemBean.getdownloadProgress());
        DownLoadManager.getInstance().stopDownload(DownloadingApkItemView.this.itemBean.getApkUrl());
        DownLoadManager.getInstance().unregisterReceivedNotifyListener(DownloadingApkItemView.this.itemBean.getApkUrl());
        DownloadingApkItemView.this.setAppStatus(DownloadingApkItemView.this.itemBean.getAppStatus());
        return;
      case 3:
        DownloadingApkItemView.this.itemBean.setAppStatus(2);
        BaseDbAdapter.getInstance(DownloadingApkItemView.this.mContext).updateDownloadAppInfo(DownloadingApkItemView.this.itemBean.getAppId(), DownloadingApkItemView.this.itemBean.getAppStatus());
        DownloadingApkItemView.this.setAppStatus(DownloadingApkItemView.this.itemBean.getAppStatus());
        return;
      case 8:
      }
      DownloadingApkItemView.this.itemBean.setAppStatus(8);
      DownloadingApkItemView.this.setAppStatus(DownloadingApkItemView.this.itemBean.getAppStatus());
    }
  };
  private Holder holder;
  private AppInfoEntity itemBean;

  public DownloadingApkItemView(Context paramContext)
  {
    super(paramContext);
  }

  public DownloadingApkItemView(Context paramContext, View.OnClickListener paramOnClickListener)
  {
    super(paramContext, paramOnClickListener);
  }

  private void setProgress()
  {
    String str = String.valueOf(this.itemBean.getSpeed()) + "M/s";
    this.holder.speedTxt.setText(str);
    int i = (int)(100.0F * (this.itemBean.getdownloadProgress() / Float.valueOf(this.itemBean.getFileSize()).floatValue()));
    if (i > 100)
      i = 100;
    this.holder.progressId.setMax(100);
    this.holder.progressId.setProgress(i);
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(this.holder.progressId.getProgress()).append("%");
    this.holder.rateTxt.setText(localStringBuffer.toString());
  }

  public void applyData(Object paramObject)
  {
    this.itemBean = ((AppInfoEntity)paramObject);
    if (this.itemBean == null)
      return;
    if (!TextUtils.isEmpty(this.itemBean.getApkUrl()))
      DownLoadManager.getInstance().unregisterReceivedNotifyListener(this.itemBean.getApkUrl());
    setTextView(this.itemBean.getAppName(), this.holder.appTitle);
    setImage(this.holder.appIcon, this.itemBean.getIconUrl(), -1);
    this.holder.itemHead.setVisibility(8);
    this.holder.lineTopImg.setVisibility(8);
    setAppStatus(this.itemBean.getAppStatus());
  }

  public void failed(String paramString, Exception paramException, int paramInt)
  {
    if (ConnectionUtil.isConnected(this.mContext))
    {
      this.itemBean.setAppStatus(8);
      BaseDbAdapter.getInstance(this.mContext).updateDownloadAppInfo(this.itemBean.getAppId(), this.itemBean.getAppStatus());
      setAppStatus(8);
      this.holder.speedTxt.setText("");
      this.holder.rateTxt.setTextSize(11.0F);
      this.holder.rateTxt.setText(Html.fromHtml("<font color=#FF0000>下载失败</font>"));
      return;
    }
    this.itemBean.setAppStatus(3);
    BaseDbAdapter.getInstance(this.mContext).updateDownloadAppInfo(this.itemBean.getAppId(), this.itemBean.getAppStatus());
    setAppStatus(this.itemBean.getAppStatus());
  }

  public AppInfoEntity getItemBean()
  {
    return this.itemBean;
  }

  protected void initView()
  {
    this.contentView = this.mInflater.inflate(2130903074, null);
    addView(this.contentView, new LinearLayout.LayoutParams(-1, -2));
    this.holder = new Holder(null);
    this.holder.appTitle = ((TextView)this.contentView.findViewById(2131099817));
    this.holder.appIcon = ((ImageView)this.contentView.findViewById(2131099813));
    this.holder.rateTxt = ((TextView)this.contentView.findViewById(2131099818));
    this.holder.speedTxt = ((TextView)this.contentView.findViewById(2131099775));
    this.holder.lineTopImg = ((ImageView)this.contentView.findViewById(2131099808));
    this.holder.progressId = ((ProgressBar)this.contentView.findViewById(2131099819));
    this.holder.installProgress = ((Button)this.contentView.findViewById(2131099764));
    this.holder.downLoayout = ((RelativeLayout)this.contentView.findViewById(2131099814));
    this.holder.deleteLayout = ((RelativeLayout)this.contentView.findViewById(2131099815));
    this.holder.itemHead = ((RelativeLayout)this.contentView.findViewById(2131099809));
    this.holder.installcounttxt = ((TextView)this.contentView.findViewById(2131099810));
    this.holder.deleteLayout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
      }
    });
    this.holder.installProgress.setOnClickListener(this);
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131099764);
    switch (this.itemBean.getAppStatus())
    {
    case 4:
    case 5:
    case 6:
    case 7:
    default:
      return;
    case 1:
    case 2:
      this.itemBean.setAppStatus(3);
      BaseDbAdapter.getInstance(this.mContext).updateDownloadAppInfo(this.itemBean.getAppId(), this.itemBean.getAppStatus());
      BaseDbAdapter.getInstance(this.mContext).updateDownloadProgressAppInfo(this.itemBean.getAppId(), this.itemBean.getdownloadProgress());
      DownLoadManager.getInstance().stopDownload(this.itemBean.getApkUrl());
      DownLoadManager.getInstance().unregisterReceivedNotifyListener(this.itemBean.getApkUrl());
      setAppStatus(this.itemBean.getAppStatus());
      return;
    case 3:
      this.itemBean.setAppStatus(2);
      BaseDbAdapter.getInstance(this.mContext).updateDownloadAppInfo(this.itemBean.getAppId(), this.itemBean.getAppStatus());
      setAppStatus(this.itemBean.getAppStatus());
      return;
    case 8:
    }
    this.itemBean.setAppStatus(8);
    setAppStatus(this.itemBean.getAppStatus());
  }

  public void setAppStatus(int paramInt)
  {
    this.holder.progressId.setVisibility(0);
    this.holder.rateTxt.setTextSize(15.0F);
    switch (paramInt)
    {
    case 4:
    case 5:
    case 6:
    case 7:
    default:
      return;
    case 1:
    case 2:
      setProgress();
      setTextView(this.mContext.getResources().getString(2131492881), this.holder.installProgress);
      this.holder.speedTxt.setText("");
      DownLoadManager.getInstance().registerReceivedNotifyListener(this.itemBean.getApkUrl(), this, new int[0]);
      DownLoadManager.getInstance().startDownload(this.itemBean);
      return;
    case 3:
      setProgress();
      this.holder.speedTxt.setText("已暂停");
      setTextView(this.mContext.getResources().getString(2131492885), this.holder.installProgress);
      this.holder.installProgress.setVisibility(0);
      return;
    case 8:
    }
    this.holder.speedTxt.setText("");
    this.holder.rateTxt.setText(Html.fromHtml("<font color=#FF0000>下载失败</font>"));
    this.holder.rateTxt.setTextSize(11.0F);
    this.holder.progressId.setVisibility(8);
    this.holder.installProgress.setVisibility(0);
    this.itemBean.setAppStatus(3);
  }

  public void setDownAllSize(float paramFloat, int paramInt)
  {
    if (Float.valueOf(this.itemBean.getFileSize()).floatValue() != paramFloat)
    {
      this.itemBean.setFileSize(String.valueOf(paramFloat));
      BaseDbAdapter.getInstance(this.mContext).updateDownloadAppTotalSizeInfo(this.itemBean.getAppId(), String.valueOf(paramFloat));
    }
  }

  public void setDownloadedSize(float paramFloat, int paramInt)
  {
    this.itemBean.setdownloadProgress(paramFloat);
    setProgress();
    setTextView(this.mContext.getResources().getString(2131492883), this.holder.installProgress);
  }

  public void showBottomLine()
  {
    findViewById(2131099811).setVisibility(0);
  }

  public void showHeadView(int paramInt)
  {
    this.holder.itemHead.setVisibility(0);
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("下载中 (").append(paramInt).append(")");
    setTextView(localStringBuffer.toString(), this.holder.installcounttxt);
    this.holder.lineTopImg.setVisibility(0);
    ApkManager.setDownLoadingCount(paramInt);
  }

  public void success(String paramString1, String paramString2, int paramInt)
  {
    setTextView(this.mContext.getResources().getString(2131492882), this.holder.installProgress);
    this.holder.installProgress.setVisibility(0);
    this.holder.downLoayout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ApkManager.getInstance().installApk(DownloadingApkItemView.this.mContext, DownloadingApkItemView.this.itemBean.getPackageName() + ".apk");
      }
    });
    if (Float.valueOf(this.itemBean.getFileSize()).floatValue() != this.itemBean.getdownloadProgress())
    {
      this.itemBean.setFileSize(String.valueOf(this.itemBean.getdownloadProgress()));
      BaseDbAdapter.getInstance(this.mContext).updateDownloadAppTotalSizeInfo(this.itemBean.getAppId(), String.valueOf(this.itemBean.getdownloadProgress()));
    }
  }

  private class Holder
  {
    ImageView appIcon;
    TextView appTitle;
    RelativeLayout deleteLayout;
    RelativeLayout downLoayout;
    Button installProgress;
    public TextView installcounttxt;
    public RelativeLayout itemHead;
    ImageView lineTopImg;
    ProgressBar progressId;
    TextView rateTxt;
    TextView speedTxt;

    private Holder()
    {
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.item.DownloadingApkItemView
 * JD-Core Version:    0.6.2
 */