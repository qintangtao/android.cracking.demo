package com.hsg.sdk.common.util;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.v4.util.LruCache;
import android.widget.ImageView;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

public class EffectiveImageLoader
{
  private static String TAG = EffectiveImageLoader.class.getName();
  private boolean firstLoad = true;
  final Handler handler = new Handler();
  private Object lock = new Object();
  private boolean mAllowLoad = true;
  private File mCachePicPath = null;
  private Context mContext = null;
  private DirectoryUtil mDirMgr = null;
  private LruCache<String, Drawable> mImageCache = null;
  private ImageLoadThread mImageLoadThread;
  private int mStartLoadLimit = 0;
  private int mStopLoadLimit = 0;

  public EffectiveImageLoader(int paramInt)
  {
    initLoader(paramInt);
  }

  public EffectiveImageLoader(Context paramContext)
  {
    this.mContext = paramContext;
    initLoader((((ActivityManager)paramContext.getSystemService("activity")).getMemoryClass() << 20) / 8);
  }

  private void initLoader(int paramInt)
  {
    this.mImageCache = new LruCache(paramInt);
    this.mDirMgr = DirectoryUtil.newInstance("sogou/news");
    this.mCachePicPath = this.mDirMgr.getCustomPath(2);
    this.mImageLoadThread = new ImageLoadThread();
    this.mImageLoadThread.start();
  }

  private void loadImage(String paramString, final ImageView paramImageView, final int paramInt, final Integer paramInteger, final OnImageLoadListener paramOnImageLoadListener)
  {
    final Drawable localDrawable1 = (Drawable)this.mImageCache.get(paramString);
    if (localDrawable1 != null)
      this.handler.post(new Runnable()
      {
        public void run()
        {
          if (EffectiveImageLoader.this.mAllowLoad)
          {
            if (paramImageView != null)
              paramImageView.setImageDrawable(localDrawable1);
          }
          else
            return;
          paramOnImageLoadListener.onImageLoad(paramInteger, paramInt, localDrawable1);
        }
      });
    while (true)
    {
      return;
      try
      {
        final Drawable localDrawable2 = loadImageFromUrl(paramString, paramImageView);
        if (localDrawable2 != null)
          this.mImageCache.put(paramString, localDrawable2);
        if (localDrawable2 != null)
        {
          this.handler.post(new Runnable()
          {
            public void run()
            {
              if (EffectiveImageLoader.this.mAllowLoad)
              {
                if (paramImageView != null)
                  paramImageView.setImageDrawable(localDrawable2);
              }
              else
                return;
              paramOnImageLoadListener.onImageLoad(paramInteger, paramInt, localDrawable2);
            }
          });
          return;
        }
      }
      catch (IOException localIOException)
      {
        this.handler.post(new Runnable()
        {
          public void run()
          {
            paramOnImageLoadListener.onError(paramInteger);
          }
        });
        localIOException.printStackTrace();
      }
    }
  }

  private Drawable loadImageFromUrl(String paramString, ImageView paramImageView)
    throws IOException
  {
    if (!this.mDirMgr.canWriteSdcard())
      return scaleImage2View(Drawable.createFromStream((InputStream)new URL(paramString).getContent(), "src"), paramImageView);
    File localFile = new File(this.mCachePicPath, Md5Util.MD5Encode(paramString.getBytes()));
    if (localFile.exists())
      return scaleImage2View(Drawable.createFromStream(new FileInputStream(localFile), "src"), paramImageView);
    DataInputStream localDataInputStream = new DataInputStream((InputStream)new URL(paramString).getContent());
    FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
    byte[] arrayOfByte = new byte[1024];
    while (true)
    {
      int i = localDataInputStream.read(arrayOfByte);
      if (i == -1)
      {
        localDataInputStream.close();
        localFileOutputStream.close();
        return loadImageFromUrl(paramString, paramImageView);
      }
      localFileOutputStream.write(arrayOfByte, 0, i);
    }
  }

