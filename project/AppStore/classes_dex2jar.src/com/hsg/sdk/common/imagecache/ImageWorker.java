package com.hsg.sdk.common.imagecache;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.view.View;
import android.widget.ImageView;
import com.hsg.sdk.common.util.AndroidSdkVersionUtil;
import com.hsg.sdk.common.util.ImageUtil;
import com.hsg.sdk.common.util.Logg;
import java.lang.ref.WeakReference;

public abstract class ImageWorker
{
  private static final int FADE_IN_TIME = 200;
  private static final int MESSAGE_CLEAR = 0;
  private static final int MESSAGE_CLOSE = 3;
  private static final int MESSAGE_FLUSH = 2;
  private static final int MESSAGE_INIT_DISK_CACHE = 1;
  private static final String TAG = "ImageWorker";
  private boolean mExitTasksEarly = false;
  private boolean mFadeInBitmap = true;
  private ImageCache mImageCache;
  private ImageCache.ImageCacheParams mImageCacheParams;
  protected boolean mPauseWork = false;
  private final Object mPauseWorkLock = new Object();
  protected Resources mResources;

  protected ImageWorker(Context paramContext)
  {
    this.mResources = paramContext.getResources();
  }

  public static boolean cancelPotentialWork(Object paramObject, ImageView paramImageView)
  {
    BitmapWorkerTask localBitmapWorkerTask = getBitmapWorkerTask(paramImageView);
    if (localBitmapWorkerTask != null)
    {
      Object localObject = localBitmapWorkerTask.data;
      if ((localObject == null) || (!localObject.equals(paramObject)))
      {
        localBitmapWorkerTask.cancel(true);
        Logg.d("ImageWorker", "cancelPotentialWork - cancelled work for " + paramObject);
      }
    }
    else
    {
      return true;
    }
    return false;
  }

  public static void cancelWork(ImageView paramImageView)
  {
    BitmapWorkerTask localBitmapWorkerTask = getBitmapWorkerTask(paramImageView);
    if (localBitmapWorkerTask != null)
    {
      localBitmapWorkerTask.cancel(true);
      Object localObject = localBitmapWorkerTask.data;
      Logg.d("ImageWorker", "cancelWork - cancelled work for " + localObject);
    }
  }

  private static BitmapWorkerTask getBitmapWorkerTask(ImageView paramImageView)
  {
    if (paramImageView != null)
    {
      Drawable localDrawable = paramImageView.getDrawable();
      if ((localDrawable instanceof AsyncDrawable))
        return ((AsyncDrawable)localDrawable).getBitmapWorkerTask();
    }
    return null;
  }

  private void setImageDrawable(ImageView paramImageView, Drawable paramDrawable)
  {
    if (this.mFadeInBitmap)
    {
      Drawable[] arrayOfDrawable = new Drawable[2];
      arrayOfDrawable[0] = new ColorDrawable(17170445);
      arrayOfDrawable[1] = paramDrawable;
      TransitionDrawable localTransitionDrawable = new TransitionDrawable(arrayOfDrawable);
      paramImageView.setImageDrawable(localTransitionDrawable);
      localTransitionDrawable.startTransition(200);
      return;
    }
    paramImageView.setImageDrawable(paramDrawable);
  }

  public void clearCache()
  {
    CacheAsyncTask localCacheAsyncTask = new CacheAsyncTask();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(0);
    localCacheAsyncTask.execute(arrayOfObject);
  }

  protected void clearCacheInternal()
  {
    if (this.mImageCache != null)
      this.mImageCache.clearCache();
  }

  public void clearQueue()
  {
    AsyncTask.clearQuene();
  }

  public void closeCache()
  {
    CacheAsyncTask localCacheAsyncTask = new CacheAsyncTask();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(3);
    localCacheAsyncTask.execute(arrayOfObject);
  }

