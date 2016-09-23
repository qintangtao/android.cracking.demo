package com.youqicai.AppStore.adapter;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Toast;
import com.hsg.sdk.common.util.ConnectionUtil;
import com.youqicai.AppStore.card.BaseCardManager;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.item.BaseItemView;
import com.youqicai.AppStore.item.DownloadingApkItemView;
import com.youqicai.AppStore.item.HistoryApkItemView;
import com.youqicai.AppStore.utils.BaseUtils;
import com.youqicai.manager.ApkManager;
import com.youqicai.manager.BaseDbAdapter;
import com.youqicai.manager.DownLoadManager;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

public class TabDownLoadApkAdpter extends BaseAdapter
{
  private static int DOWNLOADING = 0;
  private static int HISTORYAPP = 1;
  private int MAXSTYLE = 3;
  private Context context;
  View.OnClickListener downLayoutListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      Log.e("doll", "-------------------------history--------------------");
      TabDownLoadApkAdpter.access$002(TabDownLoadApkAdpter.this, (BaseCardManager)paramAnonymousView.getTag());
      AppInfoEntity localAppInfoEntity = TabDownLoadApkAdpter.this.manager.getAppInfoEntity();
      switch (localAppInfoEntity.getAppStatus())
      {
      default:
      case 0:
      case 2:
      case 1:
      case 4:
        do
        {
          return;
          if (!ConnectionUtil.isConnected(TabDownLoadApkAdpter.this.context))
          {
            BaseUtils.showTost(TabDownLoadApkAdpter.this.context, 2131492875);
            return;
          }
          localAppInfoEntity.setAppStatus(2);
          TabDownLoadApkAdpter.this.manager.setAppStatus(localAppInfoEntity.getAppStatus());
          localAppInfoEntity.setDownloadTime(String.valueOf(System.currentTimeMillis()));
          BaseDbAdapter.getInstance(TabDownLoadApkAdpter.this.context).saveDownloadAppInfo(localAppInfoEntity);
          return;
          localAppInfoEntity.setAppStatus(3);
          BaseDbAdapter.getInstance(TabDownLoadApkAdpter.this.context).updateDownloadAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getAppStatus());
          BaseDbAdapter.getInstance(TabDownLoadApkAdpter.this.context).updateDownloadProgressAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getdownloadProgress());
          DownLoadManager.getInstance().stopDownload(localAppInfoEntity.getApkUrl());
          DownLoadManager.getInstance().unregisterReceivedNotifyListener(localAppInfoEntity.getApkUrl());
          TabDownLoadApkAdpter.this.manager.setAppStatus(localAppInfoEntity.getAppStatus());
          return;
          localAppInfoEntity.setAppStatus(3);
          BaseDbAdapter.getInstance(TabDownLoadApkAdpter.this.context).updateDownloadAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getAppStatus());
          BaseDbAdapter.getInstance(TabDownLoadApkAdpter.this.context).updateDownloadProgressAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getdownloadProgress());
          DownLoadManager.getInstance().stopDownload(localAppInfoEntity.getApkUrl());
          DownLoadManager.getInstance().unregisterReceivedNotifyListener(localAppInfoEntity.getApkUrl());
          TabDownLoadApkAdpter.this.manager.setAppStatus(localAppInfoEntity.getAppStatus());
          return;
          String str = ApkManager.getInstance().getApkPath() + File.separator + localAppInfoEntity.getPackageName() + ".apk";
          if (ApkManager.isValidApk(TabDownLoadApkAdpter.this.context, str))
          {
            ApkManager.getInstance().installApk(TabDownLoadApkAdpter.this.context, localAppInfoEntity.getPackageName() + ".apk");
            return;
          }
          Toast.makeText(TabDownLoadApkAdpter.this.context, "未找到安装文件", 0).show();
        }
        while (!ConnectionUtil.isConnected(TabDownLoadApkAdpter.this.context));
        localAppInfoEntity.setAppStatus(2);
        TabDownLoadApkAdpter.this.manager.setAppStatus(localAppInfoEntity.getAppStatus());
        localAppInfoEntity.setDownloadTime(String.valueOf(System.currentTimeMillis()));
        BaseDbAdapter.getInstance(TabDownLoadApkAdpter.this.context).saveDownloadAppInfo(localAppInfoEntity);
        return;
      case 6:
        ApkManager.getInstance().startApk(TabDownLoadApkAdpter.this.context, localAppInfoEntity.getPackageName());
        return;
      case 5:
        localAppInfoEntity.setAppStatus(2);
        TabDownLoadApkAdpter.this.manager.setAppStatus(localAppInfoEntity.getAppStatus());
        localAppInfoEntity.setDownloadTime(String.valueOf(System.currentTimeMillis()));
        BaseDbAdapter.getInstance(TabDownLoadApkAdpter.this.context).saveDownloadAppInfo(localAppInfoEntity);
        return;
      case 3:
      }
      localAppInfoEntity.setAppStatus(2);
      BaseDbAdapter.getInstance(TabDownLoadApkAdpter.this.context).updateDownloadAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getAppStatus());
      TabDownLoadApkAdpter.this.manager.setAppStatus(localAppInfoEntity.getAppStatus());
    }
  };
  int downloadingCount = 0;
  int historyCount = 0;
  private ArrayList<AppInfoEntity> mData;
  private Handler mHandler;
  private BaseCardManager manager;

  public TabDownLoadApkAdpter(Context paramContext, Handler paramHandler)
  {
    this.context = paramContext;
    this.mHandler = paramHandler;
  }

  private void initCount()
  {
    this.historyCount = 0;
    this.downloadingCount = 0;
    int i = 0;
    if ((this.mData != null) && (this.mData.size() > 0))
    {
      Iterator localIterator = this.mData.iterator();
      if (localIterator.hasNext())
      {
        ((AppInfoEntity)localIterator.next());
        if (getItemViewType(i) == HISTORYAPP)
          this.historyCount = (1 + this.historyCount);
        while (true)
        {
          i++;
          break;
          this.downloadingCount = (1 + this.downloadingCount);
        }
      }
    }
  }

  public int getCount()
  {
    if (this.mData != null)
      return this.mData.size();
    return 0;
  }

  public Object getItem(int paramInt)
  {
    if (this.mData != null)
      return (AppInfoEntity)this.mData.get(paramInt);
    return null;
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public int getItemViewType(int paramInt)
  {
    if ((this.mData != null) && (this.mData.size() > paramInt))
    {
      AppInfoEntity localAppInfoEntity = (AppInfoEntity)this.mData.get(paramInt);
      if ((localAppInfoEntity.getAppStatus() == 4) || (localAppInfoEntity.getAppStatus() == 5) || (localAppInfoEntity.getAppStatus() == 6))
        return HISTORYAPP;
      return DOWNLOADING;
    }
    return -1;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      if (getItemViewType(paramInt) == DOWNLOADING)
      {
        paramView = new DownloadingApkItemView(this.context, null);
        ((BaseItemView)paramView).applyData(this.mData.get(paramInt));
        if (paramInt != 0)
          break label240;
        if (getItemViewType(paramInt) != DOWNLOADING)
          break label219;
        ((DownloadingApkItemView)paramView).showHeadView(this.downloadingCount);
        if ((paramView instanceof DownloadingApkItemView))
          ((DownloadingApkItemView)paramView).showHeadView(this.downloadingCount);
      }
    while (true)
    {
      if (getItemViewType(paramInt) != getItemViewType(paramInt + 1))
      {
        if (getItemViewType(paramInt) == DOWNLOADING)
          ((DownloadingApkItemView)paramView).showBottomLine();
        if (getItemViewType(paramInt) == HISTORYAPP)
          ((HistoryApkItemView)paramView).showBottomLine();
      }
      return paramView;
      paramView = new HistoryApkItemView(this.context, this.downLayoutListener);
      break;
      if (getItemViewType(paramInt) == DOWNLOADING)
      {
        if ((paramView instanceof DownloadingApkItemView))
          break;
        paramView = new DownloadingApkItemView(this.context, null);
        break;
      }
      if ((paramView instanceof HistoryApkItemView))
        break;
      paramView = new HistoryApkItemView(this.context, this.downLayoutListener);
      break;
      label219: if ((paramView instanceof HistoryApkItemView))
      {
        ((HistoryApkItemView)paramView).showHeadView(this.historyCount);
        continue;
        label240: if ((getItemViewType(paramInt) != getItemViewType(paramInt - 1)) && (getItemViewType(paramInt) == HISTORYAPP))
        {
          if (!(paramView instanceof HistoryApkItemView))
            paramView = new HistoryApkItemView(this.context, this.downLayoutListener);
          ((HistoryApkItemView)paramView).showHeadView(this.historyCount);
        }
      }
    }
  }

  public int getViewTypeCount()
  {
    return this.MAXSTYLE;
  }

  public void setData(ArrayList<AppInfoEntity> paramArrayList)
  {
    this.mData = paramArrayList;
    initCount();
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.adapter.TabDownLoadApkAdpter
 * JD-Core Version:    0.6.2
 */