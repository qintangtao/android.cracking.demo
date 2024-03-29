package com.lidroid.xutils.bitmap.download;

import android.content.Context;
import com.lidroid.xutils.BitmapUtils.BitmapLoadTask;
import java.io.OutputStream;

public abstract class Downloader
{
  private Context context;
  private int defaultConnectTimeout;
  private long defaultExpiry;
  private int defaultReadTimeout;

  public abstract long downloadToStream(String paramString, OutputStream paramOutputStream, BitmapUtils.BitmapLoadTask<?> paramBitmapLoadTask);

  public Context getContext()
  {
    return this.context;
  }

  public int getDefaultConnectTimeout()
  {
    return this.defaultConnectTimeout;
  }

  public long getDefaultExpiry()
  {
    return this.defaultExpiry;
  }

  public int getDefaultReadTimeout()
  {
    return this.defaultReadTimeout;
  }

  public void setContext(Context paramContext)
  {
    this.context = paramContext;
  }

  public void setDefaultConnectTimeout(int paramInt)
  {
    this.defaultConnectTimeout = paramInt;
  }

  public void setDefaultExpiry(long paramLong)
  {
    this.defaultExpiry = paramLong;
  }

  public void setDefaultReadTimeout(int paramInt)
  {
    this.defaultReadTimeout = paramInt;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.bitmap.download.Downloader
 * JD-Core Version:    0.6.2
 */