package com.lidroid.xutils.http.client.multipart.content;

import com.lidroid.xutils.http.client.multipart.MultipartEntity.CallBackInfo;

public abstract class AbstractContentBody
  implements ContentBody
{
  protected MultipartEntity.CallBackInfo callBackInfo = MultipartEntity.CallBackInfo.DEFAULT;
  private final String mediaType;
  private final String mimeType;
  private final String subType;

  public AbstractContentBody(String paramString)
  {
    if (paramString == null)
      throw new IllegalArgumentException("MIME type may not be null");
    this.mimeType = paramString;
    int i = paramString.indexOf('/');
    if (i != -1)
    {
      this.mediaType = paramString.substring(0, i);
      this.subType = paramString.substring(i + 1);
      return;
    }
    this.mediaType = paramString;
    this.subType = null;
  }

  public String getMediaType()
  {
    return this.mediaType;
  }

  public String getMimeType()
  {
    return this.mimeType;
  }

  public String getSubType()
  {
    return this.subType;
  }

  public void setCallBackInfo(MultipartEntity.CallBackInfo paramCallBackInfo)
  {
    this.callBackInfo = paramCallBackInfo;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.http.client.multipart.content.AbstractContentBody
 * JD-Core Version:    0.6.2
 */