package com.youqicai.AppStore.fragment;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Mode;
import com.handmark.pulltorefresh.library.PullToRefreshBase.OnRefreshListener2;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.lidroid.xutils.ViewUtils;
import com.lidroid.xutils.view.annotation.ViewInject;
import com.youqicai.AppStore.adapter.AppInfoAdapter;
import com.youqicai.AppStore.config.BuildUrl;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.entity.ResultAppInfoEntity;
import com.youqicai.AppStore.parser.UpdateParser;
import com.youqicai.AppStore.receiver.InstallReceiver;
import com.youqicai.AppStore.receiver.InstallReceiver.AppInstallListener;
import com.youqicai.AppStore.utils.BaseUtils;
import com.youqicai.http.HttpUtil;
import com.youqicai.http.TaskEntity;
import com.youqicai.http.TaskEntity.OnResultListener;
import com.youqicai.manager.ApkManager;
import com.youqicai.manager.DownLoadManager;
import com.youqicai.widget.FailLoadingView;
import com.youqicai.widget.LoadingView;
import com.youqicai.widget.RefreshListener;
import java.util.ArrayList;

public class HotBoardFragment extends BaseFragment
  implements TaskEntity.OnResultListener, PullToRefreshBase.OnRefreshListener2, InstallReceiver.AppInstallListener, RefreshListener
{
  private static final String ARG_POSITION = "position";
  private static final String RANK_TYPE_HOT = "hot";
  AppInfoAdapter appInfoAdapter;

  @ViewInject(2131099675)
  FailLoadingView failLoadingView;

  @ViewInject(2131099674)
  LoadingView loadingView;
  private Context mContext;
  private ArrayList<AppInfoEntity> mDataList = new ArrayList();
  public Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      super.handleMessage(paramAnonymousMessage);
      switch (paramAnonymousMessage.what)
      {
      default:
      case 0:
      case 1:
      }
      ArrayList localArrayList;
      do
      {
        return;
        HotBoardFragment.this.appInfoAdapter.setAll(HotBoardFragment.this.mDataList);
        HotBoardFragment.this.appInfoAdapter.notifyDataSetChanged();
        HotBoardFragment.this.setViewShowStatus(2);
        return;
        localArrayList = (ArrayList)paramAnonymousMessage.obj;
      }
      while (localArrayList == null);
      HotBoardFragment.this.mDataList.addAll(localArrayList);
      for (int i = 0; i < HotBoardFragment.this.mDataList.size(); i++)
        ((AppInfoEntity)HotBoardFragment.this.mDataList.get(i)).setRank(i + 1);
      HotBoardFragment.this.appInfoAdapter.setAll(HotBoardFragment.this.mDataList);
      HotBoardFragment.this.appInfoAdapter.notifyDataSetChanged();
      HotBoardFragment.this.setViewShowStatus(2);
    }
  };
  private int mPosition;
  private int pageNo = 1;

  @ViewInject(2131099677)
  PullToRefreshListView pullToRefreshListView;

  public static Fragment newInstance(int paramInt)
  {
    HotBoardFragment localHotBoardFragment = new HotBoardFragment();
    Bundle localBundle = new Bundle();
    localBundle.putInt("position", paramInt);
    localHotBoardFragment.setArguments(localBundle);
    return localHotBoardFragment;
  }

  private void setViewShowStatus(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
      do
      {
        do
        {
          return;
          if (this.loadingView != null)
            this.loadingView.setVisibility(0);
        }
        while (this.failLoadingView == null);
        this.failLoadingView.setVisibility(8);
        return;
        if (this.loadingView != null)
          this.loadingView.setVisibility(8);
      }
      while (this.failLoadingView == null);
      this.failLoadingView.setVisibility(0);
      return;
    case 2:
    }
    this.loadingView.setVisibility(8);
    this.failLoadingView.setVisibility(8);
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.mContext = getActivity();
    this.appInfoAdapter = new AppInfoAdapter(this.mContext);
    this.pullToRefreshListView.setMode(PullToRefreshBase.Mode.PULL_FROM_END);
    this.pullToRefreshListView.setOnRefreshListener(this);
    this.pullToRefreshListView.setAdapter(this.appInfoAdapter);
    HttpUtil.AddTaskToQueueHead(BuildUrl.buildBillBoard("hot", this.pageNo), 0, new UpdateParser(), this);
    setViewShowStatus(0);
    this.failLoadingView.setListener(this);
  }

  public void onClickRefresh()
  {
    this.pageNo = 1;
    HttpUtil.AddTaskToQueueHead(BuildUrl.buildBillBoard("hot", this.pageNo), 0, new UpdateParser(), this);
    setViewShowStatus(0);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mPosition = getArguments().getInt("position");
    InstallReceiver.registAppInstallListener(this);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903076, paramViewGroup, false);
    ViewUtils.inject(this, localView);
    this.pageNo = 1;
    return localView;
  }

  public void onDestroy()
  {
    InstallReceiver.unregistAppInstallListener(this);
    super.onDestroy();
  }

  public void onError(Object paramObject)
  {
    if (this.mDataList.size() == 0)
      setViewShowStatus(1);
  }

  public void onInstallReceive(Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    Uri localUri = paramIntent.getData();
    String str2 = null;
    if (localUri != null)
      str2 = localUri.getSchemeSpecificPart();
    int j;
    if (str1 == "android.intent.action.PACKAGE_ADDED")
      if ((str2 != null) && (this.mDataList != null) && (this.mDataList.size() > 0))
      {
        j = 0;
        if (j < this.mDataList.size())
        {
          AppInfoEntity localAppInfoEntity2 = (AppInfoEntity)this.mDataList.get(j);
          if ((localAppInfoEntity2 == null) || (!str2.equals(localAppInfoEntity2.getPackageName())))
            break label131;
          localAppInfoEntity2.setAppStatus(6);
          Message localMessage2 = this.mHandler.obtainMessage();
          localMessage2.what = 0;
          this.mHandler.sendMessage(localMessage2);
        }
      }
    while (true)
    {
      return;
      label131: j++;
      break;
      if (((str1 == "android.intent.action.UNINSTALL_PACKAGE") || (str1 == "android.intent.action.PACKAGE_REMOVED")) && (str2 != null) && (this.mDataList != null) && (this.mDataList.size() > 0))
        for (int i = 0; i < this.mDataList.size(); i++)
        {
          AppInfoEntity localAppInfoEntity1 = (AppInfoEntity)this.mDataList.get(i);
          if ((localAppInfoEntity1 != null) && (str2.equals(localAppInfoEntity1.getPackageName())))
          {
            localAppInfoEntity1.setAppStatus(0);
            localAppInfoEntity1.setdownloadProgress(0.0F);
            Message localMessage1 = this.mHandler.obtainMessage();
            localMessage1.what = 0;
            this.mHandler.sendMessage(localMessage1);
            return;
          }
        }
    }
  }

  public void onPause()
  {
    DownLoadManager.getInstance().cleanListener();
    super.onPause();
  }

  public void onPullDownToRefresh(PullToRefreshBase paramPullToRefreshBase)
  {
  }

  public void onPullUpToRefresh(PullToRefreshBase paramPullToRefreshBase)
  {
    HttpUtil.AddTaskToQueueHead(BuildUrl.buildBillBoard("hot", this.pageNo), 1, new UpdateParser(), this);
  }

  public void onResult(Object paramObject)
  {
    TaskEntity localTaskEntity = (TaskEntity)paramObject;
    ResultAppInfoEntity localResultAppInfoEntity = (ResultAppInfoEntity)localTaskEntity.outObject;
    int i = localTaskEntity.taskId;
    if (i == 0)
    {
      ArrayList localArrayList2 = localResultAppInfoEntity.appInfoEntityList;
      this.mDataList.clear();
      this.appInfoAdapter.clear();
      if (localArrayList2.size() != 0)
        new DataThread(localArrayList2).start();
      this.pageNo = (1 + this.pageNo);
    }
    while (!localResultAppInfoEntity.hasNext)
    {
      BaseUtils.showTost(this.mContext, "到底了~");
      this.pullToRefreshListView.onRefreshComplete();
      this.pullToRefreshListView.setEnabled(false);
      return;
      if (i == 1)
      {
        ArrayList localArrayList1 = localResultAppInfoEntity.appInfoEntityList;
        if (localArrayList1.size() != 0)
          new DataThread(localArrayList1).start();
        this.pageNo = (1 + this.pageNo);
      }
    }
    this.pullToRefreshListView.onRefreshComplete();
    this.pullToRefreshListView.setEnabled(true);
    this.pullToRefreshListView.setMode(PullToRefreshBase.Mode.PULL_FROM_END);
  }

  public void onResume()
  {
    new CheckDownloadStatusThread().start();
    super.onResume();
  }

  public class CheckDownloadStatusThread extends Thread
  {
    public CheckDownloadStatusThread()
    {
    }

    public void run()
    {
      if ((HotBoardFragment.this.mDataList != null) && (HotBoardFragment.this.mDataList.size() > 0))
      {
        ArrayList localArrayList = HotBoardFragment.this.mDataList;
        ApkManager.getInstance().checkDownloadStatus(localArrayList);
        Message localMessage = Message.obtain();
        localMessage.what = 0;
        HotBoardFragment.this.mHandler.sendMessage(localMessage);
      }
      super.run();
    }
  }

  public class DataThread extends Thread
  {
    ArrayList<AppInfoEntity> entityList;

    public DataThread()
    {
      Object localObject;
      this.entityList = localObject;
    }

    public void run()
    {
      Message localMessage = Message.obtain();
      if (this.entityList != null)
      {
        ArrayList localArrayList = this.entityList;
        ApkManager.getInstance().checkDownloadStatus(localArrayList);
        localMessage.what = 1;
        localMessage.obj = this.entityList;
        HotBoardFragment.this.mHandler.sendMessage(localMessage);
      }
      while (true)
      {
        super.run();
        return;
        localMessage.what = 2;
        HotBoardFragment.this.mHandler.sendMessage(localMessage);
      }
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.fragment.HotBoardFragment
 * JD-Core Version:    0.6.2
 */