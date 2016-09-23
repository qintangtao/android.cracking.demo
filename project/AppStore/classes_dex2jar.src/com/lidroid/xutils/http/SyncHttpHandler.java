package com.lidroid.xutils.http;

import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.callback.DefaultHttpRedirectHandler;
import com.lidroid.xutils.http.callback.HttpRedirectHandler;
import java.io.IOException;
import java.net.URI;
import java.net.UnknownHostException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;

public class SyncHttpHandler
{
  private String charset;
  private final AbstractHttpClient client;
  private final HttpContext context;
  private long expiry = HttpCache.getDefaultExpiryTime();
  private HttpRedirectHandler httpRedirectHandler;
  private String requestMethod;
  private String requestUrl;
  private int retriedTimes = 0;

  public SyncHttpHandler(AbstractHttpClient paramAbstractHttpClient, HttpContext paramHttpContext, String paramString)
  {
    this.client = paramAbstractHttpClient;
    this.context = paramHttpContext;
    this.charset = paramString;
  }

  private ResponseStream handleResponse(HttpResponse paramHttpResponse)
    throws HttpException, IOException
  {
    if (paramHttpResponse == null)
      throw new HttpException("response is null");
    StatusLine localStatusLine = paramHttpResponse.getStatusLine();
    int i = localStatusLine.getStatusCode();
    if (i < 300)
    {
      ResponseStream localResponseStream = new ResponseStream(paramHttpResponse, this.charset, this.requestUrl, this.expiry);
      localResponseStream.setRequestMethod(this.requestMethod);
      return localResponseStream;
    }
    if ((i == 301) || (i == 302))
    {
      if (this.httpRedirectHandler == null)
        this.httpRedirectHandler = new DefaultHttpRedirectHandler();
      HttpRequestBase localHttpRequestBase = this.httpRedirectHandler.getDirectRequest(paramHttpResponse);
      if (localHttpRequestBase != null)
        return sendRequest(localHttpRequestBase);
    }
    else
    {
      if (i == 416)
        throw new HttpException(i, "maybe the file has downloaded completely");
      throw new HttpException(i, localStatusLine.getReasonPhrase());
    }
    return null;
  }

  public ResponseStream sendRequest(HttpRequestBase paramHttpRequestBase)
    throws HttpException
  {
    HttpRequestRetryHandler localHttpRequestRetryHandler = this.client.getHttpRequestRetryHandler();
    try
    {
      this.requestUrl = paramHttpRequestBase.getURI().toString();
      this.requestMethod = paramHttpRequestBase.getMethod();
      if (HttpUtils.sHttpCache.isEnabled(this.requestMethod))
      {
        String str = HttpUtils.sHttpCache.get(this.requestUrl);
        if (str != null)
          return new ResponseStream(str);
      }
      ResponseStream localResponseStream = handleResponse(this.client.execute(paramHttpRequestBase, this.context));
      return localResponseStream;
    }
    catch (UnknownHostException localUnknownHostException)
    {
      do
      {
        localObject = localUnknownHostException;
        int m = 1 + this.retriedTimes;
        this.retriedTimes = m;
        bool = localHttpRequestRetryHandler.retryRequest((IOException)localObject, m, this.context);
      }
      while (bool);
      throw new HttpException((Throwable)localObject);
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        localObject = localIOException;
        int k = 1 + this.retriedTimes;
        this.retriedTimes = k;
        bool = localHttpRequestRetryHandler.retryRequest((IOException)localObject, k, this.context);
      }
    }
    catch (NullPointerException localNullPointerException)
    {
      while (true)
      {
        localObject = new IOException(localNullPointerException.getMessage());
        ((IOException)localObject).initCause(localNullPointerException);
        int j = 1 + this.retriedTimes;
        this.retriedTimes = j;
        bool = localHttpRequestRetryHandler.retryRequest((IOException)localObject, j, this.context);
      }
    }
    catch (HttpException localHttpException)
    {
      throw localHttpException;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        Object localObject = new IOException(localThrowable.getMessage());
        ((IOException)localObject).initCause(localThrowable);
        int i = 1 + this.retriedTimes;
        this.retriedTimes = i;
        boolean bool = localHttpRequestRetryHandler.retryRequest((IOException)localObject, i, this.context);
      }
    }
  }

  public void setExpiry(long paramLong)
  {
    this.expiry = paramLong;
  }

  public void setHttpRedirectHandler(HttpRedirectHandler paramHttpRedirectHandler)
  {
    this.httpRedirectHandler = paramHttpRedirectHandler;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.http.SyncHttpHandler
 * JD-Core Version:    0.6.2
 */