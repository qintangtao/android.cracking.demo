package com.lidroid.xutils.http;

import android.os.SystemClock;
import com.lidroid.xutils.HttpUtils;
import com.lidroid.xutils.exception.HttpException;
import com.lidroid.xutils.http.callback.DefaultHttpRedirectHandler;
import com.lidroid.xutils.http.callback.FileDownloadHandler;
import com.lidroid.xutils.http.callback.HttpRedirectHandler;
import com.lidroid.xutils.http.callback.RequestCallBack;
import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.http.callback.StringDownloadHandler;
import com.lidroid.xutils.task.PriorityAsyncTask;
import com.lidroid.xutils.util.OtherUtils;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.UnknownHostException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;

public class HttpHandler<T> extends PriorityAsyncTask<Object, Object, Void>
  implements RequestCallBackHandler
{
  private static final int UPDATE_FAILURE = 3;
  private static final int UPDATE_LOADING = 2;
  private static final int UPDATE_START = 1;
  private static final int UPDATE_SUCCESS = 4;
  private static final NotUseApacheRedirectHandler notUseApacheRedirectHandler = new NotUseApacheRedirectHandler(null);
  private boolean autoRename = false;
  private boolean autoResume = false;
  private RequestCallBack<T> callback;
  private String charset;
  private final AbstractHttpClient client;
  private final HttpContext context;
  private long expiry = HttpCache.getDefaultExpiryTime();
  private String fileSavePath = null;
  private HttpRedirectHandler httpRedirectHandler;
  private boolean isDownloadingFile = false;
  private boolean isUploading = true;
  private long lastUpdateTime;
  private HttpRequestBase request;
  private String requestMethod;
  private String requestUrl;
  private int retriedCount = 0;
  private State state = State.WAITING;

  public HttpHandler(AbstractHttpClient paramAbstractHttpClient, HttpContext paramHttpContext, String paramString, RequestCallBack<T> paramRequestCallBack)
  {
    this.client = paramAbstractHttpClient;
    this.context = paramHttpContext;
    this.callback = paramRequestCallBack;
    this.charset = paramString;
    this.client.setRedirectHandler(notUseApacheRedirectHandler);
  }

  private ResponseInfo<T> handleResponse(HttpResponse paramHttpResponse)
    throws HttpException, IOException
  {
    if (paramHttpResponse == null)
      throw new HttpException("response is null");
    if (isCancelled());
    StatusLine localStatusLine;
    int i;
    label152: label158: HttpRequestBase localHttpRequestBase;
    do
    {
      return null;
      localStatusLine = paramHttpResponse.getStatusLine();
      i = localStatusLine.getStatusCode();
      if (i < 300)
      {
        HttpEntity localHttpEntity = paramHttpResponse.getEntity();
        Object localObject = null;
        boolean bool1;
        if (localHttpEntity != null)
        {
          this.isUploading = false;
          if (!this.isDownloadingFile)
            break label158;
          if ((!this.autoResume) || (!OtherUtils.isSupportRange(paramHttpResponse)))
            break label152;
          bool1 = true;
          this.autoResume = bool1;
          boolean bool2 = this.autoRename;
          String str = null;
          if (bool2)
            str = OtherUtils.getFileNameFromHttpResponse(paramHttpResponse);
          localObject = new FileDownloadHandler().handleEntity(localHttpEntity, this, this.fileSavePath, this.autoResume, str);
        }
        while (true)
        {
          return new ResponseInfo(paramHttpResponse, localObject, false);
          bool1 = false;
          break;
          localObject = new StringDownloadHandler().handleEntity(localHttpEntity, this, this.charset);
          if (HttpUtils.sHttpCache.isEnabled(this.requestMethod))
            HttpUtils.sHttpCache.put(this.requestUrl, (String)localObject, this.expiry);
        }
      }
      if ((i != 301) && (i != 302))
        break;
      if (this.httpRedirectHandler == null)
        this.httpRedirectHandler = new DefaultHttpRedirectHandler();
      localHttpRequestBase = this.httpRedirectHandler.getDirectRequest(paramHttpResponse);
    }
    while (localHttpRequestBase == null);
    return sendRequest(localHttpRequestBase);
    if (i == 416)
      throw new HttpException(i, "maybe the file has downloaded completely");
    throw new HttpException(i, localStatusLine.getReasonPhrase());
  }

  private ResponseInfo<T> sendRequest(HttpRequestBase paramHttpRequestBase)
    throws HttpException
  {
    HttpRequestRetryHandler localHttpRequestRetryHandler = this.client.getHttpRequestRetryHandler();
    while (true)
    {
      if ((this.autoResume) && (this.isDownloadingFile))
      {
        File localFile = new File(this.fileSavePath);
        long l = 0L;
        if ((localFile.isFile()) && (localFile.exists()))
          l = localFile.length();
        if (l > 0L)
          paramHttpRequestBase.setHeader("RANGE", "bytes=" + l + "-");
      }
      try
      {
        this.requestMethod = paramHttpRequestBase.getMethod();
        if (HttpUtils.sHttpCache.isEnabled(this.requestMethod))
        {
          String str = HttpUtils.sHttpCache.get(this.requestUrl);
          if (str != null)
            return new ResponseInfo(null, str, true);
        }
        if (!isCancelled())
        {
          ResponseInfo localResponseInfo = handleResponse(this.client.execute(paramHttpRequestBase, this.context));
          return localResponseInfo;
        }
      }
      catch (UnknownHostException localUnknownHostException)
      {
        localObject = localUnknownHostException;
        int m = 1 + this.retriedCount;
        this.retriedCount = m;
        bool = localHttpRequestRetryHandler.retryRequest((IOException)localObject, m, this.context);
        if (!bool)
          throw new HttpException((Throwable)localObject);
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          localObject = localIOException;
          int k = 1 + this.retriedCount;
          this.retriedCount = k;
          bool = localHttpRequestRetryHandler.retryRequest((IOException)localObject, k, this.context);
        }
      }
      catch (NullPointerException localNullPointerException)
      {
        while (true)
        {
          localObject = new IOException(localNullPointerException.getMessage());
          ((IOException)localObject).initCause(localNullPointerException);
          int j = 1 + this.retriedCount;
          this.retriedCount = j;
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
          int i = 1 + this.retriedCount;
          this.retriedCount = i;
          boolean bool = localHttpRequestRetryHandler.retryRequest((IOException)localObject, i, this.context);
        }
      }
    }
    return null;
  }

  public void cancel()
  {
    this.state = State.CANCELLED;
    if ((this.request != null) && (!this.request.isAborted()));
    try
    {
      this.request.abort();
      label31: if (!isCancelled());
      try
      {
        cancel(true);
        label44: if (this.callback != null)
          this.callback.onCancelled();
        return;
      }
      catch (Throwable localThrowable1)
      {
        break label44;
      }
    }
    catch (Throwable localThrowable2)
    {
      break label31;
    }
  }

  protected Void doInBackground(Object[] paramArrayOfObject)
  {
    if ((this.state == State.CANCELLED) || (paramArrayOfObject == null) || (paramArrayOfObject.length == 0))
      return null;
    if (paramArrayOfObject.length > 3)
    {
      this.fileSavePath = String.valueOf(paramArrayOfObject[1]);
      if (this.fileSavePath == null)
        break label232;
    }
    label232: for (boolean bool = true; ; bool = false)
      while (true)
      {
        this.isDownloadingFile = bool;
        this.autoResume = ((Boolean)paramArrayOfObject[2]).booleanValue();
        this.autoRename = ((Boolean)paramArrayOfObject[3]).booleanValue();
        try
        {
          if (this.state == State.CANCELLED)
            break;
          this.request = ((HttpRequestBase)paramArrayOfObject[0]);
          this.requestUrl = this.request.getURI().toString();
          if (this.callback != null)
            this.callback.setRequestUrl(this.requestUrl);
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = Integer.valueOf(1);
          publishProgress(arrayOfObject2);
          this.lastUpdateTime = SystemClock.uptimeMillis();
          ResponseInfo localResponseInfo = sendRequest(this.request);
          if (localResponseInfo == null)
            break;
          Object[] arrayOfObject3 = new Object[2];
          arrayOfObject3[0] = Integer.valueOf(4);
          arrayOfObject3[1] = localResponseInfo;
          publishProgress(arrayOfObject3);
          return null;
        }
        catch (HttpException localHttpException)
        {
          Object[] arrayOfObject1 = new Object[3];
          arrayOfObject1[0] = Integer.valueOf(3);
          arrayOfObject1[1] = localHttpException;
          arrayOfObject1[2] = localHttpException.getMessage();
          publishProgress(arrayOfObject1);
          return null;
        }
      }
  }

  public RequestCallBack<T> getRequestCallBack()
  {
    return this.callback;
  }

  public State getState()
  {
    return this.state;
  }

  protected void onProgressUpdate(Object[] paramArrayOfObject)
  {
    if ((this.state == State.CANCELLED) || (paramArrayOfObject == null) || (paramArrayOfObject.length == 0) || (this.callback == null));
    do
    {
      do
      {
        do
        {
          return;
          switch (((Integer)paramArrayOfObject[0]).intValue())
          {
          default:
            return;
          case 1:
            this.state = State.STARTED;
            this.callback.onStart();
            return;
          case 2:
          case 3:
          case 4:
          }
        }
        while (paramArrayOfObject.length != 3);
        this.state = State.LOADING;
        this.callback.onLoading(Long.valueOf(String.valueOf(paramArrayOfObject[1])).longValue(), Long.valueOf(String.valueOf(paramArrayOfObject[2])).longValue(), this.isUploading);
        return;
      }
      while (paramArrayOfObject.length != 3);
      this.state = State.FAILURE;
      this.callback.onFailure((HttpException)paramArrayOfObject[1], (String)paramArrayOfObject[2]);
      return;
    }
    while (paramArrayOfObject.length != 2);
    this.state = State.SUCCESS;
    this.callback.onSuccess((ResponseInfo)paramArrayOfObject[1]);
  }

  public void setExpiry(long paramLong)
  {
    this.expiry = paramLong;
  }

  public void setHttpRedirectHandler(HttpRedirectHandler paramHttpRedirectHandler)
  {
    if (paramHttpRedirectHandler != null)
      this.httpRedirectHandler = paramHttpRedirectHandler;
  }

  public void setRequestCallBack(RequestCallBack<T> paramRequestCallBack)
  {
    this.callback = paramRequestCallBack;
  }

  public boolean updateProgress(long paramLong1, long paramLong2, boolean paramBoolean)
  {
    if ((this.callback != null) && (this.state != State.CANCELLED))
    {
      if (!paramBoolean)
        break label70;
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Integer.valueOf(2);
      arrayOfObject2[1] = Long.valueOf(paramLong1);
      arrayOfObject2[2] = Long.valueOf(paramLong2);
      publishProgress(arrayOfObject2);
    }
    while (this.state != State.CANCELLED)
    {
      return true;
      label70: long l = SystemClock.uptimeMillis();
      if (l - this.lastUpdateTime >= this.callback.getRate())
      {
        this.lastUpdateTime = l;
        Object[] arrayOfObject1 = new Object[3];
        arrayOfObject1[0] = Integer.valueOf(2);
        arrayOfObject1[1] = Long.valueOf(paramLong1);
        arrayOfObject1[2] = Long.valueOf(paramLong2);
        publishProgress(arrayOfObject1);
      }
    }
    return false;
  }

  private static final class NotUseApacheRedirectHandler
    implements RedirectHandler
  {
    public URI getLocationURI(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
      throws ProtocolException
    {
      return null;
    }

    public boolean isRedirectRequested(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
    {
      return false;
    }
  }

  public static enum State
  {
    private int value = 0;

    static
    {
      STARTED = new State("STARTED", 1, 1);
      LOADING = new State("LOADING", 2, 2);
      FAILURE = new State("FAILURE", 3, 3);
      CANCELLED = new State("CANCELLED", 4, 4);
      SUCCESS = new State("SUCCESS", 5, 5);
      State[] arrayOfState = new State[6];
      arrayOfState[0] = WAITING;
      arrayOfState[1] = STARTED;
      arrayOfState[2] = LOADING;
      arrayOfState[3] = FAILURE;
      arrayOfState[4] = CANCELLED;
      arrayOfState[5] = SUCCESS;
    }

    private State(int arg3)
    {
      int j;
      this.value = j;
    }

    public static State valueOf(int paramInt)
    {
      switch (paramInt)
      {
      default:
        return FAILURE;
      case 0:
        return WAITING;
      case 1:
        return STARTED;
      case 2:
        return LOADING;
      case 3:
        return FAILURE;
      case 4:
        return CANCELLED;
      case 5:
      }
      return SUCCESS;
    }

    public int value()
    {
      return this.value;
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.http.HttpHandler
 * JD-Core Version:    0.6.2
 */