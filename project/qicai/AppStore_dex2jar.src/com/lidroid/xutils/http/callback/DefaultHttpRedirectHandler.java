package com.lidroid.xutils.http.callback;

import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpRequestBase;

public class DefaultHttpRedirectHandler
  implements HttpRedirectHandler
{
  public HttpRequestBase getDirectRequest(HttpResponse paramHttpResponse)
  {
    if (paramHttpResponse.containsHeader("Location"))
    {
      HttpGet localHttpGet = new HttpGet(paramHttpResponse.getFirstHeader("Location").getValue());
      if (paramHttpResponse.containsHeader("Set-Cookie"))
        localHttpGet.addHeader("Cookie", paramHttpResponse.getFirstHeader("Set-Cookie").getValue());
      return localHttpGet;
    }
    return null;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.http.callback.DefaultHttpRedirectHandler
 * JD-Core Version:    0.6.2
 */