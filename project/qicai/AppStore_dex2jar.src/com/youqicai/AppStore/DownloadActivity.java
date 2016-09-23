package com.youqicai.AppStore;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.lidroid.xutils.ViewUtils;
import com.lidroid.xutils.view.annotation.ContentView;
import com.lidroid.xutils.view.annotation.ViewInject;
import com.youqicai.AppStore.adapter.MustAdapter;
import com.youqicai.AppStore.adapter.MustAdapter.SelectAppListener;
import com.youqicai.AppStore.adapter.TabDownLoadApkAdpter;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.receiver.InstallReceiver;
import com.youqicai.AppStore.receiver.InstallReceiver.AppInstallListener;
import com.youqicai.AppStore.utils.MemoryUtils;
import com.youqicai.AppStore.utils.ViewTools;
import com.youqicai.PhoneHelper.DeviceInfo;
import com.youqicai.PhoneHelper.PreferencesHelper;
import com.youqicai.http.TaskEntity;
import com.youqicai.http.TaskEntity.OnResultListener;
import com.youqicai.manager.ApkEditComparator;
import com.youqicai.manager.ApkManager;
import com.youqicai.manager.BaseDbAdapter;
import com.youqicai.manager.DownLoadManager;
import com.youqicai.widget.EmptyDownLoadView;
import com.youqicai.widget.EmptyDownLoadView.IGotoDownloadCallback;
import com.youqicai.widget.LoadingView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

