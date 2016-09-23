package com.lidroid.xutils.http.callback;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpRequestBase;

public abstract interface HttpRedirectHandler
{
  public abstract HttpRequestBase getDirectRequest(HttpResponse paramHttpResponse);
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.http.callback.HttpRedirectHandler
 * JD-Core Version:    0.6.2
 */