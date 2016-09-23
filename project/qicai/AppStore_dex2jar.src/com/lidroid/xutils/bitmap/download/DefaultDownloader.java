package com.lidroid.xutils.bitmap.download;

public class DefaultDownloader extends Downloader
{
  // ERROR //
  public long downloadToStream(java.lang.String paramString, java.io.OutputStream paramOutputStream, com.lidroid.xutils.BitmapUtils.BitmapLoadTask<?> paramBitmapLoadTask)
  {
    // Byte code:
    //   0: aload_3
    //   1: ifnull +17 -> 18
    //   4: aload_3
    //   5: invokevirtual 18	com/lidroid/xutils/BitmapUtils$BitmapLoadTask:isCancelled	()Z
    //   8: ifne +10 -> 18
    //   11: aload_3
    //   12: invokevirtual 22	com/lidroid/xutils/BitmapUtils$BitmapLoadTask:getTargetContainer	()Landroid/view/View;
    //   15: ifnonnull +7 -> 22
    //   18: ldc2_w 23
    //   21: lreturn
    //   22: aconst_null
    //   23: astore 4
    //   25: invokestatic 29	com/lidroid/xutils/util/OtherUtils:trustAllHttpsURLConnection	()V
    //   28: lconst_0
    //   29: lstore 5
    //   31: aload_1
    //   32: ldc 31
    //   34: invokevirtual 37	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   37: istore 9
    //   39: aconst_null
    //   40: astore 4
    //   42: iload 9
    //   44: ifeq +81 -> 125
    //   47: new 39	java/io/FileInputStream
    //   50: dup
    //   51: aload_1
    //   52: invokespecial 42	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   55: astore 10
    //   57: aload 10
    //   59: invokevirtual 46	java/io/FileInputStream:available	()I
    //   62: i2l
    //   63: lstore 11
    //   65: new 48	java/io/BufferedInputStream
    //   68: dup
    //   69: aload 10
    //   71: invokespecial 51	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   74: astore 13
    //   76: invokestatic 57	java/lang/System:currentTimeMillis	()J
    //   79: lstore 14
    //   81: aload_0
    //   82: invokevirtual 60	com/lidroid/xutils/bitmap/download/DefaultDownloader:getDefaultExpiry	()J
    //   85: lstore 16
    //   87: lload 14
    //   89: lload 16
    //   91: ladd
    //   92: lstore 18
    //   94: aload 13
    //   96: astore 4
    //   98: aload_3
    //   99: invokevirtual 18	com/lidroid/xutils/BitmapUtils$BitmapLoadTask:isCancelled	()Z
    //   102: ifne +14 -> 116
    //   105: aload_3
    //   106: invokevirtual 22	com/lidroid/xutils/BitmapUtils$BitmapLoadTask:getTargetContainer	()Landroid/view/View;
    //   109: astore 20
    //   111: aload 20
    //   113: ifnonnull +175 -> 288
    //   116: aload 4
    //   118: invokestatic 66	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   121: ldc2_w 23
    //   124: lreturn
    //   125: aload_1
    //   126: ldc 68
    //   128: invokevirtual 37	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   131: istore 25
    //   133: aconst_null
    //   134: astore 4
    //   136: iload 25
    //   138: ifeq +56 -> 194
    //   141: aload_0
    //   142: invokevirtual 72	com/lidroid/xutils/bitmap/download/DefaultDownloader:getContext	()Landroid/content/Context;
    //   145: invokevirtual 78	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   148: aload_1
    //   149: bipush 7
    //   151: aload_1
    //   152: invokevirtual 81	java/lang/String:length	()I
    //   155: invokevirtual 85	java/lang/String:substring	(II)Ljava/lang/String;
    //   158: invokevirtual 91	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   161: astore 26
    //   163: aload 26
    //   165: invokevirtual 94	java/io/InputStream:available	()I
    //   168: i2l
    //   169: lstore 11
    //   171: new 48	java/io/BufferedInputStream
    //   174: dup
    //   175: aload 26
    //   177: invokespecial 51	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   180: astore 27
    //   182: ldc2_w 95
    //   185: lstore 18
    //   187: aload 27
    //   189: astore 4
    //   191: goto -93 -> 98
    //   194: new 98	java/net/URL
    //   197: dup
    //   198: aload_1
    //   199: invokespecial 99	java/net/URL:<init>	(Ljava/lang/String;)V
    //   202: astore 28
    //   204: aload 28
    //   206: invokevirtual 103	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   209: astore 29
    //   211: aload 29
    //   213: aload_0
    //   214: invokevirtual 106	com/lidroid/xutils/bitmap/download/DefaultDownloader:getDefaultConnectTimeout	()I
    //   217: invokevirtual 112	java/net/URLConnection:setConnectTimeout	(I)V
    //   220: aload 29
    //   222: aload_0
    //   223: invokevirtual 115	com/lidroid/xutils/bitmap/download/DefaultDownloader:getDefaultReadTimeout	()I
    //   226: invokevirtual 118	java/net/URLConnection:setReadTimeout	(I)V
    //   229: new 48	java/io/BufferedInputStream
    //   232: dup
    //   233: aload 29
    //   235: invokevirtual 122	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   238: invokespecial 51	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   241: astore 13
    //   243: aload 29
    //   245: invokevirtual 125	java/net/URLConnection:getExpiration	()J
    //   248: lstore 18
    //   250: lload 18
    //   252: invokestatic 57	java/lang/System:currentTimeMillis	()J
    //   255: lcmp
    //   256: ifge +13 -> 269
    //   259: invokestatic 57	java/lang/System:currentTimeMillis	()J
    //   262: aload_0
    //   263: invokevirtual 60	com/lidroid/xutils/bitmap/download/DefaultDownloader:getDefaultExpiry	()J
    //   266: ladd
    //   267: lstore 18
    //   269: aload 29
    //   271: invokevirtual 128	java/net/URLConnection:getContentLength	()I
    //   274: istore 30
    //   276: iload 30
    //   278: i2l
    //   279: lstore 11
    //   281: aload 13
    //   283: astore 4
    //   285: goto -187 -> 98
    //   288: sipush 4096
    //   291: newarray byte
    //   293: astore 21
    //   295: new 130	java/io/BufferedOutputStream
    //   298: dup
    //   299: aload_2
    //   300: invokespecial 133	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   303: astore 22
    //   305: aload 4
    //   307: aload 21
    //   309: invokevirtual 137	java/io/BufferedInputStream:read	([B)I
    //   312: istore 23
    //   314: iload 23
    //   316: iconst_m1
    //   317: if_icmpne +16 -> 333
    //   320: aload 22
    //   322: invokevirtual 140	java/io/BufferedOutputStream:flush	()V
    //   325: aload 4
    //   327: invokestatic 66	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   330: lload 18
    //   332: lreturn
    //   333: aload 22
    //   335: aload 21
    //   337: iconst_0
    //   338: iload 23
    //   340: invokevirtual 144	java/io/BufferedOutputStream:write	([BII)V
    //   343: lload 5
    //   345: iload 23
    //   347: i2l
    //   348: ladd
    //   349: lstore 5
    //   351: aload_3
    //   352: invokevirtual 18	com/lidroid/xutils/BitmapUtils$BitmapLoadTask:isCancelled	()Z
    //   355: ifne +14 -> 369
    //   358: aload_3
    //   359: invokevirtual 22	com/lidroid/xutils/BitmapUtils$BitmapLoadTask:getTargetContainer	()Landroid/view/View;
    //   362: astore 24
    //   364: aload 24
    //   366: ifnonnull +12 -> 378
    //   369: aload 4
    //   371: invokestatic 66	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   374: ldc2_w 23
    //   377: lreturn
    //   378: aload_3
    //   379: lload 11
    //   381: lload 5
    //   383: invokevirtual 148	com/lidroid/xutils/BitmapUtils$BitmapLoadTask:updateProgress	(JJ)V
    //   386: goto -81 -> 305
    //   389: astore 8
    //   391: aload 8
    //   393: invokevirtual 152	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   396: aload 8
    //   398: invokestatic 158	com/lidroid/xutils/util/LogUtils:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   401: aload 4
    //   403: invokestatic 66	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   406: ldc2_w 23
    //   409: lreturn
    //   410: astore 7
    //   412: aload 4
    //   414: invokestatic 66	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   417: aload 7
    //   419: athrow
    //   420: astore 7
    //   422: aload 13
    //   424: astore 4
    //   426: goto -14 -> 412
    //   429: astore 8
    //   431: aload 13
    //   433: astore 4
    //   435: goto -44 -> 391
    //
    // Exception table:
    //   from	to	target	type
    //   31	39	389	java/lang/Throwable
    //   47	76	389	java/lang/Throwable
    //   98	111	389	java/lang/Throwable
    //   125	133	389	java/lang/Throwable
    //   141	182	389	java/lang/Throwable
    //   194	243	389	java/lang/Throwable
    //   288	305	389	java/lang/Throwable
    //   305	314	389	java/lang/Throwable
    //   320	325	389	java/lang/Throwable
    //   333	343	389	java/lang/Throwable
    //   351	364	389	java/lang/Throwable
    //   378	386	389	java/lang/Throwable
    //   31	39	410	finally
    //   47	76	410	finally
    //   98	111	410	finally
    //   125	133	410	finally
    //   141	182	410	finally
    //   194	243	410	finally
    //   288	305	410	finally
    //   305	314	410	finally
    //   320	325	410	finally
    //   333	343	410	finally
    //   351	364	410	finally
    //   378	386	410	finally
    //   391	401	410	finally
    //   76	87	420	finally
    //   243	269	420	finally
    //   269	276	420	finally
    //   76	87	429	java/lang/Throwable
    //   243	269	429	java/lang/Throwable
    //   269	276	429	java/lang/Throwable
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.bitmap.download.DefaultDownloader
 * JD-Core Version:    0.6.2
 */