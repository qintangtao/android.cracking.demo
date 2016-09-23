package com.hsg.sdk.common.imagecache;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import java.io.FileDescriptor;

public abstract class ImageResizer extends ImageWorker
{
  private static final String TAG = "ImageResizer";

  public ImageResizer(Context paramContext)
  {
    super(paramContext);
  }

  public static int calculateInSampleSize(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    int i = paramOptions.outHeight;
    int j = paramOptions.outWidth;
    int k = 1;
    int n;
    float f1;
    float f2;
    if ((i > paramInt2) || (j > paramInt1))
    {
      int m = Math.round(i / paramInt2);
      n = Math.round(j / paramInt1);
      if (m >= n)
        break label90;
      k = m;
      f1 = j * i;
      f2 = 2 * (paramInt1 * paramInt2);
    }
    while (true)
    {
      if (f1 / (k * k) <= f2)
      {
        return k;
        label90: k = n;
        break;
      }
      k++;
    }
  }

  public static Bitmap decodeSampledBitmapFromDescriptor(FileDescriptor paramFileDescriptor, int paramInt1, int paramInt2, ImageCache paramImageCache)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    BitmapFactory.decodeFileDescriptor(paramFileDescriptor, null, localOptions);
    localOptions.inSampleSize = calculateInSampleSize(localOptions, paramInt1, paramInt2);
    localOptions.inJustDecodeBounds = false;
    return BitmapFactory.decodeFileDescriptor(paramFileDescriptor, null, localOptions);
  }

  public static Bitmap decodeSampledBitmapFromFile(String paramString, int paramInt1, int paramInt2, ImageCache paramImageCache)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, localOptions);
    localOptions.inSampleSize = calculateInSampleSize(localOptions, paramInt1, paramInt2);
    localOptions.inJustDecodeBounds = false;
    return BitmapFactory.decodeFile(paramString, localOptions);
  }

  public static Bitmap decodeSampledBitmapFromResource(Resources paramResources, int paramInt1, int paramInt2, int paramInt3, ImageCache paramImageCache)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    BitmapFactory.decodeResource(paramResources, paramInt1, localOptions);
    localOptions.inSampleSize = calculateInSampleSize(localOptions, paramInt2, paramInt3);
    localOptions.inJustDecodeBounds = false;
    return BitmapFactory.decodeResource(paramResources, paramInt1, localOptions);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.imagecache.ImageResizer
 * JD-Core Version:    0.6.2
 */