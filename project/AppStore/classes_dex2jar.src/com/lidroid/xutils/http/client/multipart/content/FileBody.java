package com.lidroid.xutils.http.client.multipart.content;

import com.lidroid.xutils.http.client.multipart.MultipartEntity.CallBackInfo;
import com.lidroid.xutils.util.IOUtils;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;

public class FileBody extends AbstractContentBody
{
  private final String charset;
  private final File file;
  private final String filename;

  public FileBody(File paramFile)
  {
    this(paramFile, null, "application/octet-stream", null);
  }

  public FileBody(File paramFile, String paramString)
  {
    this(paramFile, null, paramString, null);
  }

  public FileBody(File paramFile, String paramString1, String paramString2)
  {
    this(paramFile, null, paramString1, paramString2);
  }

  public FileBody(File paramFile, String paramString1, String paramString2, String paramString3)
  {
    super(paramString2);
    if (paramFile == null)
      throw new IllegalArgumentException("File may not be null");
    this.file = paramFile;
    if (paramString1 != null);
    for (this.filename = paramString1; ; this.filename = paramFile.getName())
    {
      this.charset = paramString3;
      return;
    }
  }

  public String getCharset()
  {
    return this.charset;
  }

  public long getContentLength()
  {
    return this.file.length();
  }

  public File getFile()
  {
    return this.file;
  }

  public String getFilename()
  {
    return this.filename;
  }

  public InputStream getInputStream()
    throws IOException
  {
    return new FileInputStream(this.file);
  }

  public String getTransferEncoding()
  {
    return "binary";
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
            IOUtils.closeQuietly(localBufferedInputStream1);
            return;
          }
          paramOutputStream.write(arrayOfByte, 0, i);
          MultipartEntity.CallBackInfo localCallBackInfo = this.callBackInfo;
          localCallBackInfo.pos += i;
        }
        while (this.callBackInfo.doCallBack(false));
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
 * Qualified Name:     com.lidroid.xutils.http.client.multipart.content.FileBody
 * JD-Core Version:    0.6.2
 */