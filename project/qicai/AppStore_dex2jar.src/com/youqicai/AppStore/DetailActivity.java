package com.youqicai.AppStore;

import android.annotation.TargetApi;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.util.SparseArrayCompat;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.RatingBar;
import android.widget.TextView;
import android.widget.Toast;
import com.hsg.sdk.common.imagecache.ImageFetcher;
import com.hsg.sdk.common.imagecache.ImageWorker.SimpleProcessCallback;
import com.nineoldandroids.view.ViewHelper;
import com.viewpagerindicator.TabPageIndicator;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.fragment.TabCommentFragment;
import com.youqicai.AppStore.fragment.TabDetailFragment;
import com.youqicai.AppStore.parser.UpdateParser;
import com.youqicai.AppStore.receiver.InstallReceiver;
import com.youqicai.AppStore.receiver.InstallReceiver.AppInstallListener;
import com.youqicai.AppStore.utils.BaseUtils;
import com.youqicai.AppStore.utils.DialogUtils;
import com.youqicai.AppStore.utils.DialogUtils.DialogCallBack;
import com.youqicai.AppStore.utils.MemoryUtils;
import com.youqicai.http.ConnectionUtil;
import com.youqicai.http.HttpUtil;
import com.youqicai.http.TaskEntity.OnResultListener;
import com.youqicai.manager.ApkManager;
import com.youqicai.manager.BaseDbAdapter;
import com.youqicai.manager.DownLoadManager;
import com.youqicai.manager.DownLoadManager.MutiDownLoadListener;
import com.youqicai.widget.MyProgressBar;
import com.youqicai.widget.ScrollTabHolder;
import com.youqicai.widget.ScrollTabHolderFragment;
import java.io.File;
import java.util.ArrayList;
import org.apache.http.entity.StringEntity;
import org.json.JSONObject;

