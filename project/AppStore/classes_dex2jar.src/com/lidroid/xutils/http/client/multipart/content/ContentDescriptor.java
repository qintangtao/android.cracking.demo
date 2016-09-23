package com.lidroid.xutils.http.client.multipart.content;

public abstract interface ContentDescriptor
{
  public abstract String getCharset();

  public abstract long getContentLength();

  public abstract String getMediaType();

  public abstract String getMimeType();

  public abstract String getSubType();

  public abstract String getTransferEncoding();
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.http.client.multipart.content.ContentDescriptor
 * JD-Core Version:    0.6.2
 */