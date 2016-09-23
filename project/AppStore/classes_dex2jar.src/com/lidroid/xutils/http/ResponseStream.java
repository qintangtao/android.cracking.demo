package com.lidroid.xutils.http;

import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.util.IOUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Locale;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

public class ResponseStream extends InputStream
{
  private String _directResult;
  private HttpResponse baseResponse;
  private InputStream baseStream;
  private String charset;
  private long expiry;
  private String requestMethod;
  private String requestUrl;

  public ResponseStream(String paramString)
    throws IOException
  {
    if (paramString == null)
      throw new IllegalArgumentException("result may not be null");
    this._directResult = paramString;
  }

  public ResponseStream(HttpResponse paramHttpResponse, String paramString, long paramLong)
    throws IOException
  {
    this(paramHttpResponse, "UTF-8", paramString, paramLong);
  }

  public ResponseStream(HttpResponse paramHttpResponse, String paramString1, String paramString2, long paramLong)
    throws IOException
  {
    if (paramHttpResponse == null)
      throw new IllegalArgumentException("baseResponse may not be null");
    this.baseResponse = paramHttpResponse;
    this.baseStream = paramHttpResponse.getEntity().getContent();
    this.charset = paramString1;
    this.requestUrl = paramString2;
    this.expiry = paramLong;
  }

  public int available()
    throws IOException
  {
    if (this.baseStream == null)
      return 0;
    return this.baseStream.available();
  }

  public void close()
    throws IOException
  {
    if (this.baseStream == null)
      return;
    this.baseStream.close();
  }

  public HttpResponse getBaseResponse()
  {
    return this.baseResponse;
  }

  public InputStream getBaseStream()
  {
    return this.baseStream;
  }

  public long getContentLength()
  {
    if (this.baseStream == null)
      return 0L;
    return this.baseResponse.getEntity().getContentLength();
  }

  public Locale getLocale()
  {
    if (this._directResult != null)
      return Locale.getDefault();
    return this.baseResponse.getLocale();
  }

  public String getReasonPhrase()
  {
    if (this._directResult != null)
      return "";
    return this.baseResponse.getStatusLine().getReasonPhrase();
  }

  public String getRequestMethod()
  {
    return this.requestMethod;
  }

  public String getRequestUrl()
  {
    return this.requestUrl;
  }

  public int getStatusCode()
  {
    if (this._directResult != null)
      return 200;
    return this.baseResponse.getStatusLine().getStatusCode();
  }

  public void mark(int paramInt)
  {
    if (this.baseStream == null)
      return;
    this.baseStream.mark(paramInt);
  }

  public boolean markSupported()
  {
    if (this.baseStream == null)
      return false;
    return this.baseStream.markSupported();
  }

  public int read()
    throws IOException
  {
    if (this.baseStream == null)
      return -1;
    return this.baseStream.read();
  }

  public int read(byte[] paramArrayOfByte)
    throws IOException
  {
    if (this.baseStream == null)
      return -1;
    return this.baseStream.read(paramArrayOfByte);
  }

  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    if (this.baseStream == null)
      return -1;
    return this.baseStream.read(paramArrayOfByte, paramInt1, paramInt2);
  }

  public void readFile(String paramString)
    throws IOException
  {
    if (this._directResult != null);
    while (this.baseStream == null)
      return;
    try
    {
      BufferedOutputStream localBufferedOutputStream1 = new BufferedOutputStream(new FileOutputStream(paramString));
      try
      {
        BufferedInputStream localBufferedInputStream = new BufferedInputStream(this.baseStream);
        byte[] arrayOfByte = new byte[4096];
        while (true)
        {
          int i = localBufferedInputStream.read(arrayOfByte);
          if (i == -1)
          {
            localBufferedOutputStream1.flush();
            IOUtils.closeQuietly(localBufferedOutputStream1);
            IOUtils.closeQuietly(this.baseStream);
            return;
          }
          localBufferedOutputStream1.write(arrayOfByte, 0, i);
        }
      }
      finally
      {
        localBufferedOutputStream2 = localBufferedOutputStream1;
      }
      IOUtils.closeQuietly(localBufferedOutputStream2);
      IOUtils.closeQuietly(this.baseStream);
      throw localObject1;
    }
    finally
    {
      BufferedOutputStream localBufferedOutputStream2 = null;
    }
  }

  public String readString()
    throws IOException
  {
    if (this._directResult != null)
      return this._directResult;
    if (this.baseStream == null)
      return null;
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(this.baseStream, this.charset));
      StringBuilder localStringBuilder = new StringBuilder();
      while (true)
      {
        String str1 = localBufferedReader.readLine();
        if (str1 == null)
        {
          this._directResult = localStringBuilder.toString();
          if ((this.requestUrl != null) && (HttpUtils.sHttpCache.isEnabled(this.requestMethod)))
            HttpUtils.sHttpCache.put(this.requestUrl, this._directResult, this.expiry);
          String str2 = this._directResult;
          return str2;
        }
        localStringBuilder.append(str1);
      }
    }
    finally
    {
      IOUtils.closeQuietly(this.baseStream);
    }
  }

  public void reset()
    throws IOException
  {
    try
    {
      InputStream localInputStream = this.baseStream;
      if (localInputStream == null);
      while (true)
      {
        return;
        this.baseStream.reset();
      }
    }
    finally
    {
    }
  }

  void setRequestMethod(String paramString)
  {
    this.requestMethod = paramString;
  }

  public long skip(long paramLong)
    throws IOException
  {
    if (this.baseStream == null)
      return 0L;
    return this.baseStream.skip(paramLong);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.http.ResponseStream
 * JD-Core Version:    0.6.2
 */