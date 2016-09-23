package com.jh.app.util;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.location.Location;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore.Images.Media;
import android.widget.ImageView;
import com.jh.exception.JHException;
import com.jh.net.JHFileNotFoundException;
import com.jh.persistence.file.FileUtil;
import com.jh.persistence.file.FileUtil.ExternalStorageInValidException;
import com.jh.util.LogUtil;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;

public class ImageFactory
{
  private static final Uri STORAGE_URI = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;

  public static byte[] Bitmap2Bytes(Bitmap paramBitmap)
  {
    return bmpToByteArray(paramBitmap, false);
  }

  public static File CreateFile(String paramString1, String paramString2)
    throws IOException
  {
    File localFile1 = new File(paramString1);
    if (!localFile1.exists());
    try
    {
      localFile1.mkdirs();
      label21: File localFile2 = new File(new String(paramString1 + paramString2).replace("\n", ""));
      if (!localFile2.exists())
        localFile2.createNewFile();
      return localFile2;
    }
    catch (Exception localException)
    {
      break label21;
    }
  }

  public static File CreateFileNew(String paramString1, String paramString2)
    throws IOException
  {
    File localFile = new File(paramString1).getParentFile();
    if (!localFile.exists())
      localFile.mkdirs();
    return new File(paramString1, paramString2);
  }

  public static String GetImagePath(String paramString, Context paramContext)
  {
    if (paramString.startsWith("content"))
    {
      Uri localUri = Uri.parse(paramString);
      Cursor localCursor = paramContext.getContentResolver().query(localUri, null, null, null, null);
      localCursor.moveToFirst();
      localCursor.getString(localCursor.getColumnIndex("_display_name"));
      String str = localCursor.getString(localCursor.getColumnIndexOrThrow("_data"));
      LogUtil.println("path1=" + str);
      localCursor.close();
      if (str != null)
        return str;
    }
    return paramString;
  }

