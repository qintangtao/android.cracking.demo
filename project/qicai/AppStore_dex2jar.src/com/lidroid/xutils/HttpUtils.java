package com.lidroid.xutils;

import android.text.TextUtils;
import com.lidroid.xutils.http.HttpCache;
import com.lidroid.xutils.http.HttpHandler;
import com.lidroid.xutils.http.RequestParams;
import com.lidroid.xutils.http.ResponseStream;
import com.lidroid.xutils.http.SyncHttpHandler;
import com.lidroid.xutils.http.callback.HttpRedirectHandler;
import com.lidroid.xutils.http.callback.RequestCallBack;
import com.lidroid.xutils.http.client.DefaultSSLSocketFactory;
import com.lidroid.xutils.http.client.HttpRequest.HttpMethod;
import com.lidroid.xutils.http.client.RetryHandler;
import com.lidroid.xutils.http.client.entity.GZipDecompressingEntity;
import com.lidroid.xutils.task.PriorityExecutor;
import com.lidroid.xutils.util.OtherUtils;
import java.io.File;
import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.client.CookieStore;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;

public class HttpUtils
{
  private static final int DEFAULT_CONN_TIMEOUT = 15000;
  private static final int DEFAULT_POOL_SIZE = 3;
  private static final int DEFAULT_RETRY_TIMES = 3;
  private static final String ENCODING_GZIP = "gzip";
  private static final PriorityExecutor EXECUTOR = new PriorityExecutor(3);
  private static final String HEADER_ACCEPT_ENCODING = "Accept-Encoding";
  public static final HttpCache sHttpCache = new HttpCache();
  private long currentRequestExpiry = HttpCache.getDefaultExpiryTime();
  private final DefaultHttpClient httpClient;
  private final HttpContext httpContext = new BasicHttpContext();
  private HttpRedirectHandler httpRedirectHandler;
  private String responseTextCharset = "UTF-8";

  public HttpUtils()
  {
    this(15000, null);
  }

  public HttpUtils(int paramInt)
  {
    this(paramInt, null);
  }

