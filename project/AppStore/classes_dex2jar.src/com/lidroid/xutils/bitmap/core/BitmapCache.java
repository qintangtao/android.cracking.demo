package com.lidroid.xutils.bitmap.core;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.ExifInterface;
import com.lidroid.xutils.bitmap.BitmapDisplayConfig;
import com.lidroid.xutils.bitmap.BitmapGlobalConfig;
import com.lidroid.xutils.bitmap.factory.BitmapFactory;
import com.lidroid.xutils.cache.FileNameGenerator;
import com.lidroid.xutils.cache.LruDiskCache;
import com.lidroid.xutils.cache.LruDiskCache.Snapshot;
import com.lidroid.xutils.cache.LruMemoryCache;
import com.lidroid.xutils.util.IOUtils;
import com.lidroid.xutils.util.LogUtils;
import com.lidroid.xutils.util.OtherUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

public class BitmapCache
{
  private final int DISK_CACHE_INDEX = 0;
  private BitmapGlobalConfig globalConfig;
  private final Object mDiskCacheLock = new Object();
  private LruDiskCache mDiskLruCache;
  private LruMemoryCache<MemoryCacheKey, Bitmap> mMemoryCache;

  public BitmapCache(BitmapGlobalConfig paramBitmapGlobalConfig)
  {
    if (paramBitmapGlobalConfig == null)
      throw new IllegalArgumentException("globalConfig may not be null");
    this.globalConfig = paramBitmapGlobalConfig;
  }

  private Bitmap addBitmapToMemoryCache(String paramString, BitmapDisplayConfig paramBitmapDisplayConfig, Bitmap paramBitmap, long paramLong)
    throws IOException
  {
    if (paramBitmapDisplayConfig != null)
    {
      BitmapFactory localBitmapFactory = paramBitmapDisplayConfig.getBitmapFactory();
      if (localBitmapFactory != null)
        paramBitmap = localBitmapFactory.cloneNew().createBitmap(paramBitmap);
    }
    if ((paramString != null) && (paramBitmap != null) && (this.globalConfig.isMemoryCacheEnabled()) && (this.mMemoryCache != null))
    {
      MemoryCacheKey localMemoryCacheKey = new MemoryCacheKey(paramString, paramBitmapDisplayConfig, null);
      this.mMemoryCache.put(localMemoryCacheKey, paramBitmap, paramLong);
    }
    return paramBitmap;
  }

  private Bitmap decodeBitmapMeta(BitmapMeta paramBitmapMeta, BitmapDisplayConfig paramBitmapDisplayConfig)
    throws IOException
  {
    if (paramBitmapMeta == null);
    do
    {
      return null;
      if (paramBitmapMeta.inputStream != null)
      {
        if ((paramBitmapDisplayConfig == null) || (paramBitmapDisplayConfig.isShowOriginal()))
          return BitmapDecoder.decodeFileDescriptor(paramBitmapMeta.inputStream.getFD());
        return BitmapDecoder.decodeSampledBitmapFromDescriptor(paramBitmapMeta.inputStream.getFD(), paramBitmapDisplayConfig.getBitmapMaxSize(), paramBitmapDisplayConfig.getBitmapConfig());
      }
    }
    while (paramBitmapMeta.data == null);
    if ((paramBitmapDisplayConfig == null) || (paramBitmapDisplayConfig.isShowOriginal()))
      return BitmapDecoder.decodeByteArray(paramBitmapMeta.data);
    return BitmapDecoder.decodeSampledBitmapFromByteArray(paramBitmapMeta.data, paramBitmapDisplayConfig.getBitmapMaxSize(), paramBitmapDisplayConfig.getBitmapConfig());
  }

