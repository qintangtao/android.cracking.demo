package com.youqicai.widget;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.hsg.sdk.common.imagecache.ImageFetcher;
import com.hsg.sdk.common.imagecache.ImageWorker.SimpleProcessCallback;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.receiver.InstallReceiver;
import com.youqicai.AppStore.receiver.InstallReceiver.AppInstallListener;
import com.youqicai.AppStore.utils.BitmapUtil;
import com.youqicai.manager.BaseDbAdapter;
import com.youqicai.manager.DownLoadManager;
import com.youqicai.manager.DownLoadManager.MutiDownLoadListener;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class InstallView extends FrameLayout
  implements View.OnClickListener, DownLoadManager.MutiDownLoadListener, InstallReceiver.AppInstallListener
{
  private static AppInfoEntity currentEntity;
  private Button btn_open;
  private boolean clickTwice = false;
  private FrameLayout close;
  private TextView current_textView;
  private LinearLayout finish_layout;
  private ImageView icon;
  private RelativeLayout install_layout;
  private TextView install_textView;
  private CallBack mCallBack;
  private Context mContext;
  private boolean mFinished = false;
  private MyHandler mHandler;
  private List<AppInfoEntity> mList;
  private boolean mShowed = false;
  private HashMap<Integer, AppInfoEntity> map = new HashMap();
  private WindowManager.LayoutParams params;
  private HashSet<String> pkgMap = new HashSet();
  private Set<String> pkgSet = new HashSet();
  private ProgressBar progressbar;
  private int totalSize = 0;
  private TextView tvTime;
  private WindowManager windowManager;

  public InstallView(Context paramContext)
  {
    super(paramContext);
  }

  public InstallView(Context paramContext, CallBack paramCallBack)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mCallBack = paramCallBack;
    this.mHandler = new MyHandler();
    LayoutInflater.from(paramContext).inflate(2130903079, this);
    setBackgroundDrawable(BitmapUtil.convertBitmap2Drawable(BitmapUtil.getBluredBackgroundImage((Activity)paramContext)));
    this.install_textView = ((TextView)findViewById(2131099835));
    this.current_textView = ((TextView)findViewById(2131099833));
    this.icon = ((ImageView)findViewById(2131099683));
    this.close = ((FrameLayout)findViewById(2131099747));
    this.install_layout = ((RelativeLayout)findViewById(2131099832));
    this.finish_layout = ((LinearLayout)findViewById(2131099836));
    this.progressbar = ((ProgressBar)findViewById(2131099834));
    this.btn_open = ((Button)findViewById(2131099745));
    this.windowManager = ((WindowManager)this.mContext.getApplicationContext().getSystemService("window"));
    this.params = new WindowManager.LayoutParams(-1, -1, 2002, 8, -3);
    this.params.gravity = 51;
    this.params.x = 0;
    this.params.y = 0;
    this.close.setOnClickListener(this);
    this.btn_open.setOnClickListener(this);
  }

  private void initView(AppInfoEntity paramAppInfoEntity, int paramInt)
  {
    ImageFetcher.getInstance(this.mContext.getApplicationContext()).loadImage(paramAppInfoEntity.getIconUrl(), this.icon, new ImageWorker.SimpleProcessCallback()
    {
    });
    if (paramInt < 100)
      this.current_textView.setText("正在下载 " + paramAppInfoEntity.getAppName() + "(" + paramInt + "%)");
    TextView localTextView = this.install_textView;
    Resources localResources = this.mContext.getResources();
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(this.totalSize - this.pkgMap.size());
    arrayOfObject[1] = Integer.valueOf(this.totalSize);
    localTextView.setText(localResources.getString(2131492932, arrayOfObject));
    this.progressbar.setProgress(this.totalSize - this.pkgMap.size());
    this.mCallBack.showMessage(paramAppInfoEntity, paramInt);
  }

  public void failed(String paramString, Exception paramException, int paramInt)
  {
  }

  public void finishView()
  {
    try
    {
      if (this.windowManager != null)
      {
        this.windowManager.removeView(this);
        this.mFinished = true;
        this.mHandler.removeCallbacksAndMessages(null);
        if (this.mCallBack != null)
          this.mCallBack.installFinish(true);
        this.clickTwice = false;
        InstallReceiver.unregistAppInstallListener(this);
      }
      return;
    }
    catch (Exception localException)
    {
    }
    finally
    {
      this.mCallBack.closeView();
    }
  }

  public void onClick(View paramView)
  {
    if (paramView == this.icon)
      finishView();
    do
    {
      return;
      if (paramView == this.close)
      {
        if (!this.clickTwice)
        {
          Toast.makeText(this.mContext, "再按一次，退出本页面", 0).show();
          this.clickTwice = true;
          return;
        }
        finishView();
        return;
      }
    }
    while (paramView != this.btn_open);
    finishView();
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
          this.progressbar.setProgress(this.totalSize - this.pkgMap.size());
        }
        if (this.pkgSet.contains(str2))
          this.pkgSet.remove(str2);
      }
      if (this.pkgMap.size() == 0)
      {
        this.install_layout.setVisibility(8);
        this.finish_layout.setVisibility(0);
        this.mCallBack.installFinish(true);
      }
    }
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
      initView(currentEntity, i);
    }
  }

  public void show(List<AppInfoEntity> paramList)
  {
    this.clickTwice = false;
    this.mShowed = true;
    this.mList = paramList;
    this.totalSize = this.mList.size();
    this.progressbar.setMax(this.totalSize);
    this.progressbar.setProgress(0);
    this.windowManager.addView(this, this.params);
    currentEntity = null;
    InstallReceiver.registAppInstallListener(this);
    this.map.clear();
    this.pkgMap.clear();
    Iterator localIterator = this.mList.iterator();
    while (localIterator.hasNext())
    {
      AppInfoEntity localAppInfoEntity = (AppInfoEntity)localIterator.next();
      localAppInfoEntity.setAppStatus(2);
      BaseDbAdapter.getInstance(this.mContext).updateDownloadAppInfo(localAppInfoEntity.getAppId(), localAppInfoEntity.getAppStatus());
      localAppInfoEntity.setDownloadTime(String.valueOf(System.currentTimeMillis()));
      BaseDbAdapter.getInstance(this.mContext).saveDownloadAppInfo(localAppInfoEntity);
      DownLoadManager.getInstance().startDownload(localAppInfoEntity);
      DownLoadManager localDownLoadManager = DownLoadManager.getInstance();
      String str = localAppInfoEntity.getApkUrl();
      int[] arrayOfInt = new int[1];
      arrayOfInt[0] = Integer.parseInt(localAppInfoEntity.getAppId());
      localDownLoadManager.registerReceivedNotifyListener(str, this, arrayOfInt);
      this.map.put(Integer.valueOf(Integer.parseInt(localAppInfoEntity.getAppId())), localAppInfoEntity);
      this.pkgMap.add(localAppInfoEntity.getPackageName().trim());
    }
    currentEntity = (AppInfoEntity)this.mList.get(0);
    initView(currentEntity, 0);
  }

  public void success(String paramString1, String paramString2, int paramInt)
  {
    currentEntity = (AppInfoEntity)this.map.get(Integer.valueOf(paramInt));
    this.current_textView.setText("正在安装：" + currentEntity.getAppName());
    initView(currentEntity, 100);
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

  public static abstract interface CallBack
  {
    public abstract void closeView();

    public abstract void installFinish(boolean paramBoolean);

    public abstract void showMessage(AppInfoEntity paramAppInfoEntity, int paramInt);
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
      case 1:
      default:
      case 2:
      case 3:
      case 4:
      }
      do
      {
        return;
        InstallView.this.progressbar.setVisibility(0);
        InstallView.this.install_textView.setText("正在初始化...");
        return;
        InstallView.this.finishView();
        return;
        String str1 = String.valueOf(paramMessage.obj);
        if (InstallView.this.pkgMap.contains(str1))
        {
          InstallView.this.pkgMap.remove(str1);
          InstallView.access$302(null);
        }
        Iterator localIterator = InstallView.this.pkgSet.iterator();
        while (localIterator.hasNext())
        {
          String str2 = (String)localIterator.next();
          InstallView.this.pkgMap.remove(str2);
        }
        InstallView.this.progressbar.setProgress(InstallView.this.totalSize - InstallView.this.pkgMap.size());
      }
      while (InstallView.this.pkgMap.size() != 0);
      InstallView.this.pkgSet.clear();
      InstallView.this.pkgMap.clear();
      InstallView.this.install_layout.setVisibility(8);
      InstallView.this.finish_layout.setVisibility(0);
      InstallView.this.mCallBack.installFinish(true);
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
 * Qualified Name:     com.youqicai.widget.InstallView
 * JD-Core Version:    0.6.2
 */