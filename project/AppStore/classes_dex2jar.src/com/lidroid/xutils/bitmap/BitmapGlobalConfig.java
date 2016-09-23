package com.lidroid.xutils.bitmap;

import android.app.ActivityManager;
import android.content.Context;
import android.text.TextUtils;
import com.lidroid.xutils.bitmap.core.BitmapCache;
import com.lidroid.xutils.bitmap.download.DefaultDownloader;
import com.lidroid.xutils.bitmap.download.Downloader;
import com.lidroid.xutils.cache.FileNameGenerator;
import com.lidroid.xutils.task.Priority;
import com.lidroid.xutils.task.PriorityAsyncTask;
import com.lidroid.xutils.task.PriorityExecutor;
import com.lidroid.xutils.util.LogUtils;
import com.lidroid.xutils.util.OtherUtils;
import java.util.HashMap;

public class BitmapGlobalConfig
{
  private static final PriorityExecutor BITMAP_LOAD_EXECUTOR = new PriorityExecutor(5);
  private static final int DEFAULT_POOL_SIZE = 5;
  private static final PriorityExecutor DISK_CACHE_EXECUTOR = new PriorityExecutor(2);
  public static final int MIN_DISK_CACHE_SIZE = 10485760;
  public static final int MIN_MEMORY_CACHE_SIZE = 2097152;
  private static final HashMap<String, BitmapGlobalConfig> configMap = new HashMap(1);
  private BitmapCache bitmapCache;
  private BitmapCacheListener bitmapCacheListener;
  private long defaultCacheExpiry = 2592000000L;
  private int defaultConnectTimeout = 15000;
  private int defaultReadTimeout = 15000;
  private boolean diskCacheEnabled = true;
  private String diskCachePath;
  private int diskCacheSize = 52428800;
  private Downloader downloader;
  private FileNameGenerator fileNameGenerator;
  private Context mContext;
  private boolean memoryCacheEnabled = true;
  private int memoryCacheSize = 4194304;

  private BitmapGlobalConfig(Context paramContext, String paramString)
  {
    if (paramContext == null)
      throw new IllegalArgumentException("context may not be null");
    this.mContext = paramContext;
    this.diskCachePath = paramString;
    initBitmapCache();
  }

  public static BitmapGlobalConfig getInstance(Context paramContext, String paramString)
  {
    try
    {
      if (TextUtils.isEmpty(paramString))
        paramString = OtherUtils.getDiskCacheDir(paramContext, "xBitmapCache");
      if (configMap.containsKey(paramString));
      BitmapGlobalConfig localBitmapGlobalConfig;
      for (Object localObject2 = (BitmapGlobalConfig)configMap.get(paramString); ; localObject2 = localBitmapGlobalConfig)
      {
        return localObject2;
        localBitmapGlobalConfig = new BitmapGlobalConfig(paramContext, paramString);
        configMap.put(paramString, localBitmapGlobalConfig);
      }
    }
    finally
    {
    }
  }

  private int getMemoryClass()
  {
    return ((ActivityManager)this.mContext.getSystemService("activity")).getMemoryClass();
  }

  private void initBitmapCache()
  {
    BitmapCacheManagementTask localBitmapCacheManagementTask1 = new BitmapCacheManagementTask(null);
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(0);
    localBitmapCacheManagementTask1.execute(arrayOfObject1);
    BitmapCacheManagementTask localBitmapCacheManagementTask2 = new BitmapCacheManagementTask(null);
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Integer.valueOf(1);
    localBitmapCacheManagementTask2.execute(arrayOfObject2);
  }

  public void clearCache()
  {
    BitmapCacheManagementTask localBitmapCacheManagementTask = new BitmapCacheManagementTask(null);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(4);
    localBitmapCacheManagementTask.execute(arrayOfObject);
  }

  public void clearCache(String paramString)
  {
    BitmapCacheManagementTask localBitmapCacheManagementTask = new BitmapCacheManagementTask(null);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(7);
    arrayOfObject[1] = paramString;
    localBitmapCacheManagementTask.execute(arrayOfObject);
  }

  public void clearDiskCache()
  {
    BitmapCacheManagementTask localBitmapCacheManagementTask = new BitmapCacheManagementTask(null);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(6);
    localBitmapCacheManagementTask.execute(arrayOfObject);
  }

  public void clearDiskCache(String paramString)
  {
    BitmapCacheManagementTask localBitmapCacheManagementTask = new BitmapCacheManagementTask(null);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(9);
    arrayOfObject[1] = paramString;
    localBitmapCacheManagementTask.execute(arrayOfObject);
  }

  public void clearMemoryCache()
  {
    BitmapCacheManagementTask localBitmapCacheManagementTask = new BitmapCacheManagementTask(null);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(5);
    localBitmapCacheManagementTask.execute(arrayOfObject);
  }

  public void clearMemoryCache(String paramString)
  {
    BitmapCacheManagementTask localBitmapCacheManagementTask = new BitmapCacheManagementTask(null);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(8);
    arrayOfObject[1] = paramString;
    localBitmapCacheManagementTask.execute(arrayOfObject);
  }

