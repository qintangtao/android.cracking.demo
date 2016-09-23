package com.youqicai.datasdk;

import android.text.TextUtils;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.NameValuePair;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.LayeredSocketFactory;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;

public class MyHttpClient
{
  private static final int CONNECTIONTIMEOUT = 12000;
  private static final int TIMEOUT = 25000;
  private DefaultHttpClient mHttpClient = createHttpClient();

  public static final DefaultHttpClient createHttpClient()
  {
    SchemeRegistry localSchemeRegistry = new SchemeRegistry();
    localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    localSchemeRegistry.register(new Scheme("https", new EasySSLSocketFactory(), 443));
    HttpParams localHttpParams = createHttpParams();
    HttpClientParams.setRedirecting(localHttpParams, true);
    return new DefaultHttpClient(new ThreadSafeClientConnManager(localHttpParams, localSchemeRegistry), localHttpParams);
  }

  private HttpGet createHttpGet(String paramString, NameValuePair[] paramArrayOfNameValuePair)
  {
    String str = URLEncodedUtils.format(formatParams(paramArrayOfNameValuePair), "UTF-8");
    return createHttpGet(paramString + "?" + str);
  }

  private static final HttpParams createHttpParams()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setStaleCheckingEnabled(localBasicHttpParams, false);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 12000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 25000);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    localBasicHttpParams.setParameter("http.conn-manager.max-total", Integer.valueOf(30));
    localBasicHttpParams.setParameter("http.conn-manager.max-per-route", new ConnPerRouteBean(30));
    localBasicHttpParams.setParameter("http.protocol.expect-continue", Boolean.valueOf(false));
    HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
    return localBasicHttpParams;
  }

  private HttpPost createHttpPost(String paramString1, String paramString2)
    throws UnsupportedEncodingException
  {
    HttpPost localHttpPost = createHttpPost(paramString1);
    localHttpPost.setEntity(new StringEntity(paramString2, "UTF-8"));
    return localHttpPost;
  }

  private HttpPost createHttpPost(String paramString, byte[] paramArrayOfByte)
    throws UnsupportedEncodingException
  {
    HttpPost localHttpPost = createHttpPost(paramString);
    localHttpPost.setEntity(new ByteArrayEntity(paramArrayOfByte));
    return localHttpPost;
  }

  private HttpPost createHttpPost(String paramString, NameValuePair[] paramArrayOfNameValuePair)
    throws UnsupportedEncodingException
  {
    HttpPost localHttpPost = createHttpPost(paramString);
    localHttpPost.setEntity(new UrlEncodedFormEntity(formatParams(paramArrayOfNameValuePair), "UTF-8"));
    return localHttpPost;
  }

  private HttpResponse doHttpPost(String paramString, byte[] paramArrayOfByte)
    throws ClientProtocolException, IOException
  {
    return executeHttpRequest(createHttpPost(paramString, paramArrayOfByte));
  }

  private ArrayList<NameValuePair> formatParams(NameValuePair[] paramArrayOfNameValuePair)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramArrayOfNameValuePair != null)
    {
      int i = paramArrayOfNameValuePair.length;
      for (int j = 0; j < i; j++)
      {
        NameValuePair localNameValuePair = paramArrayOfNameValuePair[j];
        if (localNameValuePair != null)
          localArrayList.add(localNameValuePair);
      }
    }
    return localArrayList;
  }

  private String getResponseData(HttpResponse paramHttpResponse)
    throws IOException
  {
    String str = null;
    HttpEntity localHttpEntity;
    if (paramHttpResponse != null)
    {
      int i = paramHttpResponse.getStatusLine().getStatusCode();
      localHttpEntity = paramHttpResponse.getEntity();
      str = null;
      if (i == 200)
      {
        str = null;
        if (localHttpEntity != null)
        {
          Header localHeader = localHttpEntity.getContentEncoding();
          if ((localHeader == null) || (!localHeader.getValue().contains("gzip")))
            break label105;
        }
      }
    }
    label105: for (str = new String(GZIP.gzipDecompress(localHttpEntity.getContent()), "utf-8"); ; str = EntityUtils.toString(localHttpEntity, "utf-8"))
    {
      if (!TextUtils.isEmpty(str))
        str = str.trim();
      return str;
    }
  }

  public HttpGet createHttpGet(String paramString)
  {
    return new HttpGet(paramString);
  }

  public HttpPost createHttpPost(String paramString)
  {
    return new HttpPost(paramString);
  }

  public String doGet(String paramString)
    throws ClientProtocolException, IOException
  {
    return getResponseData(executeHttpRequest(createHttpGet(paramString)));
  }

  public String doPost(String paramString)
    throws ClientProtocolException, IOException
  {
    return doPost(createHttpPost(paramString));
  }

  public String doPost(String paramString1, String paramString2)
    throws ClientProtocolException, IOException
  {
    return doPost(createHttpPost(paramString1, paramString2));
  }

  public String doPost(String paramString, HttpEntity paramHttpEntity)
    throws ClientProtocolException, IOException
  {
    HttpPost localHttpPost = createHttpPost(paramString);
    localHttpPost.setEntity(paramHttpEntity);
    return doPost(localHttpPost);
  }

  public String doPost(String paramString, byte[] paramArrayOfByte)
    throws ClientProtocolException, IOException
  {
    return doPost(createHttpPost(paramString, paramArrayOfByte));
  }

  public String doPost(HttpPost paramHttpPost)
    throws ClientProtocolException, IOException
  {
    return getResponseData(executeHttpRequest(paramHttpPost));
  }

  public HttpResponse executeHttpRequest(HttpRequestBase paramHttpRequestBase)
    throws ClientProtocolException, IOException
  {
    try
    {
      HttpResponse localHttpResponse = this.mHttpClient.execute(paramHttpRequestBase);
      return localHttpResponse;
    }
    catch (UnknownHostException localUnknownHostException)
    {
    }
    return null;
  }

  public static class EasySSLSocketFactory
    implements SocketFactory, LayeredSocketFactory
  {
    private static SocketFactory instance = new EasySSLSocketFactory();
    private SSLContext sslcontext = null;

    private static SSLContext createEasySSLContext()
      throws IOException
    {
      try
      {
        SSLContext localSSLContext = SSLContext.getInstance("TLS");
        TrustManager[] arrayOfTrustManager = new TrustManager[1];
        arrayOfTrustManager[0] = new X509TrustManager()
        {
          public void checkClientTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString)
            throws CertificateException
          {
          }

          public void checkServerTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString)
            throws CertificateException
          {
          }

          public X509Certificate[] getAcceptedIssuers()
          {
            return null;
          }
        };
        localSSLContext.init(null, arrayOfTrustManager, new SecureRandom());
        return localSSLContext;
      }
      catch (Exception localException)
      {
        throw new IOException(localException.getMessage());
      }
    }

    private SSLContext getSSLContext()
      throws IOException
    {
      if (this.sslcontext == null)
        this.sslcontext = createEasySSLContext();
      return this.sslcontext;
    }

    public static SocketFactory getSocketFactory()
    {
      return instance;
    }

    public Socket connectSocket(Socket paramSocket, String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2, HttpParams paramHttpParams)
      throws IOException, UnknownHostException, ConnectTimeoutException
    {
      int i = HttpConnectionParams.getConnectionTimeout(paramHttpParams);
      int j = HttpConnectionParams.getSoTimeout(paramHttpParams);
      InetSocketAddress localInetSocketAddress = new InetSocketAddress(paramString, paramInt1);
      if (paramSocket != null);
      for (Socket localSocket = paramSocket; ; localSocket = createSocket())
      {
        SSLSocket localSSLSocket = (SSLSocket)localSocket;
        if ((paramInetAddress != null) || (paramInt2 > 0))
        {
          if (paramInt2 < 0)
            paramInt2 = 0;
          localSSLSocket.bind(new InetSocketAddress(paramInetAddress, paramInt2));
        }
        localSSLSocket.connect(localInetSocketAddress, i);
        localSSLSocket.setSoTimeout(j);
        return localSSLSocket;
      }
    }

    public Socket createSocket()
      throws IOException
    {
      return getSSLContext().getSocketFactory().createSocket();
    }

    public Socket createSocket(Socket paramSocket, String paramString, int paramInt, boolean paramBoolean)
      throws IOException, UnknownHostException
    {
      return getSSLContext().getSocketFactory().createSocket(paramSocket, paramString, paramInt, paramBoolean);
    }

    public boolean equals(Object paramObject)
    {
      return (paramObject != null) && (paramObject.getClass().equals(EasySSLSocketFactory.class));
    }

    public int hashCode()
    {
      return EasySSLSocketFactory.class.hashCode();
    }

    public boolean isSecure(Socket paramSocket)
      throws IllegalArgumentException
    {
      return true;
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.datasdk.MyHttpClient
 * JD-Core Version:    0.6.2
 */