  protected void closeCacheInternal()
  {
    if (this.mImageCache != null)
    {
      this.mImageCache.close();
      this.mImageCache = null;
    }
  }

  public void flushCache()
  {
    CacheAsyncTask localCacheAsyncTask = new CacheAsyncTask();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(2);
    localCacheAsyncTask.execute(arrayOfObject);
  }

  protected void flushCacheInternal()
  {
    if (this.mImageCache != null)
      this.mImageCache.flush();
  }

  public ImageCache getImageCache()
  {
    return this.mImageCache;
  }

  protected void initDiskCacheInternal()
  {
    if (this.mImageCache != null)
      this.mImageCache.initDiskCache();
  }

  public void loadImage(Object paramObject, ImageView paramImageView)
  {
    loadImage(paramObject, paramImageView, null);
  }

  public void loadImage(Object paramObject, ImageView paramImageView, SimpleProcessCallback paramSimpleProcessCallback)
  {
    if (paramObject == null);
    do
    {
      BitmapDrawable localBitmapDrawable;
      do
      {
        return;
        paramImageView.setTag(paramObject);
        if (paramSimpleProcessCallback != null)
          paramSimpleProcessCallback.setUrl(paramObject);
        ImageCache localImageCache = this.mImageCache;
        localBitmapDrawable = null;
        if (localImageCache != null)
          localBitmapDrawable = this.mImageCache.getBitmapFromMemCache(String.valueOf(paramObject));
        if (localBitmapDrawable == null)
          break;
        if (paramSimpleProcessCallback != null)
          paramSimpleProcessCallback.resizerImageView(paramImageView, localBitmapDrawable.getBitmap().getWidth(), localBitmapDrawable.getBitmap().getHeight());
        paramImageView.setImageDrawable(localBitmapDrawable);
      }
      while (paramSimpleProcessCallback == null);
      paramSimpleProcessCallback.onMemoryOver(localBitmapDrawable);
      return;
    }
    while (!cancelPotentialWork(paramObject, paramImageView));
    BitmapWorkerTask localBitmapWorkerTask = new BitmapWorkerTask(paramImageView, paramImageView.getWidth(), paramImageView.getHeight(), paramSimpleProcessCallback);
    paramImageView.setImageDrawable(new AsyncDrawable(this.mResources, ImageUtil.drawable2Bitmap(paramImageView.getDrawable()), localBitmapWorkerTask));
    localBitmapWorkerTask.executeOnExecutor(AsyncTask.DUAL_THREAD_EXECUTOR, new Object[] { paramObject });
  }

  protected abstract Bitmap processBitmap(Object paramObject, int paramInt1, int paramInt2, SimpleProcessCallback paramSimpleProcessCallback);

  public void setExitTasksEarly(boolean paramBoolean)
  {
    this.mExitTasksEarly = paramBoolean;
    setPauseWork(false);
  }

  public void setImageCache(ImageCache.ImageCacheParams paramImageCacheParams)
  {
    this.mImageCacheParams = paramImageCacheParams;
    this.mImageCache = ImageCache.getInstance(this.mImageCacheParams);
    CacheAsyncTask localCacheAsyncTask = new CacheAsyncTask();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(1);
    localCacheAsyncTask.execute(arrayOfObject);
  }

  public void setImageFadeIn(boolean paramBoolean)
  {
    this.mFadeInBitmap = paramBoolean;
  }

  public void setPauseWork(boolean paramBoolean)
  {
    synchronized (this.mPauseWorkLock)
    {
      this.mPauseWork = paramBoolean;
      if (!this.mPauseWork)
        this.mPauseWorkLock.notifyAll();
      return;
    }
  }

  private static class AsyncDrawable extends BitmapDrawable
  {
    private final WeakReference<ImageWorker.BitmapWorkerTask> bitmapWorkerTaskReference;

