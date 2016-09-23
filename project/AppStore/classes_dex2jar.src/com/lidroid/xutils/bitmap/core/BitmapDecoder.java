package com.lidroid.xutils.bitmap.core;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import com.lidroid.xutils.util.LogUtils;
import java.io.FileDescriptor;

public class BitmapDecoder
{
  private static final Object lock = new Object();

  public static int calculateInSampleSize(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    int i = paramOptions.outHeight;
    int j = paramOptions.outWidth;
    int k = 1;
    float f1;
    float f2;
    if ((j > paramInt1) || (i > paramInt2))
    {
      if (j <= i)
        break label74;
      k = Math.round(i / paramInt2);
      f1 = j * i;
      f2 = 2 * (paramInt1 * paramInt2);
    }
    while (true)
    {
      if (f1 / (k * k) <= f2)
      {
        return k;
        label74: k = Math.round(j / paramInt1);
        break;
      }
      k++;
    }
  }

  public static Bitmap decodeByteArray(byte[] paramArrayOfByte)
  {
    synchronized (lock)
    {
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      localOptions.inPurgeable = true;
      localOptions.inInputShareable = true;
      try
      {
        Bitmap localBitmap = BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, localOptions);
        return localBitmap;
      }
      catch (Throwable localThrowable)
      {
        LogUtils.e(localThrowable.getMessage(), localThrowable);
        return null;
      }
    }
  }

  public static Bitmap decodeFile(String paramString)
  {
    synchronized (lock)
    {
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      localOptions.inPurgeable = true;
      localOptions.inInputShareable = true;
      try
      {
        Bitmap localBitmap = BitmapFactory.decodeFile(paramString, localOptions);
        return localBitmap;
      }
      catch (Throwable localThrowable)
      {
        LogUtils.e(localThrowable.getMessage(), localThrowable);
        return null;
      }
    }
  }

  public static Bitmap decodeFileDescriptor(FileDescriptor paramFileDescriptor)
  {
    synchronized (lock)
    {
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      localOptions.inPurgeable = true;
      localOptions.inInputShareable = true;
      try
      {
        Bitmap localBitmap = BitmapFactory.decodeFileDescriptor(paramFileDescriptor, null, localOptions);
        return localBitmap;
      }
      catch (Throwable localThrowable)
      {
        LogUtils.e(localThrowable.getMessage(), localThrowable);
        return null;
      }
    }
  }

  public static Bitmap decodeResource(Resources paramResources, int paramInt)
  {
    synchronized (lock)
    {
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      localOptions.inPurgeable = true;
      localOptions.inInputShareable = true;
      try
      {
        Bitmap localBitmap = BitmapFactory.decodeResource(paramResources, paramInt, localOptions);
        return localBitmap;
      }
      catch (Throwable localThrowable)
      {
        LogUtils.e(localThrowable.getMessage(), localThrowable);
        return null;
      }
    }
  }

  public static Bitmap decodeSampledBitmapFromByteArray(byte[] paramArrayOfByte, BitmapSize paramBitmapSize, Bitmap.Config paramConfig)
  {
    synchronized (lock)
    {
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      localOptions.inJustDecodeBounds = true;
      localOptions.inPurgeable = true;
      localOptions.inInputShareable = true;
      BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, localOptions);
      localOptions.inSampleSize = calculateInSampleSize(localOptions, paramBitmapSize.getWidth(), paramBitmapSize.getHeight());
      localOptions.inJustDecodeBounds = false;
      if (paramConfig != null)
        localOptions.inPreferredConfig = paramConfig;
      try
      {
        Bitmap localBitmap = BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, localOptions);
        return localBitmap;
      }
      catch (Throwable localThrowable)
      {
        LogUtils.e(localThrowable.getMessage(), localThrowable);
        return null;
      }
    }
  }

  public static Bitmap decodeSampledBitmapFromDescriptor(FileDescriptor paramFileDescriptor, BitmapSize paramBitmapSize, Bitmap.Config paramConfig)
  {
    synchronized (lock)
    {
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      localOptions.inJustDecodeBounds = true;
      localOptions.inPurgeable = true;
      localOptions.inInputShareable = true;
      BitmapFactory.decodeFileDescriptor(paramFileDescriptor, null, localOptions);
      localOptions.inSampleSize = calculateInSampleSize(localOptions, paramBitmapSize.getWidth(), paramBitmapSize.getHeight());
      localOptions.inJustDecodeBounds = false;
      if (paramConfig != null)
        localOptions.inPreferredConfig = paramConfig;
      try
      {
        Bitmap localBitmap = BitmapFactory.decodeFileDescriptor(paramFileDescriptor, null, localOptions);
        return localBitmap;
      }
      catch (Throwable localThrowable)
      {
        LogUtils.e(localThrowable.getMessage(), localThrowable);
        return null;
      }
    }
  }

  public static Bitmap decodeSampledBitmapFromFile(String paramString, BitmapSize paramBitmapSize, Bitmap.Config paramConfig)
  {
    synchronized (lock)
    {
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      localOptions.inJustDecodeBounds = true;
      localOptions.inPurgeable = true;
      localOptions.inInputShareable = true;
      BitmapFactory.decodeFile(paramString, localOptions);
      localOptions.inSampleSize = calculateInSampleSize(localOptions, paramBitmapSize.getWidth(), paramBitmapSize.getHeight());
      localOptions.inJustDecodeBounds = false;
      if (paramConfig != null)
        localOptions.inPreferredConfig = paramConfig;
      try
      {
        Bitmap localBitmap = BitmapFactory.decodeFile(paramString, localOptions);
        return localBitmap;
      }
      catch (Throwable localThrowable)
      {
        LogUtils.e(localThrowable.getMessage(), localThrowable);
        return null;
      }
    }
  }

  public static Bitmap decodeSampledBitmapFromResource(Resources paramResources, int paramInt, BitmapSize paramBitmapSize, Bitmap.Config paramConfig)
  {
    synchronized (lock)
    {
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      localOptions.inJustDecodeBounds = true;
      localOptions.inPurgeable = true;
      localOptions.inInputShareable = true;
      BitmapFactory.decodeResource(paramResources, paramInt, localOptions);
      localOptions.inSampleSize = calculateInSampleSize(localOptions, paramBitmapSize.getWidth(), paramBitmapSize.getHeight());
      localOptions.inJustDecodeBounds = false;
      if (paramConfig != null)
        localOptions.inPreferredConfig = paramConfig;
      try
      {
        Bitmap localBitmap = BitmapFactory.decodeResource(paramResources, paramInt, localOptions);
        return localBitmap;
      }
      catch (Throwable localThrowable)
      {
        LogUtils.e(localThrowable.getMessage(), localThrowable);
        return null;
      }
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.bitmap.core.BitmapDecoder
 * JD-Core Version:    0.6.2
 */