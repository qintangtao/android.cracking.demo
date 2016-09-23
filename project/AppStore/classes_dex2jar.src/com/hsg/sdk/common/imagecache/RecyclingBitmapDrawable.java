package com.hsg.sdk.common.imagecache;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.hsg.sdk.common.util.Logg;

public class RecyclingBitmapDrawable extends BitmapDrawable
{
  static final String LOG_TAG = "CountingBitmapDrawable";
  private int mCacheRefCount = 0;
  private int mDisplayRefCount = 0;
  private boolean mHasBeenDisplayed;

  public RecyclingBitmapDrawable(Resources paramResources, Bitmap paramBitmap)
  {
    super(paramResources, paramBitmap);
  }

  private void checkState()
  {
    try
    {
      if ((this.mCacheRefCount <= 0) && (this.mDisplayRefCount <= 0) && (this.mHasBeenDisplayed) && (hasValidBitmap()))
      {
        Logg.d("CountingBitmapDrawable", "No longer being used or cached so recycling. " + toString());
        getBitmap().recycle();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private boolean hasValidBitmap()
  {
    try
    {
      Bitmap localBitmap = getBitmap();
      if (localBitmap != null)
      {
        boolean bool1 = localBitmap.isRecycled();
        if (bool1);
      }
      for (boolean bool2 = true; ; bool2 = false)
        return bool2;
    }
    finally
    {
    }
  }

  public void setIsCached(boolean paramBoolean)
  {
    if (paramBoolean);
    try
    {
      for (this.mCacheRefCount = (1 + this.mCacheRefCount); ; this.mCacheRefCount = (-1 + this.mCacheRefCount))
      {
        checkState();
        return;
      }
    }
    finally
    {
    }
  }

  public void setIsDisplayed(boolean paramBoolean)
  {
    if (paramBoolean);
    try
    {
      this.mDisplayRefCount = (1 + this.mDisplayRefCount);
      this.mHasBeenDisplayed = true;
      while (true)
      {
        checkState();
        return;
        this.mDisplayRefCount = (-1 + this.mDisplayRefCount);
      }
    }
    finally
    {
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.imagecache.RecyclingBitmapDrawable
 * JD-Core Version:    0.6.2
 */