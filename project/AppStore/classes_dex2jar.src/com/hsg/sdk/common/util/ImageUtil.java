package com.hsg.sdk.common.util;

import android.content.ContentResolver;
import android.content.Context;
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
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.net.Uri;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class ImageUtil
{
  public static Bitmap Bytes2Bimap(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length != 0)
      return BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length);
    return null;
  }

  // ERROR //
  public static byte[] bitmap2Bytes(Bitmap paramBitmap)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 26	java/io/ByteArrayOutputStream
    //   5: dup
    //   6: invokespecial 27	java/io/ByteArrayOutputStream:<init>	()V
    //   9: astore_2
    //   10: aload_0
    //   11: getstatic 33	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   14: bipush 100
    //   16: aload_2
    //   17: invokevirtual 39	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   20: pop
    //   21: aload_2
    //   22: invokevirtual 43	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   25: astore 10
    //   27: aload_2
    //   28: ifnull +7 -> 35
    //   31: aload_2
    //   32: invokevirtual 46	java/io/ByteArrayOutputStream:close	()V
    //   35: aload 10
    //   37: areturn
    //   38: astore 11
    //   40: aload 11
    //   42: invokevirtual 49	java/io/IOException:printStackTrace	()V
    //   45: goto -10 -> 35
    //   48: astore 12
    //   50: aload_1
    //   51: ifnull +7 -> 58
    //   54: aload_1
    //   55: invokevirtual 46	java/io/ByteArrayOutputStream:close	()V
    //   58: aconst_null
    //   59: areturn
    //   60: astore 4
    //   62: aload 4
    //   64: invokevirtual 49	java/io/IOException:printStackTrace	()V
    //   67: goto -9 -> 58
    //   70: astore 5
    //   72: ldc 51
    //   74: new 53	java/lang/StringBuilder
    //   77: dup
    //   78: ldc 55
    //   80: invokespecial 58	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   83: aload 5
    //   85: invokevirtual 62	java/lang/OutOfMemoryError:getMessage	()Ljava/lang/String;
    //   88: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   94: invokestatic 75	com/hsg/sdk/common/util/Logg:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   97: aload_1
    //   98: ifnull -40 -> 58
    //   101: aload_1
    //   102: invokevirtual 46	java/io/ByteArrayOutputStream:close	()V
    //   105: goto -47 -> 58
    //   108: astore 8
    //   110: aload 8
    //   112: invokevirtual 49	java/io/IOException:printStackTrace	()V
    //   115: goto -57 -> 58
    //   118: astore 6
    //   120: aload_1
    //   121: ifnull +7 -> 128
    //   124: aload_1
    //   125: invokevirtual 46	java/io/ByteArrayOutputStream:close	()V
    //   128: aload 6
    //   130: athrow
    //   131: astore 7
    //   133: aload 7
    //   135: invokevirtual 49	java/io/IOException:printStackTrace	()V
    //   138: goto -10 -> 128
    //   141: astore 6
    //   143: aload_2
    //   144: astore_1
    //   145: goto -25 -> 120
    //   148: astore 5
    //   150: aload_2
    //   151: astore_1
    //   152: goto -80 -> 72
    //   155: astore_3
    //   156: aload_2
    //   157: astore_1
    //   158: goto -108 -> 50
    //
    // Exception table:
    //   from	to	target	type
    //   31	35	38	java/io/IOException
    //   2	10	48	java/lang/Exception
    //   54	58	60	java/io/IOException
    //   2	10	70	java/lang/OutOfMemoryError
    //   101	105	108	java/io/IOException
    //   2	10	118	finally
    //   72	97	118	finally
    //   124	128	131	java/io/IOException
    //   10	27	141	finally
    //   10	27	148	java/lang/OutOfMemoryError
    //   10	27	155	java/lang/Exception
  }

  public static Bitmap compressImage(Bitmap paramBitmap)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, 100, localByteArrayOutputStream);
    for (int i = 100; ; i -= 10)
    {
      if (localByteArrayOutputStream.toByteArray().length / 1024 <= 100)
        return BitmapFactory.decodeStream(new ByteArrayInputStream(localByteArrayOutputStream.toByteArray()), null, null);
      localByteArrayOutputStream.reset();
      paramBitmap.compress(Bitmap.CompressFormat.JPEG, i, localByteArrayOutputStream);
    }
  }

  public static Bitmap createScaledBitmap(Bitmap paramBitmap, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    float f1 = 1.0F;
    float f2 = 1.0F;
    label46: int k;
    int m;
    if (i < paramInt1)
    {
      f1 = paramInt1 / i;
      if (j >= paramInt3)
        break label229;
      f2 = paramInt3 / j;
      if ((f1 <= 1.0D) && (f2 <= 1.0D))
        break label248;
      float f3 = Math.max(f1, f2);
      k = (int)(f3 * i);
      m = (int)(f3 * j);
      if (m > paramInt4)
      {
        m = paramInt4;
        j = (int)(paramInt4 / f3);
      }
      if (k > paramInt2)
      {
        k = paramInt2;
        i = (int)(paramInt2 / f3);
      }
    }
    while (true)
    {
      Rect localRect1 = new Rect(0, 0, i, j);
      Rect localRect2 = new Rect(0, 0, k, m);
      Bitmap localBitmap = Bitmap.createBitmap(localRect2.width(), localRect2.height(), Bitmap.Config.ARGB_4444);
      Canvas localCanvas = new Canvas(localBitmap);
      Paint localPaint = new Paint(2);
      localCanvas.drawBitmap(paramBitmap, localRect1, localRect2, localPaint);
      paramBitmap = localBitmap;
      label229: label248: 
      do
      {
        return paramBitmap;
        if (i <= paramInt2)
          break;
        f1 = paramInt2 / i;
        break;
        if (j <= paramInt4)
          break label46;
        f2 = paramInt4 / j;
        break label46;
      }
      while ((f1 >= 1.0D) && (f2 >= 1.0D));
      float f4 = Math.min(f1, f2);
      k = (int)(f4 * i);
      m = (int)(f4 * j);
      if (m < paramInt3)
      {
        (paramInt3 / j);
        m = paramInt3;
        k = paramInt2;
        i = (int)(k * (j / m));
      }
      if (k < paramInt1)
      {
        (paramInt1 / i);
        k = paramInt1;
        m = paramInt4;
        j = (int)(m * (i / k));
      }
    }
  }

  public static Bitmap drawDrawable2Drawable(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    int i = paramDrawable1.getIntrinsicWidth();
    int j = paramDrawable1.getIntrinsicHeight();
    if (paramDrawable1.getOpacity() != -1);
    for (Bitmap.Config localConfig = Bitmap.Config.ARGB_8888; ; localConfig = Bitmap.Config.RGB_565)
    {
      Bitmap localBitmap = Bitmap.createBitmap(i, j, localConfig);
      Canvas localCanvas = new Canvas(localBitmap);
      paramDrawable1.setBounds(0, 0, paramDrawable1.getIntrinsicWidth(), paramDrawable1.getIntrinsicHeight());
      paramDrawable1.draw(localCanvas);
      paramDrawable2.setAlpha(100);
      paramDrawable2.setBounds(0, 0, paramDrawable1.getIntrinsicWidth(), paramDrawable2.getIntrinsicHeight());
      paramDrawable2.draw(localCanvas);
      return localBitmap;
    }
  }

  public static Bitmap drawable2Bitmap(Drawable paramDrawable)
  {
    if ((paramDrawable instanceof BitmapDrawable))
      return ((BitmapDrawable)paramDrawable).getBitmap();
    if ((paramDrawable instanceof NinePatchDrawable))
    {
      int i = paramDrawable.getIntrinsicWidth();
      int j = paramDrawable.getIntrinsicHeight();
      if (paramDrawable.getOpacity() != -1);
      for (Bitmap.Config localConfig = Bitmap.Config.ARGB_8888; ; localConfig = Bitmap.Config.RGB_565)
      {
        Bitmap localBitmap = Bitmap.createBitmap(i, j, localConfig);
        Canvas localCanvas = new Canvas(localBitmap);
        paramDrawable.setBounds(0, 0, paramDrawable.getIntrinsicWidth(), paramDrawable.getIntrinsicHeight());
        paramDrawable.draw(localCanvas);
        return localBitmap;
      }
    }
    return null;
  }

  public static byte[] drawable2Bytes(Drawable paramDrawable)
  {
    try
    {
      byte[] arrayOfByte = bitmap2Bytes(drawable2Bitmap(paramDrawable));
      return arrayOfByte;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public static Bitmap drawableToBitmap(Drawable paramDrawable)
  {
    return ((BitmapDrawable)paramDrawable).getBitmap();
  }

  // ERROR //
  public static byte[] drawableToBytes(Context paramContext, Bitmap.CompressFormat paramCompressFormat, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 26	java/io/ByteArrayOutputStream
    //   5: dup
    //   6: invokespecial 27	java/io/ByteArrayOutputStream:<init>	()V
    //   9: astore 4
    //   11: aload_0
    //   12: invokevirtual 200	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   15: iload_2
    //   16: invokevirtual 206	android/content/res/Resources:getDrawable	(I)Landroid/graphics/drawable/Drawable;
    //   19: checkcast 178	android/graphics/drawable/BitmapDrawable
    //   22: invokevirtual 182	android/graphics/drawable/BitmapDrawable:getBitmap	()Landroid/graphics/Bitmap;
    //   25: aload_1
    //   26: bipush 100
    //   28: aload 4
    //   30: invokevirtual 39	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   33: pop
    //   34: aload 4
    //   36: invokevirtual 43	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   39: astore 10
    //   41: aload 4
    //   43: ifnull +8 -> 51
    //   46: aload 4
    //   48: invokevirtual 46	java/io/ByteArrayOutputStream:close	()V
    //   51: aload 10
    //   53: areturn
    //   54: astore 11
    //   56: aload 11
    //   58: invokevirtual 49	java/io/IOException:printStackTrace	()V
    //   61: goto -10 -> 51
    //   64: astore 5
    //   66: aload 5
    //   68: invokevirtual 191	java/lang/Exception:printStackTrace	()V
    //   71: aload_3
    //   72: ifnull +7 -> 79
    //   75: aload_3
    //   76: invokevirtual 46	java/io/ByteArrayOutputStream:close	()V
    //   79: aconst_null
    //   80: areturn
    //   81: astore 8
    //   83: aload 8
    //   85: invokevirtual 49	java/io/IOException:printStackTrace	()V
    //   88: goto -9 -> 79
    //   91: astore 6
    //   93: aload_3
    //   94: ifnull +7 -> 101
    //   97: aload_3
    //   98: invokevirtual 46	java/io/ByteArrayOutputStream:close	()V
    //   101: aload 6
    //   103: athrow
    //   104: astore 7
    //   106: aload 7
    //   108: invokevirtual 49	java/io/IOException:printStackTrace	()V
    //   111: goto -10 -> 101
    //   114: astore 6
    //   116: aload 4
    //   118: astore_3
    //   119: goto -26 -> 93
    //   122: astore 5
    //   124: aload 4
    //   126: astore_3
    //   127: goto -61 -> 66
    //
    // Exception table:
    //   from	to	target	type
    //   46	51	54	java/io/IOException
    //   2	11	64	java/lang/Exception
    //   75	79	81	java/io/IOException
    //   2	11	91	finally
    //   66	71	91	finally
    //   97	101	104	java/io/IOException
    //   11	41	114	finally
    //   11	41	122	java/lang/Exception
  }

  // ERROR //
  public static Bitmap getBitmap(Context paramContext, Uri paramUri)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: aload_1
    //   4: invokestatic 211	com/hsg/sdk/common/util/ImageUtil:getInputStream	(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    //   7: astore_2
    //   8: aload_2
    //   9: invokestatic 214	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   12: astore 8
    //   14: aload 8
    //   16: astore 6
    //   18: aload_2
    //   19: ifnull +7 -> 26
    //   22: aload_2
    //   23: invokevirtual 217	java/io/InputStream:close	()V
    //   26: aload 6
    //   28: areturn
    //   29: astore 5
    //   31: aload 5
    //   33: invokevirtual 49	java/io/IOException:printStackTrace	()V
    //   36: aconst_null
    //   37: astore 6
    //   39: aload_2
    //   40: ifnull -14 -> 26
    //   43: aload_2
    //   44: invokevirtual 217	java/io/InputStream:close	()V
    //   47: aconst_null
    //   48: areturn
    //   49: astore 7
    //   51: aconst_null
    //   52: areturn
    //   53: astore_3
    //   54: aload_2
    //   55: ifnull +7 -> 62
    //   58: aload_2
    //   59: invokevirtual 217	java/io/InputStream:close	()V
    //   62: aload_3
    //   63: athrow
    //   64: astore 4
    //   66: goto -4 -> 62
    //   69: astore 9
    //   71: aload 6
    //   73: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   2	14	29	java/io/IOException
    //   43	47	49	java/io/IOException
    //   2	14	53	finally
    //   31	36	53	finally
    //   58	62	64	java/io/IOException
    //   22	26	69	java/io/IOException
  }

  public static InputStream getInputStream(Context paramContext, Uri paramUri)
    throws IOException
  {
    try
    {
      if (paramUri.getScheme().equals("file"))
        return new FileInputStream(paramUri.getPath());
      InputStream localInputStream = paramContext.getContentResolver().openInputStream(paramUri);
      return localInputStream;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
    }
    return null;
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

  public static Bitmap getRoundedCornerBitmap(Drawable paramDrawable, float paramFloat)
  {
    return getRoundedCornerBitmap(drawable2Bitmap(paramDrawable), paramFloat);
  }

  public static Bitmap getimage(String paramString)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, localOptions);
    localOptions.inJustDecodeBounds = false;
    int i = localOptions.outWidth;
    int j = localOptions.outHeight;
    int k = 1;
    if ((i > j) && (i > 480.0F));
    for (k = (int)(localOptions.outWidth / 480.0F); ; k = (int)(localOptions.outHeight / 800.0F))
      do
      {
        if (k <= 0)
          k = 1;
        localOptions.inSampleSize = k;
        return compressImage(BitmapFactory.decodeFile(paramString, localOptions));
      }
      while ((i >= j) || (j <= 800.0F));
  }

  public static Bitmap imageCompressWithScale(Bitmap paramBitmap, double paramDouble)
  {
    return imageZoom(paramBitmap, paramBitmap.getWidth() / paramDouble, paramBitmap.getHeight() / paramDouble);
  }

  public static Bitmap imageCompressWithSize(Bitmap paramBitmap, double paramDouble)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, 100, localByteArrayOutputStream);
    double d1 = localByteArrayOutputStream.toByteArray().length / 1024;
    if (d1 > paramDouble)
    {
      double d2 = d1 / paramDouble;
      paramBitmap = imageZoom(paramBitmap, paramBitmap.getWidth() / Math.sqrt(d2), paramBitmap.getHeight() / Math.sqrt(d2));
    }
    return paramBitmap;
  }

  public static Bitmap imageZoom(Bitmap paramBitmap, double paramDouble1, double paramDouble2)
  {
    float f1 = paramBitmap.getWidth();
    float f2 = paramBitmap.getHeight();
    Matrix localMatrix = new Matrix();
    localMatrix.postScale((float)paramDouble1 / f1, (float)paramDouble2 / f2);
    return Bitmap.createBitmap(paramBitmap, 0, 0, (int)f1, (int)f2, localMatrix, true);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.ImageUtil
 * JD-Core Version:    0.6.2
 */