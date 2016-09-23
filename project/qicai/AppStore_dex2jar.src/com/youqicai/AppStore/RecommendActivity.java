package com.youqicai.AppStore;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.lidroid.xutils.ViewUtils;
import com.lidroid.xutils.view.annotation.ContentView;
import com.lidroid.xutils.view.annotation.ViewInject;
import com.lidroid.xutils.view.annotation.event.OnClick;
import com.youqicai.AppStore.adapter.MustAdapter;
import com.youqicai.AppStore.adapter.MustAdapter.SelectAppListener;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.parser.MustAppParser;
import com.youqicai.AppStore.receiver.InstallReceiver;
import com.youqicai.AppStore.receiver.InstallReceiver.AppInstallListener;
import com.youqicai.AppStore.utils.BaseUtils;
import com.youqicai.AppStore.utils.MemoryUtils;
import com.youqicai.AppStore.utils.UpdateDialog;
import com.youqicai.AppStore.utils.UpdateDialog.DialogCallBack;
import com.youqicai.PhoneHelper.DeviceInfo;
import com.youqicai.PhoneHelper.PreferencesHelper;
import com.youqicai.http.HttpUtil;
import com.youqicai.http.TaskEntity.OnResultListener;
import com.youqicai.manager.BaseDbAdapter;
import com.youqicai.manager.DownLoadManager;
import com.youqicai.manager.DownLoadManager.MutiDownLoadListener;
import com.youqicai.speed.Util;
import com.youqicai.widget.InstallView.CallBack;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@ContentView(2130903055)
public class RecommendActivity extends BaseActivity
  implements MustAdapter.SelectAppListener, TaskEntity.OnResultListener, InstallView.CallBack, InstallReceiver.AppInstallListener, DownLoadManager.MutiDownLoadListener
{
  public static final String ACTION_BROADCAST = "com.main.apps.view.install";
  private static AppInfoEntity currentEntity;
  private UpdateDialog dialog;
  private boolean from = false;
  private int installCount = 0;

  @ViewInject(2131099746)
  LinearLayout listLayout;
  private MyHandler mHandler;
  private LayoutInflater mLayoutInflater;
  private HashMap<Integer, AppInfoEntity> map = new HashMap();
  MustAdapter mustAdapter;

  @ViewInject(2131099690)
  Button oneKeyInstall;

  @ViewInject(2131099744)
  TextView openAutoFirst;

  @ViewInject(2131099742)
  LinearLayout openLayout;
  private HashSet<String> pkgMap = new HashSet();
  private Set<String> pkgSet = new HashSet();
  public BroadcastReceiver upDateDownloadBroacast = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if (paramAnonymousIntent.getAction().equals("com.main.apps.view.install"))
        RecommendActivity.this.mHandler.sendEmptyMessage(0);
    }
  };

  private void saveFirstInstallTime()
  {
    PackageManager localPackageManager = getPackageManager();
    try
    {
      PackageInfo localPackageInfo = localPackageManager.getPackageInfo(getPackageName(), 0);
      PreferencesHelper.getInstance(this).saveFirstInstallTime(localPackageInfo.firstInstallTime);
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
  }

  private void setAppSize()
  {
    List localList;
    float f1;
    Iterator localIterator;
    if (this.mustAdapter != null)
    {
      localList = this.mustAdapter.getCheckedList();
      if (localList.size() == 0)
        break label134;
      this.installCount = localList.size();
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
        this.oneKeyInstall.setText(" 已选" + localList.size() + "款 共" + MemoryUtils.formatFileSize(f1, false) + " 一键安装 ");
        return;
        label134: this.oneKeyInstall.setText(" 一键安装 ");
        return;
      }
      catch (Exception localException)
      {
      }
    }
  }

  @OnClick({2131099747})
  public void closeActivity(View paramView)
  {
    this.dialog.init(0, "  提示", getUpdateContentView("  是否需要跳过一键装机 "), new UpdateDialog.DialogCallBack()
    {
      public void cancel(UpdateDialog paramAnonymousUpdateDialog)
      {
        RecommendActivity.this.dialog.close();
      }

      public void confirm(UpdateDialog paramAnonymousUpdateDialog)
      {
        if (RecommendActivity.this.from)
        {
          RecommendActivity.this.finish();
          RecommendActivity.this.dialog.close();
          return;
        }
        PreferencesHelper.getInstance(RecommendActivity.this.context).setAlreadyClicked(true);
        Intent localIntent = new Intent(RecommendActivity.this.context, MainActivity.class);
        RecommendActivity.this.startActivity(localIntent);
        RecommendActivity.this.finish();
        RecommendActivity.this.dialog.close();
      }
    });
    this.dialog.setConfirmLabel("跳过");
    this.dialog.setCancelLabel("不跳过");
    this.dialog.show();
  }

  @OnClick({2131099743})
  public void closeNavi(View paramView)
  {
    this.openLayout.setVisibility(8);
    if (this.mustAdapter.getCount() == 0)
      HttpUtil.AddTaskToQueueHead("http://mapp.youqicai.com/api?action=akeyapp", 0, new MustAppParser(), this);
    this.listLayout.setVisibility(0);
  }

  public void closeView()
  {
    startActivity(new Intent(this, MainActivity.class));
    finish();
  }

  public void failed(String paramString, Exception paramException, int paramInt)
  {
  }

  public View getUpdateContentView(String paramString)
  {
    View localView = this.mLayoutInflater.inflate(2130903072, null);
    ((TextView)localView.findViewById(2131099805)).setText(paramString);
    return localView;
  }

  public void installFinish(boolean paramBoolean)
  {
    this.oneKeyInstall.setText("确认完成");
    this.oneKeyInstall.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent = new Intent(RecommendActivity.this.context, MainActivity.class);
        RecommendActivity.this.startActivity(localIntent);
        RecommendActivity.this.finish();
      }
    });
  }

  @OnClick({2131099690})
  public void installSelectApps(View paramView)
  {
    List localList = this.mustAdapter.getCheckedList();
    if (localList.size() != 0)
    {
      if (!PreferencesHelper.getInstance(this.context).isAssisAutoInstallSwitch())
      {
        Iterator localIterator2 = localList.iterator();
        while (localIterator2.hasNext())
        {
          AppInfoEntity localAppInfoEntity2 = (AppInfoEntity)localIterator2.next();
          localAppInfoEntity2.setAppStatus(2);
          BaseDbAdapter.getInstance(this.context).updateDownloadAppInfo(localAppInfoEntity2.getAppId(), localAppInfoEntity2.getAppStatus());
          localAppInfoEntity2.setDownloadTime(String.valueOf(System.currentTimeMillis()));
          BaseDbAdapter.getInstance(this.context).saveDownloadAppInfo(localAppInfoEntity2);
          DownLoadManager.getInstance().startDownload(localAppInfoEntity2);
        }
        startActivity(new Intent(this, MainActivity.class));
        finish();
      }
      while (true)
      {
        PreferencesHelper.getInstance(this).setAlreadyClicked(true);
        return;
        this.map.clear();
        this.pkgMap.clear();
        Iterator localIterator1 = localList.iterator();
        while (localIterator1.hasNext())
        {
          AppInfoEntity localAppInfoEntity1 = (AppInfoEntity)localIterator1.next();
          localAppInfoEntity1.setAppStatus(2);
          BaseDbAdapter.getInstance(this.context).updateDownloadAppInfo(localAppInfoEntity1.getAppId(), localAppInfoEntity1.getAppStatus());
          localAppInfoEntity1.setDownloadTime(String.valueOf(System.currentTimeMillis()));
          BaseDbAdapter.getInstance(this.context).saveDownloadAppInfo(localAppInfoEntity1);
          DownLoadManager.getInstance().startDownload(localAppInfoEntity1);
          DownLoadManager localDownLoadManager = DownLoadManager.getInstance();
          String str = localAppInfoEntity1.getApkUrl();
          int[] arrayOfInt = new int[1];
          arrayOfInt[0] = Integer.parseInt(localAppInfoEntity1.getAppId());
          localDownLoadManager.registerReceivedNotifyListener(str, this, arrayOfInt);
          this.map.put(Integer.valueOf(Integer.parseInt(localAppInfoEntity1.getAppId())), localAppInfoEntity1);
          this.pkgMap.add(localAppInfoEntity1.getPackageName().trim());
        }
        currentEntity = (AppInfoEntity)localList.get(0);
      }
    }
    BaseUtils.showTost(this, "请至少选择一款应用！");
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    ViewUtils.inject(this);
    getWindow().addFlags(128);
    if (PreferencesHelper.getInstance(this).getInstallDayOfYear() == 0)
      saveFirstInstallTime();
    this.from = getIntent().getBooleanExtra("from", false);
    if ((!this.from) && ((PreferencesHelper.getInstance(this).isAlreadyClicked() == true) || (!DeviceInfo.isWifiConnected(this))))
    {
      startActivity(new Intent(this, MainActivity.class));
      finish();
    }
    if (!PreferencesHelper.getInstance(this.context).isAssisAutoInstallSwitch())
      if (this.from)
      {
        this.openLayout.setVisibility(8);
        this.listLayout.setVisibility(0);
      }
    while (true)
    {
      this.openAutoFirst.setText(Html.fromHtml(getResources().getString(2131492933)));
      GridView localGridView = (GridView)findViewById(2131099750);
      this.mustAdapter = new MustAdapter(this.context, this);
      localGridView.setAdapter(this.mustAdapter);
      this.dialog = new UpdateDialog(this);
      this.mLayoutInflater = LayoutInflater.from(this);
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("com.main.apps.view.install");
      registerReceiver(this.upDateDownloadBroacast, localIntentFilter);
      InstallReceiver.registAppInstallListener(this);
      this.mHandler = new MyHandler();
      Util.addShortcut(this.context);
      return;
      this.openLayout.setVisibility(0);
      this.listLayout.setVisibility(8);
      continue;
      this.openLayout.setVisibility(8);
      this.listLayout.setVisibility(0);
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    unregisterReceiver(this.upDateDownloadBroacast);
    InstallReceiver.unregistAppInstallListener(this);
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
    Log.e("doll", str2 + " --------------");
    if (str1 == "android.intent.action.PACKAGE_ADDED")
    {
      if (str2 != null)
      {
        if (this.pkgMap.contains(str2))
        {
          this.pkgMap.remove(str2);
          currentEntity = null;
        }
        if (this.pkgSet.contains(str2))
          this.pkgSet.remove(str2);
      }
      if (this.pkgMap.size() == 0)
      {
        this.oneKeyInstall.setText("已安装" + this.installCount + "款 确认完成");
        startActivity(new Intent(this.context, MainActivity.class));
        finish();
        this.oneKeyInstall.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            Intent localIntent = new Intent(RecommendActivity.this.context, MainActivity.class);
            RecommendActivity.this.startActivity(localIntent);
            RecommendActivity.this.finish();
          }
        });
      }
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  // ERROR //
  public void onResult(Object paramObject)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 593	com/youqicai/AppStore/RecommendActivity:isFinishing	()Z
    //   4: ifeq +4 -> 8
    //   7: return
    //   8: aload_1
    //   9: checkcast 595	com/youqicai/http/TaskEntity
    //   12: astore_2
    //   13: aload_2
    //   14: getfield 598	com/youqicai/http/TaskEntity:taskId	I
    //   17: ifne -10 -> 7
    //   20: aload_0
    //   21: invokevirtual 593	com/youqicai/AppStore/RecommendActivity:isFinishing	()Z
    //   24: ifne +28 -> 52
    //   27: aload_2
    //   28: getfield 602	com/youqicai/http/TaskEntity:outObject	Ljava/lang/Object;
    //   31: checkcast 151	java/util/List
    //   34: astore 5
    //   36: aload_0
    //   37: getfield 143	com/youqicai/AppStore/RecommendActivity:mustAdapter	Lcom/youqicai/AppStore/adapter/MustAdapter;
    //   40: aload 5
    //   42: invokevirtual 606	com/youqicai/AppStore/adapter/MustAdapter:addAll	(Ljava/util/List;)V
    //   45: aload_0
    //   46: getfield 143	com/youqicai/AppStore/RecommendActivity:mustAdapter	Lcom/youqicai/AppStore/adapter/MustAdapter;
    //   49: invokevirtual 609	com/youqicai/AppStore/adapter/MustAdapter:notifyDataSetChanged	()V
    //   52: aload_0
    //   53: invokespecial 611	com/youqicai/AppStore/RecommendActivity:setAppSize	()V
    //   56: return
    //   57: astore 4
    //   59: aload_0
    //   60: invokespecial 611	com/youqicai/AppStore/RecommendActivity:setAppSize	()V
    //   63: return
    //   64: astore_3
    //   65: aload_0
    //   66: invokespecial 611	com/youqicai/AppStore/RecommendActivity:setAppSize	()V
    //   69: aload_3
    //   70: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   20	52	57	java/lang/Exception
    //   20	52	64	finally
  }

  protected void onResume()
  {
    super.onResume();
    if (!PreferencesHelper.getInstance(this.context).isAssisAutoInstallSwitch())
    {
      if (this.from)
      {
        this.openLayout.setVisibility(8);
        this.listLayout.setVisibility(0);
        if (this.mustAdapter.getCount() == 0)
          HttpUtil.AddTaskToQueueHead("http://mapp.youqicai.com/api?action=akeyapp", 0, new MustAppParser(), this);
        return;
      }
      this.openLayout.setVisibility(0);
      this.listLayout.setVisibility(8);
      return;
    }
    this.openLayout.setVisibility(8);
    if (this.mustAdapter.getCount() == 0)
      HttpUtil.AddTaskToQueueHead("http://mapp.youqicai.com/api?action=akeyapp", 0, new MustAppParser(), this);
    this.listLayout.setVisibility(0);
  }

  public void onSelect()
  {
    setAppSize();
  }

  @OnClick({2131099745})
  public void openAccessibility(View paramView)
  {
    if (!PreferencesHelper.getInstance(this.context).isAssisAutoInstallSwitch())
      startActivity(new Intent("android.settings.ACCESSIBILITY_SETTINGS"));
  }

  public void setDownAllSize(float paramFloat, int paramInt)
  {
  }

  public void setDownloadedSize(float paramFloat, int paramInt)
  {
    if (currentEntity == null)
      currentEntity = (AppInfoEntity)this.map.get(Integer.valueOf(paramInt));
    if (Integer.parseInt(currentEntity.getAppId()) == paramInt)
    {
      currentEntity.setdownloadProgress(paramFloat);
      int i = (int)(100.0F * currentEntity.getdownloadProgress() / Float.valueOf(currentEntity.getFileSize()).floatValue());
      if (i >= 100)
        i = 100;
      showMessage(currentEntity, i);
    }
  }

  public void showMessage(AppInfoEntity paramAppInfoEntity, int paramInt)
  {
    this.mustAdapter.setEnable(false);
    if (paramInt < 100)
      this.oneKeyInstall.setText("正在下载 " + paramAppInfoEntity.getAppName() + "(" + paramInt + "%)");
    while (paramInt != 100)
      return;
    this.oneKeyInstall.setText("正在安装：" + paramAppInfoEntity.getAppName());
  }

  public void success(String paramString1, String paramString2, int paramInt)
  {
    currentEntity = (AppInfoEntity)this.map.get(Integer.valueOf(paramInt));
    showMessage(currentEntity, 100);
    try
    {
      this.pkgSet.add(currentEntity.getPackageName());
      this.mHandler.installApp();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  @SuppressLint({"HandlerLeak"})
  class MyHandler extends Handler
  {
    private static final int MSG_CANCEL = 1;
    private static final int MSG_FINISH = 3;
    private static final int MSG_INSTALL = 2;
    private static final int MSG_TIMER = 4;

    MyHandler()
    {
    }

    public void finsih()
    {
      removeMessages(2);
      sendEmptyMessageDelayed(3, 800L);
    }

    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default:
      case 4:
        do
        {
          return;
          String str1 = String.valueOf(paramMessage.obj);
          if (RecommendActivity.this.pkgMap.contains(str1))
          {
            RecommendActivity.this.pkgMap.remove(str1);
            RecommendActivity.access$302(null);
          }
          Iterator localIterator = RecommendActivity.this.pkgSet.iterator();
          while (localIterator.hasNext())
          {
            String str2 = (String)localIterator.next();
            RecommendActivity.this.pkgMap.remove(str2);
          }
        }
        while (RecommendActivity.this.pkgMap.size() != 0);
        RecommendActivity.this.pkgSet.clear();
        RecommendActivity.this.pkgMap.clear();
        return;
      case 0:
      }
      Intent localIntent = new Intent(RecommendActivity.this.context, BindActivity.class);
      RecommendActivity.this.context.startActivity(localIntent);
    }

    public void installApp()
    {
      removeMessages(4);
      obtainMessage(4);
      sendEmptyMessageDelayed(4, 30000L);
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.RecommendActivity
 * JD-Core Version:    0.6.2
 */