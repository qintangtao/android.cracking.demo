package com.youqicai.AppStore.card;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.youqicai.AppStore.DetailActivity;
import com.youqicai.AppStore.GeneralActivity;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.entity.CardEntity;
import com.youqicai.http.ConnectionUtil;
import com.youqicai.manager.ApkManager;
import com.youqicai.manager.BaseDbAdapter;
import com.youqicai.manager.DownLoadManager;
import java.io.File;
import java.util.List;

public class SpecialCard extends BaseCard
  implements View.OnClickListener
{
  private View contentView;
  View.OnClickListener downLayoutListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      BaseCardManager localBaseCardManager = (BaseCardManager)paramAnonymousView.getTag();
      AppInfoEntity localAppInfoEntity = localBaseCardManager.getAppInfoEntity();
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
          while (!ConnectionUtil.isConnected(SpecialCard.this.mContext));
          localAppInfoEntity.setAppStatus(2);
          localBaseCardManager.setAppStatus(localAppInfoEntity.getAppStatus());
          localAppInfoEntity.setDownloadTime(String.valueOf(System.currentTimeMillis()));
          BaseDbAdapter.getInstance(SpecialCard.this.mContext).saveDownloadAppInfo(localAppInfoEntity);
          return;
          localAppInfoEntity.setAppStatus(3);
          BaseDbAdapter.getInstance(SpecialCard.this.mContext).updateDownloadAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getAppStatus());
          BaseDbAdapter.getInstance(SpecialCard.this.mContext).updateDownloadProgressAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getdownloadProgress());
          DownLoadManager.getInstance().stopDownload(localAppInfoEntity.getApkUrl());
          DownLoadManager.getInstance().unregisterReceivedNotifyListener(localAppInfoEntity.getApkUrl());
          localBaseCardManager.setAppStatus(localAppInfoEntity.getAppStatus());
          return;
          localAppInfoEntity.setAppStatus(3);
          BaseDbAdapter.getInstance(SpecialCard.this.mContext).updateDownloadAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getAppStatus());
          BaseDbAdapter.getInstance(SpecialCard.this.mContext).updateDownloadProgressAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getdownloadProgress());
          DownLoadManager.getInstance().stopDownload(localAppInfoEntity.getApkUrl());
          DownLoadManager.getInstance().unregisterReceivedNotifyListener(localAppInfoEntity.getApkUrl());
          localBaseCardManager.setAppStatus(localAppInfoEntity.getAppStatus());
          return;
          String str = ApkManager.getInstance().getApkPath() + File.separator + localAppInfoEntity.getPackageName() + ".apk";
          if (ApkManager.isValidApk(SpecialCard.this.mContext, str))
          {
            ApkManager.getInstance().installApk(SpecialCard.this.mContext, localAppInfoEntity.getPackageName() + ".apk");
            return;
          }
          Toast.makeText(SpecialCard.this.mContext, "未找到安装文件", 0).show();
        }
        while (!ConnectionUtil.isConnected(SpecialCard.this.mContext));
        localAppInfoEntity.setAppStatus(2);
        localBaseCardManager.setAppStatus(localAppInfoEntity.getAppStatus());
        localAppInfoEntity.setDownloadTime(String.valueOf(System.currentTimeMillis()));
        BaseDbAdapter.getInstance(SpecialCard.this.mContext).saveDownloadAppInfo(localAppInfoEntity);
        return;
      case 6:
        ApkManager.getInstance().startApk(SpecialCard.this.mContext, localAppInfoEntity.getPackageName());
        return;
      case 5:
        localAppInfoEntity.setAppStatus(2);
        localBaseCardManager.setAppStatus(localAppInfoEntity.getAppStatus());
        localAppInfoEntity.setDownloadTime(String.valueOf(System.currentTimeMillis()));
        BaseDbAdapter.getInstance(SpecialCard.this.mContext).saveDownloadAppInfo(localAppInfoEntity);
        return;
      case 3:
      }
      localAppInfoEntity.setAppStatus(2);
      BaseDbAdapter.getInstance(SpecialCard.this.mContext).updateDownloadAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getAppStatus());
      localBaseCardManager.setAppStatus(localAppInfoEntity.getAppStatus());
    }
  };
  private Holder holder;
  private BaseCardManager managerFirst;
  private BaseCardManager managerSecond;
  private BaseCardManager managerThird;

  public SpecialCard(Context paramContext)
  {
    super(paramContext, CardType.SPECIAL);
  }

  public void applyCard(Object paramObject)
  {
    CardEntity localCardEntity;
    if (paramObject != null)
    {
      localCardEntity = (CardEntity)paramObject;
      if (localCardEntity != null);
    }
    else
    {
      return;
    }
    if (TextUtils.isEmpty(localCardEntity.getDataUrl()))
    {
      this.holder.more.setVisibility(8);
      this.holder.more.setOnClickListener(null);
    }
    while (true)
    {
      int i = localCardEntity.getAppItemList().size();
      if (i >= 1)
      {
        AppInfoEntity localAppInfoEntity1 = (AppInfoEntity)localCardEntity.getAppItemList().get(0);
        this.holder.firstDesc.setText(localAppInfoEntity1.getBrief());
        this.managerFirst.setDownloadClick(this.downLayoutListener);
        this.managerFirst.applCard(localAppInfoEntity1);
        this.holder.firstApp.setTag(localAppInfoEntity1);
        this.holder.firstApp.setVisibility(0);
        if (i >= 2)
        {
          AppInfoEntity localAppInfoEntity3 = (AppInfoEntity)localCardEntity.getAppItemList().get(1);
          this.holder.secDesc.setText(localAppInfoEntity3.getBrief());
          this.managerSecond.setDownloadClick(this.downLayoutListener);
          this.managerSecond.applCard(localAppInfoEntity3);
          this.holder.secApp.setTag(localAppInfoEntity3);
          this.holder.secApp.setVisibility(0);
        }
        if (i >= 3)
        {
          AppInfoEntity localAppInfoEntity2 = (AppInfoEntity)localCardEntity.getAppItemList().get(2);
          this.holder.thirdDesc.setText(localAppInfoEntity2.getBrief());
          this.managerThird.setDownloadClick(this.downLayoutListener);
          this.managerThird.applCard(localAppInfoEntity2);
          this.holder.thirdApp.setTag(localAppInfoEntity2);
          this.holder.thirdApp.setVisibility(0);
        }
      }
      this.holder.topicName.setText(localCardEntity.getTitle());
      return;
      increaseClickRegion(this.holder.more);
      this.holder.more.setVisibility(0);
      this.holder.more.setOnClickListener(this);
      this.holder.more.setTag(localCardEntity.getDataUrl());
    }
  }

  protected void initCard()
  {
    this.contentView = this.mInflater.inflate(2130903066, null);
    addView(this.contentView, new LinearLayout.LayoutParams(-1, -2));
    this.holder = new Holder(null);
    this.holder.topicName = ((TextView)this.contentView.findViewById(2131099763));
    this.holder.firstApp = this.contentView.findViewById(2131099791);
    this.holder.secApp = this.contentView.findViewById(2131099792);
    this.holder.thirdApp = this.contentView.findViewById(2131099793);
    this.holder.more = ((TextView)this.contentView.findViewById(2131099790));
    this.holder.firstDesc = ((TextView)this.holder.firstApp.findViewById(2131099777));
    this.holder.secDesc = ((TextView)this.holder.secApp.findViewById(2131099777));
    this.holder.thirdDesc = ((TextView)this.holder.thirdApp.findViewById(2131099777));
    this.managerFirst = new BaseCardManager(this.mContext, this.holder.firstApp, this.downLayoutListener);
    this.managerSecond = new BaseCardManager(this.mContext, this.holder.secApp, this.downLayoutListener);
    this.managerThird = new BaseCardManager(this.mContext, this.holder.thirdApp, this.downLayoutListener);
    this.holder.firstApp.setOnClickListener(this);
    this.holder.secApp.setOnClickListener(this);
    this.holder.thirdApp.setOnClickListener(this);
    this.holder.firstApp.setVisibility(8);
    this.holder.secApp.setVisibility(8);
    this.holder.thirdApp.setVisibility(8);
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131099790)
    {
      String str = String.valueOf(paramView.getTag());
      Intent localIntent2 = new Intent(this.mContext, GeneralActivity.class);
      localIntent2.putExtra("dataUrl", str);
      localIntent2.putExtra("title", this.holder.topicName.getText().toString());
      this.mContext.startActivity(localIntent2);
      return;
    }
    AppInfoEntity localAppInfoEntity = (AppInfoEntity)paramView.getTag();
    Intent localIntent1 = new Intent(this.mContext, DetailActivity.class);
    localIntent1.putExtra("AppInfo", localAppInfoEntity);
    this.mContext.startActivity(localIntent1);
  }

  private class Holder
  {
    View firstApp;
    TextView firstDesc;
    TextView more;
    View secApp;
    TextView secDesc;
    View thirdApp;
    TextView thirdDesc;
    TextView topicName;

    private Holder()
    {
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.card.SpecialCard
 * JD-Core Version:    0.6.2
 */