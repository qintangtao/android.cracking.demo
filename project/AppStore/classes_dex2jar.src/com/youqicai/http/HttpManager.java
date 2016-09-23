package com.youqicai.http;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;

public class HttpManager
{
  private static final int CONN_PER_ROUTE_NUM = 10;
  private static final int MAX_CONN_NUM = 3;
  private static HttpManager sHttpMgr = null;
  private int BUFFER_SIZE = 8192;
  private final String USER_AGENT = "Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.89 Safari/537.1";
  private HttpClient mHttpClient = null;

  private HttpManager()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    ConnManagerParams.setTimeout(localBasicHttpParams, 30000L);
    ConnManagerParams.setMaxConnectionsPerRoute(localBasicHttpParams, new ConnPerRouteBean(10));
    ConnManagerParams.setMaxTotalConnections(localBasicHttpParams, 3);
    HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
    HttpProtocolParams.setContentCharset(localBasicHttpParams, "UTF-8");
    HttpConnectionParams.setStaleCheckingEnabled(localBasicHttpParams, false);
    HttpClientParams.setRedirecting(localBasicHttpParams, true);
    HttpProtocolParams.setUserAgent(localBasicHttpParams, "Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/21.0.1180.89 Safari/537.1");
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 200000);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 0);
    HttpConnectionParams.setTcpNoDelay(localBasicHttpParams, true);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, this.BUFFER_SIZE);
    HttpProtocolParams.setUseExpectContinue(localBasicHttpParams, true);
    SchemeRegistry localSchemeRegistry = new SchemeRegistry();
    localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    localSchemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
    this.mHttpClient = new DefaultHttpClient(new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry), localBasicHttpParams);
  }

  public static HttpManager getHttpClient()
  {
    if (sHttpMgr == null)
      sHttpMgr = new HttpManager();
    return sHttpMgr;
  }

  public static void uploadImage2Server(String paramString, Bitmap paramBitmap)
  {
    try
    {
      HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(paramString).openConnection();
      localHttpURLConnection.setDoInput(true);
      localHttpURLConnection.setDoOutput(true);
      localHttpURLConnection.setUseCaches(false);
      localHttpURLConnection.setConnectTimeout(5000);
      localHttpURLConnection.setReadTimeout(5000);
      localHttpURLConnection.setRequestMethod("POST");
      localHttpURLConnection.setRequestProperty("Connection", "Keep-Alive");
      localHttpURLConnection.setRequestProperty("Charset", "UTF-8");
      localHttpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;boundary=*****");
      DataOutputStream localDataOutputStream = new DataOutputStream(localHttpURLConnection.getOutputStream());
      paramBitmap.compress(Bitmap.CompressFormat.PNG, 90, localDataOutputStream);
      localDataOutputStream.flush();
      localDataOutputStream.close();
      localHttpURLConnection.disconnect();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public InputStream doGet(String paramString)
    throws ClientProtocolException, IOException
  {
    HttpGet localHttpGet = new HttpGet(paramString);
    HttpResponse localHttpResponse = this.mHttpClient.execute(localHttpGet);
    int i = localHttpResponse.getStatusLine().getStatusCode();
    InputStream localInputStream = null;
    if (i == 200)
      localInputStream = localHttpResponse.getEntity().getContent();
    return localInputStream;
  }

  public InputStream doPost(String paramString, StringEntity paramStringEntity)
    throws ClientProtocolException, IOException
  {
    HttpPost localHttpPost = new HttpPost(paramString);
    if (paramStringEntity != null)
      localHttpPost.setEntity(paramStringEntity);
    HttpResponse localHttpResponse = this.mHttpClient.execute(localHttpPost);
    int i = localHttpResponse.getStatusLine().getStatusCode();
    InputStream localInputStream = null;
    if (i == 200)
      localInputStream = localHttpResponse.getEntity().getContent();
    return localInputStream;
  }

  public void releaseHttpClient()
  {
    if (this.mHttpClient != null)
    {
      this.mHttpClient.getConnectionManager().shutdown();
      this.mHttpClient = null;
    }
  }

  private static abstract interface TimeOutSetting
  {
    public static final long CONN_POOL_TIME_OUT = 30000L;
    public static final int CONN_TIME_OUT = 0;
    public static final int SO_TIME_OUT = 200000;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.http.HttpManager
 * JD-Core Version:    0.6.2
 */