  public void closeCache()
  {
    BitmapCacheManagementTask localBitmapCacheManagementTask = new BitmapCacheManagementTask(null);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(3);
    localBitmapCacheManagementTask.execute(arrayOfObject);
  }

  public void flushCache()
  {
    BitmapCacheManagementTask localBitmapCacheManagementTask = new BitmapCacheManagementTask(null);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(2);
    localBitmapCacheManagementTask.execute(arrayOfObject);
  }

  public BitmapCache getBitmapCache()
  {
    if (this.bitmapCache == null)
      this.bitmapCache = new BitmapCache(this);
    return this.bitmapCache;
  }

  public BitmapCacheListener getBitmapCacheListener()
  {
    return this.bitmapCacheListener;
  }

  public PriorityExecutor getBitmapLoadExecutor()
  {
    return BITMAP_LOAD_EXECUTOR;
  }

  public long getDefaultCacheExpiry()
  {
    return this.defaultCacheExpiry;
  }

  public int getDefaultConnectTimeout()
  {
    return this.defaultConnectTimeout;
  }

  public int getDefaultReadTimeout()
  {
    return this.defaultReadTimeout;
  }

  public PriorityExecutor getDiskCacheExecutor()
  {
    return DISK_CACHE_EXECUTOR;
  }

  public String getDiskCachePath()
  {
    return this.diskCachePath;
  }

  public int getDiskCacheSize()
  {
    return this.diskCacheSize;
  }

  public Downloader getDownloader()
  {
    if (this.downloader == null)
      this.downloader = new DefaultDownloader();
    this.downloader.setContext(this.mContext);
    this.downloader.setDefaultExpiry(getDefaultCacheExpiry());
    this.downloader.setDefaultConnectTimeout(getDefaultConnectTimeout());
    this.downloader.setDefaultReadTimeout(getDefaultReadTimeout());
    return this.downloader;
  }

  public FileNameGenerator getFileNameGenerator()
  {
    return this.fileNameGenerator;
  }

  public int getMemoryCacheSize()
  {
    return this.memoryCacheSize;
  }

  public int getThreadPoolSize()
  {
    return BITMAP_LOAD_EXECUTOR.getPoolSize();
  }

  public boolean isDiskCacheEnabled()
  {
    return this.diskCacheEnabled;
  }

  public boolean isMemoryCacheEnabled()
  {
    return this.memoryCacheEnabled;
  }

  public void setBitmapCacheListener(BitmapCacheListener paramBitmapCacheListener)
  {
    this.bitmapCacheListener = paramBitmapCacheListener;
  }

  public void setDefaultCacheExpiry(long paramLong)
  {
    this.defaultCacheExpiry = paramLong;
  }

  public void setDefaultConnectTimeout(int paramInt)
  {
    this.defaultConnectTimeout = paramInt;
  }

  public void setDefaultReadTimeout(int paramInt)
  {
    this.defaultReadTimeout = paramInt;
  }

  public void setDiskCacheEnabled(boolean paramBoolean)
  {
    this.diskCacheEnabled = paramBoolean;
  }

  public void setDiskCacheSize(int paramInt)
  {
    if (paramInt >= 10485760)
    {
      this.diskCacheSize = paramInt;
      if (this.bitmapCache != null)
        this.bitmapCache.setDiskCacheSize(this.diskCacheSize);
    }
  }

  public void setDownloader(Downloader paramDownloader)
  {
    this.downloader = paramDownloader;
  }

  public void setFileNameGenerator(FileNameGenerator paramFileNameGenerator)
  {
    this.fileNameGenerator = paramFileNameGenerator;
    if (this.bitmapCache != null)
      this.bitmapCache.setDiskCacheFileNameGenerator(paramFileNameGenerator);
  }

  public void setMemCacheSizePercent(float paramFloat)
  {
    if ((paramFloat < 0.05F) || (paramFloat > 0.8F))
      throw new IllegalArgumentException("percent must be between 0.05 and 0.8 (inclusive)");
    this.memoryCacheSize = Math.round(1024.0F * (1024.0F * (paramFloat * getMemoryClass())));
    if (this.bitmapCache != null)
      this.bitmapCache.setMemoryCacheSize(this.memoryCacheSize);
  }

  public void setMemoryCacheEnabled(boolean paramBoolean)
  {
    this.memoryCacheEnabled = paramBoolean;
  }

  public void setMemoryCacheSize(int paramInt)
  {
    if (paramInt >= 2097152)
    {
      this.memoryCacheSize = paramInt;
      if (this.bitmapCache != null)
        this.bitmapCache.setMemoryCacheSize(this.memoryCacheSize);
      return;
    }
    setMemCacheSizePercent(0.3F);
  }

  public void setThreadPoolSize(int paramInt)
  {
    BITMAP_LOAD_EXECUTOR.setPoolSize(paramInt);
  }

