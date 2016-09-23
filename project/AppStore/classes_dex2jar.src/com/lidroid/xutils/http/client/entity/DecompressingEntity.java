package com.lidroid.xutils.http.client.entity;

import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

abstract class DecompressingEntity extends HttpEntityWrapper
  implements UploadEntity
{
  private RequestCallBackHandler callBackHandler = null;
  private InputStream content;
  private long uncompressedLength;
  private long uploadedSize = 0L;

  public DecompressingEntity(HttpEntity paramHttpEntity)
  {
    super(paramHttpEntity);
    this.uncompressedLength = paramHttpEntity.getContentLength();
  }

  private InputStream getDecompressingStream()
    throws IOException
  {
    InputStream localInputStream1 = null;
    try
    {
      localInputStream1 = this.wrappedEntity.getContent();
      InputStream localInputStream2 = decorate(localInputStream1);
      return localInputStream2;
    }
    catch (IOException localIOException)
    {
      IOUtils.closeQuietly(localInputStream1);
      throw localIOException;
    }
  }

  abstract InputStream decorate(InputStream paramInputStream)
    throws IOException;

  public InputStream getContent()
    throws IOException
  {
    if (this.wrappedEntity.isStreaming())
    {
      if (this.content == null)
        this.content = getDecompressingStream();
      return this.content;
    }
    return getDecompressingStream();
  }

  public long getContentLength()
  {
    return -1L;
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
    InputStream localInputStream = null;
    try
    {
      localInputStream = getContent();
      byte[] arrayOfByte = new byte[4096];
      do
      {
        int i = localInputStream.read(arrayOfByte);
        if (i == -1)
        {
          paramOutputStream.flush();
          if (this.callBackHandler != null)
            this.callBackHandler.updateProgress(this.uncompressedLength, this.uploadedSize, true);
          return;
        }
        paramOutputStream.write(arrayOfByte, 0, i);
        this.uploadedSize += i;
      }
      while ((this.callBackHandler == null) || (this.callBackHandler.updateProgress(this.uncompressedLength, this.uploadedSize, false)));
      throw new InterruptedIOException("cancel");
    }
    finally
    {
      IOUtils.closeQuietly(localInputStream);
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.http.client.entity.DecompressingEntity
 * JD-Core Version:    0.6.2
 */