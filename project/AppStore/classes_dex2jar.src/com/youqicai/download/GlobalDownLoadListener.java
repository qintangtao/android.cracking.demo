package com.youqicai.download;

public abstract class GlobalDownLoadListener
  implements DownloadListener
{
  public abstract void setDownloadAllSize(String paramString, float paramFloat);

  public abstract void setDownloadedSize(String paramString, float paramFloat);

  public void setDownloadedSize(String paramString, float paramFloat1, float paramFloat2)
  {
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.download.GlobalDownLoadListener
 * JD-Core Version:    0.6.2
 */