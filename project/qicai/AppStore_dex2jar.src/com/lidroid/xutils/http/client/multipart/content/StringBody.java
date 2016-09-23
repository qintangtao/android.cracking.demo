package com.lidroid.xutils.http.client.multipart.content;

import com.lidroid.xutils.http.client.multipart.MultipartEntity.CallBackInfo;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

public class StringBody extends AbstractContentBody
{
  private final Charset charset;
  private final byte[] content;

  public StringBody(String paramString)
    throws UnsupportedEncodingException
  {
    this(paramString, "text/plain", null);
  }

  public StringBody(String paramString1, String paramString2, Charset paramCharset)
    throws UnsupportedEncodingException
  {
    super(paramString2);
    if (paramString1 == null)
      throw new IllegalArgumentException("Text may not be null");
    if (paramCharset == null)
      paramCharset = Charset.forName("UTF-8");
    this.content = paramString1.getBytes(paramCharset.name());
    this.charset = paramCharset;
  }

  public StringBody(String paramString, Charset paramCharset)
    throws UnsupportedEncodingException
  {
    this(paramString, "text/plain", paramCharset);
  }

  public static StringBody create(String paramString)
    throws IllegalArgumentException
  {
    return create(paramString, null, null);
  }

  public static StringBody create(String paramString1, String paramString2, Charset paramCharset)
    throws IllegalArgumentException
  {
    try
    {
      StringBody localStringBody = new StringBody(paramString1, paramString2, paramCharset);
      return localStringBody;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new IllegalArgumentException("Charset " + paramCharset + " is not supported", localUnsupportedEncodingException);
    }
  }

  public static StringBody create(String paramString, Charset paramCharset)
    throws IllegalArgumentException
  {
    return create(paramString, null, paramCharset);
  }

  public String getCharset()
  {
    return this.charset.name();
  }

  public long getContentLength()
  {
    return this.content.length;
  }

  public String getFilename()
  {
    return null;
  }

  public Reader getReader()
  {
    return new InputStreamReader(new ByteArrayInputStream(this.content), this.charset);
  }

  public String getTransferEncoding()
  {
    return "8bit";
  }

  public void writeTo(OutputStream paramOutputStream)
    throws IOException
  {
    if (paramOutputStream == null)
      throw new IllegalArgumentException("Output stream may not be null");
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(this.content);
    byte[] arrayOfByte = new byte[4096];
    do
    {
      int i = localByteArrayInputStream.read(arrayOfByte);
      if (i == -1)
      {
        paramOutputStream.flush();
        return;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
      MultipartEntity.CallBackInfo localCallBackInfo = this.callBackInfo;
      localCallBackInfo.pos += i;
    }
    while (this.callBackInfo.doCallBack(false));
    throw new InterruptedIOException("cancel");
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.http.client.multipart.content.StringBody
 * JD-Core Version:    0.6.2
 */