package com.youqicai.AppStore.card;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RatingBar;
import android.widget.TextView;
import com.hsg.sdk.common.imagecache.ImageFetcher;
import com.hsg.sdk.common.imagecache.ImageWorker.SimpleProcessCallback;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.utils.MemoryUtils;
import com.youqicai.manager.ApkManager;
import com.youqicai.manager.BaseDbAdapter;
import com.youqicai.manager.DownLoadManager;
import com.youqicai.manager.DownLoadManager.MutiDownLoadListener;
import java.text.DecimalFormat;
import java.text.NumberFormat;

public class BaseCardManager
  implements DownLoadManager.MutiDownLoadListener
{
  protected AppInfoEntity appInfoEntity;
  protected View.OnClickListener downloadClick;
  protected Holder holder;
  protected Context mContext;

  public BaseCardManager()
  {
  }

  public BaseCardManager(Context paramContext, View paramView, View.OnClickListener paramOnClickListener)
  {
    this.mContext = paramContext;
    this.holder = new Holder();
    this.holder.title = ((TextView)paramView.findViewById(2131099763));
    this.holder.title.setSelected(true);
    this.holder.downCount = ((TextView)paramView.findViewById(2131099768));
    this.holder.icon = ((ImageView)paramView.findViewById(2131099762));
    this.holder.progressBar = ((ProgressBar)paramView.findViewById(2131099769));
    this.holder.ratingBar = ((RatingBar)paramView.findViewById(2131099767));
    this.holder.infoLayout = ((LinearLayout)paramView.findViewById(2131099766));
    this.holder.download = ((Button)paramView.findViewById(2131099764));
    this.holder.speed = ((TextView)paramView.findViewById(2131099775));
    this.holder.state = ((TextView)paramView.findViewById(2131099776));
    this.holder.download.setOnClickListener(paramOnClickListener);
    this.downloadClick = paramOnClickListener;
    this.holder.download.setOnClickListener(this.downloadClick);
    this.holder.download.setTag(this);
  }

  public BaseCardManager(Context paramContext, View paramView, View.OnClickListener paramOnClickListener, int paramInt)
  {
    this.mContext = paramContext;
    this.holder = new Holder();
    this.holder.title = ((TextView)paramView.findViewById(2131099763));
    this.holder.title.setSelected(true);
    this.holder.size = ((TextView)paramView.findViewById(2131099685));
    this.holder.icon = ((ImageView)paramView.findViewById(2131099762));
    this.holder.progressBar = ((ProgressBar)paramView.findViewById(2131099769));
    this.holder.infoLayout = ((LinearLayout)paramView.findViewById(2131099766));
    this.holder.download = ((Button)paramView.findViewById(2131099764));
    this.holder.download.setOnClickListener(paramOnClickListener);
    this.downloadClick = paramOnClickListener;
    this.holder.download.setOnClickListener(this.downloadClick);
    this.holder.download.setTag(this);
  }

  public static String formatDnum(int paramInt, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    DecimalFormat localDecimalFormat = (DecimalFormat)NumberFormat.getInstance();
    localDecimalFormat.setMaximumFractionDigits(1);
    if ((paramInt >= 0) && (paramInt < 10000))
      localStringBuilder.append(paramInt).append(paramString);
    while (true)
    {
      return localStringBuilder.toString();
      if ((paramInt >= 10000) && (paramInt < 100000000))
        localStringBuilder.append(localDecimalFormat.format(1.0D * paramInt / 10000.0D) + "万").append(paramString);
      else if (paramInt >= 100000000)
        localStringBuilder.append(localDecimalFormat.format(1.0D * paramInt / 100000000.0D) + "亿").append(paramString);
    }
  }

  public void applCard(Object paramObject)
  {
    this.appInfoEntity = ((AppInfoEntity)paramObject);
    if (this.appInfoEntity == null);
    while (true)
    {
      return;
      if (!TextUtils.isEmpty(this.appInfoEntity.getApkUrl()))
        DownLoadManager.getInstance().unregisterReceivedNotifyListener(this.appInfoEntity.getApkUrl());
      this.holder.title.setText(Html.fromHtml(this.appInfoEntity.getAppName()));
      setImage(this.holder.icon, this.appInfoEntity.getIconUrl(), null);
      new StringBuffer();
      int i = BaseDbAdapter.getInstance(this.mContext).getDownloadAppDownCount(this.appInfoEntity);
      try
      {
        j = Integer.valueOf(this.appInfoEntity.getDownCount()).intValue();
        if (j > i)
          this.appInfoEntity.setDownCount(String.valueOf(j));
        while (true)
        {
          Integer.valueOf(this.appInfoEntity.getDownCount()).intValue();
          (Integer.valueOf(this.appInfoEntity.getDownCount()).intValue() / 10000);
          if (!this.appInfoEntity.getFileSize().equalsIgnoreCase("null"))
            break label346;
          str1 = "0MB";
          if (this.holder.downCount != null)
            setTextView(formatDnum(Integer.valueOf(this.appInfoEntity.getDownCount()).intValue(), "下载 | " + str1), this.holder.downCount);
          setAppStatus(this.appInfoEntity.getAppStatus());
          if (this.holder.size == null)
            break;
          if (!this.appInfoEntity.getFileSize().equalsIgnoreCase("null"))
            break label368;
          str2 = "0MB";
          setTextView(str2, this.holder.size);
          return;
          if (i != j + 1)
            break label331;
          this.appInfoEntity.setDownCount(String.valueOf(i));
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          int j;
          localException.printStackTrace();
          continue;
          label331: this.appInfoEntity.setDownCount(String.valueOf(j));
          continue;
          label346: String str1 = MemoryUtils.formatFileSize(Float.valueOf(this.appInfoEntity.getFileSize()).floatValue(), false);
          continue;
          label368: String str2 = MemoryUtils.formatFileSize(Float.valueOf(this.appInfoEntity.getFileSize()).floatValue(), false);
        }
      }
    }
  }

  public void failed(String paramString, Exception paramException, int paramInt)
  {
  }

  public AppInfoEntity getAppInfoEntity()
  {
    return this.appInfoEntity;
  }

  public void setAppInfoEntity(AppInfoEntity paramAppInfoEntity)
  {
    this.appInfoEntity = paramAppInfoEntity;
  }

  public void setAppStatus(int paramInt)
  {
    switch (paramInt)
    {
    case 7:
    case 8:
    default:
      return;
    case 0:
      String str8 = this.mContext.getResources().getString(2131492880);
      this.holder.download.setText(str8);
      this.holder.infoLayout.setVisibility(0);
      this.holder.progressBar.setProgress(0);
      setProgressVisble(8);
      return;
    case 2:
      ApkManager.getInstance().setDownUrlList(this.appInfoEntity.getPackageId());
      DownLoadManager localDownLoadManager = DownLoadManager.getInstance();
      String str6 = this.appInfoEntity.getApkUrl();
      int[] arrayOfInt = new int[1];
      arrayOfInt[0] = Integer.parseInt(this.appInfoEntity.getAppId());
      localDownLoadManager.registerReceivedNotifyListener(str6, this, arrayOfInt);
      DownLoadManager.getInstance().startDownload(this.appInfoEntity);
      String str7 = this.mContext.getResources().getString(2131492881);
      this.holder.download.setText(str7);
      AppInfoEntity localAppInfoEntity = BaseDbAdapter.getInstance(this.mContext).getAllDownAPPinfo(this.appInfoEntity.getAppId());
      if (localAppInfoEntity != null)
      {
        int k = (int)(100.0F * localAppInfoEntity.getdownloadProgress() / Float.valueOf(localAppInfoEntity.getFileSize()).floatValue());
        if (k >= 100)
          k = 100;
        if (this.holder.speed != null)
          this.holder.speed.setText(str7);
        if (this.holder.state != null)
          this.holder.state.setText(MemoryUtils.formatFileSize(this.appInfoEntity.getdownloadProgress(), false) + "/" + MemoryUtils.formatFileSize(Float.valueOf(this.appInfoEntity.getFileSize()).floatValue(), false));
        if (k > 0)
        {
          this.holder.infoLayout.setVisibility(8);
          this.holder.progressBar.setProgress(k);
          setProgressVisble(0);
          return;
        }
        this.holder.infoLayout.setVisibility(8);
        this.holder.progressBar.setProgress(0);
        setProgressVisble(0);
        return;
      }
      if (this.holder.speed != null)
        this.holder.speed.setText(str7);
      if (this.holder.state != null)
        this.holder.state.setText(MemoryUtils.formatFileSize(this.appInfoEntity.getdownloadProgress(), false) + "/" + MemoryUtils.formatFileSize(Float.valueOf(this.appInfoEntity.getFileSize()).floatValue(), false));
      this.holder.infoLayout.setVisibility(8);
      this.holder.progressBar.setProgress(0);
      setProgressVisble(0);
      return;
    case 1:
      String str5 = this.mContext.getResources().getString(2131492883);
      this.holder.download.setText(str5);
      int j = (int)(100.0F * this.appInfoEntity.getdownloadProgress() / Float.valueOf(this.appInfoEntity.getFileSize()).floatValue());
      if (j > 100)
        j = 100;
      if (this.holder.infoLayout != null)
        this.holder.infoLayout.setVisibility(8);
      setProgressVisble(0);
      this.holder.progressBar.setProgress(j);
      return;
    case 4:
      String str4 = this.mContext.getResources().getString(2131492882);
      this.holder.download.setText(str4);
      this.holder.infoLayout.setVisibility(0);
      this.holder.progressBar.setProgress(100);
      setProgressVisble(8);
      return;
    case 6:
      String str3 = this.mContext.getResources().getString(2131492886);
      this.holder.download.setText(str3);
      this.holder.infoLayout.setVisibility(0);
      setProgressVisble(8);
      return;
    case 5:
      String str2 = this.mContext.getResources().getString(2131492887);
      this.holder.download.setText(str2);
      this.holder.infoLayout.setVisibility(0);
      setProgressVisble(8);
      return;
    case 3:
    }
    int i = (int)(100.0F * this.appInfoEntity.getdownloadProgress() / Float.valueOf(this.appInfoEntity.getFileSize()).intValue());
    if (i > 100)
      i = 100;
    if (this.holder.state != null)
      this.holder.state.setText(MemoryUtils.formatFileSize(this.appInfoEntity.getdownloadProgress(), false) + "/" + MemoryUtils.formatFileSize(Float.valueOf(this.appInfoEntity.getFileSize()).floatValue(), false));
    String str1 = this.mContext.getResources().getString(2131492885);
    this.holder.download.setText(str1);
    this.holder.infoLayout.setVisibility(8);
    if (this.holder.speed != null)
      this.holder.speed.setText(2131492884);
    setProgressVisble(0);
    this.holder.progressBar.setProgress(i);
  }

  public void setDownAllSize(float paramFloat, int paramInt)
  {
    if (Float.valueOf(this.appInfoEntity.getFileSize()).floatValue() != paramFloat)
    {
      this.appInfoEntity.setFileSize(String.valueOf(paramFloat));
      BaseDbAdapter.getInstance(this.mContext).updateDownloadAppTotalSizeInfo(this.appInfoEntity.getAppId(), String.valueOf(paramFloat));
    }
  }

  public void setDownloadClick(View.OnClickListener paramOnClickListener)
  {
    this.holder.download.setOnClickListener(paramOnClickListener);
    this.holder.download.setTag(this);
  }

  public void setDownloadedSize(float paramFloat, int paramInt)
  {
    if (Integer.parseInt(this.appInfoEntity.getAppId()) == paramInt)
    {
      this.appInfoEntity.setdownloadProgress(paramFloat);
      int i = (int)(100.0F * this.appInfoEntity.getdownloadProgress() / Float.valueOf(this.appInfoEntity.getFileSize()).floatValue());
      if (i >= 100)
        i = 100;
      String str1 = String.valueOf(1024.0F * this.appInfoEntity.getSpeed()) + "KB/S";
      if (this.holder.speed != null)
        this.holder.speed.setText(str1);
      if (this.holder.state != null)
        this.holder.state.setText(MemoryUtils.formatFileSize(this.appInfoEntity.getdownloadProgress(), false) + "/" + MemoryUtils.formatFileSize(Float.valueOf(this.appInfoEntity.getFileSize()).floatValue(), false));
      String str2 = this.mContext.getResources().getString(2131492883);
      this.holder.download.setText(str2);
      this.holder.infoLayout.setVisibility(8);
      setProgressVisble(0);
      this.holder.progressBar.setProgress(i);
    }
  }

  public void setImage(ImageView paramImageView, String paramString, Drawable paramDrawable)
  {
    if (paramImageView == null)
      return;
    if (paramDrawable != null)
      paramImageView.setImageDrawable(paramDrawable);
    ImageFetcher.getInstance(this.mContext.getApplicationContext()).loadImage(paramString, paramImageView, new ImageWorker.SimpleProcessCallback()
    {
    });
  }

  public void setProgressVisble(int paramInt)
  {
    if (this.holder.state != null)
      this.holder.state.setVisibility(paramInt);
    if (this.holder.speed != null)
      this.holder.speed.setVisibility(paramInt);
    this.holder.progressBar.setVisibility(paramInt);
  }

  protected void setTextView(String paramString, TextView paramTextView)
  {
    if ((paramString != null) && (paramTextView != null))
      paramTextView.setText(paramString);
  }

  public void success(String paramString1, String paramString2, int paramInt)
  {
    setProgressVisble(8);
    this.holder.infoLayout.setVisibility(0);
  }

  public class Holder
  {
    TextView downCount;
    Button download;
    ImageView icon;
    LinearLayout infoLayout;
    ProgressBar progressBar;
    RatingBar ratingBar;
    TextView size;
    TextView speed;
    TextView state;
    TextView title;

    public Holder()
    {
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.card.BaseCardManager
 * JD-Core Version:    0.6.2
 */