    public AsyncDrawable(Resources paramResources, Bitmap paramBitmap, ImageWorker.BitmapWorkerTask paramBitmapWorkerTask)
    {
      super(paramBitmap);
      this.bitmapWorkerTaskReference = new WeakReference(paramBitmapWorkerTask);
    }

    public ImageWorker.BitmapWorkerTask getBitmapWorkerTask()
    {
      return (ImageWorker.BitmapWorkerTask)this.bitmapWorkerTaskReference.get();
    }
  }

  private class BitmapWorkerTask extends AsyncTask<Object, Void, BitmapDrawable>
  {
    private Object data;
    private final WeakReference<ImageView> imageViewReference;
    private int mImageHeight;
    private int mImageWidth;
    private ImageWorker.SimpleProcessCallback processCallback;

    public BitmapWorkerTask(ImageView paramInt1, int paramInt2, int paramSimpleProcessCallback, ImageWorker.SimpleProcessCallback arg5)
    {
      this.mImageWidth = paramInt2;
      this.mImageHeight = paramSimpleProcessCallback;
      Object localObject;
      this.processCallback = localObject;
      this.imageViewReference = new WeakReference(paramInt1);
    }

    private ImageView getAttachedImageView()
    {
      ImageView localImageView = (ImageView)this.imageViewReference.get();
      if (this == ImageWorker.getBitmapWorkerTask(localImageView))
        return localImageView;
      return null;
    }

    protected BitmapDrawable doInBackground(Object[] paramArrayOfObject)
    {
      Logg.d("ImageWorker", "doInBackground - starting work");
      this.data = paramArrayOfObject[0];
      String str = String.valueOf(this.data);
      while (true)
      {
        Bitmap localBitmap1;
        synchronized (ImageWorker.this.mPauseWorkLock)
        {
          if ((!ImageWorker.this.mPauseWork) || (isCancelled()))
          {
            ImageCache localImageCache = ImageWorker.this.mImageCache;
            localBitmap1 = null;
            if (localImageCache != null)
            {
              boolean bool1 = isCancelled();
              localBitmap1 = null;
              if (!bool1)
              {
                ImageView localImageView = getAttachedImageView();
                localBitmap1 = null;
                if (localImageView != null)
                {
                  boolean bool2 = ImageWorker.this.mExitTasksEarly;
                  localBitmap1 = null;
                  if (!bool2)
                    localBitmap1 = ImageWorker.this.mImageCache.getBitmapFromDiskCache(str);
                }
              }
            }
            if ((localBitmap1 == null) && (!isCancelled()) && (getAttachedImageView() != null) && (!ImageWorker.this.mExitTasksEarly) && (this.processCallback != null))
              localBitmap1 = this.processCallback.loadBitmapFromLocal(String.valueOf(this.data));
            if ((localBitmap1 == null) && (!isCancelled()) && (getAttachedImageView() != null) && (!ImageWorker.this.mExitTasksEarly))
              localBitmap1 = ImageWorker.this.processBitmap(paramArrayOfObject[0], this.mImageWidth, this.mImageHeight, this.processCallback);
            localObject3 = null;
            if (localBitmap1 != null)
            {
              if (!AndroidSdkVersionUtil.hasHoneycomb())
                break label389;
              if (this.processCallback == null)
                break label365;
              localBitmap2 = this.processCallback.resizerBitmap(localBitmap1);
              localObject3 = new BitmapDrawable(ImageWorker.this.mResources, localBitmap2);
              if (ImageWorker.this.mImageCache != null)
                ImageWorker.this.mImageCache.addBitmapToCache(str, (BitmapDrawable)localObject3);
              if (this.processCallback != null)
              {
                this.processCallback.saveBitmapToLocal(localBitmap1);
                if (localBitmap2 != null)
                  break label452;
                localBitmap1.recycle();
              }
            }
            Logg.d("ImageWorker", "doInBackground - finished work");
            return localObject3;
          }
          else
          {
            try
            {
              ImageWorker.this.mPauseWorkLock.wait();
            }
            catch (InterruptedException localInterruptedException)
            {
            }
          }
        }
        label365: Object localObject3 = new BitmapDrawable(ImageWorker.this.mResources, localBitmap1);
        Bitmap localBitmap2 = null;
        continue;
        label389: if (this.processCallback != null)
        {
          localBitmap2 = this.processCallback.resizerBitmap(localBitmap1);
          localObject3 = new RecyclingBitmapDrawable(ImageWorker.this.mResources, localBitmap2);
        }
        else
        {
          localObject3 = new RecyclingBitmapDrawable(ImageWorker.this.mResources, localBitmap1);
          localBitmap2 = null;
          continue;
          label452: if (!localBitmap2.equals(localBitmap1))
            localBitmap1.recycle();
        }
      }
    }