@ContentView(2130903047)
public class DownloadActivity extends BaseActivity
  implements InstallReceiver.AppInstallListener, EmptyDownLoadView.IGotoDownloadCallback, View.OnClickListener, TaskEntity.OnResultListener
{
  public static final String ACTION_BROADCAST = "cn.update.action.broadcast";
  protected static final int RESET_DATA_LIST = 1;
  protected static final int SHOW_DATA_LIST;

  @ViewInject(2131099693)
  EmptyDownLoadView emptyDownLoadView;

  @ViewInject(2131099692)
  ListView listView;

  @ViewInject(2131099674)
  LoadingView loadingView;
  private ArrayList<AppInfoEntity> mData = new ArrayList();
  public Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      super.handleMessage(paramAnonymousMessage);
      switch (paramAnonymousMessage.what)
      {
      default:
        return;
      case 0:
        if ((DownloadActivity.this.mData != null) && (DownloadActivity.this.mData.size() > 0))
        {
          DownloadActivity.this.listView.setAdapter(DownloadActivity.this.tabDownLoadApkAdpter);
          DownloadActivity.this.loadingView.setVisibility(8);
          DownloadActivity.this.emptyDownLoadView.setVisibility(8);
          DownloadActivity.this.tabDownLoadApkAdpter.setData(DownloadActivity.this.mData);
          DownloadActivity.this.tabDownLoadApkAdpter.notifyDataSetChanged();
          return;
        }
        DownloadActivity.this.loadingView.setVisibility(8);
        DownloadActivity.this.emptyDownLoadView.setVisibility(0);
        return;
      case 1:
        DownloadActivity.this.loadingView.setVisibility(8);
        DownloadActivity.this.emptyDownLoadView.setVisibility(8);
        ArrayList localArrayList = (ArrayList)paramAnonymousMessage.obj;
        if ((localArrayList != null) && (localArrayList.size() > 0))
        {
          DownloadActivity.this.mData.clear();
          DownloadActivity.this.mData.addAll(localArrayList);
          DownloadActivity.this.tabDownLoadApkAdpter.setData(DownloadActivity.this.mData);
          DownloadActivity.this.tabDownLoadApkAdpter.notifyDataSetChanged();
          return;
        }
        DownloadActivity.this.loadingView.setVisibility(8);
        DownloadActivity.this.emptyDownLoadView.setVisibility(0);
        return;
      case 100:
      }
      Intent localIntent = new Intent(DownloadActivity.this.context, BindActivity.class);
      DownloadActivity.this.context.startActivity(localIntent);
    }
  };
  private MustPopWindow mustPopWindow;

  @ViewInject(2131099690)
  LinearLayout oneKeyInstall;
  TabDownLoadApkAdpter tabDownLoadApkAdpter;
  public BroadcastReceiver upDateDownloadBroacast = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if (paramAnonymousIntent.getAction().equals("cn.update.action.broadcast"))
        new DownloadActivity.UpdateDownloadDataThread(DownloadActivity.this).start();
    }
  };

  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131099690)
    {
      Intent localIntent = new Intent(this, RecommendActivity.class);
      localIntent.putExtra("from", true);
      startActivity(localIntent);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    ViewUtils.inject(this);
    this.emptyDownLoadView.setVisibility(8);
    this.emptyDownLoadView.setGotoDownloadCallback(this);
    InstallReceiver.registAppInstallListener(this);
    this.tabDownLoadApkAdpter = new TabDownLoadApkAdpter(this, this.mHandler);
    this.listView.setAdapter(this.tabDownLoadApkAdpter);
    ViewTools.increaseClickRegion(this.oneKeyInstall, 15, 15, 15, 15);
    this.oneKeyInstall.setOnClickListener(this);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("cn.update.action.broadcast");
    registerReceiver(this.upDateDownloadBroacast, localIntentFilter);
  }

  protected void onDestroy()
  {
    super.onDestroy();
    InstallReceiver.unregistAppInstallListener(this);
    unregisterReceiver(this.upDateDownloadBroacast);
  }

  public void onError(Object paramObject)
  {
  }

  public void onGotoDownloadViewClicked()
  {
    finish();
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
      if ((str2 != null) && (this.mData != null) && (this.mData.size() > 0))
      {
        j = 0;
        if (j < this.mData.size())
        {
          AppInfoEntity localAppInfoEntity2 = (AppInfoEntity)this.mData.get(j);
          if (!str2.equals(localAppInfoEntity2.getPackageName()))
            break label126;
          localAppInfoEntity2.setAppStatus(6);
          Message localMessage2 = this.mHandler.obtainMessage();
          localMessage2.what = 0;
          this.mHandler.sendMessage(localMessage2);
        }
      }
    while (true)
    {
      return;
      label126: j++;
      break;
      if (((str1 == "android.intent.action.UNINSTALL_PACKAGE") || (str1 == "android.intent.action.PACKAGE_REMOVED")) && (str2 != null) && (this.mData != null) && (this.mData.size() > 0))
        for (int i = 0; i < this.mData.size(); i++)
        {
          AppInfoEntity localAppInfoEntity1 = (AppInfoEntity)this.mData.get(i);
          if (str2.equals(localAppInfoEntity1.getPackageName()))
          {
            this.mData.remove(i);
            this.tabDownLoadApkAdpter.setData(this.mData);
            localAppInfoEntity1.setAppStatus(0);
            this.tabDownLoadApkAdpter.notifyDataSetChanged();
            Message localMessage1 = this.mHandler.obtainMessage();
            localMessage1.what = 0;
            this.mHandler.sendMessage(localMessage1);
            return;
          }
        }
    }
  }

  public void onResult(Object paramObject)
  {
    if (isFinishing());
    while (true)
    {
      return;
      TaskEntity localTaskEntity = (TaskEntity)paramObject;
      if (localTaskEntity.taskId == 0)
        try
        {
          if (!isFinishing())
          {
            this.mustPopWindow = new MustPopWindow(this, (List)localTaskEntity.outObject);
            this.mustPopWindow.showAtLocation(this.listView, 81, 0, 0);
            return;
          }
        }
        catch (Exception localException)
        {
        }
    }
  }

  protected void onResume()
  {
    DownLoadManager.getInstance().cleanListener();
    super.onResume();
    new UpdateDownloadDataThread().start();
  }

  private class MustPopWindow extends PopupWindow
    implements MustAdapter.SelectAppListener
  {
    MustAdapter mustAdapter;
    Button oneKeyInstall;

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
      GridView localGridView = (GridView)localView.findViewById(2131099750);
      List localList;
      this.mustAdapter = new MustAdapter(localContext, localList, this);
      localGridView.setAdapter(this.mustAdapter);
      TextView localTextView = (TextView)localView.findViewById(2131099749);
      if (!DeviceInfo.isWifiConnected(localContext))
      {
        localTextView.setCompoundDrawables(localContext.getResources().getDrawable(2130837667), null, null, null);
        localTextView.setText(2131492931);
      }
      ((ImageView)localView.findViewById(2131099672)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          DownloadActivity.MustPopWindow.this.dismiss();
        }
      });
      this.oneKeyInstall = ((Button)localView.findViewById(2131099690));
      this.oneKeyInstall.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          try
          {
            List localList = DownloadActivity.MustPopWindow.this.mustAdapter.getCheckedList();
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
              new DownloadActivity.UpdateDownloadDataThread(DownloadActivity.this).start();
            }
            if (!PreferencesHelper.getInstance(localContext).isAssisAutoInstallSwitch())
            {
              Intent localIntent = new Intent("android.settings.ACCESSIBILITY_SETTINGS");
              DownloadActivity.this.startActivity(localIntent);
              DownloadActivity.this.mHandler.sendEmptyMessageDelayed(100, 600L);
            }
            DownloadActivity.MustPopWindow.this.dismiss();
            return;
          }
          catch (Exception localException)
          {
          }
        }
      });
      localView.setOnTouchListener(new View.OnTouchListener()
      {
        public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          int i = localView.findViewById(2131099746).getTop();
          int j = (int)paramAnonymousMotionEvent.getY();
          if ((paramAnonymousMotionEvent.getAction() == 1) && (j < i))
            DownloadActivity.MustPopWindow.this.dismiss();
          return true;
        }
      });
      setAppSize();
    }

    public void onSelect()
    {
      setAppSize();
    }

    public void setAppSize()
    {
      List localList;
      float f1;
      Iterator localIterator;
      if (this.mustAdapter != null)
      {
        localList = this.mustAdapter.getCheckedList();
        if (localList.size() == 0)
          break label124;
        f1 = 0.0F;
        localIterator = localList.iterator();
      }
      while (true)
      {
        AppInfoEntity localAppInfoEntity;
        if (localIterator.hasNext())
          localAppInfoEntity = (AppInfoEntity)localIterator.next();
        try
        {
          float f2 = Float.valueOf(localAppInfoEntity.getFileSize()).floatValue();
          f1 += f2;
          continue;
          this.oneKeyInstall.setText("一键安装(选中" + localList.size() + "款应用,共" + MemoryUtils.formatFileSize(f1, false) + ")");
          return;
          label124: this.oneKeyInstall.setText("一键安装");
          return;
        }
        catch (Exception localException)
        {
        }
      }
    }
  }

  public class UpdateDownloadDataThread extends Thread
  {
    public UpdateDownloadDataThread()
    {
    }

    public void run()
    {
      ArrayList localArrayList1;
      ArrayList localArrayList2;
      ArrayList localArrayList3;
      AppInfoEntity localAppInfoEntity;
      try
      {
        localArrayList1 = ApkManager.getInstance().updateDownLoadStatus(DownloadActivity.this.context);
        if ((localArrayList1 != null) && (localArrayList1.size() > 0))
        {
          localArrayList2 = new ArrayList();
          localArrayList3 = new ArrayList();
          Iterator localIterator = localArrayList1.iterator();
          while (true)
          {
            if (!localIterator.hasNext())
              break label129;
            localAppInfoEntity = (AppInfoEntity)localIterator.next();
            if ((localAppInfoEntity.getAppStatus() != 4) && (localAppInfoEntity.getAppStatus() != 6) && (localAppInfoEntity.getAppStatus() != 5))
              break;
            localArrayList2.add(localAppInfoEntity);
          }
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      while (true)
      {
        super.run();
        return;
        localArrayList3.add(localAppInfoEntity);
        break;
        label129: Collections.sort(localArrayList2, new ApkEditComparator());
        Collections.sort(localArrayList3, new ApkEditComparator());
        localArrayList1.clear();
        localArrayList1.addAll(localArrayList3);
        localArrayList1.addAll(localArrayList2);
        Message localMessage = Message.obtain();
        localMessage.what = 1;
        localMessage.obj = localArrayList1;
        DownloadActivity.this.mHandler.sendMessage(localMessage);
      }
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.DownloadActivity
 * JD-Core Version:    0.6.2
 */