  private Drawable scaleImage2View(Drawable paramDrawable, ImageView paramImageView)
  {
    if (paramDrawable != null)
    {
      Bitmap localBitmap1;
      if ((paramImageView != null) && (paramImageView.getMeasuredWidth() > 0) && (paramImageView.getMeasuredHeight() > 0))
      {
        localBitmap1 = ((BitmapDrawable)paramDrawable).getBitmap();
        if (localBitmap1.getWidth() < localBitmap1.getHeight())
          break label69;
      }
      label69: for (Bitmap localBitmap2 = ImageUtil.imageZoom(localBitmap1, paramImageView.getMeasuredWidth(), paramImageView.getMeasuredHeight()); ; localBitmap2 = ImageUtil.imageZoom(localBitmap1, paramImageView.getMeasuredHeight(), paramImageView.getMeasuredHeight()))
      {
        paramDrawable = new BitmapDrawable(localBitmap2);
        return paramDrawable;
      }
    }
    return null;
  }

  public void loadImage(final Integer paramInteger, final int paramInt, final String paramString, final OnImageLoadListener paramOnImageLoadListener)
  {
    this.mImageLoadThread.getHandler().post(new Runnable()
    {
      public void run()
      {
        if (!EffectiveImageLoader.this.mAllowLoad);
        synchronized (EffectiveImageLoader.this.lock)
        {
          try
          {
            EffectiveImageLoader.this.lock.wait();
            if ((EffectiveImageLoader.this.mAllowLoad) && (EffectiveImageLoader.this.firstLoad))
              EffectiveImageLoader.this.loadImage(paramString, null, paramInt, paramInteger, paramOnImageLoadListener);
            if ((EffectiveImageLoader.this.mAllowLoad) && (paramInteger.intValue() <= EffectiveImageLoader.this.mStopLoadLimit) && (paramInteger.intValue() >= EffectiveImageLoader.this.mStartLoadLimit))
              EffectiveImageLoader.this.loadImage(paramString, null, paramInt, paramInteger, paramOnImageLoadListener);
            return;
          }
          catch (InterruptedException localInterruptedException)
          {
            while (true)
              localInterruptedException.printStackTrace();
          }
        }
      }
    });
  }

  public void loadImage(final Integer paramInteger, final ImageView paramImageView, final String paramString, final OnImageLoadListener paramOnImageLoadListener)
  {
    this.mImageLoadThread.getHandler().post(new Runnable()
    {
      public void run()
      {
        if (!EffectiveImageLoader.this.mAllowLoad);
        synchronized (EffectiveImageLoader.this.lock)
        {
          try
          {
            EffectiveImageLoader.this.lock.wait();
            if ((EffectiveImageLoader.this.mAllowLoad) && (EffectiveImageLoader.this.firstLoad))
              EffectiveImageLoader.this.loadImage(paramString, paramImageView, -1, paramInteger, paramOnImageLoadListener);
            if ((EffectiveImageLoader.this.mAllowLoad) && (paramInteger.intValue() <= EffectiveImageLoader.this.mStopLoadLimit) && (paramInteger.intValue() >= EffectiveImageLoader.this.mStartLoadLimit))
              EffectiveImageLoader.this.loadImage(paramString, paramImageView, -1, paramInteger, paramOnImageLoadListener);
            return;
          }
          catch (InterruptedException localInterruptedException)
          {
            while (true)
              localInterruptedException.printStackTrace();
          }
        }
      }
    });
  }

  public void lock()
  {
    this.mAllowLoad = false;
    this.firstLoad = false;
  }

  public void restore()
  {
    this.mAllowLoad = true;
    this.firstLoad = true;
  }

  public void setLoadLimit(int paramInt1, int paramInt2)
  {
    if (paramInt1 > paramInt2)
      return;
    this.mStartLoadLimit = paramInt1;
    this.mStopLoadLimit = paramInt2;
  }

  public void unlock()
  {
    this.mAllowLoad = true;
    synchronized (this.lock)
    {
      this.lock.notifyAll();
      return;
    }
  }

  public static abstract interface OnImageLoadListener
  {
    public abstract void onError(Integer paramInteger);

    public abstract void onImageLoad(Integer paramInteger, int paramInt, Drawable paramDrawable);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.EffectiveImageLoader
 * JD-Core Version:    0.6.2
 */