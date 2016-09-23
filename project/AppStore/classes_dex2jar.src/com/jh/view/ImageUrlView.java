package com.jh.view;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.jh.app.util.ImageFactory;
import com.jh.exception.JHException;
import com.jh.util.LogUtil;
import java.io.File;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ImageUrlView extends RelativeLayout
{
  private static final int FAILED = 0;
  private static final int SUCCESS = 1;
  private static Context context;
  private static ExecutorService excutor;
  private static Handler handler = new Handler()
  {
    ImageUrlView.ImageInfo info;

    public void handleMessage(Message paramAnonymousMessage)
    {
      super.handleMessage(paramAnonymousMessage);
      if (paramAnonymousMessage.what == 1)
      {
        this.info = ((ImageUrlView.ImageInfo)paramAnonymousMessage.obj);
        if ((this.info.bitmap != null) && (this.info.url != null) && (this.info.view.getUrl() != null) && (this.info.url.equalsIgnoreCase(this.info.view.getUrl())))
        {
          this.info.view.setImage(this.info.bitmap);
          this.info.view.imageBitmap = this.info.bitmap;
        }
        return;
      }
      ((ImageUrlView)paramAnonymousMessage.obj).setFailedImage();
    }
  };
  private static Map<String, SoftReference<Bitmap>> imageCaches = new HashMap();
  private static List<ImageUrlView> imageUrls;
  private static final int maxImage = 20;
  private static boolean stopFlag = true;
  private int defaultResId;
  private int failedResId;
  private ImageView image;
  private Bitmap imageBitmap;
  private LayoutInflater inflater;
  private ProgressBar progress;
  private boolean showLoading = false;
  private String url;

  public ImageUrlView(Context paramContext)
  {
    super(paramContext);
    initView(paramContext);
    init();
  }

  public ImageUrlView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initView(paramContext);
    init();
  }

  public ImageUrlView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    initView(paramContext);
    init();
  }

  public static void clearImages()
  {
    if (imageUrls != null)
    {
      imageUrls.clear();
      imageUrls = null;
    }
    stopFlag = true;
    if (excutor != null)
    {
      excutor.shutdownNow();
      excutor = null;
    }
  }

  private void startLoading()
  {
    excutor.execute(new DownThread(null));
  }

  private void startLoadingForC6Portrait()
  {
    excutor.execute(new C6PortraitDownThread(null));
  }

  public int getDefaultResId()
  {
    return this.defaultResId;
  }

  public int getFailedResId()
  {
    return this.failedResId;
  }

  public String getUrl()
  {
    return this.url;
  }

  public void init()
  {
    if (excutor == null)
      excutor = Executors.newSingleThreadExecutor();
    if (imageUrls == null)
      imageUrls = new LinkedList();
  }

  public View initView(Context paramContext)
  {
    setGravity(17);
    this.inflater = LayoutInflater.from(paramContext);
    View localView = this.inflater.inflate(2130903041, this, true);
    this.image = ((ImageView)localView.findViewById(2131165184));
    this.image.setScaleType(ImageView.ScaleType.CENTER);
    this.progress = ((ProgressBar)localView.findViewById(2131165185));
    if (this.showLoading)
      this.progress.setVisibility(0);
    while (true)
    {
      this.image.setVisibility(0);
      return localView;
      this.progress.setVisibility(4);
    }
  }

  public void setC6Url(String paramString, Context paramContext)
  {
    imageUrls.remove(this);
    context = paramContext;
    if ((paramString == null) || (paramString.trim().length() == 0))
    {
      setDefImage();
      if (this.imageBitmap != null)
        this.imageBitmap = null;
    }
    while (true)
    {
      this.url = paramString;
      startLoadingForC6Portrait();
      return;
      if ((imageCaches.get(paramString) != null) && (((SoftReference)imageCaches.get(paramString)).get() != null))
      {
        setImage((Bitmap)((SoftReference)imageCaches.get(paramString)).get());
      }
      else if (this.url == null)
      {
        setDefImage();
        imageUrls.add(this);
      }
      else if ((this.url.trim().length() > 0) && (paramString.equalsIgnoreCase(this.url)))
      {
        if (this.imageBitmap == null)
        {
          this.url = paramString;
          setDefImage();
          imageUrls.add(this);
        }
        else
        {
          setImage(this.imageBitmap);
        }
      }
      else
      {
        if (this.imageBitmap != null)
          this.imageBitmap = null;
        this.url = paramString;
        setDefImage();
        imageUrls.add(this);
      }
    }
  }

  public void setDefImage()
  {
    if (this.defaultResId != 0)
      this.image.setImageResource(this.defaultResId);
  }

  public void setDefaultResId(int paramInt)
  {
    this.defaultResId = paramInt;
  }

  public void setFailedImage()
  {
    this.progress.setVisibility(4);
    if (this.failedResId != 0)
      this.image.setImageResource(this.failedResId);
  }

  public void setFailedResId(int paramInt)
  {
    this.failedResId = paramInt;
  }

  public void setImage(Bitmap paramBitmap)
  {
    this.progress.setVisibility(4);
    this.imageBitmap = paramBitmap;
    this.image.setImageBitmap(paramBitmap);
  }

  public void setImageScaleTypeDefault()
  {
    this.image.setScaleType(ImageView.ScaleType.FIT_XY);
  }

  public void setUrl(String paramString)
  {
    imageUrls.remove(this);
    if ((paramString == null) || (paramString.trim().length() == 0))
    {
      setDefImage();
      if (this.imageBitmap != null)
        this.imageBitmap = null;
    }
    while (true)
    {
      this.url = paramString;
      startLoading();
      return;
      if ((imageCaches.get(paramString) != null) && (((SoftReference)imageCaches.get(paramString)).get() != null))
      {
        setImage((Bitmap)((SoftReference)imageCaches.get(paramString)).get());
      }
      else if (this.url == null)
      {
        setDefImage();
        imageUrls.add(this);
      }
      else if ((this.url.trim().length() > 0) && (paramString.equalsIgnoreCase(this.url)))
      {
        if (this.imageBitmap == null)
        {
          this.url = paramString;
          setDefImage();
          imageUrls.add(this);
        }
        else
        {
          setImage(this.imageBitmap);
        }
      }
      else
      {
        if (this.imageBitmap != null)
          this.imageBitmap = null;
        this.url = paramString;
        setDefImage();
        imageUrls.add(this);
      }
    }
  }

  private static class C6PortraitDownThread
    implements Runnable
  {
    private Bitmap bmp;
    private Cursor cursor;
    private String filePath;
    private Message msg;
    private Uri uri;
    private String url;

    public void run()
    {
      ImageUrlView localImageUrlView;
      if (!ImageUrlView.imageUrls.isEmpty())
      {
        localImageUrlView = (ImageUrlView)ImageUrlView.imageUrls.remove(0);
        this.url = localImageUrlView.getUrl();
        this.bmp = null;
        if (this.url != null)
        {
          if (ImageUrlView.imageCaches.containsKey(this.url))
            this.bmp = ((Bitmap)((SoftReference)ImageUrlView.imageCaches.get(this.url)).get());
          if (this.bmp == null)
          {
            this.uri = Uri.parse("content://com.jh.yunoa.contentproviderforcontacts/headimage");
            ContentResolver localContentResolver1 = ImageUrlView.context.getContentResolver();
            Uri localUri1 = this.uri;
            String[] arrayOfString1 = { "localPath" };
            String[] arrayOfString2 = new String[1];
            arrayOfString2[0] = this.url;
            this.cursor = localContentResolver1.query(localUri1, arrayOfString1, "httpPath = ?", arrayOfString2, null);
            if ((this.cursor != null) && (this.cursor.moveToFirst()))
              this.filePath = this.cursor.getString(this.cursor.getColumnIndex("localPath"));
            LogUtil.println("filePath_local:" + this.filePath);
            LogUtil.println("服务器地址url：" + this.url);
            if ((this.filePath != null) && (new File(this.filePath).exists()));
          }
        }
      }
      try
      {
        this.filePath = ImageFactory.getURLBitmap(this.url);
        if (this.filePath != null)
        {
          this.uri = Uri.parse("content://com.jh.yunoa.contentproviderforcontacts/headimage");
          ContentResolver localContentResolver2 = ImageUrlView.context.getContentResolver();
          Uri localUri2 = this.uri;
          String[] arrayOfString3 = new String[1];
          arrayOfString3[0] = this.url;
          localContentResolver2.delete(localUri2, "httpPath = ?", arrayOfString3);
          ContentValues localContentValues = new ContentValues();
          localContentValues.put("localPath", this.filePath);
          localContentValues.put("httpPath", this.url);
          ImageUrlView.context.getContentResolver().insert(this.uri, localContentValues);
        }
        if (this.filePath == null);
      }
      catch (JHException localJHException1)
      {
        try
        {
          this.bmp = ImageFactory.getFileBitmap(this.filePath, localImageUrlView.getHeight(), localImageUrlView.getWidth(), null);
          label407: if (!ImageUrlView.imageCaches.containsKey(this.url))
            ImageUrlView.imageCaches.put(this.url, new SoftReference(this.bmp));
          while (true)
          {
            if (ImageUrlView.imageCaches.size() > 20)
              ImageUrlView.imageCaches.remove(ImageUrlView.imageCaches.keySet().iterator().next());
            this.msg = Message.obtain();
            this.msg.obj = new ImageUrlView.ImageInfo(this.bmp, localImageUrlView, this.url);
            this.msg.what = 1;
            ImageUrlView.handler.sendMessage(this.msg);
            return;
            localJHException1 = localJHException1;
            localJHException1.printStackTrace();
            this.msg = Message.obtain();
            this.msg.what = 0;
            this.msg.obj = localImageUrlView;
            ImageUrlView.handler.sendMessage(this.msg);
            break;
            ImageUrlView.imageCaches.remove(this.url);
            ImageUrlView.imageCaches.put(this.url, new SoftReference(this.bmp));
          }
        }
        catch (JHException localJHException2)
        {
          break label407;
        }
      }
    }
  }

  private static class DownThread
    implements Runnable
  {
    private Bitmap bmp;
    private Message msg;
    private String url;

    public void run()
    {
      ImageUrlView localImageUrlView;
      Object localObject;
      if (!ImageUrlView.imageUrls.isEmpty())
      {
        localImageUrlView = (ImageUrlView)ImageUrlView.imageUrls.remove(0);
        this.url = localImageUrlView.getUrl();
        this.bmp = null;
        if (this.url != null)
        {
          if (ImageUrlView.imageCaches.containsKey(this.url))
            this.bmp = ((Bitmap)((SoftReference)ImageUrlView.imageCaches.get(this.url)).get());
          if (this.bmp == null)
          {
            localObject = CacheDB.getLocalpicPath(localImageUrlView.getContext(), this.url);
            if ((localObject != null) && (new File((String)localObject).exists()));
          }
        }
      }
      try
      {
        String str = ImageFactory.getURLBitmap(this.url);
        localObject = str;
        if (localObject != null)
        {
          CacheDB.deletePic(localImageUrlView.getContext(), this.url);
          CacheDB.insertPic(localImageUrlView.getContext(), this.url, (String)localObject);
        }
        if (localObject == null);
      }
      catch (JHException localJHException1)
      {
        try
        {
          this.bmp = ImageFactory.getFileBitmap((String)localObject, localImageUrlView.getHeight(), localImageUrlView.getWidth(), null);
          label181: if (!ImageUrlView.imageCaches.containsKey(this.url))
            ImageUrlView.imageCaches.put(this.url, new SoftReference(this.bmp));
          while (true)
          {
            if (ImageUrlView.imageCaches.size() > 20)
              ImageUrlView.imageCaches.remove(ImageUrlView.imageCaches.keySet().iterator().next());
            this.msg = Message.obtain();
            this.msg.obj = new ImageUrlView.ImageInfo(this.bmp, localImageUrlView, this.url);
            this.msg.what = 1;
            ImageUrlView.handler.sendMessage(this.msg);
            return;
            localJHException1 = localJHException1;
            localJHException1.printStackTrace();
            this.msg = Message.obtain();
            this.msg.what = 0;
            this.msg.obj = localImageUrlView;
            ImageUrlView.handler.sendMessage(this.msg);
            break;
            ImageUrlView.imageCaches.remove(this.url);
            ImageUrlView.imageCaches.put(this.url, new SoftReference(this.bmp));
          }
        }
        catch (JHException localJHException2)
        {
          break label181;
        }
      }
    }
  }

  private static class ImageInfo
  {
    public Bitmap bitmap;
    public String url;
    public ImageUrlView view;

    public ImageInfo(Bitmap paramBitmap, ImageUrlView paramImageUrlView, String paramString)
    {
      this.bitmap = paramBitmap;
      this.view = paramImageUrlView;
      this.url = paramString;
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.view.ImageUrlView
 * JD-Core Version:    0.6.2
 */