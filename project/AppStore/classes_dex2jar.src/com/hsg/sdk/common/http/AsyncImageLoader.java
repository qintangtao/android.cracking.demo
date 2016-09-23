package com.hsg.sdk.common.http;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.support.v4.util.LruCache;
import android.view.View;
import com.hsg.sdk.common.util.DirectoryUtil;
import com.hsg.sdk.common.util.Logg;
import com.hsg.sdk.common.util.Md5Util;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;

public class AsyncImageLoader
{
  private static final int MAX_CACHE_SIZE = 4194304;
  static final String TAG = AsyncImageLoader.class.getName();
  private static AsyncImageLoader mAsyncImgLoader = null;
  private LruCache<String, Drawable> mCache = null;
  private File mCachePicPath = null;
  private DirectoryUtil mDirMgr = null;
  private Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      AsyncImageLoader.ImageTask localImageTask = (AsyncImageLoader.ImageTask)paramAnonymousMessage.obj;
      localImageTask.callback.onImageLoad(localImageTask.view, localImageTask.drawable);
    }
  };

  private AsyncImageLoader()
  {
    new ArrayList();
    this.mDirMgr = DirectoryUtil.newInstance("sogou/news");
    this.mCachePicPath = this.mDirMgr.getCustomPath(2);
  }

  private Drawable downloadImageFromUrl(String paramString)
    throws IOException
  {
    if (!this.mDirMgr.canWriteSdcard())
      return Drawable.createFromStream((InputStream)new URL(paramString).getContent(), "src");
    File localFile = new File(this.mCachePicPath, Md5Util.MD5Encode(paramString.getBytes()));
    if (localFile.exists())
      return Drawable.createFromStream(new FileInputStream(localFile), "src");
    DataInputStream localDataInputStream = new DataInputStream((InputStream)new URL(paramString).getContent());
    FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
    byte[] arrayOfByte = new byte[1024];
    while (true)
    {
      int i = localDataInputStream.read(arrayOfByte);
      if (i <= 0)
      {
        localDataInputStream.close();
        localFileOutputStream.close();
        return downloadImageFromUrl(paramString);
      }
      localFileOutputStream.write(arrayOfByte, 0, i);
    }
  }

  public static AsyncImageLoader newInstance()
  {
    if (mAsyncImgLoader == null)
      mAsyncImgLoader = new AsyncImageLoader();
    return mAsyncImgLoader;
  }

  public Drawable loadImage(String paramString, View paramView, ImageCallback paramImageCallback)
  {
    Drawable localDrawable = (Drawable)this.mCache.get(paramString);
    if (localDrawable != null)
      return localDrawable;
    ImageTask localImageTask = new ImageTask();
    localImageTask.imgUrl = paramString;
    localImageTask.view = paramView;
    localImageTask.callback = paramImageCallback;
    ImageRunnable localImageRunnable = new ImageRunnable(localImageTask);
    TaskThreadPool.getInstance().execute(localImageRunnable);
    return null;
  }

  public static abstract interface ImageCallback
  {
    public abstract void onImageLoad(View paramView, Drawable paramDrawable);
  }

  class ImageRunnable
    implements Runnable
  {
    private AsyncImageLoader.ImageTask mTask = null;

    public ImageRunnable(AsyncImageLoader.ImageTask arg2)
    {
      Object localObject;
      this.mTask = localObject;
    }

    public void run()
    {
      if (this.mTask == null)
      {
        Logg.d(AsyncImageLoader.TAG, "task is null.");
        return;
      }
      try
      {
        Drawable localDrawable2 = AsyncImageLoader.this.downloadImageFromUrl(this.mTask.imgUrl);
        localDrawable1 = localDrawable2;
        if (localDrawable1 != null)
          AsyncImageLoader.this.mCache.put(this.mTask.imgUrl, localDrawable1);
        this.mTask.drawable = localDrawable1;
        AsyncImageLoader.this.mHandler.obtainMessage(0, this.mTask).sendToTarget();
        return;
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          Logg.v(null, this.mTask.imgUrl);
          localIOException.printStackTrace();
          Drawable localDrawable1 = null;
        }
      }
    }
  }

  public class ImageTask
  {
    public AsyncImageLoader.ImageCallback callback;
    public Drawable drawable;
    public String imgUrl;
    public View view;

    public ImageTask()
    {
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.http.AsyncImageLoader
 * JD-Core Version:    0.6.2
 */