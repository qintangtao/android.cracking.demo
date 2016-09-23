package com.hsg.sdk.common.imagecache;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import com.hsg.sdk.common.util.Logg;
import java.io.File;
import java.io.IOException;

public class ImageFetcher extends ImageResizer
{
  private static final int DISK_CACHE_INDEX = 0;
  private static final int HTTP_CACHE_SIZE = 10485760;
  private static final int IO_BUFFER_SIZE = 8192;
  private static final String TAG = "ImageFetcher";
  private static ImageFetcher instance;
  private Context mAppContext = null;
  private File mHttpCacheDir;
  private DiskLruCache mHttpDiskCache;
  private final Object mHttpDiskCacheLock = new Object();
  private boolean mHttpDiskCacheStarting = true;

  private ImageFetcher(Context paramContext)
  {
    super(paramContext);
    init(paramContext);
    ImageCache.ImageCacheParams localImageCacheParams = new ImageCache.ImageCacheParams();
    localImageCacheParams.setMemCacheSizePercent(0.4F);
    setImageCache(localImageCacheParams);
    this.mAppContext = paramContext;
  }

  private void checkConnection(Context paramContext)
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnectedOrConnecting()))
      Logg.e("ImageFetcher", "checkConnection - no connection found");
  }

  public static void disableConnectionReuseIfNecessary()
  {
    if (Build.VERSION.SDK_INT < 8)
      System.setProperty("http.keepAlive", "false");
  }

  public static ImageFetcher getInstance(Context paramContext)
  {
    if (instance == null)
      instance = new ImageFetcher(paramContext);
    return instance;
  }

  private void init(Context paramContext)
  {
    checkConnection(paramContext);
    this.mHttpCacheDir = ImageCache.getDiskCacheDir(paramContext);
  }

  private void initHttpDiskCache()
  {
    if (!this.mHttpCacheDir.exists())
      this.mHttpCacheDir.mkdirs();
    synchronized (this.mHttpDiskCacheLock)
    {
      long l = ImageCache.getUsableSpace(this.mHttpCacheDir);
      if (l > 10485760L);
      try
      {
        this.mHttpDiskCache = DiskLruCache.open(this.mHttpCacheDir, 1, 1, 10485760L);
        Logg.d("ImageFetcher", "HTTP cache initialized");
        this.mHttpDiskCacheStarting = false;
        this.mHttpDiskCacheLock.notifyAll();
        return;
      }
      catch (IOException localIOException)
      {
        while (true)
          this.mHttpDiskCache = null;
      }
    }
  }

  // ERROR //
  private Bitmap processBitmap(String paramString, int paramInt1, int paramInt2, ImageWorker.SimpleProcessCallback paramSimpleProcessCallback)
  {
    // Byte code:
    //   0: ldc 15
    //   2: new 158	java/lang/StringBuilder
    //   5: dup
    //   6: ldc 160
    //   8: invokespecial 163	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   11: aload_1
    //   12: invokevirtual 167	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: invokevirtual 171	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   18: invokestatic 147	com/hsg/sdk/common/util/Logg:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   21: aload_1
    //   22: invokestatic 175	com/hsg/sdk/common/imagecache/ImageCache:hashKeyForDisk	(Ljava/lang/String;)Ljava/lang/String;
    //   25: astore 5
    //   27: aload_0
    //   28: getfield 40	com/hsg/sdk/common/imagecache/ImageFetcher:mHttpDiskCacheLock	Ljava/lang/Object;
    //   31: astore 6
    //   33: aload 6
    //   35: monitorenter
    //   36: aload_0
    //   37: getfield 33	com/hsg/sdk/common/imagecache/ImageFetcher:mHttpDiskCacheStarting	Z
    //   40: ifne +183 -> 223
    //   43: aload_0
    //   44: getfield 142	com/hsg/sdk/common/imagecache/ImageFetcher:mHttpDiskCache	Lcom/hsg/sdk/common/imagecache/DiskLruCache;
    //   47: astore 9
    //   49: aconst_null
    //   50: astore 10
    //   52: aconst_null
    //   53: astore 11
    //   55: aload 9
    //   57: ifnull +129 -> 186
    //   60: aload_0
    //   61: getfield 142	com/hsg/sdk/common/imagecache/ImageFetcher:mHttpDiskCache	Lcom/hsg/sdk/common/imagecache/DiskLruCache;
    //   64: aload 5
    //   66: invokevirtual 179	com/hsg/sdk/common/imagecache/DiskLruCache:get	(Ljava/lang/String;)Lcom/hsg/sdk/common/imagecache/DiskLruCache$Snapshot;
    //   69: astore 20
    //   71: aload 20
    //   73: ifnonnull +65 -> 138
    //   76: ldc 15
    //   78: ldc 181
    //   80: invokestatic 147	com/hsg/sdk/common/util/Logg:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   83: aload_0
    //   84: getfield 142	com/hsg/sdk/common/imagecache/ImageFetcher:mHttpDiskCache	Lcom/hsg/sdk/common/imagecache/DiskLruCache;
    //   87: aload 5
    //   89: invokevirtual 185	com/hsg/sdk/common/imagecache/DiskLruCache:edit	(Ljava/lang/String;)Lcom/hsg/sdk/common/imagecache/DiskLruCache$Editor;
    //   92: astore 21
    //   94: aload 21
    //   96: ifnull +31 -> 127
    //   99: aload_0
    //   100: aload_1
    //   101: aload 21
    //   103: iconst_0
    //   104: invokevirtual 191	com/hsg/sdk/common/imagecache/DiskLruCache$Editor:newOutputStream	(I)Ljava/io/OutputStream;
    //   107: aload 4
    //   109: invokevirtual 195	com/hsg/sdk/common/imagecache/ImageFetcher:downloadUrlToStream	(Ljava/lang/String;Ljava/io/OutputStream;Lcom/hsg/sdk/common/imagecache/ImageWorker$SimpleProcessCallback;)Z
    //   112: istore 22
    //   114: aconst_null
    //   115: astore 11
    //   117: iload 22
    //   119: ifeq +119 -> 238
    //   122: aload 21
    //   124: invokevirtual 198	com/hsg/sdk/common/imagecache/DiskLruCache$Editor:commit	()V
    //   127: aload_0
    //   128: getfield 142	com/hsg/sdk/common/imagecache/ImageFetcher:mHttpDiskCache	Lcom/hsg/sdk/common/imagecache/DiskLruCache;
    //   131: aload 5
    //   133: invokevirtual 179	com/hsg/sdk/common/imagecache/DiskLruCache:get	(Ljava/lang/String;)Lcom/hsg/sdk/common/imagecache/DiskLruCache$Snapshot;
    //   136: astore 20
    //   138: aconst_null
    //   139: astore 10
    //   141: aconst_null
    //   142: astore 11
    //   144: aload 20
    //   146: ifnull +25 -> 171
    //   149: aload 20
    //   151: iconst_0
    //   152: invokevirtual 204	com/hsg/sdk/common/imagecache/DiskLruCache$Snapshot:getInputStream	(I)Ljava/io/InputStream;
    //   155: checkcast 206	java/io/FileInputStream
    //   158: astore 11
    //   160: aload 11
    //   162: invokevirtual 210	java/io/FileInputStream:getFD	()Ljava/io/FileDescriptor;
    //   165: astore 23
    //   167: aload 23
    //   169: astore 10
    //   171: aload 10
    //   173: ifnonnull +13 -> 186
    //   176: aload 11
    //   178: ifnull +8 -> 186
    //   181: aload 11
    //   183: invokevirtual 213	java/io/FileInputStream:close	()V
    //   186: aload 6
    //   188: monitorexit
    //   189: aconst_null
    //   190: astore 12
    //   192: aload 10
    //   194: ifnull +16 -> 210
    //   197: aload 10
    //   199: iload_2
    //   200: iload_3
    //   201: aload_0
    //   202: invokevirtual 217	com/hsg/sdk/common/imagecache/ImageFetcher:getImageCache	()Lcom/hsg/sdk/common/imagecache/ImageCache;
    //   205: invokestatic 221	com/hsg/sdk/common/imagecache/ImageFetcher:decodeSampledBitmapFromDescriptor	(Ljava/io/FileDescriptor;IILcom/hsg/sdk/common/imagecache/ImageCache;)Landroid/graphics/Bitmap;
    //   208: astore 12
    //   210: aload 11
    //   212: ifnull +8 -> 220
    //   215: aload 11
    //   217: invokevirtual 213	java/io/FileInputStream:close	()V
    //   220: aload 12
    //   222: areturn
    //   223: aload_0
    //   224: getfield 40	com/hsg/sdk/common/imagecache/ImageFetcher:mHttpDiskCacheLock	Ljava/lang/Object;
    //   227: invokevirtual 224	java/lang/Object:wait	()V
    //   230: goto -194 -> 36
    //   233: astore 8
    //   235: goto -199 -> 36
    //   238: aload 21
    //   240: invokevirtual 227	com/hsg/sdk/common/imagecache/DiskLruCache$Editor:abort	()V
    //   243: goto -116 -> 127
    //   246: astore 18
    //   248: ldc 15
    //   250: new 158	java/lang/StringBuilder
    //   253: dup
    //   254: ldc 160
    //   256: invokespecial 163	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   259: aload 18
    //   261: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   264: invokevirtual 171	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   267: invokestatic 86	com/hsg/sdk/common/util/Logg:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   270: aconst_null
    //   271: astore 10
    //   273: iconst_0
    //   274: ifne -88 -> 186
    //   277: aconst_null
    //   278: astore 10
    //   280: aload 11
    //   282: ifnull -96 -> 186
    //   285: aload 11
    //   287: invokevirtual 213	java/io/FileInputStream:close	()V
    //   290: aconst_null
    //   291: astore 10
    //   293: goto -107 -> 186
    //   296: astore 19
    //   298: aconst_null
    //   299: astore 10
    //   301: goto -115 -> 186
    //   304: astore 16
    //   306: ldc 15
    //   308: new 158	java/lang/StringBuilder
    //   311: dup
    //   312: ldc 160
    //   314: invokespecial 163	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   317: aload 16
    //   319: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   322: invokevirtual 171	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   325: invokestatic 86	com/hsg/sdk/common/util/Logg:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   328: aconst_null
    //   329: astore 10
    //   331: iconst_0
    //   332: ifne -146 -> 186
    //   335: aconst_null
    //   336: astore 10
    //   338: aload 11
    //   340: ifnull -154 -> 186
    //   343: aload 11
    //   345: invokevirtual 213	java/io/FileInputStream:close	()V
    //   348: aconst_null
    //   349: astore 10
    //   351: goto -165 -> 186
    //   354: astore 17
    //   356: aconst_null
    //   357: astore 10
    //   359: goto -173 -> 186
    //   362: astore 14
    //   364: iconst_0
    //   365: ifne +13 -> 378
    //   368: aload 11
    //   370: ifnull +8 -> 378
    //   373: aload 11
    //   375: invokevirtual 213	java/io/FileInputStream:close	()V
    //   378: aload 14
    //   380: athrow
    //   381: astore 7
    //   383: aload 6
    //   385: monitorexit
    //   386: aload 7
    //   388: athrow
    //   389: astore 15
    //   391: goto -13 -> 378
    //   394: astore 24
    //   396: goto -210 -> 186
    //   399: astore 13
    //   401: aload 12
    //   403: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   223	230	233	java/lang/InterruptedException
    //   60	71	246	java/io/IOException
    //   76	94	246	java/io/IOException
    //   99	114	246	java/io/IOException
    //   122	127	246	java/io/IOException
    //   127	138	246	java/io/IOException
    //   149	167	246	java/io/IOException
    //   238	243	246	java/io/IOException
    //   285	290	296	java/io/IOException
    //   60	71	304	java/lang/IllegalStateException
    //   76	94	304	java/lang/IllegalStateException
    //   99	114	304	java/lang/IllegalStateException
    //   122	127	304	java/lang/IllegalStateException
    //   127	138	304	java/lang/IllegalStateException
    //   149	167	304	java/lang/IllegalStateException
    //   238	243	304	java/lang/IllegalStateException
    //   343	348	354	java/io/IOException
    //   60	71	362	finally
    //   76	94	362	finally
    //   99	114	362	finally
    //   122	127	362	finally
    //   127	138	362	finally
    //   149	167	362	finally
    //   238	243	362	finally
    //   248	270	362	finally
    //   306	328	362	finally
    //   36	49	381	finally
    //   181	186	381	finally
    //   186	189	381	finally
    //   223	230	381	finally
    //   285	290	381	finally
    //   343	348	381	finally
    //   373	378	381	finally
    //   378	381	381	finally
    //   383	386	381	finally
    //   373	378	389	java/io/IOException
    //   181	186	394	java/io/IOException
    //   215	220	399	java/io/IOException
  }

  protected void clearCacheInternal()
  {
    super.clearCacheInternal();
    synchronized (this.mHttpDiskCacheLock)
    {
      if (this.mHttpDiskCache != null)
      {
        boolean bool = this.mHttpDiskCache.isClosed();
        if (bool);
      }
      try
      {
        this.mHttpDiskCache.delete();
        Logg.d("ImageFetcher", "HTTP cache cleared");
        this.mHttpDiskCache = null;
        this.mHttpDiskCacheStarting = true;
        initHttpDiskCache();
        return;
      }
      catch (IOException localIOException)
      {
        while (true)
          Logg.e("ImageFetcher", "clearCacheInternal - " + localIOException);
      }
    }
  }

  protected void closeCacheInternal()
  {
    super.closeCacheInternal();
    synchronized (this.mHttpDiskCacheLock)
    {
      DiskLruCache localDiskLruCache = this.mHttpDiskCache;
      if (localDiskLruCache != null);
      try
      {
        if (!this.mHttpDiskCache.isClosed())
        {
          this.mHttpDiskCache.close();
          this.mHttpDiskCache = null;
          Logg.d("ImageFetcher", "HTTP cache closed");
        }
        return;
      }
      catch (IOException localIOException)
      {
        while (true)
          Logg.e("ImageFetcher", "closeCacheInternal - " + localIOException);
      }
    }
  }

  // ERROR //
  public boolean downloadUrlToStream(String paramString, java.io.OutputStream paramOutputStream, final ImageWorker.SimpleProcessCallback paramSimpleProcessCallback)
  {
    // Byte code:
    //   0: invokestatic 255	com/hsg/sdk/common/imagecache/ImageFetcher:disableConnectionReuseIfNecessary	()V
    //   3: sipush 8192
    //   6: newarray byte
    //   8: astore 4
    //   10: aconst_null
    //   11: astore 5
    //   13: aconst_null
    //   14: astore 6
    //   16: aconst_null
    //   17: astore 7
    //   19: aload_0
    //   20: getfield 42	com/hsg/sdk/common/imagecache/ImageFetcher:mAppContext	Landroid/content/Context;
    //   23: invokestatic 261	com/hsg/sdk/common/util/ConnectionUtil:isConnected	(Landroid/content/Context;)Z
    //   26: ifne +65 -> 91
    //   29: aconst_null
    //   30: astore 7
    //   32: aconst_null
    //   33: astore 6
    //   35: aconst_null
    //   36: astore 5
    //   38: aload_3
    //   39: ifnull +26 -> 65
    //   42: new 263	android/os/Handler
    //   45: dup
    //   46: invokestatic 269	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   49: invokespecial 272	android/os/Handler:<init>	(Landroid/os/Looper;)V
    //   52: new 274	com/hsg/sdk/common/imagecache/ImageFetcher$1
    //   55: dup
    //   56: aload_0
    //   57: aload_3
    //   58: invokespecial 277	com/hsg/sdk/common/imagecache/ImageFetcher$1:<init>	(Lcom/hsg/sdk/common/imagecache/ImageFetcher;Lcom/hsg/sdk/common/imagecache/ImageWorker$SimpleProcessCallback;)V
    //   61: invokevirtual 281	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   64: pop
    //   65: iconst_0
    //   66: ifeq +7 -> 73
    //   69: aconst_null
    //   70: invokevirtual 286	java/net/HttpURLConnection:disconnect	()V
    //   73: iconst_0
    //   74: ifeq +7 -> 81
    //   77: aconst_null
    //   78: invokevirtual 289	java/io/BufferedOutputStream:close	()V
    //   81: iconst_0
    //   82: ifeq +7 -> 89
    //   85: aconst_null
    //   86: invokevirtual 292	java/io/BufferedInputStream:close	()V
    //   89: iconst_0
    //   90: ireturn
    //   91: aload_3
    //   92: ifnull +26 -> 118
    //   95: new 263	android/os/Handler
    //   98: dup
    //   99: invokestatic 269	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   102: invokespecial 272	android/os/Handler:<init>	(Landroid/os/Looper;)V
    //   105: new 294	com/hsg/sdk/common/imagecache/ImageFetcher$2
    //   108: dup
    //   109: aload_0
    //   110: aload_3
    //   111: invokespecial 295	com/hsg/sdk/common/imagecache/ImageFetcher$2:<init>	(Lcom/hsg/sdk/common/imagecache/ImageFetcher;Lcom/hsg/sdk/common/imagecache/ImageWorker$SimpleProcessCallback;)V
    //   114: invokevirtual 281	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   117: pop
    //   118: new 297	java/net/URL
    //   121: dup
    //   122: aload_1
    //   123: invokespecial 298	java/net/URL:<init>	(Ljava/lang/String;)V
    //   126: invokevirtual 302	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   129: checkcast 283	java/net/HttpURLConnection
    //   132: astore 5
    //   134: new 291	java/io/BufferedInputStream
    //   137: dup
    //   138: aload 5
    //   140: invokevirtual 305	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   143: sipush 8192
    //   146: invokespecial 308	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;I)V
    //   149: astore 14
    //   151: new 288	java/io/BufferedOutputStream
    //   154: dup
    //   155: aload_2
    //   156: sipush 8192
    //   159: invokespecial 311	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   162: astore 15
    //   164: aload 5
    //   166: invokevirtual 315	java/net/HttpURLConnection:getContentLength	()I
    //   169: istore 16
    //   171: iconst_0
    //   172: istore 17
    //   174: aload 14
    //   176: aload 4
    //   178: invokevirtual 319	java/io/BufferedInputStream:read	([B)I
    //   181: istore 18
    //   183: iload 18
    //   185: iconst_m1
    //   186: if_icmpne +35 -> 221
    //   189: aload 5
    //   191: ifnull +8 -> 199
    //   194: aload 5
    //   196: invokevirtual 286	java/net/HttpURLConnection:disconnect	()V
    //   199: aload 15
    //   201: ifnull +8 -> 209
    //   204: aload 15
    //   206: invokevirtual 289	java/io/BufferedOutputStream:close	()V
    //   209: aload 14
    //   211: ifnull +8 -> 219
    //   214: aload 14
    //   216: invokevirtual 292	java/io/BufferedInputStream:close	()V
    //   219: iconst_1
    //   220: ireturn
    //   221: aload 15
    //   223: aload 4
    //   225: iconst_0
    //   226: iload 18
    //   228: invokevirtual 323	java/io/BufferedOutputStream:write	([BII)V
    //   231: iload 17
    //   233: iload 18
    //   235: iadd
    //   236: istore 17
    //   238: iload 17
    //   240: istore 19
    //   242: aload_3
    //   243: ifnull -69 -> 174
    //   246: new 263	android/os/Handler
    //   249: dup
    //   250: invokestatic 269	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   253: invokespecial 272	android/os/Handler:<init>	(Landroid/os/Looper;)V
    //   256: new 325	com/hsg/sdk/common/imagecache/ImageFetcher$3
    //   259: dup
    //   260: aload_0
    //   261: aload_3
    //   262: iload 19
    //   264: iload 16
    //   266: invokespecial 328	com/hsg/sdk/common/imagecache/ImageFetcher$3:<init>	(Lcom/hsg/sdk/common/imagecache/ImageFetcher;Lcom/hsg/sdk/common/imagecache/ImageWorker$SimpleProcessCallback;II)V
    //   269: invokevirtual 281	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   272: pop
    //   273: goto -99 -> 174
    //   276: astore 8
    //   278: aload 14
    //   280: astore 7
    //   282: aload 15
    //   284: astore 6
    //   286: ldc 15
    //   288: new 158	java/lang/StringBuilder
    //   291: dup
    //   292: ldc_w 330
    //   295: invokespecial 163	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   298: aload 8
    //   300: invokevirtual 230	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   303: invokevirtual 171	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   306: invokestatic 86	com/hsg/sdk/common/util/Logg:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   309: aload_3
    //   310: ifnull +7 -> 317
    //   313: aload_3
    //   314: invokevirtual 335	com/hsg/sdk/common/imagecache/ImageWorker$SimpleProcessCallback:onTaskError	()V
    //   317: aload 5
    //   319: ifnull +8 -> 327
    //   322: aload 5
    //   324: invokevirtual 286	java/net/HttpURLConnection:disconnect	()V
    //   327: aload 6
    //   329: ifnull +8 -> 337
    //   332: aload 6
    //   334: invokevirtual 289	java/io/BufferedOutputStream:close	()V
    //   337: aload 7
    //   339: ifnull +8 -> 347
    //   342: aload 7
    //   344: invokevirtual 292	java/io/BufferedInputStream:close	()V
    //   347: iconst_0
    //   348: ireturn
    //   349: astore 9
    //   351: aload 5
    //   353: ifnull +8 -> 361
    //   356: aload 5
    //   358: invokevirtual 286	java/net/HttpURLConnection:disconnect	()V
    //   361: aload 6
    //   363: ifnull +8 -> 371
    //   366: aload 6
    //   368: invokevirtual 289	java/io/BufferedOutputStream:close	()V
    //   371: aload 7
    //   373: ifnull +8 -> 381
    //   376: aload 7
    //   378: invokevirtual 292	java/io/BufferedInputStream:close	()V
    //   381: aload 9
    //   383: athrow
    //   384: astore 10
    //   386: goto -5 -> 381
    //   389: astore 9
    //   391: aload 14
    //   393: astore 7
    //   395: aconst_null
    //   396: astore 6
    //   398: goto -47 -> 351
    //   401: astore 9
    //   403: aload 14
    //   405: astore 7
    //   407: aload 15
    //   409: astore 6
    //   411: goto -60 -> 351
    //   414: astore 11
    //   416: goto -69 -> 347
    //   419: astore 8
    //   421: aconst_null
    //   422: astore 7
    //   424: aconst_null
    //   425: astore 6
    //   427: goto -141 -> 286
    //   430: astore 8
    //   432: aload 14
    //   434: astore 7
    //   436: aconst_null
    //   437: astore 6
    //   439: goto -153 -> 286
    //   442: astore 21
    //   444: goto -225 -> 219
    //   447: astore 13
    //   449: goto -360 -> 89
    //
    // Exception table:
    //   from	to	target	type
    //   164	171	276	java/io/IOException
    //   174	183	276	java/io/IOException
    //   221	231	276	java/io/IOException
    //   246	273	276	java/io/IOException
    //   19	29	349	finally
    //   42	65	349	finally
    //   95	118	349	finally
    //   118	151	349	finally
    //   286	309	349	finally
    //   313	317	349	finally
    //   366	371	384	java/io/IOException
    //   376	381	384	java/io/IOException
    //   151	164	389	finally
    //   164	171	401	finally
    //   174	183	401	finally
    //   221	231	401	finally
    //   246	273	401	finally
    //   332	337	414	java/io/IOException
    //   342	347	414	java/io/IOException
    //   19	29	419	java/io/IOException
    //   42	65	419	java/io/IOException
    //   95	118	419	java/io/IOException
    //   118	151	419	java/io/IOException
    //   151	164	430	java/io/IOException
    //   204	209	442	java/io/IOException
    //   214	219	442	java/io/IOException
    //   77	81	447	java/io/IOException
    //   85	89	447	java/io/IOException
  }

  protected void flushCacheInternal()
  {
    super.flushCacheInternal();
    synchronized (this.mHttpDiskCacheLock)
    {
      DiskLruCache localDiskLruCache = this.mHttpDiskCache;
      if (localDiskLruCache != null);
      try
      {
        this.mHttpDiskCache.flush();
        Logg.d("ImageFetcher", "HTTP cache flushed");
        return;
      }
      catch (IOException localIOException)
      {
        while (true)
          Logg.e("ImageFetcher", "flush - " + localIOException);
      }
    }
  }

  protected void initDiskCacheInternal()
  {
    super.initDiskCacheInternal();
    initHttpDiskCache();
  }

  protected Bitmap processBitmap(Object paramObject, int paramInt1, int paramInt2, ImageWorker.SimpleProcessCallback paramSimpleProcessCallback)
  {
    return processBitmap(String.valueOf(paramObject), paramInt1, paramInt2, paramSimpleProcessCallback);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.imagecache.ImageFetcher
 * JD-Core Version:    0.6.2
 */