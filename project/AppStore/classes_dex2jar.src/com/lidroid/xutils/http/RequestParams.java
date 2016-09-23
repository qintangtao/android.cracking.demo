package com.lidroid.xutils.http;

import android.text.TextUtils;
import com.lidroid.xutils.http.client.entity.BodyParamsEntity;
import com.lidroid.xutils.http.client.multipart.HttpMultipartMode;
import com.lidroid.xutils.http.client.multipart.MultipartEntity;
import com.lidroid.xutils.http.client.multipart.content.ContentBody;
import com.lidroid.xutils.http.client.multipart.content.FileBody;
import com.lidroid.xutils.http.client.multipart.content.InputStreamBody;
import com.lidroid.xutils.http.client.multipart.content.StringBody;
import com.lidroid.xutils.task.Priority;
import com.lidroid.xutils.util.LogUtils;
import java.io.File;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;

public class RequestParams
{
  private HttpEntity bodyEntity;
  private List<NameValuePair> bodyParams;
  private String charset = "UTF-8";
  private HashMap<String, ContentBody> fileParams;
  private List<HeaderItem> headers;
  private Priority priority;
  private List<NameValuePair> queryStringParams;

  public RequestParams()
  {
  }

  public RequestParams(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
      this.charset = paramString;
  }

  public void addBodyParameter(String paramString, File paramFile)
  {
    if (this.fileParams == null)
      this.fileParams = new HashMap();
    this.fileParams.put(paramString, new FileBody(paramFile));
  }

  public void addBodyParameter(String paramString1, File paramFile, String paramString2)
  {
    if (this.fileParams == null)
      this.fileParams = new HashMap();
    this.fileParams.put(paramString1, new FileBody(paramFile, paramString2));
  }

  public void addBodyParameter(String paramString1, File paramFile, String paramString2, String paramString3)
  {
    if (this.fileParams == null)
      this.fileParams = new HashMap();
    this.fileParams.put(paramString1, new FileBody(paramFile, paramString2, paramString3));
  }

  public void addBodyParameter(String paramString1, File paramFile, String paramString2, String paramString3, String paramString4)
  {
    if (this.fileParams == null)
      this.fileParams = new HashMap();
    this.fileParams.put(paramString1, new FileBody(paramFile, paramString2, paramString3, paramString4));
  }

  public void addBodyParameter(String paramString, InputStream paramInputStream, long paramLong)
  {
    if (this.fileParams == null)
      this.fileParams = new HashMap();
    this.fileParams.put(paramString, new InputStreamBody(paramInputStream, paramLong));
  }

  public void addBodyParameter(String paramString1, InputStream paramInputStream, long paramLong, String paramString2)
  {
    if (this.fileParams == null)
      this.fileParams = new HashMap();
    this.fileParams.put(paramString1, new InputStreamBody(paramInputStream, paramLong, paramString2));
  }

  public void addBodyParameter(String paramString1, InputStream paramInputStream, long paramLong, String paramString2, String paramString3)
  {
    if (this.fileParams == null)
      this.fileParams = new HashMap();
    this.fileParams.put(paramString1, new InputStreamBody(paramInputStream, paramLong, paramString2, paramString3));
  }

  public void addBodyParameter(String paramString1, String paramString2)
  {
    if (this.bodyParams == null)
      this.bodyParams = new ArrayList();
    this.bodyParams.add(new BasicNameValuePair(paramString1, paramString2));
  }

