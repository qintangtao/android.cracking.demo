package com.lidroid.xutils.http.client;

import android.os.SystemClock;
import com.lidroid.xutils.util.LogUtils;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.HashSet;
import javax.net.ssl.SSLHandshakeException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.impl.client.RequestWrapper;
import org.apache.http.protocol.HttpContext;

public class RetryHandler
  implements HttpRequestRetryHandler
{
  private static final int RETRY_SLEEP_INTERVAL = 500;
  private static HashSet<Class<?>> exceptionBlackList;
  private static HashSet<Class<?>> exceptionWhiteList = new HashSet();
  private final int maxRetries;

  static
  {
    exceptionBlackList = new HashSet();
    exceptionWhiteList.add(NoHttpResponseException.class);
    exceptionWhiteList.add(UnknownHostException.class);
    exceptionWhiteList.add(SocketException.class);
    exceptionBlackList.add(InterruptedIOException.class);
    exceptionBlackList.add(SSLHandshakeException.class);
  }

  public RetryHandler(int paramInt)
  {
    this.maxRetries = paramInt;
  }

  public boolean retryRequest(IOException paramIOException, int paramInt, HttpContext paramHttpContext)
  {
    boolean bool1 = true;
    if ((paramIOException == null) || (paramHttpContext == null))
      return false;
    Object localObject1 = paramHttpContext.getAttribute("http.request_sent");
    boolean bool2 = false;
    if (localObject1 == null);
    while (true)
    {
      if (paramInt > this.maxRetries)
      {
        bool1 = false;
        label42: if (!bool1);
      }
      try
      {
        Object localObject2 = paramHttpContext.getAttribute("http.request");
        if (localObject2 != null)
          if ((localObject2 instanceof HttpRequestBase))
          {
            boolean bool3 = "GET".equals(((HttpRequestBase)localObject2).getMethod());
            bool1 = bool3;
          }
        while (true)
        {
          if (bool1)
            SystemClock.sleep(500L);
          return bool1;
          bool2 = ((Boolean)localObject1).booleanValue();
          break;
          if (exceptionBlackList.contains(paramIOException.getClass()))
          {
            bool1 = false;
            break label42;
          }
          if (exceptionWhiteList.contains(paramIOException.getClass()))
          {
            bool1 = true;
            break label42;
          }
          if (bool2)
            break label42;
          bool1 = true;
          break label42;
          if ((localObject2 instanceof RequestWrapper))
          {
            bool1 = "GET".equals(((RequestWrapper)localObject2).getMethod());
            continue;
            LogUtils.e("retry error, curr request is null");
            bool1 = false;
          }
        }
      }
      catch (Throwable localThrowable)
      {
        while (true)
        {
          LogUtils.e("retry error", localThrowable);
          bool1 = false;
        }
      }
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.http.client.RetryHandler
 * JD-Core Version:    0.6.2
 */