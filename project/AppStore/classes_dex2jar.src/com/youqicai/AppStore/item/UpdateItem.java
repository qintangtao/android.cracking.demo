package com.youqicai.AppStore.item;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.text.Html;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.youqicai.AppStore.DetailActivity;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.utils.MemoryUtils;
import com.youqicai.http.ConnectionUtil;
import com.youqicai.manager.ApkManager;
import com.youqicai.manager.BaseDbAdapter;
import com.youqicai.manager.DownLoadManager;
import com.youqicai.manager.DownLoadManager.MutiDownLoadListener;
import java.io.File;

public class UpdateItem extends BaseItemView
  implements View.OnClickListener, DownLoadManager.MutiDownLoadListener
{
  private View contentView;
  private AppInfoEntity itemBean;
  private Holder viewHolder;

  public UpdateItem(Context paramContext)
  {
    super(paramContext);
  }

  private void setProgress()
  {
    String str = String.valueOf(1024.0F * this.itemBean.getSpeed()) + "KB/S";
    this.viewHolder.speed_txt.setText(str);
    int i = (int)(100.0F * (this.itemBean.getdownloadProgress() / Float.valueOf(this.itemBean.getFileSize()).floatValue()));
    if (i > 100)
      i = 100;
    this.viewHolder.state_txt.setText(MemoryUtils.formatFileSize(this.itemBean.getdownloadProgress(), false) + "/" + MemoryUtils.formatFileSize(Float.valueOf(this.itemBean.getFileSize()).floatValue(), false));
    this.viewHolder.progressBar.setMax(100);
    this.viewHolder.progressBar.setProgress(i);
    new StringBuffer().append(this.viewHolder.progressBar.getProgress()).append("%");
  }

  public void applyData(Object paramObject)
  {
    this.itemBean = ((AppInfoEntity)paramObject);
    if (this.itemBean == null)
      return;
    setTextView(this.itemBean.getRank() + "", this.viewHolder.index);
    setTextView(this.itemBean.getAppName(), this.viewHolder.appName);
    StringBuffer localStringBuffer = new StringBuffer();
    int i = BaseDbAdapter.getInstance(this.mContext).getDownloadAppDownCount(this.itemBean);
    int j = 0;
    try
    {
      m = Integer.valueOf(this.itemBean.getDownCount()).intValue();
      j = 0;
      if (m > i)
        this.itemBean.setDownCount(String.valueOf(m));
      while (true)
      {
        j = Integer.valueOf(this.itemBean.getDownCount()).intValue();
        k = Integer.valueOf(this.itemBean.getDownCount()).intValue() / 10000;
        if (!this.itemBean.getFileSize().equalsIgnoreCase("null"))
          break label321;
        str = "0MB";
        if (k <= 0)
          break label343;
        localStringBuffer.append(k).append("万次下载   ").append(str);
        this.viewHolder.state_txt.setText(str);
        setTextView(localStringBuffer.toString(), this.viewHolder.appSize);
        setImage(this.viewHolder.appIcon, this.itemBean.getIconUrl(), null);
        setProgressVisible(8);
        setAppStatus(this.itemBean.getAppStatus());
        return;
        if (i != m + 1)
          break;
        this.itemBean.setDownCount(String.valueOf(i));
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        int m;
        localException.printStackTrace();
        int k = 0;
        continue;
        this.itemBean.setDownCount(String.valueOf(m));
        continue;
        label321: String str = MemoryUtils.formatFileSize(Float.valueOf(this.itemBean.getFileSize()).floatValue(), false);
        continue;
        label343: if (j < 100)
          localStringBuffer.append("<100次下载     ").append(str);
        else
          localStringBuffer.append(this.itemBean.getDownCount()).append("次下载   | ").append(str);
      }
    }
  }

  public void failed(String paramString, Exception paramException, int paramInt)
  {
    if (ConnectionUtil.isConnected(this.mContext))
    {
      this.itemBean.setAppStatus(8);
      BaseDbAdapter.getInstance(this.mContext).updateDownloadAppInfo(this.itemBean.getAppId(), this.itemBean.getAppStatus());
      setAppStatus(this.itemBean.getAppStatus());
      this.viewHolder.speed_txt.setText("");
      this.viewHolder.state_txt.setTextSize(11.0F);
      this.viewHolder.state_txt.setText(Html.fromHtml("<font color=#FF0000>下载失败</font>"));
      return;
    }
    this.itemBean.setAppStatus(3);
    BaseDbAdapter.getInstance(this.mContext).updateDownloadAppInfo(this.itemBean.getAppId(), this.itemBean.getAppStatus());
    setAppStatus(this.itemBean.getAppStatus());
  }

  protected void initView()
  {
    this.contentView = this.mInflater.inflate(2130903100, null);
    addView(this.contentView, new LinearLayout.LayoutParams(-1, -2));
    this.viewHolder = new Holder(null);
    this.viewHolder.appName = ((TextView)this.contentView.findViewById(2131099840));
    this.viewHolder.downlodCount = ((TextView)this.contentView.findViewById(2131099768));
    this.viewHolder.appSize = ((TextView)this.contentView.findViewById(2131099685));
    this.viewHolder.appIcon = ((ImageView)this.contentView.findViewById(2131099838));
    this.viewHolder.state = ((Button)this.contentView.findViewById(2131099839));
    this.viewHolder.speed_txt = ((TextView)this.contentView.findViewById(2131099775));
    this.viewHolder.state_txt = ((TextView)this.contentView.findViewById(2131099776));
    this.viewHolder.progressBar = ((ProgressBar)this.contentView.findViewById(2131099819));
    this.viewHolder.index = ((TextView)this.contentView.findViewById(2131099837));
    this.viewHolder.old_new_version_layout = ((LinearLayout)this.contentView.findViewById(2131099841));
    this.viewHolder.state.setOnClickListener(this);
    this.viewHolder.index.setVisibility(8);
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131099839)
      switch (this.itemBean.getAppStatus())
      {
      default:
      case 0:
      case 2:
      case 1:
      case 4:
      case 6:
      case 5:
      case 3:
      }
    while (paramView != this.contentView)
    {
      do
      {
        do
          return;
        while (!ConnectionUtil.isConnected(this.mContext));
        this.itemBean.setAppStatus(2);
        setAppStatus(this.itemBean.getAppStatus());
        this.itemBean.setDownloadTime(String.valueOf(System.currentTimeMillis()));
        BaseDbAdapter.getInstance(this.mContext).saveDownloadAppInfo(this.itemBean);
        return;
        this.itemBean.setAppStatus(3);
        BaseDbAdapter.getInstance(this.mContext).updateDownloadAppInfo(this.itemBean.getAppId(), this.itemBean.getAppStatus());
        BaseDbAdapter.getInstance(this.mContext).updateDownloadProgressAppInfo(this.itemBean.getAppId(), this.itemBean.getdownloadProgress());
        DownLoadManager.getInstance().stopDownload(this.itemBean.getApkUrl());
        DownLoadManager.getInstance().unregisterReceivedNotifyListener(this.itemBean.getApkUrl());
        setAppStatus(this.itemBean.getAppStatus());
        return;
        this.itemBean.setAppStatus(3);
        BaseDbAdapter.getInstance(this.mContext).updateDownloadAppInfo(this.itemBean.getAppId(), this.itemBean.getAppStatus());
        BaseDbAdapter.getInstance(this.mContext).updateDownloadProgressAppInfo(this.itemBean.getAppId(), this.itemBean.getdownloadProgress());
        DownLoadManager.getInstance().stopDownload(this.itemBean.getApkUrl());
        DownLoadManager.getInstance().unregisterReceivedNotifyListener(this.itemBean.getApkUrl());
        setAppStatus(this.itemBean.getAppStatus());
        return;
        String str = ApkManager.getInstance().getApkPath() + File.separator + this.itemBean.getPackageName() + ".apk";
        if (ApkManager.isValidApk(this.mContext, str))
        {
          ApkManager.getInstance().installApk(this.mContext, this.itemBean.getPackageName() + ".apk");
          return;
        }
        Toast.makeText(this.mContext, "未找到安装文件", 0).show();
      }
      while (!ConnectionUtil.isConnected(this.mContext));
      this.itemBean.setAppStatus(2);
      setAppStatus(this.itemBean.getAppStatus());
      this.itemBean.setDownloadTime(String.valueOf(System.currentTimeMillis()));
      BaseDbAdapter.getInstance(this.mContext).saveDownloadAppInfo(this.itemBean);
      return;
      ApkManager.getInstance().startApk(this.mContext, this.itemBean.getPackageName());
      return;
      this.itemBean.setAppStatus(2);
      setAppStatus(this.itemBean.getAppStatus());
      this.itemBean.setDownloadTime(String.valueOf(System.currentTimeMillis()));
      BaseDbAdapter.getInstance(this.mContext).saveDownloadAppInfo(this.itemBean);
      return;
      this.itemBean.setAppStatus(2);
      BaseDbAdapter.getInstance(this.mContext).updateDownloadAppInfo(this.itemBean.getAppId(), this.itemBean.getAppStatus());
      setAppStatus(this.itemBean.getAppStatus());
      return;
    }
    Intent localIntent = new Intent(this.mContext, DetailActivity.class);
    localIntent.putExtra("AppInfo", this.itemBean);
    this.mContext.startActivity(localIntent);
  }

  public void setAppStatus(int paramInt)
  {
    Log.e("doll", "appStatus --> " + paramInt);
    switch (paramInt)
    {
    case 7:
    case 8:
    default:
      return;
    case 0:
      String str7 = this.mContext.getResources().getString(2131492880);
      this.viewHolder.state.setText(str7);
      setProgressVisible(8);
      return;
    case 2:
      ApkManager.getInstance().setDownUrlList(this.itemBean.getPackageId());
      DownLoadManager.getInstance().registerReceivedNotifyListener(this.itemBean.getApkUrl(), this, new int[0]);
      DownLoadManager.getInstance().startDownload(this.itemBean);
      String str6 = this.mContext.getResources().getString(2131492881);
      this.viewHolder.speed_txt.setText("0KB/S");
      this.viewHolder.state.setText(str6);
      AppInfoEntity localAppInfoEntity = BaseDbAdapter.getInstance(this.mContext).getAllDownAPPinfo(this.itemBean.getAppId());
      if (localAppInfoEntity != null)
      {
        int j = (int)(100.0F * localAppInfoEntity.getdownloadProgress() / Float.valueOf(localAppInfoEntity.getFileSize()).floatValue());
        if (j >= 100)
          j = 100;
        if (j > 0)
        {
          this.mContext.getResources().getString(2131492883);
          setProgressVisible(0);
          this.viewHolder.progressBar.setProgress(j);
          return;
        }
        setProgressVisible(0);
        this.viewHolder.progressBar.setProgress(0);
        return;
      }
      setProgressVisible(0);
      this.viewHolder.progressBar.setProgress(0);
      return;
    case 1:
      String str5 = this.mContext.getResources().getString(2131492883);
      this.viewHolder.state.setText(str5);
      int i = (int)(100.0F * this.itemBean.getdownloadProgress() / Float.valueOf(this.itemBean.getFileSize()).floatValue());
      if (i > 100)
        i = 100;
      setProgressVisible(0);
      this.viewHolder.progressBar.setProgress(i);
      return;
    case 4:
      String str4 = this.mContext.getResources().getString(2131492882);
      this.viewHolder.state.setText(str4);
      this.viewHolder.progressBar.setProgress(100);
      setProgressVisible(0);
      return;
    case 6:
      String str3 = this.mContext.getResources().getString(2131492886);
      this.viewHolder.state.setText(str3);
      setProgressVisible(8);
      return;
    case 5:
      String str2 = this.mContext.getResources().getString(2131492887);
      this.viewHolder.state.setText(str2);
      setProgressVisible(8);
      return;
    case 3:
    }
    if ((int)(100.0F * this.itemBean.getdownloadProgress() / Float.valueOf(this.itemBean.getFileSize()).intValue()) > 100);
    this.viewHolder.speed_txt.setText(2131492884);
    String str1 = this.mContext.getResources().getString(2131492885);
    this.viewHolder.state.setText(str1);
    setProgressVisible(0);
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
    setTextView(this.mContext.getResources().getString(2131492883), this.viewHolder.state);
  }

  public void setProgressVisible(int paramInt)
  {
    this.viewHolder.speed_txt.setVisibility(paramInt);
    this.viewHolder.state_txt.setVisibility(paramInt);
    this.viewHolder.progressBar.setVisibility(paramInt);
    if (paramInt == 0)
    {
      this.viewHolder.old_new_version_layout.setVisibility(8);
      return;
    }
    this.viewHolder.old_new_version_layout.setVisibility(0);
  }

  public void success(String paramString1, String paramString2, int paramInt)
  {
    setTextView(this.mContext.getResources().getString(2131492882), this.viewHolder.state);
    setProgressVisible(8);
    this.viewHolder.state.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ApkManager.getInstance().installApk(UpdateItem.this.mContext, UpdateItem.this.itemBean.getPackageName() + ".apk");
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
    TextView appName;
    TextView appSize;
    TextView downlodCount;
    TextView index;
    LinearLayout old_new_version_layout;
    ProgressBar progressBar;
    TextView speed_txt;
    Button state;
    TextView state_txt;

    private Holder()
    {
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.item.UpdateItem
 * JD-Core Version:    0.6.2
 */