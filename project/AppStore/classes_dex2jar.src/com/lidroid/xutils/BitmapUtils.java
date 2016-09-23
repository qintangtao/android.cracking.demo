package com.lidroid.xutils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import com.lidroid.xutils.bitmap.BitmapCacheListener;
import com.lidroid.xutils.bitmap.BitmapCommonUtils;
import com.lidroid.xutils.bitmap.BitmapDisplayConfig;
import com.lidroid.xutils.bitmap.BitmapGlobalConfig;
import com.lidroid.xutils.bitmap.callback.BitmapLoadCallBack;
import com.lidroid.xutils.bitmap.callback.BitmapLoadFrom;
import com.lidroid.xutils.bitmap.callback.DefaultBitmapLoadCallBack;
import com.lidroid.xutils.bitmap.core.AsyncDrawable;
import com.lidroid.xutils.bitmap.core.BitmapCache;
import com.lidroid.xutils.bitmap.core.BitmapSize;
import com.lidroid.xutils.bitmap.download.Downloader;
import com.lidroid.xutils.cache.FileNameGenerator;
import com.lidroid.xutils.task.PriorityAsyncTask;
import com.lidroid.xutils.task.PriorityExecutor;
import com.lidroid.xutils.task.TaskHandler;
import java.io.File;
import java.lang.ref.WeakReference;