    protected void onCancelled(BitmapDrawable paramBitmapDrawable)
    {
      super.onCancelled(paramBitmapDrawable);
      synchronized (ImageWorker.this.mPauseWorkLock)
      {
        ImageWorker.this.mPauseWorkLock.notifyAll();
        if ((this.processCallback != null) && (getAttachedImageView() != null))
          this.processCallback.onTaskCancel();
        return;
      }
    }

    protected void onPostExecute(BitmapDrawable paramBitmapDrawable)
    {
      if ((isCancelled()) || (ImageWorker.this.mExitTasksEarly))
        paramBitmapDrawable = null;
      ImageView localImageView = getAttachedImageView();
      if ((paramBitmapDrawable != null) && (localImageView != null))
      {
        if (this.processCallback != null)
        {
          this.processCallback.onTaskOver(paramBitmapDrawable);
          this.processCallback.resizerImageView(localImageView, paramBitmapDrawable.getBitmap().getWidth(), paramBitmapDrawable.getBitmap().getHeight());
        }
        Logg.d("ImageWorker", "onPostExecute - setting bitmap");
        ImageWorker.this.setImageDrawable(localImageView, paramBitmapDrawable);
      }
    }
  }

  protected class CacheAsyncTask extends AsyncTask<Object, Void, Void>
  {
    protected CacheAsyncTask()
    {
    }

    protected Void doInBackground(Object[] paramArrayOfObject)
    {
      switch (((Integer)paramArrayOfObject[0]).intValue())
      {
      default:
      case 0:
      case 1:
      case 2:
      case 3:
      }
      while (true)
      {
        return null;
        ImageWorker.this.clearCacheInternal();
        continue;
        ImageWorker.this.initDiskCacheInternal();
        continue;
        ImageWorker.this.flushCacheInternal();
        continue;
        ImageWorker.this.closeCacheInternal();
      }
    }
  }

  public static abstract class SimpleProcessCallback
  {
    private Object url;

    protected boolean checkTagSame(View paramView)
    {
      return (paramView != null) && (paramView.getTag() != null) && (paramView.getTag().equals(this.url));
    }

    public Bitmap loadBitmapFromLocal(String paramString)
    {
      return null;
    }

    public void onHttpNoConnection()
    {
    }

    public void onHttpStart()
    {
    }

    public void onMemoryOver(BitmapDrawable paramBitmapDrawable)
    {
    }

    public void onTaskCancel()
    {
    }

    public void onTaskError()
    {
    }

    public void onTaskOver(Drawable paramDrawable)
    {
    }

    public void onTaskProcess(int paramInt1, int paramInt2)
    {
    }

    public Bitmap resizerBitmap(Bitmap paramBitmap)
    {
      return paramBitmap;
    }

    public void resizerImageView(ImageView paramImageView, int paramInt1, int paramInt2)
    {
    }

    public void saveBitmapToLocal(Bitmap paramBitmap)
    {
    }

    protected void setUrl(Object paramObject)
    {
      this.url = paramObject;
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.imagecache.ImageWorker
 * JD-Core Version:    0.6.2
 */