public class DetailActivity extends BaseActivity
  implements ScrollTabHolder, ViewPager.OnPageChangeListener, View.OnClickListener, DownLoadManager.MutiDownLoadListener, InstallReceiver.AppInstallListener, DialogUtils.DialogCallBack, TaskEntity.OnResultListener
{
  private AppInfoEntity appInfoEntity;
  private TextView appName;
  private Button commentBtn;
  EditText commentContent;
  DialogUtils dialogUtils;
  RatingBar feedbackRating;
  private ImageView icon;
  private int mActionBarHeight;
  private View mHeader;
  private int mHeaderHeight;
  LayoutInflater mLayoutInflater;
  private int mMinHeaderHeight;
  private int mMinHeaderTranslation;
  MyProgressBar mMyProgressBar;
  private PagerAdapter mPagerAdapter;
  private TabPageIndicator mPagerSlidingTabStrip;
  private ViewPager mViewPager;
  private TextView size;

  public void adjustScroll(int paramInt)
  {
  }

  public void back(View paramView)
  {
    finish();
  }

  public void cancel(DialogUtils paramDialogUtils)
  {
    paramDialogUtils.close();
  }

  public void confirm(DialogUtils paramDialogUtils)
  {
    String str = this.commentContent.getText().toString();
    if (str.length() <= 5)
    {
      Toast.makeText(this.context, 2131492913, 0).show();
      return;
    }
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("appId", this.appInfoEntity.getAppId());
      localJSONObject.put("score", this.feedbackRating.getRating());
      localJSONObject.put("apkId", this.appInfoEntity.getApkId());
      localJSONObject.put("versionName", this.appInfoEntity.getVersionName());
      localJSONObject.put("versionCode", this.appInfoEntity.getVersionCode());
      localJSONObject.put("comment", str);
      localJSONObject.put("uid", 0);
      HttpUtil.AddTaskToQueueTail("http://mapp.youqicai.com/api?action=addcomment", new StringEntity(localJSONObject.toString(), "utf-8"), 0, new UpdateParser(), this);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    finally
    {
      paramDialogUtils.close();
    }
  }

  public void failed(String paramString, Exception paramException, int paramInt)
  {
  }

  public void finish()
  {
    DownLoadManager.getInstance().cleanListener();
    Intent localIntent = new Intent();
    localIntent.putExtra("AppInfo", this.appInfoEntity);
    setResult(0, localIntent);
    super.finish();
  }

  @TargetApi(11)
  public int getActionBarHeight()
  {
    if (this.mActionBarHeight != 0)
      return this.mActionBarHeight;
    return this.mActionBarHeight;
  }

  public int getScrollY(AbsListView paramAbsListView)
  {
    View localView = paramAbsListView.getChildAt(0);
    if (localView == null)
      return 0;
    int i = paramAbsListView.getFirstVisiblePosition();
    int j = localView.getTop();
    int k = 0;
    if (i >= 1)
      k = this.mHeaderHeight;
    return k + (-j + i * localView.getHeight());
  }

  protected void initProgressBar()
  {
    this.mMyProgressBar.setOnClickListener(this);
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(this.appInfoEntity);
      ApkManager.getInstance().checkDownloadStatus(localArrayList);
      setAppStatus(this.appInfoEntity.getAppStatus());
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void onClick(View paramView)
  {
    if (paramView == this.commentBtn)
    {
      View localView = this.mLayoutInflater.inflate(2130903068, null);
      this.feedbackRating = ((RatingBar)localView.findViewById(2131099797));
      this.commentContent = ((EditText)localView.findViewById(2131099799));
      this.dialogUtils.init(localView, this);
      this.dialogUtils.show();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    setTheme(2131427335);
    requestWindowFeature(7);
    super.onCreate(paramBundle);
    this.mMinHeaderHeight = getResources().getDimensionPixelSize(2131361814);
    this.mHeaderHeight = getResources().getDimensionPixelSize(2131361813);
    this.mActionBarHeight = 10;
    this.mMinHeaderTranslation = (-this.mMinHeaderHeight + getActionBarHeight());
    setContentView(2130903046);
    getWindow().setFeatureInt(7, 2130903097);
    this.mLayoutInflater = getLayoutInflater();
    this.mHeader = findViewById(2131099682);
    this.mPagerSlidingTabStrip = ((TabPageIndicator)findViewById(2131099686));
    this.mViewPager = ((ViewPager)findViewById(2131099679));
    this.mMyProgressBar = ((MyProgressBar)findViewById(2131099689));
    this.commentBtn = ((Button)findViewById(2131099688));
    this.commentBtn.setOnClickListener(this);
    this.mViewPager.setOffscreenPageLimit(2);
    this.mPagerAdapter = new PagerAdapter(getSupportFragmentManager());
    this.mPagerAdapter.setTabHolderScrollingContent(this);
    this.mViewPager.setAdapter(this.mPagerAdapter);
    this.mPagerSlidingTabStrip.setViewPager(this.mViewPager);
    this.mPagerSlidingTabStrip.setOnPageChangeListener(this);
    this.icon = ((ImageView)findViewById(2131099683));
    this.appName = ((TextView)findViewById(2131099669));
    this.size = ((TextView)findViewById(2131099685));
    this.appInfoEntity = ((AppInfoEntity)getIntent().getSerializableExtra("AppInfo"));
    ImageFetcher.getInstance(getApplicationContext()).loadImage(this.appInfoEntity.getIconUrl(), this.icon, new ImageWorker.SimpleProcessCallback()
    {
      public void onMemoryOver(BitmapDrawable paramAnonymousBitmapDrawable)
      {
        super.onMemoryOver(paramAnonymousBitmapDrawable);
        DetailActivity.this.icon.setScaleType(ImageView.ScaleType.FIT_XY);
      }

      public void onTaskOver(Drawable paramAnonymousDrawable)
      {
        super.onTaskOver(paramAnonymousDrawable);
        DetailActivity.this.icon.setScaleType(ImageView.ScaleType.FIT_XY);
      }
    });
    this.appName.setText(this.appInfoEntity.getAppName());
    StringBuffer localStringBuffer = new StringBuffer();
    int i = BaseDbAdapter.getInstance(this).getDownloadAppDownCount(this.appInfoEntity);
    int j = 0;
    try
    {
      m = Integer.valueOf(this.appInfoEntity.getDownCount()).intValue();
      j = 0;
      if (m > i)
        this.appInfoEntity.setDownCount(String.valueOf(m));
      while (true)
      {
        j = Integer.valueOf(this.appInfoEntity.getDownCount()).intValue();
        k = Integer.valueOf(this.appInfoEntity.getDownCount()).intValue() / 10000;
        String str1 = this.appInfoEntity.getFileSize();
        if ((!str1.equals("null")) && (!TextUtils.isEmpty(str1)))
          break label567;
        str2 = MemoryUtils.formatFileSize(0.0F, false);
        if (k <= 0)
          break label589;
        localStringBuffer.append(k).append("万次下载   ").append(str2);
        this.size.setText(localStringBuffer.toString());
        DownLoadManager.getInstance().cleanListener();
        this.dialogUtils = new DialogUtils(this);
        return;
        if (i != m + 1)
          break;
        this.appInfoEntity.setDownCount(String.valueOf(i));
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        int m;
        localException.printStackTrace();
        int k = 0;
        continue;
        this.appInfoEntity.setDownCount(String.valueOf(m));
        continue;
        label567: String str2 = MemoryUtils.formatFileSize(Float.valueOf(this.appInfoEntity.getFileSize()).floatValue(), false);
        continue;
        label589: if (j < 100)
          localStringBuffer.append("<100次下载     ").append(str2);
        else
          localStringBuffer.append(this.appInfoEntity.getDownCount()).append("次下载   | ").append(str2);
      }
    }
  }

  protected void onDestroy()
  {
    InstallReceiver.unregistAppInstallListener(this);
    super.onDestroy();
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
    if ((str1 == "android.intent.action.PACKAGE_ADDED") && (str2 != null) && (this.appInfoEntity != null) && (str2.equals(this.appInfoEntity.getPackageName())))
    {
      AppInfoEntity localAppInfoEntity = this.appInfoEntity;
      localAppInfoEntity.setAppStatus(6);
      setAppStatus(6);
    }
  }

  public void onPageScrollStateChanged(int paramInt)
  {
  }

  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
  }

  public void onPageSelected(int paramInt)
  {
    ((TaskEntity.OnResultListener)this.mPagerAdapter.getScrollTabHolders().valueAt(paramInt)).adjustScroll((int)(this.mHeader.getHeight() + ViewHelper.getTranslationY(this.mHeader)));
    if (paramInt == 0)
    {
      this.mMyProgressBar.setVisibility(0);
      this.commentBtn.setVisibility(8);
      return;
    }
    this.mMyProgressBar.setVisibility(8);
    this.commentBtn.setVisibility(0);
  }

  public void onResult(Object paramObject)
  {
  }

  protected void onResume()
  {
    super.onResume();
    initProgressBar();
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.mViewPager.getCurrentItem() == paramInt4)
    {
      int i = getScrollY(paramAbsListView);
      ViewHelper.setTranslationY(this.mHeader, Math.max(-i, this.mMinHeaderTranslation));
    }
  }

  protected void onStop()
  {
    super.onStop();
  }

  public void setAppStatus(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
      this.mMyProgressBar.setProgressDrawable(getResources().getDrawable(2130837669));
      setProgress();
      this.mMyProgressBar.setText(getString(2131492880));
      this.mMyProgressBar.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (!ConnectionUtil.isConnected(DetailActivity.this.context))
          {
            BaseUtils.showTost(DetailActivity.this.context, 2131492875);
            return;
          }
          DetailActivity.this.appInfoEntity.setAppStatus(2);
          BaseDbAdapter.getInstance(DetailActivity.this.context).updateDownloadAppInfo(DetailActivity.this.appInfoEntity.getAppId(), DetailActivity.this.appInfoEntity.getAppStatus());
          DetailActivity.this.appInfoEntity.setDownloadTime(String.valueOf(System.currentTimeMillis()));
          BaseDbAdapter.getInstance(DetailActivity.this.context).saveDownloadAppInfo(DetailActivity.this.appInfoEntity);
          DetailActivity.this.setAppStatus(DetailActivity.this.appInfoEntity.getAppStatus());
        }
      });
      return;
    case 1:
    case 2:
      setProgress();
      if ((int)(100.0F * this.appInfoEntity.getdownloadProgress() / Float.valueOf(this.appInfoEntity.getFileSize()).floatValue()) > 0)
        this.mMyProgressBar.setText(getString(2131492885));
      while (true)
      {
        this.mMyProgressBar.setClickable(false);
        this.mMyProgressBar.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            if (!ConnectionUtil.isConnected(DetailActivity.this.getApplicationContext()))
            {
              BaseUtils.showTost(DetailActivity.this.context, 2131492875);
              return;
            }
            DetailActivity.this.appInfoEntity.setAppStatus(3);
            BaseDbAdapter.getInstance(DetailActivity.this.context).updateDownloadAppInfo(DetailActivity.this.appInfoEntity.getAppId(), DetailActivity.this.appInfoEntity.getAppStatus());
            BaseDbAdapter.getInstance(DetailActivity.this.context).updateDownloadProgressAppInfo(DetailActivity.this.appInfoEntity.getAppId(), DetailActivity.this.appInfoEntity.getdownloadProgress());
            DownLoadManager.getInstance().stopDownload(DetailActivity.this.appInfoEntity.getApkUrl());
            DownLoadManager.getInstance().unregisterReceivedNotifyListener(DetailActivity.this.appInfoEntity.getApkUrl());
            DetailActivity.this.setAppStatus(DetailActivity.this.appInfoEntity.getAppStatus());
          }
        });
        startDownload(this.appInfoEntity.getApkUrl());
        return;
        this.mMyProgressBar.setProgressDrawable(getResources().getDrawable(2130837669));
        this.mMyProgressBar.setText(getString(2131492881));
      }
    case 4:
      this.mMyProgressBar.setText(getString(2131492882));
      this.mMyProgressBar.setProgressDrawable(getResources().getDrawable(2130837669));
      this.mMyProgressBar.setProgress(100);
      this.mMyProgressBar.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          String str = ApkManager.getInstance().getApkPath() + File.separator + DetailActivity.this.appInfoEntity.getPackageName() + ".apk";
          if (ApkManager.isValidApk(DetailActivity.this.getApplicationContext(), str))
          {
            ApkManager.getInstance().installApk(DetailActivity.this.context, DetailActivity.this.appInfoEntity.getPackageName() + ".apk");
            return;
          }
          BaseUtils.showTost(DetailActivity.this.context, "未找到安装文件");
          if (!ConnectionUtil.isConnected(DetailActivity.this.getApplicationContext()))
          {
            BaseUtils.showTost(DetailActivity.this.context, 2131492875);
            return;
          }
          DetailActivity.this.appInfoEntity.setAppStatus(2);
          BaseDbAdapter.getInstance(DetailActivity.this.context).updateDownloadAppInfo(DetailActivity.this.appInfoEntity.getAppId(), DetailActivity.this.appInfoEntity.getAppStatus());
          DetailActivity.this.appInfoEntity.setDownloadTime(String.valueOf(System.currentTimeMillis()));
          DetailActivity.this.startDownload(DetailActivity.this.appInfoEntity.getApkUrl());
          BaseDbAdapter.getInstance(DetailActivity.this.context).saveDownloadAppInfo(DetailActivity.this.appInfoEntity);
          DetailActivity.this.setAppStatus(DetailActivity.this.appInfoEntity.getAppStatus());
        }
      });
      return;
    case 6:
      this.mMyProgressBar.setText(getString(2131492886));
      this.mMyProgressBar.setProgress(100);
      this.mMyProgressBar.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          ApkManager.getInstance().startApk(DetailActivity.this.context, DetailActivity.this.appInfoEntity.getPackageName());
        }
      });
      return;
    case 5:
      this.mMyProgressBar.setText(getString(2131492887));
      this.mMyProgressBar.setProgressDrawable(getResources().getDrawable(2130837669));
      this.mMyProgressBar.setProgress(100);
      this.mMyProgressBar.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (!ConnectionUtil.isConnected(DetailActivity.this.getApplicationContext()))
          {
            BaseUtils.showTost(DetailActivity.this.context, 2131492875);
            return;
          }
          DetailActivity.this.appInfoEntity.setAppStatus(2);
          BaseDbAdapter.getInstance(DetailActivity.this.context).updateDownloadAppInfo(DetailActivity.this.appInfoEntity.getAppId(), DetailActivity.this.appInfoEntity.getAppStatus());
          DetailActivity.this.setAppStatus(DetailActivity.this.appInfoEntity.getAppStatus());
          DetailActivity.this.appInfoEntity.setDownloadTime(String.valueOf(System.currentTimeMillis()));
          DetailActivity.this.startDownload(DetailActivity.this.appInfoEntity.getApkUrl());
          BaseDbAdapter.getInstance(DetailActivity.this.context).saveDownloadAppInfo(DetailActivity.this.appInfoEntity);
        }
      });
      return;
    case 3:
    }
    setProgress();
    this.mMyProgressBar.setText(getString(2131492885));
    this.mMyProgressBar.setProgressDrawable(getResources().getDrawable(2130837663));
    this.mMyProgressBar.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        DetailActivity.this.appInfoEntity.setAppStatus(2);
        BaseDbAdapter.getInstance(DetailActivity.this.context).updateDownloadAppInfo(DetailActivity.this.appInfoEntity.getAppId(), DetailActivity.this.appInfoEntity.getAppStatus());
        DetailActivity.this.setAppStatus(DetailActivity.this.appInfoEntity.getAppStatus());
      }
    });
  }

  public void setDownAllSize(float paramFloat, int paramInt)
  {
  }

  public void setDownloadedSize(float paramFloat, int paramInt)
  {
    this.mMyProgressBar.setProgressDrawable(getResources().getDrawable(2130837663));
    this.appInfoEntity.setdownloadProgress(paramFloat);
    setProgress();
  }

  protected void setProgress()
  {
    int i = (int)(100.0F * this.appInfoEntity.getdownloadProgress() / Float.valueOf(this.appInfoEntity.getFileSize()).floatValue());
    Log.e("doll=========>", i + " rate ");
    if (i >= 100)
      i = 100;
    this.mMyProgressBar.setProgressMax(100.0F);
    this.mMyProgressBar.setProgress(i);
    this.mMyProgressBar.setText("下载中 " + String.valueOf(i) + "%");
  }

  protected void startDownload(String paramString)
  {
    this.mMyProgressBar.setClickable(true);
    DownLoadManager.getInstance().registerReceivedNotifyListener(paramString, this, new int[0]);
    this.appInfoEntity.setAppStatus(2);
    DownLoadManager.getInstance().startDownload(this.appInfoEntity);
  }

  public void success(String paramString1, String paramString2, int paramInt)
  {
    this.mMyProgressBar.setText(getString(2131492882));
    this.mMyProgressBar.setProgressDrawable(getResources().getDrawable(2130837669));
    this.mMyProgressBar.setProgress(100);
    this.appInfoEntity.setAppStatus(4);
    this.mMyProgressBar.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        String str = ApkManager.getInstance().getApkPath() + File.separator + DetailActivity.this.appInfoEntity.getPackageName() + ".apk";
        if (ApkManager.isValidApk(DetailActivity.this.getApplicationContext(), str))
        {
          ApkManager.getInstance().installApk(DetailActivity.this.context, DetailActivity.this.appInfoEntity.getPackageName() + ".apk");
          return;
        }
        BaseUtils.showTost(DetailActivity.this.context, "未找到安装文件");
        if (!ConnectionUtil.isConnected(DetailActivity.this.getApplicationContext()))
        {
          BaseUtils.showTost(DetailActivity.this.context, 2131492875);
          return;
        }
        DetailActivity.this.appInfoEntity.setAppStatus(2);
        BaseDbAdapter.getInstance(DetailActivity.this.context).updateDownloadAppInfo(DetailActivity.this.appInfoEntity.getAppId(), DetailActivity.this.appInfoEntity.getAppStatus());
        DetailActivity.this.appInfoEntity.setDownloadTime(String.valueOf(System.currentTimeMillis()));
        BaseDbAdapter.getInstance(DetailActivity.this.context).saveDownloadAppInfo(DetailActivity.this.appInfoEntity);
        DetailActivity.this.setAppStatus(DetailActivity.this.appInfoEntity.getAppStatus());
      }
    });
    if (Float.valueOf(this.appInfoEntity.getFileSize()).floatValue() != this.appInfoEntity.getdownloadProgress())
    {
      this.appInfoEntity.setFileSize(String.valueOf(this.appInfoEntity.getdownloadProgress()));
      BaseDbAdapter.getInstance(this).updateDownloadAppTotalSizeInfo(this.appInfoEntity.getAppId(), String.valueOf(this.appInfoEntity.getdownloadProgress()));
    }
  }

  public class PagerAdapter extends FragmentPagerAdapter
  {
    private final String[] TITLES = { "详情", "评论" };
    private ScrollTabHolder mListener;
    private SparseArrayCompat<ScrollTabHolder> mScrollTabHolders = new SparseArrayCompat();

    public PagerAdapter(FragmentManager arg2)
    {
      super();
    }

    public int getCount()
    {
      return this.TITLES.length;
    }

    public Fragment getItem(int paramInt)
    {
      if (paramInt == 0)
      {
        ScrollTabHolderFragment localScrollTabHolderFragment2 = (ScrollTabHolderFragment)TabDetailFragment.newInstance(DetailActivity.this.appInfoEntity, paramInt);
        this.mScrollTabHolders.put(paramInt, localScrollTabHolderFragment2);
        if (this.mListener != null)
          localScrollTabHolderFragment2.setScrollTabHolder(this.mListener);
        return localScrollTabHolderFragment2;
      }
      ScrollTabHolderFragment localScrollTabHolderFragment1 = (ScrollTabHolderFragment)TabCommentFragment.newInstance(DetailActivity.this.appInfoEntity, paramInt);
      this.mScrollTabHolders.put(paramInt, localScrollTabHolderFragment1);
      if (this.mListener != null)
        localScrollTabHolderFragment1.setScrollTabHolder(this.mListener);
      return localScrollTabHolderFragment1;
    }

    public CharSequence getPageTitle(int paramInt)
    {
      return this.TITLES[paramInt];
    }

    public SparseArrayCompat<ScrollTabHolder> getScrollTabHolders()
    {
      return this.mScrollTabHolders;
    }

    public void setTabHolderScrollingContent(ScrollTabHolder paramScrollTabHolder)
    {
      this.mListener = paramScrollTabHolder;
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.DetailActivity
 * JD-Core Version:    0.6.2
 */