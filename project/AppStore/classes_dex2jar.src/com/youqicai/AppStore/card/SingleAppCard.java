package com.youqicai.AppStore.card;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.youqicai.AppStore.DetailActivity;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.entity.CardEntity;
import com.youqicai.http.ConnectionUtil;
import com.youqicai.manager.ApkManager;
import com.youqicai.manager.BaseDbAdapter;
import com.youqicai.manager.DownLoadManager;
import java.io.File;

public class SingleAppCard extends BaseCard
  implements View.OnClickListener
{
  private AppInfoEntity appInfoEntity;
  private View contentView;
  View.OnClickListener downLayoutListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      SingleAppCard.this.manager = ((BaseCardManager)paramAnonymousView.getTag());
      AppInfoEntity localAppInfoEntity = SingleAppCard.this.manager.getAppInfoEntity();
      switch (localAppInfoEntity.getAppStatus())
      {
      default:
      case 0:
      case 2:
      case 1:
      case 4:
        do
        {
          do
            return;
          while (!ConnectionUtil.isConnected(SingleAppCard.this.mContext));
          localAppInfoEntity.setAppStatus(2);
          SingleAppCard.this.manager.setAppStatus(localAppInfoEntity.getAppStatus());
          localAppInfoEntity.setDownloadTime(String.valueOf(System.currentTimeMillis()));
          BaseDbAdapter.getInstance(SingleAppCard.this.mContext).saveDownloadAppInfo(localAppInfoEntity);
          return;
          localAppInfoEntity.setAppStatus(3);
          BaseDbAdapter.getInstance(SingleAppCard.this.mContext).updateDownloadAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getAppStatus());
          BaseDbAdapter.getInstance(SingleAppCard.this.mContext).updateDownloadProgressAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getdownloadProgress());
          DownLoadManager.getInstance().stopDownload(localAppInfoEntity.getApkUrl());
          DownLoadManager.getInstance().unregisterReceivedNotifyListener(localAppInfoEntity.getApkUrl());
          SingleAppCard.this.manager.setAppStatus(localAppInfoEntity.getAppStatus());
          return;
          localAppInfoEntity.setAppStatus(3);
          BaseDbAdapter.getInstance(SingleAppCard.this.mContext).updateDownloadAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getAppStatus());
          BaseDbAdapter.getInstance(SingleAppCard.this.mContext).updateDownloadProgressAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getdownloadProgress());
          DownLoadManager.getInstance().stopDownload(localAppInfoEntity.getApkUrl());
          DownLoadManager.getInstance().unregisterReceivedNotifyListener(localAppInfoEntity.getApkUrl());
          SingleAppCard.this.manager.setAppStatus(localAppInfoEntity.getAppStatus());
          return;
          String str = ApkManager.getInstance().getApkPath() + File.separator + localAppInfoEntity.getPackageName() + ".apk";
          if (ApkManager.isValidApk(SingleAppCard.this.mContext, str))
          {
            ApkManager.getInstance().installApk(SingleAppCard.this.mContext, localAppInfoEntity.getPackageName() + ".apk");
            return;
          }
          Toast.makeText(SingleAppCard.this.mContext, "未找到安装文件", 0).show();
        }
        while (!ConnectionUtil.isConnected(SingleAppCard.this.mContext));
        localAppInfoEntity.setAppStatus(2);
        SingleAppCard.this.manager.setAppStatus(localAppInfoEntity.getAppStatus());
        localAppInfoEntity.setDownloadTime(String.valueOf(System.currentTimeMillis()));
        BaseDbAdapter.getInstance(SingleAppCard.this.mContext).saveDownloadAppInfo(localAppInfoEntity);
        return;
      case 6:
        ApkManager.getInstance().startApk(SingleAppCard.this.mContext, localAppInfoEntity.getPackageName());
        return;
      case 5:
        localAppInfoEntity.setAppStatus(2);
        SingleAppCard.this.manager.setAppStatus(localAppInfoEntity.getAppStatus());
        localAppInfoEntity.setDownloadTime(String.valueOf(System.currentTimeMillis()));
        BaseDbAdapter.getInstance(SingleAppCard.this.mContext).saveDownloadAppInfo(localAppInfoEntity);
        return;
      case 3:
      }
      localAppInfoEntity.setAppStatus(2);
      BaseDbAdapter.getInstance(SingleAppCard.this.mContext).updateDownloadAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getAppStatus());
      SingleAppCard.this.manager.setAppStatus(localAppInfoEntity.getAppStatus());
    }
  };
  private Holder holder;
  protected BaseCardManager manager;

  public SingleAppCard(Context paramContext)
  {
    super(paramContext, CardType.SINGLE_APP);
  }

  public void applyCard(Object paramObject)
  {
    if (paramObject != null)
    {
      this.appInfoEntity = ((CardEntity)paramObject).getSingleAppItem();
      if (this.appInfoEntity != null);
    }
    else
    {
      return;
    }
    setTextView(this.appInfoEntity.getBrief(), this.holder.desc);
    this.manager.setDownloadClick(this.downLayoutListener);
    this.manager.applCard(this.appInfoEntity);
  }

  protected void initCard()
  {
    this.contentView = this.mInflater.inflate(2130903063, null);
    addView(this.contentView, new LinearLayout.LayoutParams(-1, -2));
    this.holder = new Holder(null);
    this.holder.desc = ((TextView)this.contentView.findViewById(2131099777));
    this.manager = new BaseCardManager(this.mContext, this.contentView, this.downLayoutListener);
  }

  public void onClick(View paramView)
  {
    Log.e("doll", " onClick ------------->");
    Intent localIntent = new Intent(this.mContext, DetailActivity.class);
    localIntent.putExtra("AppInfo", this.appInfoEntity);
    this.mContext.startActivity(localIntent);
  }

  private class Holder
  {
    TextView desc;

    private Holder()
    {
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.card.SingleAppCard
 * JD-Core Version:    0.6.2
 */