  public HttpUtils(int paramInt, String paramString)
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    ConnManagerParams.setTimeout(localBasicHttpParams, paramInt);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, paramInt);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, paramInt);
    if (TextUtils.isEmpty(paramString))
      paramString = OtherUtils.getUserAgent(null);
    HttpProtocolParams.setUserAgent(localBasicHttpParams, paramString);
    ConnManagerParams.setMaxConnectionsPerRoute(localBasicHttpParams, new ConnPerRouteBean(10));
    ConnManagerParams.setMaxTotalConnections(localBasicHttpParams, 10);
    HttpConnectionParams.setTcpNoDelay(localBasicHttpParams, true);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
    SchemeRegistry localSchemeRegistry = new SchemeRegistry();
    localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    localSchemeRegistry.register(new Scheme("https", DefaultSSLSocketFactory.getSocketFactory(), 443));
    this.httpClient = new DefaultHttpClient(new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry), localBasicHttpParams);
    this.httpClient.setHttpRequestRetryHandler(new RetryHandler(3));
    this.httpClient.addRequestInterceptor(new HttpRequestInterceptor()
    {
      public void process(org.apache.http.HttpRequest paramAnonymousHttpRequest, HttpContext paramAnonymousHttpContext)
        throws org.apache.http.HttpException, IOException
      {
        if (!paramAnonymousHttpRequest.containsHeader("Accept-Encoding"))
          paramAnonymousHttpRequest.addHeader("Accept-Encoding", "gzip");
      }
    });
    this.httpClient.addResponseInterceptor(new HttpResponseInterceptor()
    {
      public void process(HttpResponse paramAnonymousHttpResponse, HttpContext paramAnonymousHttpContext)
        throws org.apache.http.HttpException, IOException
      {
        HttpEntity localHttpEntity = paramAnonymousHttpResponse.getEntity();
        if (localHttpEntity == null);
        while (true)
        {
          return;
          Header localHeader = localHttpEntity.getContentEncoding();
          if (localHeader != null)
          {
            HeaderElement[] arrayOfHeaderElement = localHeader.getElements();
            int i = arrayOfHeaderElement.length;
            for (int j = 0; j < i; j++)
              if (arrayOfHeaderElement[j].getName().equalsIgnoreCase("gzip"))
              {
                paramAnonymousHttpResponse.setEntity(new GZipDecompressingEntity(paramAnonymousHttpResponse.getEntity()));
                return;
              }
          }
        }
      }
    });
  }

  public HttpUtils(String paramString)
  {
    this(15000, paramString);
  }

  private <T> HttpHandler<T> sendRequest(com.lidroid.xutils.http.client.HttpRequest paramHttpRequest, RequestParams paramRequestParams, RequestCallBack<T> paramRequestCallBack)
  {
    HttpHandler localHttpHandler = new HttpHandler(this.httpClient, this.httpContext, this.responseTextCharset, paramRequestCallBack);
    localHttpHandler.setExpiry(this.currentRequestExpiry);
    localHttpHandler.setHttpRedirectHandler(this.httpRedirectHandler);
    paramHttpRequest.setRequestParams(paramRequestParams, localHttpHandler);
    if (paramRequestParams != null)
      localHttpHandler.setPriority(paramRequestParams.getPriority());
    localHttpHandler.executeOnExecutor(EXECUTOR, new Object[] { paramHttpRequest });
    return localHttpHandler;
  }

  private ResponseStream sendSyncRequest(com.lidroid.xutils.http.client.HttpRequest paramHttpRequest, RequestParams paramRequestParams)
    throws com.lidroid.xutils.exception.HttpException
  {
    SyncHttpHandler localSyncHttpHandler = new SyncHttpHandler(this.httpClient, this.httpContext, this.responseTextCharset);
    localSyncHttpHandler.setExpiry(this.currentRequestExpiry);
    localSyncHttpHandler.setHttpRedirectHandler(this.httpRedirectHandler);
    paramHttpRequest.setRequestParams(paramRequestParams);
    return localSyncHttpHandler.sendRequest(paramHttpRequest);
  }

  public HttpUtils configCookieStore(CookieStore paramCookieStore)
  {
    this.httpContext.setAttribute("http.cookie-store", paramCookieStore);
    return this;
  }

  public HttpUtils configCurrentHttpCacheExpiry(long paramLong)
  {
    this.currentRequestExpiry = paramLong;
    return this;
  }

  public HttpUtils configDefaultHttpCacheExpiry(long paramLong)
  {
    HttpCache.setDefaultExpiryTime(paramLong);
    this.currentRequestExpiry = HttpCache.getDefaultExpiryTime();
    return this;
  }

  public HttpUtils configHttpCacheSize(int paramInt)
  {
    sHttpCache.setCacheSize(paramInt);
    return this;
  }

  public HttpUtils configHttpRedirectHandler(HttpRedirectHandler paramHttpRedirectHandler)
  {
    this.httpRedirectHandler = paramHttpRedirectHandler;
    return this;
  }

  public HttpUtils configRegisterScheme(Scheme paramScheme)
  {
    this.httpClient.getConnectionManager().getSchemeRegistry().register(paramScheme);
    return this;
  }

  public HttpUtils configRequestRetryCount(int paramInt)
  {
    this.httpClient.setHttpRequestRetryHandler(new RetryHandler(paramInt));
    return this;
  }

  public HttpUtils configRequestThreadPoolSize(int paramInt)
  {
    EXECUTOR.setPoolSize(paramInt);
    return this;
  }

  public HttpUtils configResponseTextCharset(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
      this.responseTextCharset = paramString;
    return this;
  }

  public HttpUtils configSSLSocketFactory(SSLSocketFactory paramSSLSocketFactory)
  {
    Scheme localScheme = new Scheme("https", paramSSLSocketFactory, 443);
    this.httpClient.getConnectionManager().getSchemeRegistry().register(localScheme);
    return this;
  }

  public HttpUtils configSoTimeout(int paramInt)
  {
    HttpConnectionParams.setSoTimeout(this.httpClient.getParams(), paramInt);
    return this;
  }

  public HttpUtils configTimeout(int paramInt)
  {
    HttpParams localHttpParams = this.httpClient.getParams();
    ConnManagerParams.setTimeout(localHttpParams, paramInt);
    HttpConnectionParams.setConnectionTimeout(localHttpParams, paramInt);
    return this;
  }

  public HttpUtils configUserAgent(String paramString)
  {
    HttpProtocolParams.setUserAgent(this.httpClient.getParams(), paramString);
    return this;
  }

  public HttpHandler<File> download(HttpRequest.HttpMethod paramHttpMethod, String paramString1, String paramString2, RequestParams paramRequestParams, RequestCallBack<File> paramRequestCallBack)
  {
    return download(paramHttpMethod, paramString1, paramString2, paramRequestParams, false, false, paramRequestCallBack);
  }

  public HttpHandler<File> download(HttpRequest.HttpMethod paramHttpMethod, String paramString1, String paramString2, RequestParams paramRequestParams, boolean paramBoolean, RequestCallBack<File> paramRequestCallBack)
  {
    return download(paramHttpMethod, paramString1, paramString2, paramRequestParams, paramBoolean, false, paramRequestCallBack);
  }

  public HttpHandler<File> download(HttpRequest.HttpMethod paramHttpMethod, String paramString1, String paramString2, RequestParams paramRequestParams, boolean paramBoolean1, boolean paramBoolean2, RequestCallBack<File> paramRequestCallBack)
  {
    if (paramString1 == null)
      throw new IllegalArgumentException("url may not be null");
    if (paramString2 == null)
      throw new IllegalArgumentException("target may not be null");
    com.lidroid.xutils.http.client.HttpRequest localHttpRequest = new com.lidroid.xutils.http.client.HttpRequest(paramHttpMethod, paramString1);
    HttpHandler localHttpHandler = new HttpHandler(this.httpClient, this.httpContext, this.responseTextCharset, paramRequestCallBack);
    localHttpHandler.setExpiry(this.currentRequestExpiry);
    localHttpHandler.setHttpRedirectHandler(this.httpRedirectHandler);
    if (paramRequestParams != null)
    {
      localHttpRequest.setRequestParams(paramRequestParams, localHttpHandler);
      localHttpHandler.setPriority(paramRequestParams.getPriority());
    }
    PriorityExecutor localPriorityExecutor = EXECUTOR;
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = localHttpRequest;
    arrayOfObject[1] = paramString2;
    arrayOfObject[2] = Boolean.valueOf(paramBoolean1);
    arrayOfObject[3] = Boolean.valueOf(paramBoolean2);
    localHttpHandler.executeOnExecutor(localPriorityExecutor, arrayOfObject);
    return localHttpHandler;
  }

  public HttpHandler<File> download(String paramString1, String paramString2, RequestParams paramRequestParams, RequestCallBack<File> paramRequestCallBack)
  {
    return download(HttpRequest.HttpMethod.GET, paramString1, paramString2, paramRequestParams, false, false, paramRequestCallBack);
  }

  public HttpHandler<File> download(String paramString1, String paramString2, RequestParams paramRequestParams, boolean paramBoolean, RequestCallBack<File> paramRequestCallBack)
  {
    return download(HttpRequest.HttpMethod.GET, paramString1, paramString2, paramRequestParams, paramBoolean, false, paramRequestCallBack);
  }

  public HttpHandler<File> download(String paramString1, String paramString2, RequestParams paramRequestParams, boolean paramBoolean1, boolean paramBoolean2, RequestCallBack<File> paramRequestCallBack)
  {
    return download(HttpRequest.HttpMethod.GET, paramString1, paramString2, paramRequestParams, paramBoolean1, paramBoolean2, paramRequestCallBack);
  }

  public HttpHandler<File> download(String paramString1, String paramString2, RequestCallBack<File> paramRequestCallBack)
  {
    return download(HttpRequest.HttpMethod.GET, paramString1, paramString2, null, false, false, paramRequestCallBack);
  }

  public HttpHandler<File> download(String paramString1, String paramString2, boolean paramBoolean, RequestCallBack<File> paramRequestCallBack)
  {
    return download(HttpRequest.HttpMethod.GET, paramString1, paramString2, null, paramBoolean, false, paramRequestCallBack);
  }

  public HttpHandler<File> download(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, RequestCallBack<File> paramRequestCallBack)
  {
    return download(HttpRequest.HttpMethod.GET, paramString1, paramString2, null, paramBoolean1, paramBoolean2, paramRequestCallBack);
  }

  public HttpClient getHttpClient()
  {
    return this.httpClient;
  }

  public <T> HttpHandler<T> send(HttpRequest.HttpMethod paramHttpMethod, String paramString, RequestParams paramRequestParams, RequestCallBack<T> paramRequestCallBack)
  {
    if (paramString == null)
      throw new IllegalArgumentException("url may not be null");
    return sendRequest(new com.lidroid.xutils.http.client.HttpRequest(paramHttpMethod, paramString), paramRequestParams, paramRequestCallBack);
  }

  public <T> HttpHandler<T> send(HttpRequest.HttpMethod paramHttpMethod, String paramString, RequestCallBack<T> paramRequestCallBack)
  {
    return send(paramHttpMethod, paramString, null, paramRequestCallBack);
  }

  public ResponseStream sendSync(HttpRequest.HttpMethod paramHttpMethod, String paramString)
    throws com.lidroid.xutils.exception.HttpException
  {
    return sendSync(paramHttpMethod, paramString, null);
  }

  public ResponseStream sendSync(HttpRequest.HttpMethod paramHttpMethod, String paramString, RequestParams paramRequestParams)
    throws com.lidroid.xutils.exception.HttpException
  {
    if (paramString == null)
      throw new IllegalArgumentException("url may not be null");
    return sendSyncRequest(new com.lidroid.xutils.http.client.HttpRequest(paramHttpMethod, paramString), paramRequestParams);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.HttpUtils
 * JD-Core Version:    0.6.2
 */