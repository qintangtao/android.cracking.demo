package com.youqicai.AppStore;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Mode;
import com.handmark.pulltorefresh.library.PullToRefreshBase.OnRefreshListener2;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.lidroid.xutils.ViewUtils;
import com.lidroid.xutils.view.annotation.ContentView;
import com.lidroid.xutils.view.annotation.ViewInject;
import com.lidroid.xutils.view.annotation.event.OnClick;
import com.youqicai.AppStore.adapter.CardAdapter;
import com.youqicai.AppStore.adapter.MustAdapter;
import com.youqicai.AppStore.config.BuildUrl;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.entity.CardEntity;
import com.youqicai.AppStore.entity.ResultCardEntity;
import com.youqicai.AppStore.parser.BaseCardParser;
import com.youqicai.AppStore.parser.MustAppParser;
import com.youqicai.AppStore.receiver.InstallReceiver;
import com.youqicai.AppStore.receiver.InstallReceiver.AppInstallListener;
import com.youqicai.PhoneHelper.PreferencesHelper;
import com.youqicai.http.HttpUtil;
import com.youqicai.http.TaskEntity;
import com.youqicai.http.TaskEntity.OnResultListener;
import com.youqicai.manager.ApkManager;
import com.youqicai.manager.BaseDbAdapter;
import com.youqicai.manager.DownLoadManager;
import com.youqicai.widget.FailLoadingView;
import com.youqicai.widget.LoadingView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@ContentView(2130903043)
public class GeneralActivity extends BaseActivity
  implements InstallReceiver.AppInstallListener, TaskEntity.OnResultListener, PullToRefreshBase.OnRefreshListener2
{
  CardAdapter cardAdapter;
  String dataUrl = "";

  @ViewInject(2131099675)
  FailLoadingView failLoadingView;

  @ViewInject(2131099674)
  LoadingView loadingView;
  private List<CardEntity> mDataList = new ArrayList();
  public Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      super.handleMessage(paramAnonymousMessage);
      switch (paramAnonymousMessage.what)
      {
      case 2:
      default:
      case 0:
      case 1:
        List localList;
        do
        {
          return;
          GeneralActivity.this.cardAdapter.setAll(GeneralActivity.this.mDataList);
          GeneralActivity.this.cardAdapter.notifyDataSetChanged();
          GeneralActivity.this.setViewShowStatus(2);
          return;
          localList = (List)paramAnonymousMessage.obj;
        }
        while (localList == null);
        GeneralActivity.this.mDataList.addAll(localList);
        GeneralActivity.this.cardAdapter.setAll(GeneralActivity.this.mDataList);
        GeneralActivity.this.cardAdapter.notifyDataSetChanged();
        GeneralActivity.this.setViewShowStatus(2);
        return;
      case 3:
      }
      try
      {
        Intent localIntent = new Intent(GeneralActivity.this.context, BindActivity.class);
        GeneralActivity.this.context.startActivity(localIntent);
        return;
      }
      catch (Exception localException)
      {
      }
    }
  };
  private MustAdapter mustAdapter;
  private MustPopWindow mustPopWindow;

  @ViewInject(2131099669)
  TextView name;

  @ViewInject(2131099670)
  LinearLayout necessaryLayout;
  private int pageNo = 1;

  @ViewInject(2131099677)
  PullToRefreshListView pullToRefreshListView;

  @OnClick({2131099670})
  public void clickLayout(View paramView)
  {
    HttpUtil.AddTaskToQueueHead("http://mapp.youqicai.com/api?action=akeyapp", 100, new MustAppParser(), this);
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    ViewUtils.inject(this);
    this.dataUrl = getIntent().getStringExtra("dataUrl");
    String str = getIntent().getStringExtra("title");
    if (str.equals("必备"))
      this.necessaryLayout.setVisibility(0);
    while (true)
    {
      this.name.setText(str);
      if (!TextUtils.isEmpty(this.dataUrl))
        HttpUtil.AddTaskToQueueHead(BuildUrl.buildDataUrlPageNo(this.dataUrl, this.pageNo), 0, new BaseCardParser(), this);
      this.pullToRefreshListView.setOnRefreshListener(this);
      this.pullToRefreshListView.setMode(PullToRefreshBase.Mode.BOTH);
      this.cardAdapter = new CardAdapter(this);
      this.pullToRefreshListView.setAdapter(this.cardAdapter);
      InstallReceiver.registAppInstallListener(this);
      return;
      this.necessaryLayout.setVisibility(8);
    }
  }

  public void onError(Object paramObject)
  {
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
    HttpUtil.AddTaskToQueueHead(BuildUrl.buildDataUrlPageNo(this.dataUrl, this.pageNo), 0, new BaseCardParser(), this);
  }

  public void onPullUpToRefresh(PullToRefreshBase paramPullToRefreshBase)
  {
    HttpUtil.AddTaskToQueueHead(BuildUrl.buildDataUrlPageNo(this.dataUrl, this.pageNo), 1, new BaseCardParser(), this);
  }

  public void onResult(Object paramObject)
  {
    TaskEntity localTaskEntity = (TaskEntity)paramObject;
    int i = localTaskEntity.taskId;
    if (i == 100)
    {
      this.mustPopWindow = new MustPopWindow(this, (List)localTaskEntity.outObject);
      this.mustPopWindow.showAtLocation(this.pullToRefreshListView, 81, 0, 0);
      return;
    }
    ResultCardEntity localResultCardEntity = (ResultCardEntity)localTaskEntity.outObject;
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
      if ((GeneralActivity.this.mDataList != null) && (GeneralActivity.this.mDataList.size() > 0))
      {
        ArrayList localArrayList = new ArrayList();
        for (int i = 0; i < GeneralActivity.this.mDataList.size(); i++)
        {
          AppInfoEntity localAppInfoEntity = ((CardEntity)GeneralActivity.this.mDataList.get(i)).getSingleAppItem();
          if (localAppInfoEntity != null)
            localArrayList.add(localAppInfoEntity);
        }
        ApkManager.getInstance().checkDownloadStatus(localArrayList);
        Message localMessage = Message.obtain();
        localMessage.what = 0;
        GeneralActivity.this.mHandler.sendMessage(localMessage);
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
        for (int i = 0; i < this.entityList.size(); i++)
        {
          AppInfoEntity localAppInfoEntity = ((CardEntity)this.entityList.get(i)).getSingleAppItem();
          if (localAppInfoEntity != null)
            localArrayList.add(localAppInfoEntity);
        }
        ApkManager.getInstance().checkDownloadStatus(localArrayList);
        localMessage.what = 1;
        localMessage.obj = this.entityList;
        GeneralActivity.this.mHandler.sendMessage(localMessage);
      }
      while (true)
      {
        super.run();
        return;
        localMessage.what = 2;
        GeneralActivity.this.mHandler.sendMessage(localMessage);
      }
    }
  }

  private class MustPopWindow extends PopupWindow
  {
    public MustPopWindow(List<AppInfoEntity> arg2)
    {
      super();
      final View localView = ((LayoutInflater)localContext.getSystemService("layout_inflater")).inflate(2130903092, null);
      setContentView(localView);
      setWidth(-1);
      setHeight(-2);
      setFocusable(true);
      setAnimationStyle(2131427346);
      setBackgroundDrawable(new ColorDrawable(-1342177280));
      ((GridView)localView.findViewById(2131099750)).setAdapter(GeneralActivity.this.mustAdapter);
      ((ImageView)localView.findViewById(2131099672)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          GeneralActivity.MustPopWindow.this.dismiss();
        }
      });
      ((Button)localView.findViewById(2131099690)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          List localList = GeneralActivity.this.mustAdapter.getCheckedList();
          if (localList.size() != 0)
          {
            Iterator localIterator = localList.iterator();
            while (localIterator.hasNext())
            {
              AppInfoEntity localAppInfoEntity = (AppInfoEntity)localIterator.next();
              localAppInfoEntity.setAppStatus(2);
              BaseDbAdapter.getInstance(localContext).updateDownloadAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getAppStatus());
              localAppInfoEntity.setDownloadTime(String.valueOf(System.currentTimeMillis()));
              BaseDbAdapter.getInstance(localContext).saveDownloadAppInfo(localAppInfoEntity);
              DownLoadManager.getInstance().startDownload(localAppInfoEntity);
            }
          }
          if (!PreferencesHelper.getInstance(localContext).isAssisAutoInstallSwitch())
          {
            Intent localIntent = new Intent("android.settings.ACCESSIBILITY_SETTINGS");
            GeneralActivity.this.startActivity(localIntent);
            GeneralActivity.this.mHandler.sendEmptyMessageDelayed(3, 600L);
          }
          GeneralActivity.MustPopWindow.this.dismiss();
        }
      });
      localView.setOnTouchListener(new View.OnTouchListener()
      {
        public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          int i = localView.findViewById(2131099746).getTop();
          int j = (int)paramAnonymousMotionEvent.getY();
          if ((paramAnonymousMotionEvent.getAction() == 1) && (j < i))
            GeneralActivity.MustPopWindow.this.dismiss();
          return true;
        }
      });
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.GeneralActivity
 * JD-Core Version:    0.6.2
 */