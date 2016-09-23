package com.hsg.sdk.common.imagecache;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.BitmapDrawable;
import android.os.Environment;
import android.os.StatFs;
import android.support.v4.util.LruCache;
import android.util.Log;
import com.hsg.sdk.common.util.AndroidSdkVersionUtil;
import com.hsg.sdk.common.util.DirectoryUtil;
import com.hsg.sdk.common.util.Logg;
import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class ImageCache
{
  private static final Bitmap.CompressFormat DEFAULT_COMPRESS_FORMAT = Bitmap.CompressFormat.PNG;
  private static final int DEFAULT_COMPRESS_QUALITY = 70;
  private static final boolean DEFAULT_DISK_CACHE_ENABLED = true;
  private static final int DEFAULT_DISK_CACHE_SIZE = 104857600;
  private static final boolean DEFAULT_INIT_DISK_CACHE_ON_CREATE = false;
  private static final boolean DEFAULT_MEM_CACHE_ENABLED = true;
  private static final int DEFAULT_MEM_CACHE_SIZE = 5120;
  private static final int DISK_CACHE_INDEX = 0;
  private static final String TAG = "ImageCache";
  private static ImageCache instance;
  private ImageCacheParams mCacheParams;
  private final Object mDiskCacheLock = new Object();
  private boolean mDiskCacheStarting = true;
  private DiskLruCache mDiskLruCache;
  private LruCache<String, BitmapDrawable> mMemoryCache;

  private ImageCache(ImageCacheParams paramImageCacheParams)
  {
    init(paramImageCacheParams);
  }

  private static String bytesToHexString(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfByte.length)
        return localStringBuilder.toString();
      String str = Integer.toHexString(0xFF & paramArrayOfByte[i]);
      if (str.length() == 1)
        localStringBuilder.append('0');
      localStringBuilder.append(str);
    }
  }

  private static boolean canUseForInBitmap(Bitmap paramBitmap, BitmapFactory.Options paramOptions)
  {
    int i = paramOptions.outWidth / paramOptions.inSampleSize;
    int j = paramOptions.outHeight / paramOptions.inSampleSize;
    return (paramBitmap.getWidth() == i) && (paramBitmap.getHeight() == j);
  }

  @TargetApi(12)
  public static int getBitmapSize(BitmapDrawable paramBitmapDrawable)
  {
    Bitmap localBitmap = paramBitmapDrawable.getBitmap();
    if (AndroidSdkVersionUtil.hasHoneycombMR1())
      return localBitmap.getByteCount();
    return localBitmap.getRowBytes() * localBitmap.getHeight();
  }

  public static File getDiskCacheDir(Context paramContext)
  {
    if (("mounted".equals(Environment.getExternalStorageState())) || (!isExternalStorageRemovable()));
    for (String str = DirectoryUtil.getInstance().getCustomPath(2).getPath(); ; str = paramContext.getCacheDir().getPath())
      return new File(str);
  }

  @TargetApi(8)
  public static File getExternalCacheDir(Context paramContext)
  {
    if (AndroidSdkVersionUtil.hasFroyo())
      return paramContext.getExternalCacheDir();
    String str = "/Android/data/" + paramContext.getPackageName() + "/cache/";
    return new File(Environment.getExternalStorageDirectory().getPath() + str);
  }

  public static ImageCache getInstance(ImageCacheParams paramImageCacheParams)
  {
    if (instance == null)
      instance = new ImageCache(paramImageCacheParams);
    return instance;
  }

  @TargetApi(9)
  public static long getUsableSpace(File paramFile)
  {
    if (AndroidSdkVersionUtil.hasGingerbread())
      return paramFile.getUsableSpace();
    StatFs localStatFs = new StatFs(paramFile.getPath());
    return localStatFs.getBlockSize() * localStatFs.getAvailableBlocks();
  }

  public static String hashKeyForDisk(String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes());
      String str = bytesToHexString(localMessageDigest.digest());
      return str;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
    }
    return String.valueOf(paramString.hashCode());
  }

  private void init(ImageCacheParams paramImageCacheParams)
  {
    this.mCacheParams = paramImageCacheParams;
    if (this.mCacheParams.memoryCacheEnabled)
    {
      Logg.d("ImageCache", "Memory cache created (size = " + this.mCacheParams.memCacheSize + ")");
      this.mMemoryCache = new LruCache(this.mCacheParams.memCacheSize)
      {
        protected void entryRemoved(boolean paramAnonymousBoolean, String paramAnonymousString, BitmapDrawable paramAnonymousBitmapDrawable1, BitmapDrawable paramAnonymousBitmapDrawable2)
        {
          if (RecyclingBitmapDrawable.class.isInstance(paramAnonymousBitmapDrawable1))
            ((RecyclingBitmapDrawable)paramAnonymousBitmapDrawable1).setIsCached(false);
        }

        protected int sizeOf(String paramAnonymousString, BitmapDrawable paramAnonymousBitmapDrawable)
        {
          int i = ImageCache.getBitmapSize(paramAnonymousBitmapDrawable) / 1024;
          if (i == 0)
            i = 1;
          return i;
        }
      };
    }
    if (paramImageCacheParams.initDiskCacheOnCreate)
      initDiskCache();
  }

  @TargetApi(9)
  public static boolean isExternalStorageRemovable()
  {
    if (AndroidSdkVersionUtil.hasGingerbread())
      return Environment.isExternalStorageRemovable();
    return true;
  }

  // ERROR //
  public void addBitmapToCache(String paramString, BitmapDrawable paramBitmapDrawable)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +7 -> 8
    //   4: aload_2
    //   5: ifnonnull +4 -> 9
    //   8: return
    //   9: aload_0
    //   10: getfield 274	com/hsg/sdk/common/imagecache/ImageCache:mMemoryCache	Landroid/support/v4/util/LruCache;
    //   13: ifnull +31 -> 44
    //   16: ldc_w 289
    //   19: aload_2
    //   20: invokevirtual 294	java/lang/Class:isInstance	(Ljava/lang/Object;)Z
    //   23: ifeq +11 -> 34
    //   26: aload_2
    //   27: checkcast 289	com/hsg/sdk/common/imagecache/RecyclingBitmapDrawable
    //   30: iconst_1
    //   31: invokevirtual 298	com/hsg/sdk/common/imagecache/RecyclingBitmapDrawable:setIsCached	(Z)V
    //   34: aload_0
    //   35: getfield 274	com/hsg/sdk/common/imagecache/ImageCache:mMemoryCache	Landroid/support/v4/util/LruCache;
    //   38: aload_1
    //   39: aload_2
    //   40: invokevirtual 304	android/support/v4/util/LruCache:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   43: pop
    //   44: aload_0
    //   45: getfield 51	com/hsg/sdk/common/imagecache/ImageCache:mDiskCacheLock	Ljava/lang/Object;
    //   48: astore_3
    //   49: aload_3
    //   50: monitorenter
    //   51: aload_0
    //   52: getfield 306	com/hsg/sdk/common/imagecache/ImageCache:mDiskLruCache	Lcom/hsg/sdk/common/imagecache/DiskLruCache;
    //   55: ifnull +102 -> 157
    //   58: aload_1
    //   59: invokestatic 308	com/hsg/sdk/common/imagecache/ImageCache:hashKeyForDisk	(Ljava/lang/String;)Ljava/lang/String;
    //   62: astore 5
    //   64: aconst_null
    //   65: astore 6
    //   67: aload_0
    //   68: getfield 306	com/hsg/sdk/common/imagecache/ImageCache:mDiskLruCache	Lcom/hsg/sdk/common/imagecache/DiskLruCache;
    //   71: aload 5
    //   73: invokevirtual 314	com/hsg/sdk/common/imagecache/DiskLruCache:get	(Ljava/lang/String;)Lcom/hsg/sdk/common/imagecache/DiskLruCache$Snapshot;
    //   76: astore 13
    //   78: aconst_null
    //   79: astore 6
    //   81: aload 13
    //   83: ifnonnull +84 -> 167
    //   86: aload_0
    //   87: getfield 306	com/hsg/sdk/common/imagecache/ImageCache:mDiskLruCache	Lcom/hsg/sdk/common/imagecache/DiskLruCache;
    //   90: aload 5
    //   92: invokevirtual 318	com/hsg/sdk/common/imagecache/DiskLruCache:edit	(Ljava/lang/String;)Lcom/hsg/sdk/common/imagecache/DiskLruCache$Editor;
    //   95: astore 14
    //   97: aconst_null
    //   98: astore 6
    //   100: aload 14
    //   102: ifnull +45 -> 147
    //   105: aload 14
    //   107: iconst_0
    //   108: invokevirtual 324	com/hsg/sdk/common/imagecache/DiskLruCache$Editor:newOutputStream	(I)Ljava/io/OutputStream;
    //   111: astore 6
    //   113: aload_2
    //   114: invokevirtual 118	android/graphics/drawable/BitmapDrawable:getBitmap	()Landroid/graphics/Bitmap;
    //   117: aload_0
    //   118: getfield 246	com/hsg/sdk/common/imagecache/ImageCache:mCacheParams	Lcom/hsg/sdk/common/imagecache/ImageCache$ImageCacheParams;
    //   121: getfield 327	com/hsg/sdk/common/imagecache/ImageCache$ImageCacheParams:compressFormat	Landroid/graphics/Bitmap$CompressFormat;
    //   124: aload_0
    //   125: getfield 246	com/hsg/sdk/common/imagecache/ImageCache:mCacheParams	Lcom/hsg/sdk/common/imagecache/ImageCache$ImageCacheParams;
    //   128: getfield 330	com/hsg/sdk/common/imagecache/ImageCache$ImageCacheParams:compressQuality	I
    //   131: aload 6
    //   133: invokevirtual 334	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   136: pop
    //   137: aload 14
    //   139: invokevirtual 337	com/hsg/sdk/common/imagecache/DiskLruCache$Editor:commit	()V
    //   142: aload 6
    //   144: invokevirtual 342	java/io/OutputStream:close	()V
    //   147: aload 6
    //   149: ifnull +8 -> 157
    //   152: aload 6
    //   154: invokevirtual 342	java/io/OutputStream:close	()V
    //   157: aload_3
    //   158: monitorexit
    //   159: return
    //   160: astore 4
    //   162: aload_3
    //   163: monitorexit
    //   164: aload 4
    //   166: athrow
    //   167: aload 13
    //   169: iconst_0
    //   170: invokevirtual 348	com/hsg/sdk/common/imagecache/DiskLruCache$Snapshot:getInputStream	(I)Ljava/io/InputStream;
    //   173: invokevirtual 351	java/io/InputStream:close	()V
    //   176: aconst_null
    //   177: astore 6
    //   179: goto -32 -> 147
    //   182: astore 11
    //   184: ldc 24
    //   186: new 62	java/lang/StringBuilder
    //   189: dup
    //   190: ldc_w 353
    //   193: invokespecial 180	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   196: aload 11
    //   198: invokevirtual 356	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   201: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   204: invokestatic 359	com/hsg/sdk/common/util/Logg:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   207: aload 6
    //   209: ifnull -52 -> 157
    //   212: aload 6
    //   214: invokevirtual 342	java/io/OutputStream:close	()V
    //   217: goto -60 -> 157
    //   220: astore 12
    //   222: goto -65 -> 157
    //   225: astore 9
    //   227: ldc 24
    //   229: new 62	java/lang/StringBuilder
    //   232: dup
    //   233: ldc_w 353
    //   236: invokespecial 180	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   239: aload 9
    //   241: invokevirtual 356	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   244: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   247: invokestatic 359	com/hsg/sdk/common/util/Logg:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   250: aload 6
    //   252: ifnull -95 -> 157
    //   255: aload 6
    //   257: invokevirtual 342	java/io/OutputStream:close	()V
    //   260: goto -103 -> 157
    //   263: astore 10
    //   265: goto -108 -> 157
    //   268: astore 7
    //   270: aload 6
    //   272: ifnull +8 -> 280
    //   275: aload 6
    //   277: invokevirtual 342	java/io/OutputStream:close	()V
    //   280: aload 7
    //   282: athrow
    //   283: astore 8
    //   285: goto -5 -> 280
    //   288: astore 16
    //   290: goto -133 -> 157
    //
    // Exception table:
    //   from	to	target	type
    //   51	64	160	finally
    //   152	157	160	finally
    //   157	159	160	finally
    //   162	164	160	finally
    //   212	217	160	finally
    //   255	260	160	finally
    //   275	280	160	finally
    //   280	283	160	finally
    //   67	78	182	java/io/IOException
    //   86	97	182	java/io/IOException
    //   105	147	182	java/io/IOException
    //   167	176	182	java/io/IOException
    //   212	217	220	java/io/IOException
    //   67	78	225	java/lang/Exception
    //   86	97	225	java/lang/Exception
    //   105	147	225	java/lang/Exception
    //   167	176	225	java/lang/Exception
    //   255	260	263	java/io/IOException
    //   67	78	268	finally
    //   86	97	268	finally
    //   105	147	268	finally
    //   167	176	268	finally
    //   184	207	268	finally
    //   227	250	268	finally
    //   275	280	283	java/io/IOException
    //   152	157	288	java/io/IOException
  }

  public void clearCache()
  {
    if (this.mMemoryCache != null)
    {
      this.mMemoryCache.evictAll();
      Logg.d("ImageCache", "Memory cache cleared");
    }
    synchronized (this.mDiskCacheLock)
    {
      this.mDiskCacheStarting = true;
      if (this.mDiskLruCache != null)
      {
        boolean bool = this.mDiskLruCache.isClosed();
        if (bool);
      }
      try
      {
        this.mDiskLruCache.delete();
        Logg.d("ImageCache", "Disk cache cleared");
        this.mDiskLruCache = null;
        initDiskCache();
        return;
      }
      catch (IOException localIOException)
      {
        while (true)
          Logg.e("ImageCache", "clearCache - " + localIOException);
      }
    }
  }

  public void close()
  {
    synchronized (this.mDiskCacheLock)
    {
      DiskLruCache localDiskLruCache = this.mDiskLruCache;
      if (localDiskLruCache != null);
      try
      {
        if (!this.mDiskLruCache.isClosed())
        {
          this.mDiskLruCache.close();
          this.mDiskLruCache = null;
          Logg.d("ImageCache", "Disk cache closed");
        }
        return;
      }
      catch (IOException localIOException)
      {
        while (true)
          Logg.e("ImageCache", "close - " + localIOException);
      }
    }
  }

  public void flush()
  {
    synchronized (this.mDiskCacheLock)
    {
      DiskLruCache localDiskLruCache = this.mDiskLruCache;
      if (localDiskLruCache != null);
      try
      {
        this.mDiskLruCache.flush();
        Logg.d("ImageCache", "Disk cache flushed");
        return;
      }
      catch (IOException localIOException)
      {
        while (true)
          Logg.e("ImageCache", "flush - " + localIOException);
      }
    }
  }

  // ERROR //
  public Bitmap getBitmapFromDiskCache(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 308	com/hsg/sdk/common/imagecache/ImageCache:hashKeyForDisk	(Ljava/lang/String;)Ljava/lang/String;
    //   4: astore_2
    //   5: aload_0
    //   6: getfield 51	com/hsg/sdk/common/imagecache/ImageCache:mDiskCacheLock	Ljava/lang/Object;
    //   9: astore_3
    //   10: aload_3
    //   11: monitorenter
    //   12: aload_0
    //   13: getfield 53	com/hsg/sdk/common/imagecache/ImageCache:mDiskCacheStarting	Z
    //   16: ifne +104 -> 120
    //   19: aload_0
    //   20: getfield 306	com/hsg/sdk/common/imagecache/ImageCache:mDiskLruCache	Lcom/hsg/sdk/common/imagecache/DiskLruCache;
    //   23: astore 6
    //   25: aconst_null
    //   26: astore 7
    //   28: aload 6
    //   30: ifnull +85 -> 115
    //   33: aconst_null
    //   34: astore 8
    //   36: aload_0
    //   37: getfield 306	com/hsg/sdk/common/imagecache/ImageCache:mDiskLruCache	Lcom/hsg/sdk/common/imagecache/DiskLruCache;
    //   40: aload_2
    //   41: invokevirtual 314	com/hsg/sdk/common/imagecache/DiskLruCache:get	(Ljava/lang/String;)Lcom/hsg/sdk/common/imagecache/DiskLruCache$Snapshot;
    //   44: astore 13
    //   46: aconst_null
    //   47: astore 7
    //   49: aconst_null
    //   50: astore 8
    //   52: aload 13
    //   54: ifnull +51 -> 105
    //   57: ldc 24
    //   59: ldc_w 393
    //   62: invokestatic 267	com/hsg/sdk/common/util/Logg:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   65: aload 13
    //   67: iconst_0
    //   68: invokevirtual 348	com/hsg/sdk/common/imagecache/DiskLruCache$Snapshot:getInputStream	(I)Ljava/io/InputStream;
    //   71: astore 8
    //   73: aconst_null
    //   74: astore 7
    //   76: aload 8
    //   78: ifnull +27 -> 105
    //   81: aload 8
    //   83: checkcast 395	java/io/FileInputStream
    //   86: invokevirtual 399	java/io/FileInputStream:getFD	()Ljava/io/FileDescriptor;
    //   89: ldc_w 400
    //   92: ldc_w 400
    //   95: aload_0
    //   96: invokestatic 406	com/hsg/sdk/common/imagecache/ImageResizer:decodeSampledBitmapFromDescriptor	(Ljava/io/FileDescriptor;IILcom/hsg/sdk/common/imagecache/ImageCache;)Landroid/graphics/Bitmap;
    //   99: astore 14
    //   101: aload 14
    //   103: astore 7
    //   105: aload 8
    //   107: ifnull +8 -> 115
    //   110: aload 8
    //   112: invokevirtual 351	java/io/InputStream:close	()V
    //   115: aload_3
    //   116: monitorexit
    //   117: aload 7
    //   119: areturn
    //   120: aload_0
    //   121: getfield 51	com/hsg/sdk/common/imagecache/ImageCache:mDiskCacheLock	Ljava/lang/Object;
    //   124: invokevirtual 409	java/lang/Object:wait	()V
    //   127: goto -115 -> 12
    //   130: astore 5
    //   132: goto -120 -> 12
    //   135: astore 11
    //   137: ldc 24
    //   139: new 62	java/lang/StringBuilder
    //   142: dup
    //   143: ldc_w 411
    //   146: invokespecial 180	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   149: aload 11
    //   151: invokevirtual 356	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   154: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   157: invokestatic 359	com/hsg/sdk/common/util/Logg:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   160: aconst_null
    //   161: astore 7
    //   163: aload 8
    //   165: ifnull -50 -> 115
    //   168: aload 8
    //   170: invokevirtual 351	java/io/InputStream:close	()V
    //   173: aconst_null
    //   174: astore 7
    //   176: goto -61 -> 115
    //   179: astore 12
    //   181: aconst_null
    //   182: astore 7
    //   184: goto -69 -> 115
    //   187: astore 9
    //   189: aload 8
    //   191: ifnull +8 -> 199
    //   194: aload 8
    //   196: invokevirtual 351	java/io/InputStream:close	()V
    //   199: aload 9
    //   201: athrow
    //   202: astore 4
    //   204: aload_3
    //   205: monitorexit
    //   206: aload 4
    //   208: athrow
    //   209: astore 10
    //   211: goto -12 -> 199
    //   214: astore 15
    //   216: goto -101 -> 115
    //
    // Exception table:
    //   from	to	target	type
    //   120	127	130	java/lang/InterruptedException
    //   36	46	135	java/io/IOException
    //   57	73	135	java/io/IOException
    //   81	101	135	java/io/IOException
    //   168	173	179	java/io/IOException
    //   36	46	187	finally
    //   57	73	187	finally
    //   81	101	187	finally
    //   137	160	187	finally
    //   12	25	202	finally
    //   110	115	202	finally
    //   115	117	202	finally
    //   120	127	202	finally
    //   168	173	202	finally
    //   194	199	202	finally
    //   199	202	202	finally
    //   204	206	202	finally
    //   194	199	209	java/io/IOException
    //   110	115	214	java/io/IOException
  }

  public BitmapDrawable getBitmapFromMemCache(String paramString)
  {
    LruCache localLruCache = this.mMemoryCache;
    BitmapDrawable localBitmapDrawable = null;
    if (localLruCache != null)
      localBitmapDrawable = (BitmapDrawable)this.mMemoryCache.get(paramString);
    if (localBitmapDrawable != null)
      Logg.d("ImageCache", "Memory cache hit");
    return localBitmapDrawable;
  }

  public void initDiskCache()
  {
    synchronized (this.mDiskCacheLock)
    {
      File localFile;
      if ((this.mDiskLruCache == null) || (this.mDiskLruCache.isClosed()))
      {
        localFile = this.mCacheParams.diskCacheDir;
        if ((this.mCacheParams.diskCacheEnabled) && (localFile != null))
        {
          if (!localFile.exists())
            localFile.mkdirs();
          long l = getUsableSpace(localFile);
          int i = this.mCacheParams.diskCacheSize;
          if (l <= i);
        }
      }
      try
      {
        this.mDiskLruCache = DiskLruCache.open(localFile, 1, 1, this.mCacheParams.diskCacheSize);
        Logg.d("ImageCache", "Disk cache initialized");
        this.mDiskCacheStarting = false;
        this.mDiskCacheLock.notifyAll();
        return;
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          this.mCacheParams.diskCacheDir = null;
          Logg.e("ImageCache", "initDiskCache - " + localIOException);
        }
      }
    }
  }

  public static class ImageCacheParams
  {
    public Bitmap.CompressFormat compressFormat = ImageCache.DEFAULT_COMPRESS_FORMAT;
    public int compressQuality = 70;
    public File diskCacheDir;
    public boolean diskCacheEnabled = true;
    public int diskCacheSize = 104857600;
    public boolean initDiskCacheOnCreate = false;
    public int memCacheSize = 5120;
    public boolean memoryCacheEnabled = true;

    public void setMemCacheSizePercent(float paramFloat)
    {
      if ((paramFloat < 0.05F) || (paramFloat > 0.8F))
        throw new IllegalArgumentException("setMemCacheSizePercent - percent must be between 0.05 and 0.8 (inclusive)");
      int i = Math.round(paramFloat * (float)Runtime.getRuntime().maxMemory() / 1024.0F);
      if (this.memCacheSize > i);
      for (int j = i; ; j = this.memCacheSize)
      {
        this.memCacheSize = j;
        Log.d("huashao", "memCacheSize=" + this.memCacheSize + "memorySize" + i);
        return;
      }
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.imagecache.ImageCache
 * JD-Core Version:    0.6.2
 */