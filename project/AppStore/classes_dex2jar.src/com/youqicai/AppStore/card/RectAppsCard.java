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

public class RectAppsCard extends BaseCard
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
          while (!ConnectionUtil.isConnected(RectAppsCard.this.mContext));
          localAppInfoEntity.setAppStatus(2);
          localBaseCardManager.setAppStatus(localAppInfoEntity.getAppStatus());
          localAppInfoEntity.setDownloadTime(String.valueOf(System.currentTimeMillis()));
          BaseDbAdapter.getInstance(RectAppsCard.this.mContext).saveDownloadAppInfo(localAppInfoEntity);
          return;
          localAppInfoEntity.setAppStatus(3);
          BaseDbAdapter.getInstance(RectAppsCard.this.mContext).updateDownloadAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getAppStatus());
          BaseDbAdapter.getInstance(RectAppsCard.this.mContext).updateDownloadProgressAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getdownloadProgress());
          DownLoadManager.getInstance().stopDownload(localAppInfoEntity.getApkUrl());
          DownLoadManager.getInstance().unregisterReceivedNotifyListener(localAppInfoEntity.getApkUrl());
          localBaseCardManager.setAppStatus(localAppInfoEntity.getAppStatus());
          return;
          localAppInfoEntity.setAppStatus(3);
          BaseDbAdapter.getInstance(RectAppsCard.this.mContext).updateDownloadAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getAppStatus());
          BaseDbAdapter.getInstance(RectAppsCard.this.mContext).updateDownloadProgressAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getdownloadProgress());
          DownLoadManager.getInstance().stopDownload(localAppInfoEntity.getApkUrl());
          DownLoadManager.getInstance().unregisterReceivedNotifyListener(localAppInfoEntity.getApkUrl());
          localBaseCardManager.setAppStatus(localAppInfoEntity.getAppStatus());
          return;
          String str = ApkManager.getInstance().getApkPath() + File.separator + localAppInfoEntity.getPackageName() + ".apk";
          if (ApkManager.isValidApk(RectAppsCard.this.mContext, str))
          {
            ApkManager.getInstance().installApk(RectAppsCard.this.mContext, localAppInfoEntity.getPackageName() + ".apk");
            return;
          }
          Toast.makeText(RectAppsCard.this.mContext, "未找到安装文件", 0).show();
        }
        while (!ConnectionUtil.isConnected(RectAppsCard.this.mContext));
        localAppInfoEntity.setAppStatus(2);
        localBaseCardManager.setAppStatus(localAppInfoEntity.getAppStatus());
        localAppInfoEntity.setDownloadTime(String.valueOf(System.currentTimeMillis()));
        BaseDbAdapter.getInstance(RectAppsCard.this.mContext).saveDownloadAppInfo(localAppInfoEntity);
        return;
      case 6:
        ApkManager.getInstance().startApk(RectAppsCard.this.mContext, localAppInfoEntity.getPackageName());
        return;
      case 5:
        localAppInfoEntity.setAppStatus(2);
        localBaseCardManager.setAppStatus(localAppInfoEntity.getAppStatus());
        localAppInfoEntity.setDownloadTime(String.valueOf(System.currentTimeMillis()));
        BaseDbAdapter.getInstance(RectAppsCard.this.mContext).saveDownloadAppInfo(localAppInfoEntity);
        return;
      case 3:
      }
      localAppInfoEntity.setAppStatus(2);
      BaseDbAdapter.getInstance(RectAppsCard.this.mContext).updateDownloadAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getAppStatus());
      localBaseCardManager.setAppStatus(localAppInfoEntity.getAppStatus());
    }
  };
  private Holder holder;
  private BaseCardManager managerFirst;
  private BaseCardManager managerFourth;
  private BaseCardManager managerSecond;
  private BaseCardManager managerThird;

  public RectAppsCard(Context paramContext)
  {
    super(paramContext, CardType.RECT_APPS);
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
        this.managerFirst.setDownloadClick(this.downLayoutListener);
        this.managerFirst.applCard(localAppInfoEntity1);
        this.holder.firstRect.setTag(localAppInfoEntity1);
        this.holder.firstRect.setVisibility(0);
        if (i >= 2)
        {
          AppInfoEntity localAppInfoEntity4 = (AppInfoEntity)localCardEntity.getAppItemList().get(1);
          this.managerSecond.setDownloadClick(this.downLayoutListener);
          this.managerSecond.applCard(localAppInfoEntity4);
          this.holder.secRect.setTag(localAppInfoEntity4);
          this.holder.secRect.setVisibility(0);
        }
        if (i >= 3)
        {
          AppInfoEntity localAppInfoEntity3 = (AppInfoEntity)localCardEntity.getAppItemList().get(2);
          this.managerThird.setDownloadClick(this.downLayoutListener);
          this.managerThird.applCard(localAppInfoEntity3);
          this.holder.thirdRect.setTag(localAppInfoEntity3);
          this.holder.thirdRect.setVisibility(0);
        }
        if (i >= 4)
        {
          AppInfoEntity localAppInfoEntity2 = (AppInfoEntity)localCardEntity.getAppItemList().get(3);
          this.managerFourth.setDownloadClick(this.downLayoutListener);
          this.managerFourth.applCard(localAppInfoEntity2);
          this.holder.fourthRect.setTag(localAppInfoEntity2);
          this.holder.fourthRect.setVisibility(0);
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
    this.contentView = this.mInflater.inflate(2130903065, null);
    addView(this.contentView, new LinearLayout.LayoutParams(-1, -2));
    this.holder = new Holder(null);
    this.holder.topicName = ((TextView)this.contentView.findViewById(2131099789));
    this.holder.firstRect = this.contentView.findViewById(2131099784);
    this.holder.secRect = this.contentView.findViewById(2131099785);
    this.holder.thirdRect = this.contentView.findViewById(2131099786);
    this.holder.fourthRect = this.contentView.findViewById(2131099787);
    this.holder.more = ((TextView)this.contentView.findViewById(2131099788));
    this.managerFirst = new BaseCardManager(this.mContext, this.holder.firstRect, this.downLayoutListener, 0);
    this.managerSecond = new BaseCardManager(this.mContext, this.holder.secRect, this.downLayoutListener, 0);
    this.managerThird = new BaseCardManager(this.mContext, this.holder.thirdRect, this.downLayoutListener, 0);
    this.managerFourth = new BaseCardManager(this.mContext, this.holder.fourthRect, this.downLayoutListener, 0);
    this.holder.firstRect.setOnClickListener(this);
    this.holder.secRect.setOnClickListener(this);
    this.holder.thirdRect.setOnClickListener(this);
    this.holder.fourthRect.setOnClickListener(this);
    this.holder.firstRect.setVisibility(8);
    this.holder.secRect.setVisibility(8);
    this.holder.thirdRect.setVisibility(8);
    this.holder.fourthRect.setVisibility(8);
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131099788)
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
    View firstRect;
    View fourthRect;
    TextView more;
    View secRect;
    View thirdRect;
    TextView topicName;

    private Holder()
    {
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.card.RectAppsCard
 * JD-Core Version:    0.6.2
 */