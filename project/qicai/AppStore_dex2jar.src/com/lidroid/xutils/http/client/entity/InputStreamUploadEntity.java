package com.lidroid.xutils.http.client.entity;

import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import org.apache.http.entity.AbstractHttpEntity;

public class InputStreamUploadEntity extends AbstractHttpEntity
  implements UploadEntity
{
  private static final int BUFFER_SIZE = 2048;
  private RequestCallBackHandler callBackHandler = null;
  private final InputStream content;
  private final long length;
  private long uploadedSize = 0L;

  public InputStreamUploadEntity(InputStream paramInputStream, long paramLong)
  {
    if (paramInputStream == null)
      throw new IllegalArgumentException("Source input stream may not be null");
    this.content = paramInputStream;
    this.length = paramLong;
  }

  public void consumeContent()
    throws IOException
  {
    this.content.close();
  }

  public InputStream getContent()
    throws IOException
  {
    return this.content;
  }

  public long getContentLength()
  {
    return this.length;
  }

  public boolean isRepeatable()
  {
    return false;
  }

  public boolean isStreaming()
  {
    return true;
  }

  public void setCallBackHandler(RequestCallBackHandler paramRequestCallBackHandler)
  {
    this.callBackHandler = paramRequestCallBackHandler;
  }

  public void writeTo(OutputStream paramOutputStream)
    throws IOException
  {
    if (paramOutputStream == null)
      throw new IllegalArgumentException("Output stream may not be null");
    InputStream localInputStream = this.content;
    do
    {
      byte[] arrayOfByte;
      long l;
      int j;
      do
      {
        do
        {
          try
          {
            arrayOfByte = new byte[2048];
            if (this.length < 0L)
            {
              do
              {
                int i = localInputStream.read(arrayOfByte);
                if (i == -1)
                {
                  paramOutputStream.flush();
                  if (this.callBackHandler != null)
                    this.callBackHandler.updateProgress(this.length, this.uploadedSize, true);
                  return;
                }
                paramOutputStream.write(arrayOfByte, 0, i);
                this.uploadedSize += i;
              }
              while ((this.callBackHandler == null) || (this.callBackHandler.updateProgress(1L + this.uploadedSize, this.uploadedSize, false)));
              throw new InterruptedIOException("cancel");
            }
          }
          finally
          {
            IOUtils.closeQuietly(localInputStream);
          }
          l = this.length;
        }
        while (l <= 0L);
        j = localInputStream.read(arrayOfByte, 0, (int)Math.min(2048L, l));
      }
      while (j == -1);
      paramOutputStream.write(arrayOfByte, 0, j);
      l -= j;
      this.uploadedSize += j;
    }
    while ((this.callBackHandler == null) || (this.callBackHandler.updateProgress(this.length, this.uploadedSize, false)));
    throw new InterruptedIOException("cancel");
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.http.client.entity.InputStreamUploadEntity
 * JD-Core Version:    0.6.2
 */