public class BitmapUtils
  implements TaskHandler
{
  private boolean cancelAllTask = false;
  private Context context;
  private BitmapDisplayConfig defaultDisplayConfig;
  private BitmapGlobalConfig globalConfig;
  private boolean pauseTask = false;
  private final Object pauseTaskLock = new Object();

  public BitmapUtils(Context paramContext)
  {
    this(paramContext, null);
  }

  public BitmapUtils(Context paramContext, String paramString)
  {
    if (paramContext == null)
      throw new IllegalArgumentException("context may not be null");
    this.context = paramContext.getApplicationContext();
    this.globalConfig = BitmapGlobalConfig.getInstance(this.context, paramString);
    this.defaultDisplayConfig = new BitmapDisplayConfig();
  }

  public BitmapUtils(Context paramContext, String paramString, float paramFloat)
  {
    this(paramContext, paramString);
    this.globalConfig.setMemCacheSizePercent(paramFloat);
  }

  public BitmapUtils(Context paramContext, String paramString, float paramFloat, int paramInt)
  {
    this(paramContext, paramString);
    this.globalConfig.setMemCacheSizePercent(paramFloat);
    this.globalConfig.setDiskCacheSize(paramInt);
  }

  public BitmapUtils(Context paramContext, String paramString, int paramInt)
  {
    this(paramContext, paramString);
    this.globalConfig.setMemoryCacheSize(paramInt);
  }

  public BitmapUtils(Context paramContext, String paramString, int paramInt1, int paramInt2)
  {
    this(paramContext, paramString);
    this.globalConfig.setMemoryCacheSize(paramInt1);
    this.globalConfig.setDiskCacheSize(paramInt2);
  }

  private static <T extends View> boolean bitmapLoadTaskExist(T paramT, String paramString, BitmapLoadCallBack<T> paramBitmapLoadCallBack)
  {
    boolean bool = true;
    BitmapLoadTask localBitmapLoadTask = getBitmapTaskFromContainer(paramT, paramBitmapLoadCallBack);
    if (localBitmapLoadTask != null)
    {
      String str = localBitmapLoadTask.uri;
      if ((TextUtils.isEmpty(str)) || (!str.equals(paramString)))
        localBitmapLoadTask.cancel(bool);
    }
    else
    {
      bool = false;
    }
    return bool;
  }

  private static <T extends View> BitmapLoadTask<T> getBitmapTaskFromContainer(T paramT, BitmapLoadCallBack<T> paramBitmapLoadCallBack)
  {
    if (paramT != null)
    {
      Drawable localDrawable = paramBitmapLoadCallBack.getDrawable(paramT);
      if ((localDrawable instanceof AsyncDrawable))
        return ((AsyncDrawable)localDrawable).getBitmapWorkerTask();
    }
    return null;
  }

  public void cancel()
  {
    this.pauseTask = true;
    this.cancelAllTask = true;
    synchronized (this.pauseTaskLock)
    {
      this.pauseTaskLock.notifyAll();
      return;
    }
  }

  public void clearCache()
  {
    this.globalConfig.clearCache();
  }

  public void clearCache(String paramString)
  {
    this.globalConfig.clearCache(paramString);
  }

  public void clearDiskCache()
  {
    this.globalConfig.clearDiskCache();
  }

  public void clearDiskCache(String paramString)
  {
    this.globalConfig.clearDiskCache(paramString);
  }

  public void clearMemoryCache()
  {
    this.globalConfig.clearMemoryCache();
  }

  public void clearMemoryCache(String paramString)
  {
    this.globalConfig.clearMemoryCache(paramString);
  }

  public void closeCache()
  {
    this.globalConfig.closeCache();
  }

  public BitmapUtils configBitmapCacheListener(BitmapCacheListener paramBitmapCacheListener)
  {
    this.globalConfig.setBitmapCacheListener(paramBitmapCacheListener);
    return this;
  }

  public BitmapUtils configDefaultAutoRotation(boolean paramBoolean)
  {
    this.defaultDisplayConfig.setAutoRotation(paramBoolean);
    return this;
  }

  public BitmapUtils configDefaultBitmapConfig(Bitmap.Config paramConfig)
  {
    this.defaultDisplayConfig.setBitmapConfig(paramConfig);
    return this;
  }

  public BitmapUtils configDefaultBitmapMaxSize(int paramInt1, int paramInt2)
  {
    this.defaultDisplayConfig.setBitmapMaxSize(new BitmapSize(paramInt1, paramInt2));
    return this;
  }

  public BitmapUtils configDefaultBitmapMaxSize(BitmapSize paramBitmapSize)
  {
    this.defaultDisplayConfig.setBitmapMaxSize(paramBitmapSize);
    return this;
  }

  public BitmapUtils configDefaultCacheExpiry(long paramLong)
  {
    this.globalConfig.setDefaultCacheExpiry(paramLong);
    return this;
  }

  public BitmapUtils configDefaultConnectTimeout(int paramInt)
  {
    this.globalConfig.setDefaultConnectTimeout(paramInt);
    return this;
  }

  public BitmapUtils configDefaultDisplayConfig(BitmapDisplayConfig paramBitmapDisplayConfig)
  {
    this.defaultDisplayConfig = paramBitmapDisplayConfig;
    return this;
  }

  public BitmapUtils configDefaultImageLoadAnimation(Animation paramAnimation)
  {
    this.defaultDisplayConfig.setAnimation(paramAnimation);
    return this;
  }

  public BitmapUtils configDefaultLoadFailedImage(int paramInt)
  {
    this.defaultDisplayConfig.setLoadFailedDrawable(this.context.getResources().getDrawable(paramInt));
    return this;
  }

  public BitmapUtils configDefaultLoadFailedImage(Bitmap paramBitmap)
  {
    this.defaultDisplayConfig.setLoadFailedDrawable(new BitmapDrawable(this.context.getResources(), paramBitmap));
    return this;
  }

  public BitmapUtils configDefaultLoadFailedImage(Drawable paramDrawable)
  {
    this.defaultDisplayConfig.setLoadFailedDrawable(paramDrawable);
    return this;
  }

  public BitmapUtils configDefaultLoadingImage(int paramInt)
  {
    this.defaultDisplayConfig.setLoadingDrawable(this.context.getResources().getDrawable(paramInt));
    return this;
  }

  public BitmapUtils configDefaultLoadingImage(Bitmap paramBitmap)
  {
    this.defaultDisplayConfig.setLoadingDrawable(new BitmapDrawable(this.context.getResources(), paramBitmap));
    return this;
  }

  public BitmapUtils configDefaultLoadingImage(Drawable paramDrawable)
  {
    this.defaultDisplayConfig.setLoadingDrawable(paramDrawable);
    return this;
  }

  public BitmapUtils configDefaultReadTimeout(int paramInt)
  {
    this.globalConfig.setDefaultReadTimeout(paramInt);
    return this;
  }

  public BitmapUtils configDefaultShowOriginal(boolean paramBoolean)
  {
    this.defaultDisplayConfig.setShowOriginal(paramBoolean);
    return this;
  }

  public BitmapUtils configDiskCacheEnabled(boolean paramBoolean)
  {
    this.globalConfig.setDiskCacheEnabled(paramBoolean);
    return this;
  }

  public BitmapUtils configDiskCacheFileNameGenerator(FileNameGenerator paramFileNameGenerator)
  {
    this.globalConfig.setFileNameGenerator(paramFileNameGenerator);
    return this;
  }

  public BitmapUtils configDownloader(Downloader paramDownloader)
  {
    this.globalConfig.setDownloader(paramDownloader);
    return this;
  }

  public BitmapUtils configMemoryCacheEnabled(boolean paramBoolean)
  {
    this.globalConfig.setMemoryCacheEnabled(paramBoolean);
    return this;
  }

  public BitmapUtils configThreadPoolSize(int paramInt)
  {
    this.globalConfig.setThreadPoolSize(paramInt);
    return this;
  }

  public <T extends View> void display(T paramT, String paramString)
  {
    display(paramT, paramString, null, null);
  }

  public <T extends View> void display(T paramT, String paramString, BitmapDisplayConfig paramBitmapDisplayConfig)
  {
    display(paramT, paramString, paramBitmapDisplayConfig, null);
  }

  public <T extends View> void display(T paramT, String paramString, BitmapDisplayConfig paramBitmapDisplayConfig, BitmapLoadCallBack<T> paramBitmapLoadCallBack)
  {
    if (paramT == null);
    do
    {
      return;
      if (paramBitmapLoadCallBack == null)
        paramBitmapLoadCallBack = new DefaultBitmapLoadCallBack();
      if (paramBitmapDisplayConfig != null)
      {
        BitmapDisplayConfig localBitmapDisplayConfig = this.defaultDisplayConfig;
        if (paramBitmapDisplayConfig != localBitmapDisplayConfig);
      }
      else
      {
        paramBitmapDisplayConfig = this.defaultDisplayConfig.cloneNew();
      }
      BitmapSize localBitmapSize1 = paramBitmapDisplayConfig.getBitmapMaxSize();
      BitmapSize localBitmapSize2 = BitmapCommonUtils.optimizeMaxSizeByView(paramT, localBitmapSize1.getWidth(), localBitmapSize1.getHeight());
      paramBitmapDisplayConfig.setBitmapMaxSize(localBitmapSize2);
      paramT.clearAnimation();
      if (TextUtils.isEmpty(paramString))
      {
        Drawable localDrawable = paramBitmapDisplayConfig.getLoadFailedDrawable();
        paramBitmapLoadCallBack.onLoadFailed(paramT, paramString, localDrawable);
        return;
      }
      paramBitmapLoadCallBack.onPreLoad(paramT, paramString, paramBitmapDisplayConfig);
      Bitmap localBitmap = this.globalConfig.getBitmapCache().getBitmapFromMemCache(paramString, paramBitmapDisplayConfig);
      if (localBitmap != null)
      {
        paramBitmapLoadCallBack.onLoadStarted(paramT, paramString, paramBitmapDisplayConfig);
        BitmapLoadFrom localBitmapLoadFrom = BitmapLoadFrom.MEMORY_CACHE;
        paramBitmapLoadCallBack.onLoadCompleted(paramT, paramString, localBitmap, paramBitmapDisplayConfig, localBitmapLoadFrom);
        return;
      }
    }
    while (bitmapLoadTaskExist(paramT, paramString, paramBitmapLoadCallBack));
    BitmapLoadTask localBitmapLoadTask = new BitmapLoadTask(paramT, paramString, paramBitmapDisplayConfig, paramBitmapLoadCallBack);
    PriorityExecutor localPriorityExecutor = this.globalConfig.getBitmapLoadExecutor();
    File localFile = getBitmapFileFromDiskCache(paramString);
    if ((localFile != null) && (localFile.exists()));
    for (int i = 1; ; i = 0)
    {
      if ((i != 0) && (localPriorityExecutor.isBusy()))
        localPriorityExecutor = this.globalConfig.getDiskCacheExecutor();
      AsyncDrawable localAsyncDrawable = new AsyncDrawable(paramBitmapDisplayConfig.getLoadingDrawable(), localBitmapLoadTask);
      paramBitmapLoadCallBack.setDrawable(paramT, localAsyncDrawable);
      localBitmapLoadTask.setPriority(paramBitmapDisplayConfig.getPriority());
      Object[] arrayOfObject = new Object[0];
      localBitmapLoadTask.executeOnExecutor(localPriorityExecutor, arrayOfObject);
      return;
    }
  }

  public <T extends View> void display(T paramT, String paramString, BitmapLoadCallBack<T> paramBitmapLoadCallBack)
  {
    display(paramT, paramString, null, paramBitmapLoadCallBack);
  }

  public void flushCache()
  {
    this.globalConfig.flushCache();
  }

  public File getBitmapFileFromDiskCache(String paramString)
  {
    return this.globalConfig.getBitmapCache().getBitmapFileFromDiskCache(paramString);
  }

  public Bitmap getBitmapFromMemCache(String paramString, BitmapDisplayConfig paramBitmapDisplayConfig)
  {
    if (paramBitmapDisplayConfig == null)
      paramBitmapDisplayConfig = this.defaultDisplayConfig;
    return this.globalConfig.getBitmapCache().getBitmapFromMemCache(paramString, paramBitmapDisplayConfig);
  }

  public boolean isCancelled()
  {
    return this.cancelAllTask;
  }

  public boolean isPaused()
  {
    return this.pauseTask;
  }

  public void pause()
  {
    this.pauseTask = true;
    flushCache();
  }

  public void resume()
  {
    this.pauseTask = false;
    synchronized (this.pauseTaskLock)
    {
      this.pauseTaskLock.notifyAll();
      return;
    }
  }

  public boolean supportCancel()
  {
    return true;
  }

  public boolean supportPause()
  {
    return true;
  }

  public boolean supportResume()
  {
    return true;
  }

  public class BitmapLoadTask<T extends View> extends PriorityAsyncTask<Object, Object, Bitmap>
  {
    private static final int PROGRESS_LOADING = 1;
    private static final int PROGRESS_LOAD_STARTED;
    private final BitmapLoadCallBack<T> callBack;
    private final WeakReference<T> containerReference;
    private final BitmapDisplayConfig displayConfig;
    private BitmapLoadFrom from = BitmapLoadFrom.DISK_CACHE;
    private final String uri;

    public BitmapLoadTask(String paramBitmapDisplayConfig, BitmapDisplayConfig paramBitmapLoadCallBack, BitmapLoadCallBack<T> arg4)
    {
      Object localObject1;
      Object localObject2;
      if ((paramBitmapDisplayConfig == null) || (paramBitmapLoadCallBack == null) || (localObject1 == null) || (localObject2 == null))
        throw new IllegalArgumentException("args may not be null");
      this.containerReference = new WeakReference(paramBitmapDisplayConfig);
      this.callBack = localObject2;
      this.uri = paramBitmapLoadCallBack;
      this.displayConfig = localObject1;
    }

    protected Bitmap doInBackground(Object[] paramArrayOfObject)
    {
      while (true)
      {
        synchronized (BitmapUtils.this.pauseTaskLock)
        {
          if ((!BitmapUtils.this.pauseTask) || (isCancelled()))
          {
            boolean bool1 = isCancelled();
            Bitmap localBitmap = null;
            if (!bool1)
            {
              View localView = getTargetContainer();
              localBitmap = null;
              if (localView != null)
              {
                Object[] arrayOfObject = new Object[1];
                arrayOfObject[0] = Integer.valueOf(0);
                publishProgress(arrayOfObject);
                localBitmap = BitmapUtils.this.globalConfig.getBitmapCache().getBitmapFromDiskCache(this.uri, this.displayConfig);
              }
            }
            if ((localBitmap == null) && (!isCancelled()) && (getTargetContainer() != null))
            {
              localBitmap = BitmapUtils.this.globalConfig.getBitmapCache().downloadBitmap(this.uri, this.displayConfig, this);
              this.from = BitmapLoadFrom.URI;
            }
            return localBitmap;
          }
        }
        try
        {
          BitmapUtils.this.pauseTaskLock.wait();
          boolean bool2 = BitmapUtils.this.cancelAllTask;
          if (bool2)
          {
            return null;
            localObject2 = finally;
            throw localObject2;
          }
        }
        catch (Throwable localThrowable)
        {
        }
      }
    }

    public T getTargetContainer()
    {
      View localView = (View)this.containerReference.get();
      if (this == BitmapUtils.getBitmapTaskFromContainer(localView, this.callBack))
        return localView;
      return null;
    }

    protected void onCancelled(Bitmap paramBitmap)
    {
      synchronized (BitmapUtils.this.pauseTaskLock)
      {
        BitmapUtils.this.pauseTaskLock.notifyAll();
        return;
      }
    }

    protected void onPostExecute(Bitmap paramBitmap)
    {
      View localView = getTargetContainer();
      if (localView != null)
      {
        if (paramBitmap != null)
          this.callBack.onLoadCompleted(localView, this.uri, paramBitmap, this.displayConfig, this.from);
      }
      else
        return;
      this.callBack.onLoadFailed(localView, this.uri, this.displayConfig.getLoadFailedDrawable());
    }

    protected void onProgressUpdate(Object[] paramArrayOfObject)
    {
      if ((paramArrayOfObject == null) || (paramArrayOfObject.length == 0));
      View localView;
      do
      {
        do
        {
          return;
          localView = getTargetContainer();
        }
        while (localView == null);
        switch (((Integer)paramArrayOfObject[0]).intValue())
        {
        default:
          return;
        case 0:
          this.callBack.onLoadStarted(localView, this.uri, this.displayConfig);
          return;
        case 1:
        }
      }
      while (paramArrayOfObject.length != 3);
      this.callBack.onLoading(localView, this.uri, this.displayConfig, ((Long)paramArrayOfObject[1]).longValue(), ((Long)paramArrayOfObject[2]).longValue());
    }

    public void updateProgress(long paramLong1, long paramLong2)
    {
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(1);
      arrayOfObject[1] = Long.valueOf(paramLong1);
      arrayOfObject[2] = Long.valueOf(paramLong2);
      publishProgress(arrayOfObject);
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.BitmapUtils
 * JD-Core Version:    0.6.2
 */