  private class BitmapCacheManagementTask extends PriorityAsyncTask<Object, Void, Object[]>
  {
    public static final int MESSAGE_CLEAR = 4;
    public static final int MESSAGE_CLEAR_BY_KEY = 7;
    public static final int MESSAGE_CLEAR_DISK = 6;
    public static final int MESSAGE_CLEAR_DISK_BY_KEY = 9;
    public static final int MESSAGE_CLEAR_MEMORY = 5;
    public static final int MESSAGE_CLEAR_MEMORY_BY_KEY = 8;
    public static final int MESSAGE_CLOSE = 3;
    public static final int MESSAGE_FLUSH = 2;
    public static final int MESSAGE_INIT_DISK_CACHE = 1;
    public static final int MESSAGE_INIT_MEMORY_CACHE;

    private BitmapCacheManagementTask()
    {
      setPriority(Priority.UI_TOP);
    }

    protected Object[] doInBackground(Object[] paramArrayOfObject)
    {
      if ((paramArrayOfObject == null) || (paramArrayOfObject.length == 0));
      BitmapCache localBitmapCache;
      do
      {
        do
        {
          do
          {
            do
            {
              return paramArrayOfObject;
              localBitmapCache = BitmapGlobalConfig.this.getBitmapCache();
            }
            while (localBitmapCache == null);
            try
            {
              switch (((Integer)paramArrayOfObject[0]).intValue())
              {
              case 0:
                localBitmapCache.initMemoryCache();
                return paramArrayOfObject;
              case 1:
              case 2:
              case 3:
              case 4:
              case 5:
              case 6:
              case 7:
              case 8:
              case 9:
              }
            }
            catch (Throwable localThrowable)
            {
              LogUtils.e(localThrowable.getMessage(), localThrowable);
              return paramArrayOfObject;
            }
            localBitmapCache.initDiskCache();
            return paramArrayOfObject;
            localBitmapCache.flush();
            return paramArrayOfObject;
            localBitmapCache.clearMemoryCache();
            localBitmapCache.close();
            return paramArrayOfObject;
            localBitmapCache.clearCache();
            return paramArrayOfObject;
            localBitmapCache.clearMemoryCache();
            return paramArrayOfObject;
            localBitmapCache.clearDiskCache();
            return paramArrayOfObject;
          }
          while (paramArrayOfObject.length != 2);
          localBitmapCache.clearCache(String.valueOf(paramArrayOfObject[1]));
          return paramArrayOfObject;
        }
        while (paramArrayOfObject.length != 2);
        localBitmapCache.clearMemoryCache(String.valueOf(paramArrayOfObject[1]));
        return paramArrayOfObject;
      }
      while (paramArrayOfObject.length != 2);
      localBitmapCache.clearDiskCache(String.valueOf(paramArrayOfObject[1]));
      return paramArrayOfObject;
      return paramArrayOfObject;
    }

    protected void onPostExecute(Object[] paramArrayOfObject)
    {
      if ((BitmapGlobalConfig.this.bitmapCacheListener == null) || (paramArrayOfObject == null) || (paramArrayOfObject.length == 0));
      do
      {
        do
        {
          do
          {
            return;
            try
            {
              switch (((Integer)paramArrayOfObject[0]).intValue())
              {
              case 0:
                BitmapGlobalConfig.this.bitmapCacheListener.onInitMemoryCacheFinished();
                return;
              case 1:
              case 2:
              case 3:
              case 4:
              case 5:
              case 6:
              case 7:
              case 8:
              case 9:
              }
            }
            catch (Throwable localThrowable)
            {
              LogUtils.e(localThrowable.getMessage(), localThrowable);
              return;
            }
            BitmapGlobalConfig.this.bitmapCacheListener.onInitDiskFinished();
            return;
            BitmapGlobalConfig.this.bitmapCacheListener.onFlushCacheFinished();
            return;
            BitmapGlobalConfig.this.bitmapCacheListener.onCloseCacheFinished();
            return;
            BitmapGlobalConfig.this.bitmapCacheListener.onClearCacheFinished();
            return;
            BitmapGlobalConfig.this.bitmapCacheListener.onClearMemoryCacheFinished();
            return;
            BitmapGlobalConfig.this.bitmapCacheListener.onClearDiskCacheFinished();
            return;
          }
          while (paramArrayOfObject.length != 2);
          BitmapGlobalConfig.this.bitmapCacheListener.onClearCacheFinished(String.valueOf(paramArrayOfObject[1]));
          return;
        }
        while (paramArrayOfObject.length != 2);
        BitmapGlobalConfig.this.bitmapCacheListener.onClearMemoryCacheFinished(String.valueOf(paramArrayOfObject[1]));
        return;
      }
      while (paramArrayOfObject.length != 2);
      BitmapGlobalConfig.this.bitmapCacheListener.onClearDiskCacheFinished(String.valueOf(paramArrayOfObject[1]));
      return;
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.bitmap.BitmapGlobalConfig
 * JD-Core Version:    0.6.2
 */