  private Bitmap rotateBitmapIfNeeded(String paramString, BitmapDisplayConfig paramBitmapDisplayConfig, Bitmap paramBitmap)
  {
    Bitmap localBitmap1 = paramBitmap;
    if (paramBitmapDisplayConfig != null);
    while (true)
    {
      try
      {
        File localFile;
        if (paramBitmapDisplayConfig.isAutoRotation())
        {
          localFile = getBitmapFileFromDiskCache(paramString);
          if (localFile != null)
          {
            boolean bool = localFile.exists();
            if (!bool);
          }
        }
        try
        {
          ExifInterface localExifInterface = new ExifInterface(localFile.getPath());
          switch (localExifInterface.getAttributeInt("Orientation", 0))
          {
          case 6:
            if (i != 0)
            {
              Matrix localMatrix = new Matrix();
              localMatrix.postRotate(i);
              localBitmap1 = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), localMatrix, true);
              paramBitmap.recycle();
            }
            localBitmap2 = localBitmap1;
            return localBitmap2;
          case 3:
          case 8:
          case 4:
          case 5:
          case 7:
          }
        }
        catch (Throwable localThrowable)
        {
          Bitmap localBitmap2 = localBitmap1;
          continue;
          i = 90;
          continue;
          i = 180;
          continue;
          i = 270;
          continue;
        }
      }
      finally
      {
      }
      int i = 0;
    }
  }

  public void clearCache()
  {
    clearMemoryCache();
    clearDiskCache();
  }

  public void clearCache(String paramString)
  {
    clearMemoryCache(paramString);
    clearDiskCache(paramString);
  }

  public void clearDiskCache()
  {
    synchronized (this.mDiskCacheLock)
    {
      if (this.mDiskLruCache != null)
      {
        boolean bool = this.mDiskLruCache.isClosed();
        if (bool);
      }
      try
      {
        this.mDiskLruCache.delete();
        this.mDiskLruCache.close();
        this.mDiskLruCache = null;
        initDiskCache();
        return;
      }
      catch (Throwable localThrowable)
      {
        while (true)
          LogUtils.e(localThrowable.getMessage(), localThrowable);
      }
    }
  }

  public void clearDiskCache(String paramString)
  {
    synchronized (this.mDiskCacheLock)
    {
      if (this.mDiskLruCache != null)
      {
        boolean bool = this.mDiskLruCache.isClosed();
        if (bool);
      }
      try
      {
        this.mDiskLruCache.remove(paramString);
        return;
      }
      catch (Throwable localThrowable)
      {
        while (true)
          LogUtils.e(localThrowable.getMessage(), localThrowable);
      }
    }
  }

  public void clearMemoryCache()
  {
    if (this.mMemoryCache != null)
      this.mMemoryCache.evictAll();
  }

  public void clearMemoryCache(String paramString)
  {
    MemoryCacheKey localMemoryCacheKey = new MemoryCacheKey(paramString, null, null);
    if (this.mMemoryCache != null);
    while (true)
    {
      if (!this.mMemoryCache.containsKey(localMemoryCacheKey))
        return;
      this.mMemoryCache.remove(localMemoryCacheKey);
    }
  }

  public void close()
  {
    synchronized (this.mDiskCacheLock)
    {
      LruDiskCache localLruDiskCache = this.mDiskLruCache;
      if (localLruDiskCache != null);
      try
      {
        if (!this.mDiskLruCache.isClosed())
          this.mDiskLruCache.close();
        this.mDiskLruCache = null;
        return;
      }
      catch (Throwable localThrowable)
      {
        while (true)
          LogUtils.e(localThrowable.getMessage(), localThrowable);
      }
    }
  }

  // ERROR //
  public Bitmap downloadBitmap(String paramString, BitmapDisplayConfig paramBitmapDisplayConfig, com.lidroid.xutils.BitmapUtils.BitmapLoadTask<?> paramBitmapLoadTask)
  {
    // Byte code:
    //   0: new 75	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta
    //   3: dup
    //   4: aload_0
    //   5: aconst_null
    //   6: invokespecial 224	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta:<init>	(Lcom/lidroid/xutils/bitmap/core/BitmapCache;Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;)V
    //   9: astore 4
    //   11: aconst_null
    //   12: astore 5
    //   14: aconst_null
    //   15: astore 6
    //   17: aload_0
    //   18: getfield 33	com/lidroid/xutils/bitmap/core/BitmapCache:globalConfig	Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;
    //   21: invokevirtual 227	com/lidroid/xutils/bitmap/BitmapGlobalConfig:isDiskCacheEnabled	()Z
    //   24: istore 9
    //   26: aconst_null
    //   27: astore 10
    //   29: aconst_null
    //   30: astore 5
    //   32: aconst_null
    //   33: astore 6
    //   35: iload 9
    //   37: ifeq +424 -> 461
    //   40: aload_0
    //   41: getfield 182	com/lidroid/xutils/bitmap/core/BitmapCache:mDiskLruCache	Lcom/lidroid/xutils/cache/LruDiskCache;
    //   44: astore 11
    //   46: aconst_null
    //   47: astore 5
    //   49: aconst_null
    //   50: astore 6
    //   52: aload 11
    //   54: ifnonnull +7 -> 61
    //   57: aload_0
    //   58: invokevirtual 196	com/lidroid/xutils/bitmap/core/BitmapCache:initDiskCache	()V
    //   61: aload_0
    //   62: getfield 182	com/lidroid/xutils/bitmap/core/BitmapCache:mDiskLruCache	Lcom/lidroid/xutils/cache/LruDiskCache;
    //   65: astore 12
    //   67: aconst_null
    //   68: astore 10
    //   70: aconst_null
    //   71: astore 5
    //   73: aconst_null
    //   74: astore 6
    //   76: aload 12
    //   78: ifnull +383 -> 461
    //   81: aload_0
    //   82: getfield 182	com/lidroid/xutils/bitmap/core/BitmapCache:mDiskLruCache	Lcom/lidroid/xutils/cache/LruDiskCache;
    //   85: aload_1
    //   86: invokevirtual 231	com/lidroid/xutils/cache/LruDiskCache:get	(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;
    //   89: astore 6
    //   91: aconst_null
    //   92: astore 10
    //   94: aconst_null
    //   95: astore 5
    //   97: aload 6
    //   99: ifnonnull +107 -> 206
    //   102: aload_0
    //   103: getfield 182	com/lidroid/xutils/bitmap/core/BitmapCache:mDiskLruCache	Lcom/lidroid/xutils/cache/LruDiskCache;
    //   106: aload_1
    //   107: invokevirtual 235	com/lidroid/xutils/cache/LruDiskCache:edit	(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Editor;
    //   110: astore 18
    //   112: aconst_null
    //   113: astore 5
    //   115: aload 18
    //   117: ifnull +89 -> 206
    //   120: aload 18
    //   122: iconst_0
    //   123: invokevirtual 241	com/lidroid/xutils/cache/LruDiskCache$Editor:newOutputStream	(I)Ljava/io/OutputStream;
    //   126: astore 5
    //   128: aload 4
    //   130: aload_0
    //   131: getfield 33	com/lidroid/xutils/bitmap/core/BitmapCache:globalConfig	Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;
    //   134: invokevirtual 245	com/lidroid/xutils/bitmap/BitmapGlobalConfig:getDownloader	()Lcom/lidroid/xutils/bitmap/download/Downloader;
    //   137: aload_1
    //   138: aload 5
    //   140: aload_3
    //   141: invokevirtual 251	com/lidroid/xutils/bitmap/download/Downloader:downloadToStream	(Ljava/lang/String;Ljava/io/OutputStream;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)J
    //   144: putfield 255	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta:expiryTimestamp	J
    //   147: aload 4
    //   149: getfield 255	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta:expiryTimestamp	J
    //   152: lconst_0
    //   153: lcmp
    //   154: istore 19
    //   156: aconst_null
    //   157: astore 10
    //   159: iload 19
    //   161: ifge +20 -> 181
    //   164: aload 18
    //   166: invokevirtual 258	com/lidroid/xutils/cache/LruDiskCache$Editor:abort	()V
    //   169: aload 5
    //   171: invokestatic 264	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   174: aload 6
    //   176: invokestatic 264	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   179: aconst_null
    //   180: areturn
    //   181: aload 18
    //   183: aload 4
    //   185: getfield 255	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta:expiryTimestamp	J
    //   188: invokevirtual 268	com/lidroid/xutils/cache/LruDiskCache$Editor:setEntryExpiryTimestamp	(J)V
    //   191: aload 18
    //   193: invokevirtual 271	com/lidroid/xutils/cache/LruDiskCache$Editor:commit	()V
    //   196: aload_0
    //   197: getfield 182	com/lidroid/xutils/bitmap/core/BitmapCache:mDiskLruCache	Lcom/lidroid/xutils/cache/LruDiskCache;
    //   200: aload_1
    //   201: invokevirtual 231	com/lidroid/xutils/cache/LruDiskCache:get	(Ljava/lang/String;)Lcom/lidroid/xutils/cache/LruDiskCache$Snapshot;
    //   204: astore 6
    //   206: aconst_null
    //   207: astore 10
    //   209: aload 6
    //   211: ifnull +250 -> 461
    //   214: aload 4
    //   216: aload 6
    //   218: iconst_0
    //   219: invokevirtual 277	com/lidroid/xutils/cache/LruDiskCache$Snapshot:getInputStream	(I)Ljava/io/FileInputStream;
    //   222: putfield 79	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta:inputStream	Ljava/io/FileInputStream;
    //   225: aload_0
    //   226: aload 4
    //   228: aload_2
    //   229: invokespecial 279	com/lidroid/xutils/bitmap/core/BitmapCache:decodeBitmapMeta	(Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    //   232: astore 10
    //   234: aload 10
    //   236: ifnonnull +225 -> 461
    //   239: aload 4
    //   241: aconst_null
    //   242: putfield 79	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta:inputStream	Ljava/io/FileInputStream;
    //   245: aload_0
    //   246: getfield 182	com/lidroid/xutils/bitmap/core/BitmapCache:mDiskLruCache	Lcom/lidroid/xutils/cache/LruDiskCache;
    //   249: aload_1
    //   250: invokevirtual 209	com/lidroid/xutils/cache/LruDiskCache:remove	(Ljava/lang/String;)Z
    //   253: pop
    //   254: aload 5
    //   256: astore 13
    //   258: aload 10
    //   260: ifnonnull +194 -> 454
    //   263: new 281	java/io/ByteArrayOutputStream
    //   266: dup
    //   267: invokespecial 282	java/io/ByteArrayOutputStream:<init>	()V
    //   270: astore 5
    //   272: aload 4
    //   274: aload_0
    //   275: getfield 33	com/lidroid/xutils/bitmap/core/BitmapCache:globalConfig	Lcom/lidroid/xutils/bitmap/BitmapGlobalConfig;
    //   278: invokevirtual 245	com/lidroid/xutils/bitmap/BitmapGlobalConfig:getDownloader	()Lcom/lidroid/xutils/bitmap/download/Downloader;
    //   281: aload_1
    //   282: aload 5
    //   284: aload_3
    //   285: invokevirtual 251	com/lidroid/xutils/bitmap/download/Downloader:downloadToStream	(Ljava/lang/String;Ljava/io/OutputStream;Lcom/lidroid/xutils/BitmapUtils$BitmapLoadTask;)J
    //   288: putfield 255	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta:expiryTimestamp	J
    //   291: aload 4
    //   293: getfield 255	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta:expiryTimestamp	J
    //   296: lstore 15
    //   298: lload 15
    //   300: lconst_0
    //   301: lcmp
    //   302: ifge +30 -> 332
    //   305: aload 5
    //   307: invokestatic 264	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   310: aload 6
    //   312: invokestatic 264	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   315: aconst_null
    //   316: areturn
    //   317: astore 17
    //   319: aload 17
    //   321: invokevirtual 199	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   324: aload 17
    //   326: invokestatic 205	com/lidroid/xutils/util/LogUtils:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   329: goto +132 -> 461
    //   332: aload 4
    //   334: aload 5
    //   336: checkcast 281	java/io/ByteArrayOutputStream
    //   339: invokevirtual 286	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   342: putfield 110	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta:data	[B
    //   345: aload_0
    //   346: aload 4
    //   348: aload_2
    //   349: invokespecial 279	com/lidroid/xutils/bitmap/core/BitmapCache:decodeBitmapMeta	(Lcom/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;)Landroid/graphics/Bitmap;
    //   352: astore 10
    //   354: aload 10
    //   356: ifnull +28 -> 384
    //   359: aload_0
    //   360: aload_1
    //   361: aload_2
    //   362: aload_0
    //   363: aload_1
    //   364: aload_2
    //   365: aload 10
    //   367: invokespecial 288	com/lidroid/xutils/bitmap/core/BitmapCache:rotateBitmapIfNeeded	(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    //   370: aload 4
    //   372: getfield 255	com/lidroid/xutils/bitmap/core/BitmapCache$BitmapMeta:expiryTimestamp	J
    //   375: invokespecial 290	com/lidroid/xutils/bitmap/core/BitmapCache:addBitmapToMemoryCache	(Ljava/lang/String;Lcom/lidroid/xutils/bitmap/BitmapDisplayConfig;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    //   378: astore 14
    //   380: aload 14
    //   382: astore 10
    //   384: aload 5
    //   386: invokestatic 264	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   389: aload 6
    //   391: invokestatic 264	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   394: aload 10
    //   396: areturn
    //   397: astore 8
    //   399: aload 8
    //   401: invokevirtual 199	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   404: aload 8
    //   406: invokestatic 205	com/lidroid/xutils/util/LogUtils:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   409: aload 5
    //   411: invokestatic 264	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   414: aload 6
    //   416: invokestatic 264	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   419: aconst_null
    //   420: areturn
    //   421: astore 7
    //   423: aload 5
    //   425: invokestatic 264	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   428: aload 6
    //   430: invokestatic 264	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   433: aload 7
    //   435: athrow
    //   436: astore 7
    //   438: aload 13
    //   440: astore 5
    //   442: goto -19 -> 423
    //   445: astore 8
    //   447: aload 13
    //   449: astore 5
    //   451: goto -52 -> 399
    //   454: aload 13
    //   456: astore 5
    //   458: goto -104 -> 354
    //   461: aload 5
    //   463: astore 13
    //   465: goto -207 -> 258
    //
    // Exception table:
    //   from	to	target	type
    //   81	91	317	java/lang/Throwable
    //   102	112	317	java/lang/Throwable
    //   120	156	317	java/lang/Throwable
    //   164	169	317	java/lang/Throwable
    //   181	206	317	java/lang/Throwable
    //   214	234	317	java/lang/Throwable
    //   239	254	317	java/lang/Throwable
    //   17	26	397	java/lang/Throwable
    //   40	46	397	java/lang/Throwable
    //   57	61	397	java/lang/Throwable
    //   61	67	397	java/lang/Throwable
    //   272	298	397	java/lang/Throwable
    //   319	329	397	java/lang/Throwable
    //   332	354	397	java/lang/Throwable
    //   359	380	397	java/lang/Throwable
    //   17	26	421	finally
    //   40	46	421	finally
    //   57	61	421	finally
    //   61	67	421	finally
    //   81	91	421	finally
    //   102	112	421	finally
    //   120	156	421	finally
    //   164	169	421	finally
    //   181	206	421	finally
    //   214	234	421	finally
    //   239	254	421	finally
    //   272	298	421	finally
    //   319	329	421	finally
    //   332	354	421	finally
    //   359	380	421	finally
    //   399	409	421	finally
    //   263	272	436	finally
    //   263	272	445	java/lang/Throwable
  }

  public void flush()
  {
    synchronized (this.mDiskCacheLock)
    {
      LruDiskCache localLruDiskCache = this.mDiskLruCache;
      if (localLruDiskCache != null);
      try
      {
        this.mDiskLruCache.flush();
        return;
      }
      catch (Throwable localThrowable)
      {
        while (true)
          LogUtils.e(localThrowable.getMessage(), localThrowable);
      }
    }
  }

  public File getBitmapFileFromDiskCache(String paramString)
  {
    synchronized (this.mDiskCacheLock)
    {
      if (this.mDiskLruCache != null)
      {
        File localFile = this.mDiskLruCache.getCacheFile(paramString, 0);
        return localFile;
      }
      return null;
    }
  }

  public Bitmap getBitmapFromDiskCache(String paramString, BitmapDisplayConfig paramBitmapDisplayConfig)
  {
    if ((paramString == null) || (!this.globalConfig.isDiskCacheEnabled()))
      return null;
    if (this.mDiskLruCache == null)
      initDiskCache();
    LruDiskCache.Snapshot localSnapshot;
    if (this.mDiskLruCache != null)
      localSnapshot = null;
    while (true)
    {
      try
      {
        localSnapshot = this.mDiskLruCache.get(paramString);
        if (localSnapshot != null)
        {
          if ((paramBitmapDisplayConfig == null) || (paramBitmapDisplayConfig.isShowOriginal()))
          {
            localObject2 = BitmapDecoder.decodeFileDescriptor(localSnapshot.getInputStream(0).getFD());
            Bitmap localBitmap1 = addBitmapToMemoryCache(paramString, paramBitmapDisplayConfig, rotateBitmapIfNeeded(paramString, paramBitmapDisplayConfig, (Bitmap)localObject2), this.mDiskLruCache.getExpiryTimestamp(paramString));
            return localBitmap1;
          }
          Bitmap localBitmap2 = BitmapDecoder.decodeSampledBitmapFromDescriptor(localSnapshot.getInputStream(0).getFD(), paramBitmapDisplayConfig.getBitmapMaxSize(), paramBitmapDisplayConfig.getBitmapConfig());
          Object localObject2 = localBitmap2;
          continue;
        }
      }
      catch (Throwable localThrowable)
      {
        LogUtils.e(localThrowable.getMessage(), localThrowable);
        return null;
      }
      finally
      {
        IOUtils.closeQuietly(localSnapshot);
      }
      IOUtils.closeQuietly(localSnapshot);
    }
  }

  public Bitmap getBitmapFromMemCache(String paramString, BitmapDisplayConfig paramBitmapDisplayConfig)
  {
    LruMemoryCache localLruMemoryCache = this.mMemoryCache;
    Bitmap localBitmap = null;
    if (localLruMemoryCache != null)
    {
      boolean bool = this.globalConfig.isMemoryCacheEnabled();
      localBitmap = null;
      if (bool)
      {
        MemoryCacheKey localMemoryCacheKey = new MemoryCacheKey(paramString, paramBitmapDisplayConfig, null);
        localBitmap = (Bitmap)this.mMemoryCache.get(localMemoryCacheKey);
      }
    }
    return localBitmap;
  }

  public void initDiskCache()
  {
    while (true)
    {
      long l1;
      synchronized (this.mDiskCacheLock)
      {
        File localFile;
        if ((this.globalConfig.isDiskCacheEnabled()) && ((this.mDiskLruCache == null) || (this.mDiskLruCache.isClosed())))
        {
          localFile = new File(this.globalConfig.getDiskCachePath());
          if ((localFile.exists()) || (localFile.mkdirs()))
          {
            l1 = OtherUtils.getAvailableSpace(localFile);
            int i = this.globalConfig.getDiskCacheSize();
            l2 = i;
            if (l1 <= l2)
              break label149;
          }
        }
        try
        {
          this.mDiskLruCache = LruDiskCache.open(localFile, 1, 1, l2);
          this.mDiskLruCache.setFileNameGenerator(this.globalConfig.getFileNameGenerator());
          LogUtils.d("create disk cache success");
          return;
        }
        catch (Throwable localThrowable)
        {
          this.mDiskLruCache = null;
          LogUtils.e("create disk cache error", localThrowable);
          continue;
        }
      }
      label149: long l2 = l1;
    }
  }

  public void initMemoryCache()
  {
    if (!this.globalConfig.isMemoryCacheEnabled())
      return;
    if (this.mMemoryCache != null);
    try
    {
      clearMemoryCache();
      label22: this.mMemoryCache = new LruMemoryCache(this.globalConfig.getMemoryCacheSize())
      {
        protected int sizeOf(BitmapCache.MemoryCacheKey paramAnonymousMemoryCacheKey, Bitmap paramAnonymousBitmap)
        {
          if (paramAnonymousBitmap == null)
            return 0;
          return paramAnonymousBitmap.getRowBytes() * paramAnonymousBitmap.getHeight();
        }
      };
      return;
    }
    catch (Throwable localThrowable)
    {
      break label22;
    }
  }

  public void setDiskCacheFileNameGenerator(FileNameGenerator paramFileNameGenerator)
  {
    synchronized (this.mDiskCacheLock)
    {
      if ((this.mDiskLruCache != null) && (paramFileNameGenerator != null))
        this.mDiskLruCache.setFileNameGenerator(paramFileNameGenerator);
      return;
    }
  }

  public void setDiskCacheSize(int paramInt)
  {
    synchronized (this.mDiskCacheLock)
    {
      if (this.mDiskLruCache != null)
        this.mDiskLruCache.setMaxSize(paramInt);
      return;
    }
  }

  public void setMemoryCacheSize(int paramInt)
  {
    if (this.mMemoryCache != null)
      this.mMemoryCache.setMaxSize(paramInt);
  }

  private class BitmapMeta
  {
    public byte[] data;
    public long expiryTimestamp;
    public FileInputStream inputStream;

    private BitmapMeta()
    {
    }
  }

  public class MemoryCacheKey
  {
    private String subKey;
    private String uri;

    private MemoryCacheKey(String paramBitmapDisplayConfig, BitmapDisplayConfig arg3)
    {
      this.uri = paramBitmapDisplayConfig;
      Object localObject;
      if (localObject == null);
      for (String str = null; ; str = localObject.toString())
      {
        this.subKey = str;
        return;
      }
    }

    public boolean equals(Object paramObject)
    {
      if (this == paramObject);
      MemoryCacheKey localMemoryCacheKey;
      do
      {
        return true;
        if (!(paramObject instanceof MemoryCacheKey))
          return false;
        localMemoryCacheKey = (MemoryCacheKey)paramObject;
        if (!this.uri.equals(localMemoryCacheKey.uri))
          return false;
      }
      while ((this.subKey == null) || (localMemoryCacheKey.subKey == null));
      return this.subKey.equals(localMemoryCacheKey.subKey);
    }

    public int hashCode()
    {
      return this.uri.hashCode();
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.bitmap.core.BitmapCache
 * JD-Core Version:    0.6.2
 */