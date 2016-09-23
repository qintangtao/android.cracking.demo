package com.lidroid.xutils.http.client.entity;

import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.util.IOUtils;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import org.apache.http.entity.FileEntity;

public class FileUploadEntity extends FileEntity
  implements UploadEntity
{
  private RequestCallBackHandler callBackHandler = null;
  private long fileSize;
  private long uploadedSize = 0L;

  public FileUploadEntity(File paramFile, String paramString)
  {
    super(paramFile, paramString);
    this.fileSize = paramFile.length();
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
    try
    {
      BufferedInputStream localBufferedInputStream1 = new BufferedInputStream(new FileInputStream(this.file));
      try
      {
        byte[] arrayOfByte = new byte[4096];
        do
        {
          int i = localBufferedInputStream1.read(arrayOfByte);
          if (i == -1)
          {
            paramOutputStream.flush();
            if (this.callBackHandler != null)
              this.callBackHandler.updateProgress(this.fileSize, this.uploadedSize, true);
            IOUtils.closeQuietly(localBufferedInputStream1);
            return;
          }
          paramOutputStream.write(arrayOfByte, 0, i);
          this.uploadedSize += i;
        }
        while ((this.callBackHandler == null) || (this.callBackHandler.updateProgress(this.fileSize, this.uploadedSize, false)));
        throw new InterruptedIOException("cancel");
      }
      finally
      {
        localBufferedInputStream2 = localBufferedInputStream1;
      }
      IOUtils.closeQuietly(localBufferedInputStream2);
      throw localObject1;
    }
    finally
    {
      BufferedInputStream localBufferedInputStream2 = null;
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.http.client.entity.FileUploadEntity
 * JD-Core Version:    0.6.2
 */