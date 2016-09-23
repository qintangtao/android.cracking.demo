package com.youqicai.download;

public abstract interface DownloadListener
{
  public abstract void failed(String paramString, Exception paramException);

  public abstract void setDownAllSize(float paramFloat);

  public abstract void setDownloadedSize(float paramFloat);

  public abstract void success(String paramString1, String paramString2);
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.download.DownloadListener
 * JD-Core Version:    0.6.2
 */