  public static Uri addImage(ContentResolver paramContentResolver, String paramString1, long paramLong, Location paramLocation, String paramString2)
  {
    File localFile = new File(paramString2);
    if (!localFile.exists());
    try
    {
      localFile.createNewFile();
      long l = localFile.length();
      ContentValues localContentValues = new ContentValues(9);
      localContentValues.put("title", paramString1);
      localContentValues.put("_display_name", localFile.getName());
      localContentValues.put("datetaken", Long.valueOf(paramLong));
      localContentValues.put("mime_type", "image/jpeg");
      localContentValues.put("orientation", Integer.valueOf(0));
      localContentValues.put("_data", paramString2);
      localContentValues.put("_size", Long.valueOf(l));
      if (paramLocation != null)
      {
        localContentValues.put("latitude", Double.valueOf(paramLocation.getLatitude()));
        localContentValues.put("longitude", Double.valueOf(paramLocation.getLongitude()));
      }
      return paramContentResolver.insert(STORAGE_URI, localContentValues);
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  public static byte[] bmpToByteArray(Bitmap paramBitmap, boolean paramBoolean)
  {
    int i;
    int j;
    Bitmap localBitmap;
    Canvas localCanvas;
    if (paramBitmap.getHeight() > paramBitmap.getWidth())
    {
      i = paramBitmap.getWidth();
      j = paramBitmap.getWidth();
      localBitmap = Bitmap.createBitmap(i, j, Bitmap.Config.RGB_565);
      localCanvas = new Canvas(localBitmap);
    }
    while (true)
      while (true)
      {
        localCanvas.drawBitmap(paramBitmap, new Rect(0, 0, i, j), new Rect(0, 0, i, j), null);
        if (paramBoolean)
          paramBitmap.recycle();
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
        localBitmap.compress(Bitmap.CompressFormat.JPEG, 100, localByteArrayOutputStream);
        localBitmap.recycle();
        byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
        try
        {
          localByteArrayOutputStream.close();
          return arrayOfByte;
          i = paramBitmap.getHeight();
          j = paramBitmap.getHeight();
        }
        catch (Exception localException)
        {
          i = paramBitmap.getHeight();
          j = paramBitmap.getHeight();
        }
      }
  }

  public static Bitmap compressPic(ImageView paramImageView, String paramString)
  {
    LogUtil.println("path: " + paramString);
    int i = paramImageView.getWidth();
    int j = paramImageView.getHeight();
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, localOptions);
    int k = localOptions.outWidth;
    int m = localOptions.outHeight;
    int n = Math.max(Math.max(k / i, m / j), 1);
    localOptions.inJustDecodeBounds = false;
    localOptions.inSampleSize = n;
    localOptions.inPurgeable = true;
    return BitmapFactory.decodeFile(paramString, localOptions);
  }

  public static File compressPic(int paramInt1, int paramInt2, String paramString, Context paramContext)
  {
    LogUtil.println("path: " + paramString);
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, localOptions);
    int i = localOptions.outWidth;
    int j = localOptions.outHeight;
    int k = Math.max(Math.max(i / paramInt1, j / paramInt2), 1);
    localOptions.inJustDecodeBounds = false;
    localOptions.inSampleSize = k;
    localOptions.inPurgeable = true;
    File localFile = null;
    try
    {
      Bitmap localBitmap = getFileBitmap(paramString, paramInt1, paramInt2, paramContext);
      localFile = FileUtil.createSdcardImageFile();
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
      localBitmap.compress(Bitmap.CompressFormat.JPEG, 100, localFileOutputStream);
      localFileOutputStream.close();
      return localFile;
    }
    catch (FileUtil.ExternalStorageInValidException localExternalStorageInValidException)
    {
      localExternalStorageInValidException.printStackTrace();
      return localFile;
    }
    catch (JHException localJHException)
    {
      localJHException.printStackTrace();
      return localFile;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return localFile;
  }

  public static String compressPicPath(int paramInt1, int paramInt2, String paramString, Context paramContext)
  {
    File localFile = compressPic(paramInt1, paramInt2, paramString, paramContext);
    if (localFile != null)
      return localFile.getAbsolutePath();
    return null;
  }

  public static byte[] file2Byte(String paramString)
    throws JHException
  {
    try
    {
      System.gc();
      BufferedInputStream localBufferedInputStream = new BufferedInputStream(new FileInputStream(paramString));
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(1024);
      byte[] arrayOfByte = new byte[1024];
      while (true)
      {
        int i = localBufferedInputStream.read(arrayOfByte);
        if (i == -1)
        {
          localBufferedInputStream.close();
          return localByteArrayOutputStream.toByteArray();
        }
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      throw new JHException(localFileNotFoundException.getMessage());
    }
    catch (IOException localIOException)
    {
      throw new JHException(localIOException.getMessage());
    }
  }

  public static Bitmap getBitmapByPath(String paramString)
    throws JHException
  {
    Bitmap localBitmap = BitmapFactory.decodeFile(paramString);
    if (localBitmap == null)
      throw new JHException("bitmap is null");
    return localBitmap;
  }

  public static int[] getBitmapSize(Context paramContext, String paramString)
  {
    int[] arrayOfInt = { -1, -1 };
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    localOptions.outHeight = 40;
    localOptions.inJustDecodeBounds = true;
    localOptions.outHeight = 40;
    Uri localUri;
    if (paramString.startsWith("content"))
      localUri = Uri.parse(paramString);
    while (true)
    {
      try
      {
        BitmapFactory.decodeFileDescriptor(paramContext.getContentResolver().openFileDescriptor(localUri, "r").getFileDescriptor(), null, localOptions);
        BitmapFactory.decodeFile(paramString, localOptions);
        arrayOfInt[0] = localOptions.outWidth;
        arrayOfInt[1] = localOptions.outHeight;
        return arrayOfInt;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        throw new JHFileNotFoundException();
      }
      BitmapFactory.decodeFile(paramString, localOptions);
    }
  }

  public static Bitmap getFileBitmap(String paramString, int paramInt1, int paramInt2, Context paramContext)
    throws JHException
  {
    return getFileBitmapInfo(paramString, paramInt1, paramInt2, paramContext).getBitmap();
  }

  public static BitmapInfo getFileBitmapInfo(String paramString, int paramInt1, int paramInt2, Context paramContext)
    throws JHException
  {
    System.gc();
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    localOptions.outHeight = 40;
    int i = Math.max(80, paramInt1);
    int j = Math.max(80, paramInt2);
    if (paramString == null)
      throw new JHFileNotFoundException();
    Uri localUri;
    if (paramString.startsWith("content"))
      localUri = Uri.parse(paramString);
    Bitmap localBitmap1;
    while (true)
    {
      try
      {
        FileDescriptor localFileDescriptor = paramContext.getContentResolver().openFileDescriptor(localUri, "r").getFileDescriptor();
        localOptions.inJustDecodeBounds = true;
        localOptions.outHeight = 40;
        BitmapFactory.decodeFileDescriptor(localFileDescriptor, null, localOptions);
        localOptions.inJustDecodeBounds = false;
        localOptions.inSampleSize = getSample(localOptions.outHeight, localOptions.outWidth, i, j);
        System.gc();
        Bitmap localBitmap2 = BitmapFactory.decodeFileDescriptor(localFileDescriptor, null, localOptions);
        localBitmap1 = localBitmap2;
        if (localBitmap1 != null)
          break;
        throw new JHFileNotFoundException();
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        throw new JHFileNotFoundException();
      }
      BitmapFactory.decodeFile(paramString, localOptions);
      localOptions.inJustDecodeBounds = false;
      localOptions.inSampleSize = getSample(localOptions.outHeight, localOptions.outWidth, i, j);
      localBitmap1 = BitmapFactory.decodeFile(paramString, localOptions);
    }
    BitmapInfo localBitmapInfo = new BitmapInfo();
    localBitmapInfo.setBitmap(localBitmap1);
    localBitmapInfo.setInSampleSize(localOptions.inSampleSize);
    return localBitmapInfo;
  }

  public static Bitmap getFileBitmapNoException(String paramString, int paramInt1, int paramInt2, Context paramContext)
  {
    try
    {
      Bitmap localBitmap = getFileBitmap(paramString, paramInt1, paramInt2, paramContext);
      return localBitmap;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static String getFilePath(Uri paramUri, Context paramContext)
  {
    Cursor localCursor = paramContext.getContentResolver().query(paramUri, null, null, null, null);
    localCursor.moveToFirst();
    String str = localCursor.getString(localCursor.getColumnIndex("_data"));
    localCursor.close();
    return str;
  }

  public static String getFilePath(String paramString, Context paramContext)
  {
    String str = paramString;
    if (paramString.startsWith("content"))
    {
      Uri localUri = Uri.parse(paramString);
      Cursor localCursor = paramContext.getContentResolver().query(localUri, null, null, null, null);
      localCursor.moveToFirst();
      str = localCursor.getString(localCursor.getColumnIndex("_data"));
      localCursor.close();
    }
    return str;
  }

  public static long getFileSize(Uri paramUri, Context paramContext)
  {
    return new File(getFilePath(paramUri, paramContext)).length();
  }

  public static long getFileSize(String paramString, Context paramContext)
  {
    File localFile = new File(getFilePath(paramString, paramContext));
    LogUtil.println("length: " + localFile.length());
    return localFile.length();
  }

  public static Bitmap getImageBitmap(String paramString, Context paramContext)
    throws JHException
  {
    return BitmapFactory.decodeFile(GetImagePath(paramString, paramContext));
  }

  public static Bitmap getRoundedCornerBitmap(Bitmap paramBitmap, float paramFloat)
  {
    Bitmap localBitmap = Bitmap.createBitmap(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    Paint localPaint = new Paint();
    Rect localRect = new Rect(0, 0, paramBitmap.getWidth(), paramBitmap.getHeight());
    RectF localRectF = new RectF(localRect);
    localPaint.setAntiAlias(true);
    localCanvas.drawARGB(0, 0, 0, 0);
    localPaint.setColor(-12434878);
    localCanvas.drawRoundRect(localRectF, paramFloat, paramFloat, localPaint);
    localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    localCanvas.drawBitmap(paramBitmap, localRect, localRect, localPaint);
    return localBitmap;
  }

  private static int getSample(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = Math.max((int)Math.ceil(paramInt1 / paramInt3), (int)Math.ceil(paramInt2 / paramInt4));
    if (i == 0)
      i = 1;
    return i;
  }

  // ERROR //
  public static String getURLBitmap(String paramString)
    throws JHException
  {
    // Byte code:
    //   0: sipush 2048
    //   3: newarray byte
    //   5: astore_1
    //   6: new 481	java/text/SimpleDateFormat
    //   9: dup
    //   10: ldc_w 483
    //   13: invokespecial 484	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   16: astore_2
    //   17: aconst_null
    //   18: astore_3
    //   19: aload_0
    //   20: ifnull +228 -> 248
    //   23: aload_0
    //   24: invokevirtual 487	java/lang/String:trim	()Ljava/lang/String;
    //   27: invokevirtual 489	java/lang/String:length	()I
    //   30: istore 6
    //   32: aconst_null
    //   33: astore_3
    //   34: iload 6
    //   36: ifle +212 -> 248
    //   39: new 491	java/net/URL
    //   42: dup
    //   43: aload_0
    //   44: invokespecial 492	java/net/URL:<init>	(Ljava/lang/String;)V
    //   47: astore 7
    //   49: aload 7
    //   51: invokevirtual 496	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   54: checkcast 498	java/net/HttpURLConnection
    //   57: astore 8
    //   59: aload 8
    //   61: ldc_w 500
    //   64: invokevirtual 503	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   67: aload 8
    //   69: iconst_1
    //   70: invokevirtual 506	java/net/HttpURLConnection:setDoInput	(Z)V
    //   73: aload 8
    //   75: iconst_0
    //   76: invokevirtual 509	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   79: aload 8
    //   81: sipush 30000
    //   84: invokevirtual 512	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   87: aload 8
    //   89: sipush 30000
    //   92: invokevirtual 515	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   95: aload 8
    //   97: invokevirtual 519	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   100: astore 9
    //   102: aload_0
    //   103: ldc_w 521
    //   106: invokevirtual 525	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   109: iconst_0
    //   110: aaload
    //   111: pop
    //   112: invokestatic 530	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   115: ldc_w 532
    //   118: invokevirtual 536	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   121: ifeq +129 -> 250
    //   124: new 46	java/lang/StringBuilder
    //   127: dup
    //   128: invokestatic 539	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   131: invokevirtual 542	java/io/File:getPath	()Ljava/lang/String;
    //   134: invokestatic 50	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   137: invokespecial 51	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   140: ldc_w 544
    //   143: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   149: astore 11
    //   151: aload 11
    //   153: astore 12
    //   155: new 46	java/lang/StringBuilder
    //   158: dup
    //   159: aload_2
    //   160: new 546	java/util/Date
    //   163: dup
    //   164: invokespecial 547	java/util/Date:<init>	()V
    //   167: invokevirtual 551	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   170: invokestatic 50	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   173: invokespecial 51	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   176: ldc_w 553
    //   179: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   185: astore 13
    //   187: new 318	java/io/FileOutputStream
    //   190: dup
    //   191: aload 12
    //   193: aload 13
    //   195: invokestatic 555	com/jh/app/util/ImageFactory:CreateFile	(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    //   198: invokespecial 321	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   201: astore 14
    //   203: new 46	java/lang/StringBuilder
    //   206: dup
    //   207: aload 12
    //   209: invokestatic 50	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   212: invokespecial 51	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   215: aload 13
    //   217: invokevirtual 55	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   220: invokevirtual 59	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   223: astore_3
    //   224: aload 9
    //   226: aload_1
    //   227: invokevirtual 558	java/io/InputStream:read	([B)I
    //   230: istore 15
    //   232: iload 15
    //   234: iconst_m1
    //   235: if_icmpne +23 -> 258
    //   238: aload 14
    //   240: invokevirtual 322	java/io/FileOutputStream:close	()V
    //   243: aload 9
    //   245: invokevirtual 559	java/io/InputStream:close	()V
    //   248: aload_3
    //   249: areturn
    //   250: ldc_w 561
    //   253: astore 11
    //   255: goto -104 -> 151
    //   258: aload 14
    //   260: aload_1
    //   261: iconst_0
    //   262: iload 15
    //   264: invokevirtual 562	java/io/FileOutputStream:write	([BII)V
    //   267: aload 9
    //   269: aload_1
    //   270: invokevirtual 558	java/io/InputStream:read	([B)I
    //   273: istore 16
    //   275: iload 16
    //   277: istore 15
    //   279: goto -47 -> 232
    //   282: astore 5
    //   284: aload 5
    //   286: invokevirtual 563	java/io/FileNotFoundException:printStackTrace	()V
    //   289: new 307	com/jh/exception/JHException
    //   292: dup
    //   293: ldc_w 565
    //   296: invokespecial 362	com/jh/exception/JHException:<init>	(Ljava/lang/String;)V
    //   299: athrow
    //   300: astore 4
    //   302: aload 4
    //   304: invokevirtual 208	java/io/IOException:printStackTrace	()V
    //   307: new 567	com/jh/net/JHIOException
    //   310: dup
    //   311: invokespecial 568	com/jh/net/JHIOException:<init>	()V
    //   314: athrow
    //   315: astore 4
    //   317: goto -15 -> 302
    //   320: astore 4
    //   322: goto -20 -> 302
    //   325: astore 5
    //   327: goto -43 -> 284
    //   330: astore 5
    //   332: goto -48 -> 284
    //
    // Exception table:
    //   from	to	target	type
    //   23	32	282	java/io/FileNotFoundException
    //   39	49	282	java/io/FileNotFoundException
    //   23	32	300	java/io/IOException
    //   39	49	300	java/io/IOException
    //   49	151	315	java/io/IOException
    //   155	203	315	java/io/IOException
    //   203	232	320	java/io/IOException
    //   238	248	320	java/io/IOException
    //   258	275	320	java/io/IOException
    //   49	151	325	java/io/FileNotFoundException
    //   155	203	325	java/io/FileNotFoundException
    //   203	232	330	java/io/FileNotFoundException
    //   238	248	330	java/io/FileNotFoundException
    //   258	275	330	java/io/FileNotFoundException
  }

  public static Bitmap getZoomBitmap(Context paramContext, String paramString, int paramInt1, int paramInt2)
  {
    try
    {
      Bitmap localBitmap2 = getFileBitmap(paramString, paramInt2, paramInt1, paramContext);
      localBitmap1 = localBitmap2;
      if (localBitmap1 != null)
      {
        int i = localBitmap1.getWidth();
        int j = localBitmap1.getHeight();
        Matrix localMatrix = new Matrix();
        localMatrix.postScale(paramInt1 / i, paramInt2 / j);
        localBitmap1 = Bitmap.createBitmap(localBitmap1, 0, 0, i, j, localMatrix, true);
      }
      return localBitmap1;
    }
    catch (JHException localJHException)
    {
      while (true)
      {
        localJHException.printStackTrace();
        Bitmap localBitmap1 = null;
      }
    }
  }

  public static Bitmap getwhBitmap(String paramString, int paramInt1, int paramInt2)
  {
    try
    {
      byte[] arrayOfByte2 = streamToBytes(new FileInputStream(paramString));
      arrayOfByte1 = arrayOfByte2;
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      localOptions.inJustDecodeBounds = true;
      localBitmap1 = BitmapFactory.decodeByteArray(arrayOfByte1, 0, arrayOfByte1.length);
      localOptions.inJustDecodeBounds = false;
      if (localBitmap1 == null)
        return null;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      Bitmap localBitmap1;
      while (true)
      {
        localFileNotFoundException.printStackTrace();
        byte[] arrayOfByte1 = null;
      }
      int i = localBitmap1.getWidth();
      int j = localBitmap1.getHeight();
      float f1 = paramInt1 / i;
      float f2 = paramInt2 / j;
      Matrix localMatrix = new Matrix();
      localMatrix.postScale(f1, f2);
      Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1, 0, 0, i, j, localMatrix, true);
      localBitmap1.recycle();
      return localBitmap2;
    }
  }

  public static boolean hasExceed(String paramString, Context paramContext, long paramLong)
  {
    return getFileSize(paramString, paramContext) > paramLong;
  }

  private static void saveBitmap(Bitmap paramBitmap, String paramString)
  {
  }

  public static void saveToPhone(String paramString, Context paramContext)
  {
    ContentResolver localContentResolver = paramContext.getContentResolver();
    try
    {
      addImage(localContentResolver, "", new Date().getTime(), null, paramString);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      localRuntimeException.printStackTrace();
    }
  }

  public static byte[] streamToBytes(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(1024);
    byte[] arrayOfByte = new byte[1024];
    try
    {
      while (true)
      {
        int i = paramInputStream.read(arrayOfByte);
        if (i < 0)
          label29: return localByteArrayOutputStream.toByteArray();
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
    }
    catch (IOException localIOException)
    {
      break label29;
    }
  }

  public static class BitmapInfo
  {
    private Bitmap bitmap;
    private int inSampleSize;

    public Bitmap getBitmap()
    {
      return this.bitmap;
    }

    public int getInSampleSize()
    {
      return this.inSampleSize;
    }

    public void setBitmap(Bitmap paramBitmap)
    {
      this.bitmap = paramBitmap;
    }

    public void setInSampleSize(int paramInt)
    {
      this.inSampleSize = paramInt;
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.app.util.ImageFactory
 * JD-Core Version:    0.6.2
 */