  public void addBodyParameter(List<NameValuePair> paramList)
  {
    if (this.bodyParams == null)
      this.bodyParams = new ArrayList();
    Iterator localIterator;
    if ((paramList != null) && (paramList.size() > 0))
      localIterator = paramList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      NameValuePair localNameValuePair = (NameValuePair)localIterator.next();
      this.bodyParams.add(localNameValuePair);
    }
  }

  public void addBodyParameter(NameValuePair paramNameValuePair)
  {
    if (this.bodyParams == null)
      this.bodyParams = new ArrayList();
    this.bodyParams.add(paramNameValuePair);
  }

  public void addHeader(String paramString1, String paramString2)
  {
    if (this.headers == null)
      this.headers = new ArrayList();
    this.headers.add(new HeaderItem(paramString1, paramString2));
  }

  public void addHeader(Header paramHeader)
  {
    if (this.headers == null)
      this.headers = new ArrayList();
    this.headers.add(new HeaderItem(paramHeader));
  }

  public void addHeaders(List<Header> paramList)
  {
    if (this.headers == null)
      this.headers = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      Header localHeader = (Header)localIterator.next();
      this.headers.add(new HeaderItem(localHeader));
    }
  }

  public void addQueryStringParameter(String paramString1, String paramString2)
  {
    if (this.queryStringParams == null)
      this.queryStringParams = new ArrayList();
    this.queryStringParams.add(new BasicNameValuePair(paramString1, paramString2));
  }

  public void addQueryStringParameter(List<NameValuePair> paramList)
  {
    if (this.queryStringParams == null)
      this.queryStringParams = new ArrayList();
    Iterator localIterator;
    if ((paramList != null) && (paramList.size() > 0))
      localIterator = paramList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      NameValuePair localNameValuePair = (NameValuePair)localIterator.next();
      this.queryStringParams.add(localNameValuePair);
    }
  }

  public void addQueryStringParameter(NameValuePair paramNameValuePair)
  {
    if (this.queryStringParams == null)
      this.queryStringParams = new ArrayList();
    this.queryStringParams.add(paramNameValuePair);
  }

  public String getCharset()
  {
    return this.charset;
  }

  public HttpEntity getEntity()
  {
    HttpEntity localHttpEntity;
    if (this.bodyEntity != null)
      localHttpEntity = this.bodyEntity;
    label174: boolean bool;
    do
    {
      List localList;
      do
      {
        return localHttpEntity;
        if ((this.fileParams != null) && (!this.fileParams.isEmpty()))
        {
          MultipartEntity localMultipartEntity = new MultipartEntity(HttpMultipartMode.STRICT, null, Charset.forName(this.charset));
          Iterator localIterator2;
          Iterator localIterator1;
          if ((this.bodyParams != null) && (!this.bodyParams.isEmpty()))
          {
            localIterator2 = this.bodyParams.iterator();
            if (localIterator2.hasNext());
          }
          else
          {
            localIterator1 = this.fileParams.entrySet().iterator();
          }
          while (true)
          {
            while (true)
            {
              if (localIterator1.hasNext())
                break label174;
              return localMultipartEntity;
              NameValuePair localNameValuePair = (NameValuePair)localIterator2.next();
              try
              {
                localMultipartEntity.addPart(localNameValuePair.getName(), new StringBody(localNameValuePair.getValue()));
              }
              catch (UnsupportedEncodingException localUnsupportedEncodingException)
              {
                LogUtils.e(localUnsupportedEncodingException.getMessage(), localUnsupportedEncodingException);
              }
            }
            break;
            Map.Entry localEntry = (Map.Entry)localIterator1.next();
            localMultipartEntity.addPart((String)localEntry.getKey(), (ContentBody)localEntry.getValue());
          }
        }
        localList = this.bodyParams;
        localHttpEntity = null;
      }
      while (localList == null);
      bool = this.bodyParams.isEmpty();
      localHttpEntity = null;
    }
    while (bool);
    return new BodyParamsEntity(this.bodyParams, this.charset);
  }

  public List<HeaderItem> getHeaders()
  {
    return this.headers;
  }

  public Priority getPriority()
  {
    return this.priority;
  }

  public List<NameValuePair> getQueryStringParams()
  {
    return this.queryStringParams;
  }

  public void setBodyEntity(HttpEntity paramHttpEntity)
  {
    this.bodyEntity = paramHttpEntity;
    if (this.bodyParams != null)
    {
      this.bodyParams.clear();
      this.bodyParams = null;
    }
    if (this.fileParams != null)
    {
      this.fileParams.clear();
      this.fileParams = null;
    }
  }

  public void setContentType(String paramString)
  {
    setHeader("Content-Type", paramString);
  }

  public void setHeader(String paramString1, String paramString2)
  {
    if (this.headers == null)
      this.headers = new ArrayList();
    this.headers.add(new HeaderItem(paramString1, paramString2, true));
  }

  public void setHeader(Header paramHeader)
  {
    if (this.headers == null)
      this.headers = new ArrayList();
    this.headers.add(new HeaderItem(paramHeader, true));
  }

  public void setHeaders(List<Header> paramList)
  {
    if (this.headers == null)
      this.headers = new ArrayList();
    Iterator localIterator = paramList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      Header localHeader = (Header)localIterator.next();
      this.headers.add(new HeaderItem(localHeader, true));
    }
  }

  public void setPriority(Priority paramPriority)
  {
    this.priority = paramPriority;
  }

  public class HeaderItem
  {
    public final Header header;
    public final boolean overwrite;

    public HeaderItem(String paramString1, String arg3)
    {
      this.overwrite = false;
      String str;
      this.header = new BasicHeader(paramString1, str);
    }

    public HeaderItem(String paramString1, String paramBoolean, boolean arg4)
    {
      boolean bool;
      this.overwrite = bool;
      this.header = new BasicHeader(paramString1, paramBoolean);
    }

    public HeaderItem(Header arg2)
    {
      this.overwrite = false;
      Object localObject;
      this.header = localObject;
    }

    public HeaderItem(Header paramBoolean, boolean arg3)
    {
      boolean bool;
      this.overwrite = bool;
      this.header = paramBoolean;
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.http.RequestParams
 * JD-Core Version:    0.6.2
 */