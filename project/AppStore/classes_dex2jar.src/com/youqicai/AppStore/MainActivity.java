package com.youqicai.AppStore;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.lidroid.xutils.ViewUtils;
import com.lidroid.xutils.view.annotation.ContentView;
import com.lidroid.xutils.view.annotation.ViewInject;
import com.lidroid.xutils.view.annotation.event.OnClick;
import com.viewpagerindicator.TabPageIndicator;
import com.youqicai.AppStore.adapter.MustAdapter;
import com.youqicai.AppStore.adapter.MustAdapter.SelectAppListener;
import com.youqicai.AppStore.adapter.StoreFragmentPagerAdapter;
import com.youqicai.AppStore.config.BuildUrl;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.entity.ResultAppInfoEntity;
import com.youqicai.AppStore.fragment.BillboardFragment;
import com.youqicai.AppStore.fragment.EnjoyFragment;
import com.youqicai.AppStore.fragment.GameFragment;
import com.youqicai.AppStore.fragment.SoftwareFragment;
import com.youqicai.AppStore.parser.UpdateParser;
import com.youqicai.AppStore.utils.MemoryUtils;
import com.youqicai.AppStore.utils.UpdateDialog;
import com.youqicai.AppStore.utils.UpdateDialog.DialogCallBack;
import com.youqicai.PhoneHelper.DeviceInfo;
import com.youqicai.PhoneHelper.PreferencesHelper;
import com.youqicai.http.HttpUtil;
import com.youqicai.http.TaskEntity;
import com.youqicai.http.TaskEntity.OnResultListener;
import com.youqicai.manager.BaseDbAdapter;
import com.youqicai.manager.DownLoadManager;
import com.youqicai.manager.DownLoadManager.MutiDownLoadListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@ContentView(2130903052)
public class MainActivity extends FragmentActivity
  implements TaskEntity.OnResultListener, DownLoadManager.MutiDownLoadListener
{
  private UpdateDialog dialog;
  private ArrayList<Fragment> fragmentsList;
  private Context mContext;
  Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      super.handleMessage(paramAnonymousMessage);
      switch (paramAnonymousMessage.what)
      {
      default:
        return;
      case 0:
      }
      Intent localIntent = new Intent(MainActivity.this.mContext, BindActivity.class);
      MainActivity.this.mContext.startActivity(localIntent);
    }
  };
  private LayoutInflater mLayoutInflater;
  private MustAdapter mustAdapter;
  private MustPopWindow mustPopWindow;

  @ViewInject(2131099678)
  TabPageIndicator tabPageIndicator;
  private ArrayList<CharSequence> titlesList;
  Runnable updateRunnable = new Runnable()
  {
    public void run()
    {
      HttpUtil.AddTaskToQueueHead(BuildUrl.buildUpdateSelf("42", MainActivity.this.getPackageName(), DeviceInfo.getCid(MainActivity.this.mContext)), 1, new UpdateParser(), MainActivity.this);
    }
  };

  @ViewInject(2131099721)
  ViewPager viewPager;

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

  @OnClick({2131099720})
  public void clickHead(View paramView)
  {
    startActivity(new Intent(this, DownloadActivity.class));
  }

  public void failed(String paramString, Exception paramException, int paramInt)
  {
  }

  public View getUpdateContentView(String paramString1, String paramString2, String paramString3)
  {
    View localView = this.mLayoutInflater.inflate(2130903073, null);
    ((TextView)localView.findViewById(2131099806)).setText(paramString1);
    ((TextView)localView.findViewById(2131099805)).setText(paramString2);
    ((TextView)localView.findViewById(2131099807)).setText(paramString3);
    return localView;
  }

  @OnClick({2131099719})
  public void intentSearch(View paramView)
  {
    startActivity(new Intent(this, SearchActivity.class));
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    ViewUtils.inject(this);
    this.mContext = this;
    this.fragmentsList = new ArrayList();
    this.titlesList = new ArrayList();
    EnjoyFragment localEnjoyFragment = new EnjoyFragment();
    this.fragmentsList.add(localEnjoyFragment);
    this.titlesList.add("喜欢");
    BillboardFragment localBillboardFragment = new BillboardFragment();
    this.fragmentsList.add(localBillboardFragment);
    this.titlesList.add("榜单");
    SoftwareFragment localSoftwareFragment = new SoftwareFragment();
    this.fragmentsList.add(localSoftwareFragment);
    this.titlesList.add("软件");
    GameFragment localGameFragment = new GameFragment();
    this.fragmentsList.add(localGameFragment);
    this.titlesList.add("游戏");
    this.viewPager.setAdapter(new StoreFragmentPagerAdapter(getSupportFragmentManager(), this.fragmentsList, this.titlesList));
    this.viewPager.setOffscreenPageLimit(4);
    this.tabPageIndicator.setViewPager(this.viewPager);
    this.tabPageIndicator.setCurrentItem(0);
    if (PreferencesHelper.getInstance(this).getInstallDayOfYear() == 0)
      saveFirstInstallTime();
    if (!PreferencesHelper.getInstance(this.mContext).isUpdateCheck())
    {
      this.mHandler.postDelayed(this.updateRunnable, 2500L);
      this.dialog = new UpdateDialog(this);
      this.mLayoutInflater = LayoutInflater.from(this);
      PreferencesHelper.getInstance(this.mContext).saveUpdateCheck();
    }
  }

  public void onError(Object paramObject)
  {
  }

  public void onResult(Object paramObject)
  {
    if (isFinishing());
    ArrayList localArrayList;
    do
    {
      TaskEntity localTaskEntity;
      int i;
      do
        while (true)
        {
          return;
          localTaskEntity = (TaskEntity)paramObject;
          i = localTaskEntity.taskId;
          if (i == 0)
            try
            {
              if (!isFinishing())
              {
                this.mustPopWindow = new MustPopWindow(this, (List)localTaskEntity.outObject);
                this.mustPopWindow.showAtLocation(this.viewPager, 81, 0, 0);
                return;
              }
            }
            catch (Exception localException)
            {
              return;
            }
        }
      while (i != 1);
      localArrayList = ((ResultAppInfoEntity)localTaskEntity.outObject).appInfoEntityList;
    }
    while (localArrayList.size() != 1);
    final AppInfoEntity localAppInfoEntity = (AppInfoEntity)localArrayList.get(0);
    String str = MemoryUtils.formatFileSize(Float.valueOf(localAppInfoEntity.getFileSize()).floatValue(), false);
    this.dialog.init(2130837506, "应用市场", getUpdateContentView("新版本(" + localAppInfoEntity.getVersionName() + ")已发布", "大小：" + str, "新功能：\n" + localAppInfoEntity.getNewFeature()), new UpdateDialog.DialogCallBack()
    {
      public void cancel(UpdateDialog paramAnonymousUpdateDialog)
      {
        MainActivity.this.dialog.close();
      }

      public void confirm(UpdateDialog paramAnonymousUpdateDialog)
      {
        localAppInfoEntity.setAppStatus(2);
        BaseDbAdapter.getInstance(MainActivity.this.mContext).updateDownloadAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getAppStatus());
        localAppInfoEntity.setDownloadTime(String.valueOf(System.currentTimeMillis()));
        BaseDbAdapter.getInstance(MainActivity.this.mContext).saveDownloadAppInfo(localAppInfoEntity);
        DownLoadManager.getInstance().startDownload(localAppInfoEntity);
        MainActivity.this.dialog.close();
      }
    });
    this.dialog.show();
  }

  public void setDownAllSize(float paramFloat, int paramInt)
  {
  }

  public void setDownloadedSize(float paramFloat, int paramInt)
  {
  }

  public void success(String paramString1, String paramString2, int paramInt)
  {
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
      ((ImageView)localView.findViewById(2131099672)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          MainActivity.MustPopWindow.this.dismiss();
        }
      });
      this.oneKeyInstall = ((Button)localView.findViewById(2131099690));
      this.oneKeyInstall.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          try
          {
            List localList = MainActivity.MustPopWindow.this.mustAdapter.getCheckedList();
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
              MainActivity.this.startActivity(localIntent);
              MainActivity.this.mHandler.sendEmptyMessageDelayed(0, 600L);
            }
            MainActivity.MustPopWindow.this.dismiss();
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
            MainActivity.MustPopWindow.this.dismiss();
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
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.MainActivity
 * JD-Core Version:    0.6.2
 */