package com.lidroid.xutils.http.callback;

public class FileDownloadHandler
{
  // ERROR //
  public java.io.File handleEntity(org.apache.http.HttpEntity paramHttpEntity, RequestCallBackHandler paramRequestCallBackHandler, java.lang.String paramString1, boolean paramBoolean, java.lang.String paramString2)
    throws java.io.IOException
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +10 -> 11
    //   4: aload_3
    //   5: invokestatic 18	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   8: ifeq +9 -> 17
    //   11: aconst_null
    //   12: astore 6
    //   14: aload 6
    //   16: areturn
    //   17: new 20	java/io/File
    //   20: dup
    //   21: aload_3
    //   22: invokespecial 23	java/io/File:<init>	(Ljava/lang/String;)V
    //   25: astore 6
    //   27: aload 6
    //   29: invokevirtual 27	java/io/File:exists	()Z
    //   32: ifne +32 -> 64
    //   35: aload 6
    //   37: invokevirtual 31	java/io/File:getParentFile	()Ljava/io/File;
    //   40: astore 27
    //   42: aload 27
    //   44: invokevirtual 27	java/io/File:exists	()Z
    //   47: ifne +11 -> 58
    //   50: aload 27
    //   52: invokevirtual 34	java/io/File:mkdirs	()Z
    //   55: ifeq +9 -> 64
    //   58: aload 6
    //   60: invokevirtual 37	java/io/File:createNewFile	()Z
    //   63: pop
    //   64: lconst_0
    //   65: lstore 7
    //   67: aconst_null
    //   68: astore 9
    //   70: aconst_null
    //   71: astore 10
    //   73: iload 4
    //   75: ifeq +93 -> 168
    //   78: aload 6
    //   80: invokevirtual 41	java/io/File:length	()J
    //   83: lstore 7
    //   85: new 43	java/io/FileOutputStream
    //   88: dup
    //   89: aload_3
    //   90: iconst_1
    //   91: invokespecial 46	java/io/FileOutputStream:<init>	(Ljava/lang/String;Z)V
    //   94: astore 12
    //   96: lload 7
    //   98: aload_1
    //   99: invokeinterface 51 1 0
    //   104: ladd
    //   105: lstore 14
    //   107: new 53	java/io/BufferedInputStream
    //   110: dup
    //   111: aload_1
    //   112: invokeinterface 57 1 0
    //   117: invokespecial 60	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   120: astore 16
    //   122: new 62	java/io/BufferedOutputStream
    //   125: dup
    //   126: aload 12
    //   128: invokespecial 65	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   131: astore 17
    //   133: aload_2
    //   134: ifnull +51 -> 185
    //   137: aload_2
    //   138: lload 14
    //   140: lload 7
    //   142: iconst_1
    //   143: invokeinterface 71 6 0
    //   148: istore 26
    //   150: iload 26
    //   152: ifne +33 -> 185
    //   155: aload 16
    //   157: invokestatic 77	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   160: aload 17
    //   162: invokestatic 77	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   165: aload 6
    //   167: areturn
    //   168: new 43	java/io/FileOutputStream
    //   171: dup
    //   172: aload_3
    //   173: invokespecial 78	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   176: astore 11
    //   178: aload 11
    //   180: astore 12
    //   182: goto -86 -> 96
    //   185: sipush 4096
    //   188: newarray byte
    //   190: astore 18
    //   192: aload 16
    //   194: aload 18
    //   196: invokevirtual 82	java/io/BufferedInputStream:read	([B)I
    //   199: istore 19
    //   201: iload 19
    //   203: iconst_m1
    //   204: if_icmpne +91 -> 295
    //   207: aload 17
    //   209: invokevirtual 85	java/io/BufferedOutputStream:flush	()V
    //   212: aload_2
    //   213: ifnull +15 -> 228
    //   216: aload_2
    //   217: lload 14
    //   219: lload 7
    //   221: iconst_1
    //   222: invokeinterface 71 6 0
    //   227: pop
    //   228: aload 16
    //   230: invokestatic 77	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   233: aload 17
    //   235: invokestatic 77	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   238: aload 6
    //   240: invokevirtual 27	java/io/File:exists	()Z
    //   243: ifeq -229 -> 14
    //   246: aload 5
    //   248: invokestatic 18	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   251: ifne -237 -> 14
    //   254: aload 6
    //   256: invokevirtual 89	java/io/File:getParent	()Ljava/lang/String;
    //   259: astore 21
    //   261: new 20	java/io/File
    //   264: dup
    //   265: aload 21
    //   267: aload 5
    //   269: invokespecial 92	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   272: astore 22
    //   274: aload 22
    //   276: invokevirtual 27	java/io/File:exists	()Z
    //   279: ifne +84 -> 363
    //   282: aload 6
    //   284: aload 22
    //   286: invokevirtual 96	java/io/File:renameTo	(Ljava/io/File;)Z
    //   289: ifeq +120 -> 409
    //   292: aload 22
    //   294: areturn
    //   295: aload 17
    //   297: aload 18
    //   299: iconst_0
    //   300: iload 19
    //   302: invokevirtual 100	java/io/BufferedOutputStream:write	([BII)V
    //   305: lload 7
    //   307: iload 19
    //   309: i2l
    //   310: ladd
    //   311: lstore 7
    //   313: aload_2
    //   314: ifnull -122 -> 192
    //   317: aload_2
    //   318: lload 14
    //   320: lload 7
    //   322: iconst_0
    //   323: invokeinterface 71 6 0
    //   328: istore 25
    //   330: iload 25
    //   332: ifne -140 -> 192
    //   335: aload 16
    //   337: invokestatic 77	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   340: aload 17
    //   342: invokestatic 77	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   345: aload 6
    //   347: areturn
    //   348: astore 13
    //   350: aload 9
    //   352: invokestatic 77	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   355: aload 10
    //   357: invokestatic 77	com/lidroid/xutils/util/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   360: aload 13
    //   362: athrow
    //   363: aload 6
    //   365: invokevirtual 89	java/io/File:getParent	()Ljava/lang/String;
    //   368: astore 23
    //   370: new 102	java/lang/StringBuilder
    //   373: dup
    //   374: invokestatic 107	java/lang/System:currentTimeMillis	()J
    //   377: invokestatic 113	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   380: invokespecial 114	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   383: aload 5
    //   385: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   388: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   391: astore 24
    //   393: new 20	java/io/File
    //   396: dup
    //   397: aload 23
    //   399: aload 24
    //   401: invokespecial 92	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   404: astore 22
    //   406: goto -132 -> 274
    //   409: aload 6
    //   411: astore 22
    //   413: goto -121 -> 292
    //   416: astore 13
    //   418: aload 16
    //   420: astore 9
    //   422: aconst_null
    //   423: astore 10
    //   425: goto -75 -> 350
    //   428: astore 13
    //   430: aload 17
    //   432: astore 10
    //   434: aload 16
    //   436: astore 9
    //   438: goto -88 -> 350
    //
    // Exception table:
    //   from	to	target	type
    //   78	96	348	finally
    //   96	122	348	finally
    //   168	178	348	finally
    //   122	133	416	finally
    //   137	150	428	finally
    //   185	192	428	finally
    //   192	201	428	finally
    //   207	212	428	finally
    //   216	228	428	finally
    //   295	305	428	finally
    //   317	330	428	finally
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.http.callback.FileDownloadHandler
 * JD-Core Version:    0.6.2
 */