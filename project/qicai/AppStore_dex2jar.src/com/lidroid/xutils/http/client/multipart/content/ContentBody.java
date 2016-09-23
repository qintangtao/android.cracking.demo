package com.lidroid.xutils.http.client.multipart.content;

import com.lidroid.xutils.http.client.multipart.MultipartEntity.CallBackInfo;
import java.io.IOException;
import java.io.OutputStream;

public abstract interface ContentBody extends ContentDescriptor
{
  public abstract String getFilename();

  public abstract void setCallBackInfo(MultipartEntity.CallBackInfo paramCallBackInfo);

  public abstract void writeTo(OutputStream paramOutputStream)
    throws IOException;
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.http.client.multipart.content.ContentBody
 * JD-Core Version:    0.6.2
 */