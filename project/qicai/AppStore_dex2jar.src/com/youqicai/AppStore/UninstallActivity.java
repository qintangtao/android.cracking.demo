package com.youqicai.AppStore;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.lidroid.xutils.ViewUtils;
import com.lidroid.xutils.view.annotation.ContentView;
import com.lidroid.xutils.view.annotation.ViewInject;
import com.youqicai.AppStore.utils.MemoryUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@ContentView(2130903058)
public class UninstallActivity extends BaseActivity
{
  private static final int MSG_DISMISS_PROGRESS = 203;
  private static final int MSG_INIT_OK = 202;
  private static final int MSG_PRIVATE = 200;
  private static final int MSG_REFRESH_PKG_ICON = 204;
  private static final int MSG_UPDATE = 201;
  AppCache cache;
  Handler handler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default:
      case 201:
      case 202:
      case 203:
      }
      do
      {
        return;
        if (UninstallActivity.this.resUpdater != null)
          UninstallActivity.this.resUpdater.aborted = true;
        ArrayList localArrayList2 = (ArrayList)paramAnonymousMessage.obj;
        UninstallActivity.this.cache.update(localArrayList2);
        UninstallActivity localUninstallActivity = UninstallActivity.this;
        UninstallActivity.ResourceUpdaterThread localResourceUpdaterThread = new UninstallActivity.ResourceUpdaterThread(UninstallActivity.this, UninstallActivity.this.cache, UninstallActivity.this.handler);
        localUninstallActivity.resUpdater = localResourceUpdaterThread;
        localResourceUpdaterThread.start();
        UninstallActivity.this.handler.sendEmptyMessage(202);
        return;
        ArrayAdapter localArrayAdapter = (ArrayAdapter)UninstallActivity.this.listView.getAdapter();
        localArrayAdapter.setNotifyOnChange(false);
        localArrayAdapter.clear();
        synchronized (UninstallActivity.this.cache)
        {
          ArrayList localArrayList1 = UninstallActivity.this.cache.appList;
          int i = 0;
          int j = localArrayList1.size();
          while (i < j)
          {
            localArrayAdapter.add(localArrayList1.get(i));
            i++;
          }
          localArrayAdapter.notifyDataSetChanged();
          sendEmptyMessage(203);
          return;
        }
      }
      while (UninstallActivity.this.progress == null);
      UninstallActivity.this.progress.dismiss();
      UninstallActivity.this.progress = null;
    }
  };

  @ViewInject(2131099760)
  ListView listView;
  ProgressDialog progress;
  ResourceUpdaterThread resUpdater;

  private static List<AppInfoHolder> getSelected(ListView paramListView)
  {
    int i = paramListView.getCount();
    ArrayList localArrayList = new ArrayList();
    for (int j = 0; j < i; j++)
    {
      AppInfoHolder localAppInfoHolder = (AppInfoHolder)paramListView.getItemAtPosition(j);
      if (localAppInfoHolder.checked)
        localArrayList.add(localAppInfoHolder);
    }
    return localArrayList;
  }

  private void loadApps()
  {
    if (this.progress == null)
      this.progress = new ProgressDialog(this);
    this.progress.setMessage(getResources().getText(2131492897));
    this.progress.setIndeterminate(true);
    this.progress.show();
    new Thread(new Runnable()
    {
      public void run()
      {
        PackageManager localPackageManager = UninstallActivity.this.getPackageManager();
        List localList = localPackageManager.getInstalledApplications(0);
        ArrayList localArrayList = new ArrayList();
        int i = 0;
        int j = localList.size();
        ApplicationInfo localApplicationInfo;
        if (i < j)
        {
          localApplicationInfo = (ApplicationInfo)localList.get(i);
          if ((localApplicationInfo == null) || ((0x1 & localApplicationInfo.flags) <= 0));
        }
        while (true)
        {
          i++;
          break;
          UninstallActivity.AppInfoHolder localAppInfoHolder = new UninstallActivity.AppInfoHolder();
          localAppInfoHolder.appInfo = localApplicationInfo;
          try
          {
            PackageInfo localPackageInfo = localPackageManager.getPackageInfo(localApplicationInfo.packageName, 0);
            localAppInfoHolder.label = localPackageInfo.applicationInfo.loadLabel(localPackageManager);
            localAppInfoHolder.appInfo = localPackageInfo.applicationInfo;
            localAppInfoHolder.size = MemoryUtils.formatFileSize((float)new File(localPackageInfo.applicationInfo.publicSourceDir).length(), false);
            label154: localArrayList.add(localAppInfoHolder);
            continue;
            UninstallActivity.this.handler.sendMessage(UninstallActivity.this.handler.obtainMessage(201, localArrayList));
            return;
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException)
          {
            break label154;
          }
        }
      }
    }
    , "MainUpdater").start();
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    ViewUtils.inject(this);
    this.cache = new AppCache();
    ArrayAdapter local1 = new ArrayAdapter(this, 2130903088)
    {
      public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
      {
        if (paramAnonymousView == null);
        for (View localView = UninstallActivity.this.getLayoutInflater().inflate(2130903088, paramAnonymousViewGroup, false); paramAnonymousInt >= getCount(); localView = paramAnonymousView)
          return localView;
        UninstallActivity.AppInfoHolder localAppInfoHolder = (UninstallActivity.AppInfoHolder)getItem(paramAnonymousInt);
        TextView localTextView1 = (TextView)localView.findViewById(2131099748);
        TextView localTextView2;
        label107: ImageView localImageView;
        if (localAppInfoHolder.label != null)
        {
          localTextView1.setText(localAppInfoHolder.label);
          localTextView2 = (TextView)localView.findViewById(2131099861);
          if (localAppInfoHolder.size == null)
            break label182;
          localTextView2.setText(localAppInfoHolder.size);
          localImageView = (ImageView)localView.findViewById(2131099857);
          if (localAppInfoHolder.icon == null)
            break label192;
          localImageView.setImageDrawable(localAppInfoHolder.icon);
        }
        while (true)
        {
          ((Button)localView.findViewById(2131099858)).setOnClickListener(new UninstallActivity.UnintallListener(UninstallActivity.this, localAppInfoHolder));
          return localView;
          localTextView1.setText(localAppInfoHolder.appInfo.packageName);
          break;
          label182: localTextView2.setText(2131492896);
          break label107;
          try
          {
            label192: localImageView.setImageDrawable(UninstallActivity.this.getPackageManager().getDefaultActivityIcon());
          }
          catch (Exception localException)
          {
            localImageView.setImageDrawable(null);
          }
        }
      }
    };
    this.listView.setAdapter(local1);
    this.listView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        UninstallActivity.AppInfoHolder localAppInfoHolder = (UninstallActivity.AppInfoHolder)paramAnonymousAdapterView.getItemAtPosition(paramAnonymousInt);
        if (!localAppInfoHolder.checked);
        for (boolean bool = true; ; bool = false)
        {
          localAppInfoHolder.checked = bool;
          ((ArrayAdapter)UninstallActivity.this.listView.getAdapter()).notifyDataSetChanged();
          return;
        }
      }
    });
  }

  protected void onDestroy()
  {
    if (this.progress != null)
    {
      this.progress.dismiss();
      this.progress = null;
    }
    super.onDestroy();
  }

  protected void onStart()
  {
    super.onStart();
    loadApps();
  }

  private static final class AppCache
  {
    ArrayList<UninstallActivity.AppInfoHolder> appList = new ArrayList();
    HashMap<String, UninstallActivity.AppInfoHolder> appLookup = new HashMap();

    void clear()
    {
      try
      {
        this.appList.clear();
        this.appLookup.clear();
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    ArrayList<UninstallActivity.AppInfoHolder> generateLocalList()
    {
      try
      {
        ArrayList localArrayList = new ArrayList();
        localArrayList.addAll(this.appList);
        return localArrayList;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    void update(ArrayList<UninstallActivity.AppInfoHolder> paramArrayList)
    {
      while (true)
      {
        int i;
        try
        {
          this.appList.retainAll(paramArrayList);
          i = 0;
          int j = paramArrayList.size();
          if (i < j)
          {
            UninstallActivity.AppInfoHolder localAppInfoHolder1 = (UninstallActivity.AppInfoHolder)paramArrayList.get(i);
            UninstallActivity.AppInfoHolder localAppInfoHolder2 = (UninstallActivity.AppInfoHolder)this.appLookup.get(localAppInfoHolder1.appInfo.packageName);
            if (localAppInfoHolder2 == null)
            {
              localAppInfoHolder2 = localAppInfoHolder1;
              this.appLookup.put(localAppInfoHolder1.appInfo.packageName, localAppInfoHolder1);
              if (this.appList.contains(localAppInfoHolder2))
                break label141;
              this.appList.add(localAppInfoHolder2);
              break label141;
            }
            localAppInfoHolder2.appInfo = localAppInfoHolder1.appInfo;
            localAppInfoHolder2.checked = localAppInfoHolder1.checked;
            continue;
          }
        }
        finally
        {
        }
        return;
        label141: i++;
      }
    }
  }

  private static final class AppInfoHolder
  {
    ApplicationInfo appInfo;
    boolean checked;
    Drawable icon;
    CharSequence label;
    String size;

    public boolean equals(Object paramObject)
    {
      if (!(paramObject instanceof AppInfoHolder))
        return false;
      AppInfoHolder localAppInfoHolder = (AppInfoHolder)paramObject;
      return this.appInfo.packageName.equals(localAppInfoHolder.appInfo.packageName);
    }
  }

  private static final class ResourceUpdaterThread extends Thread
  {
    volatile boolean aborted;
    private Activity ac;
    private UninstallActivity.AppCache appCache;
    private Handler handler;

    ResourceUpdaterThread(Activity paramActivity, UninstallActivity.AppCache paramAppCache, Handler paramHandler)
    {
      super();
      this.ac = paramActivity;
      this.appCache = paramAppCache;
      this.handler = paramHandler;
    }

    public void run()
    {
      PackageManager localPackageManager = this.ac.getPackageManager();
      ArrayList localArrayList = this.appCache.generateLocalList();
      int i = 0;
      int j = localArrayList.size();
      while (true)
      {
        if (i < j)
        {
          if (this.aborted)
            return;
          ApplicationInfo localApplicationInfo2 = ((UninstallActivity.AppInfoHolder)localArrayList.get(i)).appInfo;
          CharSequence localCharSequence = localApplicationInfo2.loadLabel(localPackageManager);
          UninstallActivity.AppInfoHolder localAppInfoHolder2 = (UninstallActivity.AppInfoHolder)this.appCache.appLookup.get(localApplicationInfo2.packageName);
          if (localAppInfoHolder2 != null)
            synchronized (this.appCache)
            {
              localAppInfoHolder2.label = localCharSequence;
            }
        }
        else
        {
          int k = 0;
          int m = localArrayList.size();
          while (true)
          {
            ApplicationInfo localApplicationInfo1;
            if (k < m)
            {
              if (this.aborted)
                break;
              localApplicationInfo1 = ((UninstallActivity.AppInfoHolder)localArrayList.get(k)).appInfo;
            }
            try
            {
              Drawable localDrawable = localApplicationInfo1.loadIcon(localPackageManager);
              UninstallActivity.AppInfoHolder localAppInfoHolder1 = (UninstallActivity.AppInfoHolder)this.appCache.appLookup.get(localApplicationInfo1.packageName);
              if (localAppInfoHolder1 != null)
                localAppInfoHolder1.icon = localDrawable;
              label191: k++;
              continue;
              this.handler.sendEmptyMessage(204);
              return;
            }
            catch (OutOfMemoryError localOutOfMemoryError)
            {
              break label191;
            }
          }
        }
        i++;
      }
    }
  }

  class UnintallListener
    implements View.OnClickListener
  {
    UninstallActivity.AppInfoHolder holder;

    public UnintallListener(UninstallActivity.AppInfoHolder arg2)
    {
      Object localObject;
      this.holder = localObject;
    }

    public void onClick(View paramView)
    {
      Intent localIntent = new Intent("android.intent.action.DELETE", Uri.fromParts("package", this.holder.appInfo.packageName, null));
      try
      {
        UninstallActivity.this.startActivity(localIntent);
        return;
      }
      catch (Exception localException)
      {
      }
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.UninstallActivity
 * JD-Core Version:    0.6.2
 */