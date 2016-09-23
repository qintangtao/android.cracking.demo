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
import android.widget.ListView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Mode;
import com.handmark.pulltorefresh.library.PullToRefreshBase.OnRefreshListener2;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.lidroid.xutils.ViewUtils;
import com.lidroid.xutils.view.annotation.ViewInject;
import com.youqicai.AppStore.adapter.CardAdapter;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.entity.CardEntity;
import com.youqicai.AppStore.entity.ResultCardEntity;
import com.youqicai.AppStore.parser.BaseCardParser;
import com.youqicai.AppStore.receiver.InstallReceiver;
import com.youqicai.AppStore.receiver.InstallReceiver.AppInstallListener;
import com.youqicai.http.HttpUtil;
import com.youqicai.http.TaskEntity;
import com.youqicai.http.TaskEntity.OnResultListener;
import com.youqicai.manager.ApkManager;
import com.youqicai.manager.DownLoadManager;
import com.youqicai.widget.FailLoadingView;
import com.youqicai.widget.LoadingView;
import java.util.ArrayList;
import java.util.List;

public final class CategoryListFragment extends Fragment
  implements TaskEntity.OnResultListener, PullToRefreshBase.OnRefreshListener2<ListView>, InstallReceiver.AppInstallListener
{
  protected static final int FAILLOUDING = 1;
  protected static final int LOADING = 0;
  protected static final int LOAD_MORE = 1;
  protected static final int LOAD_REFRESH = 0;
  public static final int SHOW_DATA_LIST = 0;
  public static final int SHOW_DATA_LIST_ALL = 1;
  public static final int SHOW_DATA_LIST_NULL = 2;
  protected static final int SUCCESS = 2;
  private static final String URL = "URL";
  CardAdapter cardAdapter;
  private String currentDataUrl;

  @ViewInject(2131099675)
  FailLoadingView failLoadingView;

  @ViewInject(2131099674)
  LoadingView loadingView;
  public Context mContext;
  private List<CardEntity> mDataList = new ArrayList();
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
      List localList;
      do
      {
        return;
        CategoryListFragment.this.cardAdapter.setAll(CategoryListFragment.this.mDataList);
        CategoryListFragment.this.cardAdapter.notifyDataSetChanged();
        CategoryListFragment.this.setViewShowStatus(2);
        return;
        localList = (List)paramAnonymousMessage.obj;
      }
      while (localList == null);
      CategoryListFragment.this.mDataList.addAll(localList);
      CategoryListFragment.this.cardAdapter.setAll(CategoryListFragment.this.mDataList);
      CategoryListFragment.this.cardAdapter.notifyDataSetChanged();
      CategoryListFragment.this.setViewShowStatus(2);
    }
  };
  private int pageNo = 1;

  @ViewInject(2131099677)
  PullToRefreshListView pullToRefreshListView;

  public static CategoryListFragment newInstance(String paramString)
  {
    CategoryListFragment localCategoryListFragment = new CategoryListFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("URL", paramString);
    localCategoryListFragment.setArguments(localBundle);
    return localCategoryListFragment;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.mContext = getActivity();
    this.pullToRefreshListView.setMode(PullToRefreshBase.Mode.BOTH);
    this.pullToRefreshListView.setOnRefreshListener(this);
    this.cardAdapter = new CardAdapter(this.mContext);
    this.pullToRefreshListView.setAdapter(this.cardAdapter);
    this.pageNo = 1;
    HttpUtil.AddTaskToQueueHead(this.currentDataUrl + "&pageNo=" + this.pageNo, 0, new BaseCardParser(), this);
    setViewShowStatus(0);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.currentDataUrl = getArguments().getString("URL");
    InstallReceiver.registAppInstallListener(this);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903076, paramViewGroup, false);
    ViewUtils.inject(this, localView);
    return localView;
  }

  public void onDestroy()
  {
    InstallReceiver.unregistAppInstallListener(this);
    super.onDestroy();
  }

  public void onError(Object paramObject)
  {
    this.pullToRefreshListView.onRefreshComplete();
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
          AppInfoEntity localAppInfoEntity2 = ((CardEntity)this.mDataList.get(j)).getSingleAppItem();
          if ((localAppInfoEntity2 == null) || (!str2.equals(localAppInfoEntity2.getPackageName())))
            break label140;
          localAppInfoEntity2.setAppStatus(6);
          Message localMessage2 = this.mHandler.obtainMessage();
          localMessage2.what = 0;
          this.mHandler.sendMessage(localMessage2);
        }
      }
    while (true)
    {
      return;
      label140: j++;
      break;
      if (((str1 == "android.intent.action.UNINSTALL_PACKAGE") || (str1 == "android.intent.action.PACKAGE_REMOVED")) && (str2 != null) && (this.mDataList != null) && (this.mDataList.size() > 0))
        for (int i = 0; i < this.mDataList.size(); i++)
        {
          AppInfoEntity localAppInfoEntity1 = ((CardEntity)this.mDataList.get(i)).getSingleAppItem();
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
    this.pageNo = 1;
    HttpUtil.AddTaskToQueueHead(this.currentDataUrl + "&pageNo=" + this.pageNo, 0, new BaseCardParser(), this);
  }

  public void onPullUpToRefresh(PullToRefreshBase paramPullToRefreshBase)
  {
    HttpUtil.AddTaskToQueueHead(this.currentDataUrl + "&pageNo=" + this.pageNo, 1, new BaseCardParser(), this);
  }

  public void onResult(Object paramObject)
  {
    TaskEntity localTaskEntity = (TaskEntity)paramObject;
    ResultCardEntity localResultCardEntity = (ResultCardEntity)localTaskEntity.outObject;
    int i = localTaskEntity.taskId;
    if (i == 0)
    {
      List localList2 = localResultCardEntity.cardEntityList;
      this.mDataList.clear();
      this.cardAdapter.clear();
      if (localList2.size() != 0)
        new DataThread(localList2).start();
      this.pageNo = (1 + this.pageNo);
    }
    while (!localResultCardEntity.hasNext)
    {
      this.pullToRefreshListView.onRefreshComplete();
      this.pullToRefreshListView.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
      return;
      if (i == 1)
      {
        List localList1 = localResultCardEntity.cardEntityList;
        if (localList1.size() != 0)
          new DataThread(localList1).start();
        this.pageNo = (1 + this.pageNo);
      }
    }
    this.pullToRefreshListView.onRefreshComplete();
    this.pullToRefreshListView.setMode(PullToRefreshBase.Mode.BOTH);
  }

  public void onResume()
  {
    new CheckDownloadStatusThread().start();
    super.onResume();
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
  }

  protected void setViewShowStatus(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
      this.loadingView.setVisibility(0);
      this.failLoadingView.setVisibility(8);
      return;
    case 1:
      this.loadingView.setVisibility(8);
      this.failLoadingView.setVisibility(0);
      return;
    case 2:
    }
    this.pullToRefreshListView.onRefreshComplete();
    this.loadingView.setVisibility(8);
    this.failLoadingView.setVisibility(8);
  }

  public class CheckDownloadStatusThread extends Thread
  {
    public CheckDownloadStatusThread()
    {
    }

    public void run()
    {
      if ((CategoryListFragment.this.mDataList != null) && (CategoryListFragment.this.mDataList.size() > 0))
      {
        ArrayList localArrayList = new ArrayList();
        int i = 0;
        if (i < CategoryListFragment.this.mDataList.size())
        {
          AppInfoEntity localAppInfoEntity = ((CardEntity)CategoryListFragment.this.mDataList.get(i)).getSingleAppItem();
          if (localAppInfoEntity != null)
            localArrayList.add(localAppInfoEntity);
          while (true)
          {
            i++;
            break;
            List localList = ((CardEntity)CategoryListFragment.this.mDataList.get(i)).getAppItemList();
            if ((localList != null) && (localList.size() != 0))
              localArrayList.addAll(localList);
          }
        }
        ApkManager.getInstance().checkDownloadStatus(localArrayList);
        Message localMessage = Message.obtain();
        localMessage.what = 0;
        CategoryListFragment.this.mHandler.sendMessage(localMessage);
      }
      super.run();
    }
  }

  public class DataThread extends Thread
  {
    List<CardEntity> entityList;

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
        ArrayList localArrayList = new ArrayList();
        int i = 0;
        if (i < this.entityList.size())
        {
          AppInfoEntity localAppInfoEntity = ((CardEntity)this.entityList.get(i)).getSingleAppItem();
          if (localAppInfoEntity != null)
            localArrayList.add(localAppInfoEntity);
          while (true)
          {
            i++;
            break;
            List localList = ((CardEntity)this.entityList.get(i)).getAppItemList();
            if ((localList != null) && (localList.size() != 0))
              localArrayList.addAll(localList);
          }
        }
        ApkManager.getInstance().checkDownloadStatus(localArrayList);
        localMessage.what = 1;
        localMessage.obj = this.entityList;
        CategoryListFragment.this.mHandler.sendMessage(localMessage);
      }
      while (true)
      {
        super.run();
        return;
        localMessage.what = 2;
        CategoryListFragment.this.mHandler.sendMessage(localMessage);
      }
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.fragment.CategoryListFragment
 * JD-Core Version:    0.6.2
 */