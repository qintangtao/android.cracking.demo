package com.lidroid.xutils.http.client;

import com.lidroid.xutils.http.RequestParams;
import com.lidroid.xutils.http.RequestParams.HeaderItem;
import com.lidroid.xutils.http.callback.RequestCallBackHandler;
import com.lidroid.xutils.http.client.entity.UploadEntity;
import com.lidroid.xutils.http.client.util.URIBuilder;
import com.lidroid.xutils.util.LogUtils;
import com.lidroid.xutils.util.OtherUtils;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.NameValuePair;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.utils.CloneUtils;

public class HttpRequest extends HttpRequestBase
  implements HttpEntityEnclosingRequest
{
  private HttpEntity entity;
  private HttpMethod method;
  private URIBuilder uriBuilder;
  private Charset uriCharset;

  public HttpRequest(HttpMethod paramHttpMethod)
  {
    this.method = paramHttpMethod;
  }

  public HttpRequest(HttpMethod paramHttpMethod, String paramString)
  {
    this.method = paramHttpMethod;
    setURI(paramString);
  }

  public HttpRequest(HttpMethod paramHttpMethod, URI paramURI)
  {
    this.method = paramHttpMethod;
    setURI(paramURI);
  }

  public HttpRequest addQueryStringParameter(String paramString1, String paramString2)
  {
    this.uriBuilder.addParameter(paramString1, paramString2);
    return this;
  }

  public HttpRequest addQueryStringParameter(NameValuePair paramNameValuePair)
  {
    this.uriBuilder.addParameter(paramNameValuePair.getName(), paramNameValuePair.getValue());
    return this;
  }

  public HttpRequest addQueryStringParams(List<NameValuePair> paramList)
  {
    Iterator localIterator;
    if (paramList != null)
      localIterator = paramList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return this;
      NameValuePair localNameValuePair = (NameValuePair)localIterator.next();
      this.uriBuilder.addParameter(localNameValuePair.getName(), localNameValuePair.getValue());
    }
  }

  public Object clone()
    throws CloneNotSupportedException
  {
    HttpRequest localHttpRequest = (HttpRequest)super.clone();
    if (this.entity != null)
      localHttpRequest.entity = ((HttpEntity)CloneUtils.clone(this.entity));
    return localHttpRequest;
  }

  public boolean expectContinue()
  {
    Header localHeader = getFirstHeader("Expect");
    return (localHeader != null) && ("100-Continue".equalsIgnoreCase(localHeader.getValue()));
  }

  public HttpEntity getEntity()
  {
    return this.entity;
  }

  public String getMethod()
  {
    return this.method.toString();
  }

  public URI getURI()
  {
    try
    {
      if (this.uriCharset == null)
        this.uriCharset = OtherUtils.getCharsetFromHttpRequest(this);
      if (this.uriCharset == null)
        this.uriCharset = Charset.forName("UTF-8");
      URI localURI = this.uriBuilder.build(this.uriCharset);
      return localURI;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      LogUtils.e(localURISyntaxException.getMessage(), localURISyntaxException);
    }
    return null;
  }

  public void setEntity(HttpEntity paramHttpEntity)
  {
    this.entity = paramHttpEntity;
  }

  public void setRequestParams(RequestParams paramRequestParams)
  {
    Iterator localIterator;
    if (paramRequestParams != null)
    {
      if (this.uriCharset == null)
        this.uriCharset = Charset.forName(paramRequestParams.getCharset());
      List localList = paramRequestParams.getHeaders();
      if (localList != null)
        localIterator = localList.iterator();
    }
    while (true)
    {
      if (!localIterator.hasNext())
      {
        addQueryStringParams(paramRequestParams.getQueryStringParams());
        setEntity(paramRequestParams.getEntity());
        return;
      }
      RequestParams.HeaderItem localHeaderItem = (RequestParams.HeaderItem)localIterator.next();
      if (localHeaderItem.overwrite)
        setHeader(localHeaderItem.header);
      else
        addHeader(localHeaderItem.header);
    }
  }

  public void setRequestParams(RequestParams paramRequestParams, RequestCallBackHandler paramRequestCallBackHandler)
  {
    Iterator localIterator;
    if (paramRequestParams != null)
    {
      if (this.uriCharset == null)
        this.uriCharset = Charset.forName(paramRequestParams.getCharset());
      List localList = paramRequestParams.getHeaders();
      if (localList != null)
        localIterator = localList.iterator();
    }
    while (true)
    {
      if (!localIterator.hasNext())
      {
        addQueryStringParams(paramRequestParams.getQueryStringParams());
        HttpEntity localHttpEntity = paramRequestParams.getEntity();
        if (localHttpEntity != null)
        {
          if ((localHttpEntity instanceof UploadEntity))
            ((UploadEntity)localHttpEntity).setCallBackHandler(paramRequestCallBackHandler);
          setEntity(localHttpEntity);
        }
        return;
      }
      RequestParams.HeaderItem localHeaderItem = (RequestParams.HeaderItem)localIterator.next();
      if (localHeaderItem.overwrite)
        setHeader(localHeaderItem.header);
      else
        addHeader(localHeaderItem.header);
    }
  }

  public void setURI(String paramString)
  {
    this.uriBuilder = new URIBuilder(paramString);
  }

  public void setURI(URI paramURI)
  {
    this.uriBuilder = new URIBuilder(paramURI);
  }

  public static enum HttpMethod
  {
    private final String value;

    static
    {
      HEAD = new HttpMethod("HEAD", 3, "HEAD");
      MOVE = new HttpMethod("MOVE", 4, "MOVE");
      COPY = new HttpMethod("COPY", 5, "COPY");
      DELETE = new HttpMethod("DELETE", 6, "DELETE");
      OPTIONS = new HttpMethod("OPTIONS", 7, "OPTIONS");
      TRACE = new HttpMethod("TRACE", 8, "TRACE");
      CONNECT = new HttpMethod("CONNECT", 9, "CONNECT");
      HttpMethod[] arrayOfHttpMethod = new HttpMethod[10];
      arrayOfHttpMethod[0] = GET;
      arrayOfHttpMethod[1] = POST;
      arrayOfHttpMethod[2] = PUT;
      arrayOfHttpMethod[3] = HEAD;
      arrayOfHttpMethod[4] = MOVE;
      arrayOfHttpMethod[5] = COPY;
      arrayOfHttpMethod[6] = DELETE;
      arrayOfHttpMethod[7] = OPTIONS;
      arrayOfHttpMethod[8] = TRACE;
      arrayOfHttpMethod[9] = CONNECT;
    }

    private HttpMethod(String arg3)
    {
      Object localObject;
      this.value = localObject;
    }

    public String toString()
    {
      return this.value;
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.http.client.HttpRequest
 * JD-Core Version:    0.6.2
 */