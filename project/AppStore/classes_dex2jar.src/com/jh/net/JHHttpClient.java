package com.jh.net;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import com.jh.exception.JHException;
import com.jh.net.exception.JHProtocolException;
import com.jh.util.LogUtil;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

public class JHHttpClient
  implements IClient
{
  private static Context context;
  private static SessionInvalideHandler defaultHandler;
  private static final int defaultValue = -1;
  private static int globalConnectTimeout = -1;
  private static int globalReadTimeout;
  private static int globalRetryInterval = -1;
  private static int globalRetryTimes = -1;
  private int connectTimeout = -1;
  private DATAFORMAT dataFormat = DATAFORMAT.JSON;
  private ErrorHandler errorHandler;
  private HashMap<String, String> headers;
  private int readTimeout = -1;
  private DefaultHttpClient reqClient;
  private HttpResponse response;
  private int retryInterval = -1;
  private int retryTimes = -1;

  static
  {
    globalReadTimeout = -1;
  }

  private static void closeInputStream(InputStream paramInputStream)
  {
    if (paramInputStream != null);
    try
    {
      paramInputStream.close();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }

  private static void closeOutputStream(OutputStream paramOutputStream)
  {
    if (paramOutputStream != null);
    try
    {
      paramOutputStream.close();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }

  private HttpContent getContentOnce(String paramString)
    throws JHException
  {
    try
    {
      if ((context == null) || (NetStatus.hasNet(context)))
      {
        DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient(getParams());
        HttpGet localHttpGet = new HttpGet(paramString);
        setHttpHeaders(localHttpGet);
        this.response = localDefaultHttpClient.execute(localHttpGet);
        validateStatus(paramString, this.response);
        HttpContent localHttpContent = new HttpContent();
        localHttpContent.setContentLength(this.response.getEntity().getContentLength());
        localHttpContent.setStream(this.response.getEntity().getContent());
        return localHttpContent;
      }
      throw new NoNetWorkException();
    }
    catch (MalformedURLException localMalformedURLException)
    {
      localMalformedURLException.printStackTrace();
      throw new JHMalformedURLException(localMalformedURLException);
    }
    catch (ProtocolException localProtocolException)
    {
      localProtocolException.printStackTrace();
      throw new JHProtocolException(localProtocolException);
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      throw new JHNetIOException(localIOException);
    }
  }

  private static int[] getFileInt(String paramString)
    throws IOException
  {
    try
    {
      FileInputStream localFileInputStream1 = new FileInputStream(paramString);
      try
      {
        byte[] arrayOfByte = readStream(localFileInputStream1);
        int[] arrayOfInt = new int[arrayOfByte.length];
        i = 0;
        if (i >= arrayOfByte.length)
        {
          localFileInputStream1.close();
          return arrayOfInt;
        }
        if (arrayOfByte[i] < 0)
          arrayOfInt[i] = (256 + arrayOfByte[i]);
        else
          arrayOfInt[i] = arrayOfByte[i];
      }
      catch (IOException localIOException1)
      {
        localFileInputStream2 = localFileInputStream1;
        closeInputStream(localFileInputStream2);
        throw new IOException();
      }
    }
    catch (IOException localIOException2)
    {
      while (true)
      {
        int i;
        FileInputStream localFileInputStream2 = null;
        continue;
        i++;
      }
    }
  }

  private int getHttpConnectTimeout()
  {
    if (this.connectTimeout > 0)
      return this.connectTimeout;
    if (globalConnectTimeout > 0)
      return globalConnectTimeout;
    return 10000;
  }

  private int getHttpReadTimeout()
  {
    if (this.readTimeout > 0)
      return this.readTimeout;
    if (globalReadTimeout > 0)
      return globalReadTimeout;
    return 10000;
  }

  private int getHttpRetryInterval()
  {
    if (this.retryInterval > 0)
      return this.retryInterval;
    if (globalRetryInterval > 0)
      return globalRetryInterval;
    return 5000;
  }

  private int getHttpRetryTimes()
  {
    if (this.retryTimes > 0)
      return this.retryTimes;
    if (globalRetryTimes > 0)
      return globalRetryTimes;
    return 3;
  }

  // ERROR //
  private String getResponseContent(byte[] paramArrayOfByte)
    throws JHException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 191	com/jh/net/JHHttpClient:isGzipResponse	()Z
    //   4: istore_2
    //   5: aconst_null
    //   6: astore_3
    //   7: iload_2
    //   8: ifeq +93 -> 101
    //   11: new 193	java/lang/String
    //   14: dup
    //   15: aload_1
    //   16: invokestatic 199	com/jh/util/GzipUtil:decompress	([B)[B
    //   19: ldc 201
    //   21: invokespecial 204	java/lang/String:<init>	([BLjava/lang/String;)V
    //   24: astore 8
    //   26: new 206	java/lang/StringBuilder
    //   29: dup
    //   30: ldc 208
    //   32: invokespecial 209	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   35: aload 8
    //   37: invokevirtual 213	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: invokevirtual 217	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   43: invokestatic 222	com/jh/util/LogUtil:println	(Ljava/lang/String;)V
    //   46: aload 8
    //   48: areturn
    //   49: astore 9
    //   51: aload 9
    //   53: invokevirtual 223	java/io/UnsupportedEncodingException:printStackTrace	()V
    //   56: aload_3
    //   57: astore 4
    //   59: new 193	java/lang/String
    //   62: dup
    //   63: aload_1
    //   64: ldc 201
    //   66: invokespecial 204	java/lang/String:<init>	([BLjava/lang/String;)V
    //   69: astore 5
    //   71: new 206	java/lang/StringBuilder
    //   74: dup
    //   75: ldc 225
    //   77: invokespecial 209	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   80: aload 5
    //   82: invokevirtual 213	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: invokevirtual 217	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   88: invokestatic 222	com/jh/util/LogUtil:println	(Ljava/lang/String;)V
    //   91: aload 5
    //   93: areturn
    //   94: astore 10
    //   96: aload 10
    //   98: invokevirtual 226	java/lang/Exception:printStackTrace	()V
    //   101: aload_3
    //   102: astore 4
    //   104: goto -45 -> 59
    //   107: astore 6
    //   109: aload 4
    //   111: pop
    //   112: aload 6
    //   114: invokevirtual 223	java/io/UnsupportedEncodingException:printStackTrace	()V
    //   117: new 228	com/jh/net/JHUnsupportedEncodingException
    //   120: dup
    //   121: invokespecial 229	com/jh/net/JHUnsupportedEncodingException:<init>	()V
    //   124: athrow
    //   125: astore 6
    //   127: goto -15 -> 112
    //   130: astore 10
    //   132: aload 8
    //   134: astore_3
    //   135: goto -39 -> 96
    //   138: astore 9
    //   140: aload 8
    //   142: astore_3
    //   143: goto -92 -> 51
    //
    // Exception table:
    //   from	to	target	type
    //   11	26	49	java/io/UnsupportedEncodingException
    //   11	26	94	java/lang/Exception
    //   59	71	107	java/io/UnsupportedEncodingException
    //   71	91	125	java/io/UnsupportedEncodingException
    //   26	46	130	java/lang/Exception
    //   26	46	138	java/io/UnsupportedEncodingException
  }

  private boolean isGzipResponse()
  {
    Header[] arrayOfHeader = getResponseHeader("Content-Encoding");
    int i;
    if ((arrayOfHeader != null) && (arrayOfHeader.length > 0))
      i = arrayOfHeader.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return false;
      Header localHeader = arrayOfHeader[j];
      if ((localHeader != null) && (!TextUtils.isEmpty(localHeader.toString())) && (localHeader.toString().toLowerCase().contains("gzip")))
        return true;
    }
  }

  @SuppressLint({"NewApi"})
  public static byte[] readStream(InputStream paramInputStream)
    throws IOException
  {
    try
    {
      localBufferedInputStream1 = new BufferedInputStream(paramInputStream);
    }
    catch (IOException localIOException2)
    {
      try
      {
        ByteArrayOutputStream localByteArrayOutputStream1 = new ByteArrayOutputStream();
        try
        {
          byte[] arrayOfByte1 = new byte[1024];
          while (true)
          {
            int i = localBufferedInputStream1.read(arrayOfByte1);
            if (i == -1)
            {
              localByteArrayOutputStream1.flush();
              byte[] arrayOfByte2 = localByteArrayOutputStream1.toByteArray();
              localByteArrayOutputStream1.close();
              return arrayOfByte2;
            }
            localByteArrayOutputStream1.write(arrayOfByte1, 0, i);
          }
        }
        catch (IOException localIOException1)
        {
          localByteArrayOutputStream2 = localByteArrayOutputStream1;
          localBufferedInputStream2 = localBufferedInputStream1;
        }
        while (true)
        {
          localIOException1.printStackTrace();
          closeInputStream(localBufferedInputStream2);
          closeOutputStream(localByteArrayOutputStream2);
          throw new IOException(localIOException1);
          localIOException2 = localIOException2;
          localBufferedInputStream2 = null;
          localByteArrayOutputStream2 = null;
        }
      }
      catch (IOException localIOException3)
      {
        while (true)
        {
          BufferedInputStream localBufferedInputStream1;
          BufferedInputStream localBufferedInputStream2 = localBufferedInputStream1;
          ByteArrayOutputStream localByteArrayOutputStream2 = null;
        }
      }
    }
  }

  // ERROR //
  private byte[] requestByteOnce(String paramString1, String paramString2)
    throws JHNetIOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: getstatic 87	com/jh/net/JHHttpClient:context	Landroid/content/Context;
    //   5: astore 8
    //   7: aconst_null
    //   8: astore_3
    //   9: aload 8
    //   11: ifnull +12 -> 23
    //   14: getstatic 87	com/jh/net/JHHttpClient:context	Landroid/content/Context;
    //   17: invokestatic 93	com/jh/net/NetStatus:hasNet	(Landroid/content/Context;)Z
    //   20: ifeq +114 -> 134
    //   23: new 95	org/apache/http/impl/client/DefaultHttpClient
    //   26: dup
    //   27: aload_0
    //   28: invokevirtual 99	com/jh/net/JHHttpClient:getParams	()Lorg/apache/http/params/BasicHttpParams;
    //   31: invokespecial 102	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/params/HttpParams;)V
    //   34: astore 9
    //   36: new 287	org/apache/http/client/methods/HttpPost
    //   39: dup
    //   40: aload_1
    //   41: invokespecial 288	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   44: astore 10
    //   46: aload 10
    //   48: new 290	org/apache/http/entity/StringEntity
    //   51: dup
    //   52: aload_2
    //   53: ldc 201
    //   55: invokespecial 293	org/apache/http/entity/StringEntity:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   58: invokevirtual 297	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   61: aload_0
    //   62: aload 10
    //   64: invokespecial 111	com/jh/net/JHHttpClient:setHttpHeaders	(Lorg/apache/http/client/methods/HttpRequestBase;)V
    //   67: aload_0
    //   68: aload 9
    //   70: aload 10
    //   72: invokevirtual 115	org/apache/http/impl/client/DefaultHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   75: putfield 117	com/jh/net/JHHttpClient:response	Lorg/apache/http/HttpResponse;
    //   78: aload_0
    //   79: aload_1
    //   80: aload_0
    //   81: getfield 117	com/jh/net/JHHttpClient:response	Lorg/apache/http/HttpResponse;
    //   84: invokespecial 121	com/jh/net/JHHttpClient:validateStatus	(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V
    //   87: aload_0
    //   88: getfield 117	com/jh/net/JHHttpClient:response	Lorg/apache/http/HttpResponse;
    //   91: invokeinterface 130 1 0
    //   96: invokeinterface 144 1 0
    //   101: astore_3
    //   102: aload_3
    //   103: invokestatic 172	com/jh/net/JHHttpClient:readStream	(Ljava/io/InputStream;)[B
    //   106: astore 11
    //   108: new 299	com/jh/net/SwitchIP
    //   111: dup
    //   112: getstatic 87	com/jh/net/JHHttpClient:context	Landroid/content/Context;
    //   115: invokespecial 302	com/jh/net/SwitchIP:<init>	(Landroid/content/Context;)V
    //   118: aload_1
    //   119: aload_0
    //   120: getfield 117	com/jh/net/JHHttpClient:response	Lorg/apache/http/HttpResponse;
    //   123: aconst_null
    //   124: invokevirtual 306	com/jh/net/SwitchIP:addRequestRecord	(Ljava/lang/String;Lorg/apache/http/HttpResponse;Ljava/io/IOException;)V
    //   127: aload_3
    //   128: invokestatic 175	com/jh/net/JHHttpClient:closeInputStream	(Ljava/io/InputStream;)V
    //   131: aload 11
    //   133: areturn
    //   134: new 149	com/jh/net/NoNetWorkException
    //   137: dup
    //   138: invokespecial 150	com/jh/net/NoNetWorkException:<init>	()V
    //   141: athrow
    //   142: astore 7
    //   144: aload 7
    //   146: invokevirtual 151	java/net/MalformedURLException:printStackTrace	()V
    //   149: new 153	com/jh/net/JHMalformedURLException
    //   152: dup
    //   153: aload 7
    //   155: invokespecial 156	com/jh/net/JHMalformedURLException:<init>	(Ljava/lang/Exception;)V
    //   158: athrow
    //   159: astore 5
    //   161: aload_3
    //   162: invokestatic 175	com/jh/net/JHHttpClient:closeInputStream	(Ljava/io/InputStream;)V
    //   165: aload 5
    //   167: athrow
    //   168: astore 6
    //   170: new 299	com/jh/net/SwitchIP
    //   173: dup
    //   174: getstatic 87	com/jh/net/JHHttpClient:context	Landroid/content/Context;
    //   177: invokespecial 302	com/jh/net/SwitchIP:<init>	(Landroid/content/Context;)V
    //   180: aload_1
    //   181: aload_0
    //   182: getfield 117	com/jh/net/JHHttpClient:response	Lorg/apache/http/HttpResponse;
    //   185: aload 6
    //   187: invokevirtual 306	com/jh/net/SwitchIP:addRequestRecord	(Ljava/lang/String;Lorg/apache/http/HttpResponse;Ljava/io/IOException;)V
    //   190: aload 6
    //   192: invokevirtual 72	java/io/IOException:printStackTrace	()V
    //   195: new 162	com/jh/net/JHNetIOException
    //   198: dup
    //   199: aload 6
    //   201: invokespecial 163	com/jh/net/JHNetIOException:<init>	(Ljava/lang/Exception;)V
    //   204: athrow
    //   205: astore 4
    //   207: new 162	com/jh/net/JHNetIOException
    //   210: dup
    //   211: invokespecial 307	com/jh/net/JHNetIOException:<init>	()V
    //   214: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   2	7	142	java/net/MalformedURLException
    //   14	23	142	java/net/MalformedURLException
    //   23	127	142	java/net/MalformedURLException
    //   134	142	142	java/net/MalformedURLException
    //   2	7	159	finally
    //   14	23	159	finally
    //   23	127	159	finally
    //   134	142	159	finally
    //   144	159	159	finally
    //   170	205	159	finally
    //   207	215	159	finally
    //   2	7	168	java/io/IOException
    //   14	23	168	java/io/IOException
    //   23	127	168	java/io/IOException
    //   134	142	168	java/io/IOException
    //   2	7	205	java/lang/AssertionError
    //   14	23	205	java/lang/AssertionError
    //   23	127	205	java/lang/AssertionError
    //   134	142	205	java/lang/AssertionError
  }

  public static void setContext(Context paramContext)
  {
    context = paramContext.getApplicationContext();
  }

  public static void setGlobalConnectTimeout(int paramInt)
  {
    globalConnectTimeout = paramInt;
  }

  public static void setGlobalReadTimeout(int paramInt)
  {
    globalReadTimeout = paramInt;
  }

  public static void setGlobalRetryTimes(int paramInt)
  {
    globalRetryTimes = paramInt;
  }

  private void setHttpHeaders(HttpRequestBase paramHttpRequestBase)
  {
    Iterator localIterator;
    if (this.headers != null)
      localIterator = this.headers.entrySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        if (this.dataFormat == DATAFORMAT.JSON)
          paramHttpRequestBase.addHeader("content-type", "application/json; charset=utf-8");
        return;
      }
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramHttpRequestBase.setHeader((String)localEntry.getKey(), (String)localEntry.getValue());
    }
  }

  public static void setSessionHandler(SessionInvalideHandler paramSessionInvalideHandler)
  {
    defaultHandler = paramSessionInvalideHandler;
  }

  private void transferData(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    byte[] arrayOfByte = new byte[1024];
    BufferedInputStream localBufferedInputStream = new BufferedInputStream(paramInputStream);
    BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(paramOutputStream);
    while (true)
    {
      int i = localBufferedInputStream.read(arrayOfByte);
      if (i == -1)
      {
        localBufferedOutputStream.flush();
        localBufferedOutputStream.close();
        localBufferedInputStream.close();
        return;
      }
      localBufferedOutputStream.write(arrayOfByte, 0, i);
    }
  }

  private String uploadDataOnce(InputStream paramInputStream, String paramString)
    throws JHException
  {
    try
    {
      if ((context == null) || (NetStatus.hasNet(context)))
      {
        BasicHttpParams localBasicHttpParams = getParams();
        localBasicHttpParams.setParameter("Charsert", "UTF-8");
        localBasicHttpParams.setParameter("Content-Type", "multipart/form-data; boundary=" + System.currentTimeMillis());
        localBasicHttpParams.setParameter("KeepAlive", "true");
        localBasicHttpParams.setParameter("Accept-Language", "zh-cn");
        DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient(localBasicHttpParams);
        HttpPost localHttpPost = new HttpPost(paramString);
        setHttpHeaders(localHttpPost);
        localHttpPost.setEntity(new InputStreamEntity(paramInputStream, paramInputStream.available()));
        HttpResponse localHttpResponse = localDefaultHttpClient.execute(localHttpPost);
        validateStatus(paramString, localHttpResponse);
        return new String(readStream(localHttpResponse.getEntity().getContent()), "utf-8");
      }
      throw new NoNetWorkException();
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      throw new JHNetIOException(localIOException);
    }
    catch (RuntimeException localRuntimeException)
    {
      throw new JHException(localRuntimeException);
    }
  }

  private void validateStatus(String paramString, HttpResponse paramHttpResponse)
    throws SessionInvalidException, JHNetIOException
  {
    LogUtil.println(paramHttpResponse.getStatusLine().toString());
    if ((paramHttpResponse.getStatusLine().getStatusCode() == 401) && (defaultHandler != null))
      defaultHandler.process();
    if (paramHttpResponse.getStatusLine().getStatusCode() >= 500)
      new SwitchIP(context).addRequestRecord(paramString, paramHttpResponse, null);
    if (paramHttpResponse.getStatusLine().getStatusCode() != 200)
      throw new ResponseErrorException(paramHttpResponse.getStatusLine().getStatusCode(), paramHttpResponse.getStatusLine().getReasonPhrase());
  }

  private void validateStatus(HttpResponse paramHttpResponse)
    throws SessionInvalidException, JHNetIOException
  {
    LogUtil.println(paramHttpResponse.getStatusLine().toString());
    if (paramHttpResponse.getStatusLine().getStatusCode() == 401)
    {
      paramHttpResponse.getStatusLine().getStatusCode();
      if (defaultHandler != null)
        defaultHandler.process();
    }
    if (paramHttpResponse.getStatusLine().getStatusCode() != 200)
      throw new ResponseErrorException(paramHttpResponse.getStatusLine().getStatusCode(), paramHttpResponse.getStatusLine().getReasonPhrase());
  }

  public void addHeader(String paramString1, String paramString2)
  {
    if (this.headers == null)
      this.headers = new HashMap();
    this.headers.put(paramString1, paramString2);
  }

  // ERROR //
  public boolean downloadFile(String paramString1, String paramString2)
    throws JHFileNotFoundException, JHNetIOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: new 458	java/io/FileOutputStream
    //   8: dup
    //   9: aload_1
    //   10: invokespecial 459	java/io/FileOutputStream:<init>	(Ljava/lang/String;)V
    //   13: astore 5
    //   15: getstatic 87	com/jh/net/JHHttpClient:context	Landroid/content/Context;
    //   18: astore 11
    //   20: aconst_null
    //   21: astore 4
    //   23: aload 11
    //   25: ifnull +19 -> 44
    //   28: getstatic 87	com/jh/net/JHHttpClient:context	Landroid/content/Context;
    //   31: invokestatic 93	com/jh/net/NetStatus:hasNet	(Landroid/content/Context;)Z
    //   34: istore 12
    //   36: aconst_null
    //   37: astore 4
    //   39: iload 12
    //   41: ifeq +18 -> 59
    //   44: aload_0
    //   45: aload_2
    //   46: invokevirtual 463	com/jh/net/JHHttpClient:httpGet	(Ljava/lang/String;)Ljava/io/InputStream;
    //   49: astore 4
    //   51: aload_0
    //   52: aload 4
    //   54: aload 5
    //   56: invokespecial 465	com/jh/net/JHHttpClient:transferData	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   59: aload 4
    //   61: invokestatic 175	com/jh/net/JHHttpClient:closeInputStream	(Ljava/io/InputStream;)V
    //   64: aload 5
    //   66: invokestatic 278	com/jh/net/JHHttpClient:closeOutputStream	(Ljava/io/OutputStream;)V
    //   69: iconst_1
    //   70: ireturn
    //   71: astore 6
    //   73: aload 6
    //   75: invokevirtual 466	java/io/FileNotFoundException:printStackTrace	()V
    //   78: new 452	com/jh/net/JHFileNotFoundException
    //   81: dup
    //   82: invokespecial 467	com/jh/net/JHFileNotFoundException:<init>	()V
    //   85: athrow
    //   86: astore 7
    //   88: aload 4
    //   90: invokestatic 175	com/jh/net/JHHttpClient:closeInputStream	(Ljava/io/InputStream;)V
    //   93: aload_3
    //   94: invokestatic 278	com/jh/net/JHHttpClient:closeOutputStream	(Ljava/io/OutputStream;)V
    //   97: aload 7
    //   99: athrow
    //   100: astore 8
    //   102: aload 8
    //   104: invokevirtual 468	org/apache/http/client/ClientProtocolException:printStackTrace	()V
    //   107: new 153	com/jh/net/JHMalformedURLException
    //   110: dup
    //   111: aload 8
    //   113: invokespecial 156	com/jh/net/JHMalformedURLException:<init>	(Ljava/lang/Exception;)V
    //   116: athrow
    //   117: aload 9
    //   119: invokevirtual 469	com/jh/exception/JHException:printStackTrace	()V
    //   122: aload 4
    //   124: invokestatic 175	com/jh/net/JHHttpClient:closeInputStream	(Ljava/io/InputStream;)V
    //   127: aload_3
    //   128: invokestatic 278	com/jh/net/JHHttpClient:closeOutputStream	(Ljava/io/OutputStream;)V
    //   131: iconst_0
    //   132: ireturn
    //   133: astore 10
    //   135: aload 10
    //   137: invokevirtual 72	java/io/IOException:printStackTrace	()V
    //   140: new 162	com/jh/net/JHNetIOException
    //   143: dup
    //   144: aload 10
    //   146: invokespecial 163	com/jh/net/JHNetIOException:<init>	(Ljava/lang/Exception;)V
    //   149: athrow
    //   150: astore 7
    //   152: aload 5
    //   154: astore_3
    //   155: goto -67 -> 88
    //   158: astore 10
    //   160: aload 5
    //   162: astore_3
    //   163: goto -28 -> 135
    //   166: astore 9
    //   168: aload 5
    //   170: astore_3
    //   171: goto -54 -> 117
    //   174: astore 8
    //   176: aload 5
    //   178: astore_3
    //   179: goto -77 -> 102
    //   182: astore 6
    //   184: aload 5
    //   186: astore_3
    //   187: goto -114 -> 73
    //   190: astore 9
    //   192: aconst_null
    //   193: astore 4
    //   195: aconst_null
    //   196: astore_3
    //   197: goto -80 -> 117
    //
    // Exception table:
    //   from	to	target	type
    //   5	15	71	java/io/FileNotFoundException
    //   5	15	86	finally
    //   73	86	86	finally
    //   102	117	86	finally
    //   117	122	86	finally
    //   135	150	86	finally
    //   5	15	100	org/apache/http/client/ClientProtocolException
    //   5	15	133	java/io/IOException
    //   15	20	150	finally
    //   28	36	150	finally
    //   44	59	150	finally
    //   15	20	158	java/io/IOException
    //   28	36	158	java/io/IOException
    //   44	59	158	java/io/IOException
    //   15	20	166	com/jh/exception/JHException
    //   28	36	166	com/jh/exception/JHException
    //   44	59	166	com/jh/exception/JHException
    //   15	20	174	org/apache/http/client/ClientProtocolException
    //   28	36	174	org/apache/http/client/ClientProtocolException
    //   44	59	174	org/apache/http/client/ClientProtocolException
    //   15	20	182	java/io/FileNotFoundException
    //   28	36	182	java/io/FileNotFoundException
    //   44	59	182	java/io/FileNotFoundException
    //   5	15	190	com/jh/exception/JHException
  }

  public int getConnectTimeout()
  {
    return this.connectTimeout;
  }

  public HttpContent getContent(String paramString)
    throws JHException
  {
    int i = getHttpRetryTimes();
    while (true)
    {
      if (i <= 0)
        return null;
      try
      {
        HttpContent localHttpContent = getContentOnce(paramString);
        return localHttpContent;
      }
      catch (JHException localJHException)
      {
        if (i == 1)
          throw localJHException;
        i--;
        try
        {
          Thread.sleep(getHttpRetryInterval());
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
  }

  public long getContentLength(String paramString)
  {
    try
    {
      long l = getContent(paramString).contentLength;
      return l;
    }
    catch (JHException localJHException)
    {
      localJHException.printStackTrace();
    }
    return -1L;
  }

  public String getData(String paramString)
    throws JHException
  {
    return getData(paramString, false);
  }

  public String getData(String paramString, boolean paramBoolean)
    throws JHException
  {
    return getResponseContent(getDataFromURL(paramString));
  }

  public DATAFORMAT getDataFormat()
  {
    return this.dataFormat;
  }

  public byte[] getDataFromURL(String paramString)
    throws JHException
  {
    return getDataFromURL(paramString, false);
  }

  public byte[] getDataFromURL(String paramString, boolean paramBoolean)
    throws JHException
  {
    InputStream localInputStream = httpGet(paramString);
    try
    {
      byte[] arrayOfByte = readStream(localInputStream);
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      closeInputStream(localInputStream);
      throw new JHException(localIOException);
    }
  }

  public ErrorHandler getErrorHandler()
  {
    return this.errorHandler;
  }

  public BasicHttpParams getParams()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, getHttpConnectTimeout());
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, getHttpReadTimeout());
    localBasicHttpParams.setIntParameter("http.connection.timeout", getHttpConnectTimeout());
    localBasicHttpParams.setIntParameter("http.socket.timeout", getHttpReadTimeout());
    return localBasicHttpParams;
  }

  @Deprecated
  public int getReadTimeout()
  {
    return this.readTimeout;
  }

  public HttpResponse getResponse()
  {
    return this.response;
  }

  public Header[] getResponseHeader(String paramString)
  {
    if (this.response != null)
      return this.response.getHeaders(paramString);
    return null;
  }

  public int getRetryTimes()
  {
    return this.retryTimes;
  }

  public InputStream httpGet(String paramString)
    throws JHException
  {
    return httpGet(paramString, false);
  }

  public InputStream httpGet(String paramString, boolean paramBoolean)
    throws JHException
  {
    if (paramBoolean)
      addHeader("Accept-Encoding", "gzip, deflate");
    return getContent(paramString).getStream();
  }

  public String request(String paramString1, String paramString2)
    throws JHNetIOException, JHUnsupportedEncodingException
  {
    LogUtil.println("req:" + paramString2);
    LogUtil.println("url:" + paramString1);
    byte[] arrayOfByte = requestByte(paramString1, paramString2);
    try
    {
      String str = new String(arrayOfByte, "utf-8");
      LogUtil.println("res:" + str);
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new JHUnsupportedEncodingException();
  }

  public byte[] requestByte(String paramString1, String paramString2)
    throws JHNetIOException
  {
    int i = getHttpRetryTimes();
    while (true)
    {
      if (i <= 0)
        return null;
      try
      {
        byte[] arrayOfByte = requestByteOnce(paramString1, paramString2);
        return arrayOfByte;
      }
      catch (ResponseErrorException localResponseErrorException)
      {
        if (i == 1)
        {
          if (this.errorHandler != null)
            this.errorHandler.error(localResponseErrorException.getErrorCode(), localResponseErrorException.getErrorString());
          throw localResponseErrorException;
        }
      }
      catch (JHException localJHException)
      {
        if (i == 1)
          throw localJHException;
        i--;
        try
        {
          Thread.sleep(getHttpRetryInterval());
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
  }

  public byte[] requestByte(String paramString1, String paramString2, boolean paramBoolean)
    throws JHException
  {
    if ((context == null) || (NetStatus.hasNet(context)))
      return requestByte(paramString1, paramString2);
    throw new NoNetWorkException();
  }

  public String requestGzip(String paramString1, String paramString2)
    throws JHNetIOException, JHUnsupportedEncodingException
  {
    LogUtil.println("req:" + paramString2);
    LogUtil.println("url:" + paramString1);
    addHeader("Accept-Encoding", "gzip, deflate");
    return getResponseContent(requestByte(paramString1, paramString2));
  }

  // ERROR //
  public String requestKeepAlive(String paramString1, String paramString2)
    throws JHIOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: getstatic 87	com/jh/net/JHHttpClient:context	Landroid/content/Context;
    //   5: astore 8
    //   7: aconst_null
    //   8: astore_3
    //   9: aload 8
    //   11: ifnull +12 -> 23
    //   14: getstatic 87	com/jh/net/JHHttpClient:context	Landroid/content/Context;
    //   17: invokestatic 93	com/jh/net/NetStatus:hasNet	(Landroid/content/Context;)Z
    //   20: ifeq +135 -> 155
    //   23: aload_0
    //   24: ldc_w 583
    //   27: ldc_w 585
    //   30: invokevirtual 551	com/jh/net/JHHttpClient:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   33: aload_0
    //   34: invokevirtual 99	com/jh/net/JHHttpClient:getParams	()Lorg/apache/http/params/BasicHttpParams;
    //   37: astore 9
    //   39: aload_0
    //   40: getfield 587	com/jh/net/JHHttpClient:reqClient	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   43: astore 10
    //   45: aconst_null
    //   46: astore_3
    //   47: aload 10
    //   49: ifnonnull +16 -> 65
    //   52: aload_0
    //   53: new 95	org/apache/http/impl/client/DefaultHttpClient
    //   56: dup
    //   57: aload 9
    //   59: invokespecial 102	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/params/HttpParams;)V
    //   62: putfield 587	com/jh/net/JHHttpClient:reqClient	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   65: new 287	org/apache/http/client/methods/HttpPost
    //   68: dup
    //   69: aload_1
    //   70: invokespecial 288	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   73: astore 11
    //   75: aload 11
    //   77: new 290	org/apache/http/entity/StringEntity
    //   80: dup
    //   81: aload_2
    //   82: ldc 201
    //   84: invokespecial 293	org/apache/http/entity/StringEntity:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   87: invokevirtual 297	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   90: aload_0
    //   91: aload 11
    //   93: invokespecial 111	com/jh/net/JHHttpClient:setHttpHeaders	(Lorg/apache/http/client/methods/HttpRequestBase;)V
    //   96: aload_0
    //   97: aload_0
    //   98: getfield 587	com/jh/net/JHHttpClient:reqClient	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   101: aload 11
    //   103: invokevirtual 115	org/apache/http/impl/client/DefaultHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   106: putfield 117	com/jh/net/JHHttpClient:response	Lorg/apache/http/HttpResponse;
    //   109: aload_0
    //   110: aload_1
    //   111: aload_0
    //   112: getfield 117	com/jh/net/JHHttpClient:response	Lorg/apache/http/HttpResponse;
    //   115: invokespecial 121	com/jh/net/JHHttpClient:validateStatus	(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V
    //   118: aload_0
    //   119: getfield 117	com/jh/net/JHHttpClient:response	Lorg/apache/http/HttpResponse;
    //   122: invokeinterface 130 1 0
    //   127: invokeinterface 144 1 0
    //   132: astore_3
    //   133: new 193	java/lang/String
    //   136: dup
    //   137: aload_3
    //   138: invokestatic 172	com/jh/net/JHHttpClient:readStream	(Ljava/io/InputStream;)[B
    //   141: ldc 201
    //   143: invokespecial 204	java/lang/String:<init>	([BLjava/lang/String;)V
    //   146: astore 12
    //   148: aload_3
    //   149: invokestatic 175	com/jh/net/JHHttpClient:closeInputStream	(Ljava/io/InputStream;)V
    //   152: aload 12
    //   154: areturn
    //   155: new 149	com/jh/net/NoNetWorkException
    //   158: dup
    //   159: invokespecial 150	com/jh/net/NoNetWorkException:<init>	()V
    //   162: athrow
    //   163: astore 7
    //   165: aload 7
    //   167: invokevirtual 151	java/net/MalformedURLException:printStackTrace	()V
    //   170: aload_0
    //   171: aconst_null
    //   172: putfield 587	com/jh/net/JHHttpClient:reqClient	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   175: new 153	com/jh/net/JHMalformedURLException
    //   178: dup
    //   179: aload 7
    //   181: invokespecial 156	com/jh/net/JHMalformedURLException:<init>	(Ljava/lang/Exception;)V
    //   184: athrow
    //   185: astore 5
    //   187: aload_3
    //   188: invokestatic 175	com/jh/net/JHHttpClient:closeInputStream	(Ljava/io/InputStream;)V
    //   191: aload 5
    //   193: athrow
    //   194: astore 6
    //   196: aload 6
    //   198: invokevirtual 72	java/io/IOException:printStackTrace	()V
    //   201: aload_0
    //   202: aconst_null
    //   203: putfield 587	com/jh/net/JHHttpClient:reqClient	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   206: new 162	com/jh/net/JHNetIOException
    //   209: dup
    //   210: aload 6
    //   212: invokespecial 163	com/jh/net/JHNetIOException:<init>	(Ljava/lang/Exception;)V
    //   215: athrow
    //   216: astore 4
    //   218: aload_0
    //   219: aconst_null
    //   220: putfield 587	com/jh/net/JHHttpClient:reqClient	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   223: new 162	com/jh/net/JHNetIOException
    //   226: dup
    //   227: invokespecial 307	com/jh/net/JHNetIOException:<init>	()V
    //   230: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   2	7	163	java/net/MalformedURLException
    //   14	23	163	java/net/MalformedURLException
    //   23	45	163	java/net/MalformedURLException
    //   52	65	163	java/net/MalformedURLException
    //   65	148	163	java/net/MalformedURLException
    //   155	163	163	java/net/MalformedURLException
    //   2	7	185	finally
    //   14	23	185	finally
    //   23	45	185	finally
    //   52	65	185	finally
    //   65	148	185	finally
    //   155	163	185	finally
    //   165	185	185	finally
    //   196	216	185	finally
    //   218	231	185	finally
    //   2	7	194	java/io/IOException
    //   14	23	194	java/io/IOException
    //   23	45	194	java/io/IOException
    //   52	65	194	java/io/IOException
    //   65	148	194	java/io/IOException
    //   155	163	194	java/io/IOException
    //   2	7	216	java/lang/AssertionError
    //   14	23	216	java/lang/AssertionError
    //   23	45	216	java/lang/AssertionError
    //   52	65	216	java/lang/AssertionError
    //   65	148	216	java/lang/AssertionError
    //   155	163	216	java/lang/AssertionError
  }

  public void setConnectTimeout(int paramInt)
  {
    this.connectTimeout = paramInt;
  }

  public void setDataFormat(DATAFORMAT paramDATAFORMAT)
  {
    this.dataFormat = paramDATAFORMAT;
  }

  public void setErrorHandler(ErrorHandler paramErrorHandler)
  {
    this.errorHandler = paramErrorHandler;
  }

  public void setHeaders(HashMap<String, String> paramHashMap)
  {
    this.headers = paramHashMap;
  }

  public void setReadTimeout(int paramInt)
  {
    this.readTimeout = paramInt;
  }

  public void setRetryTimes(int paramInt)
  {
    this.retryTimes = paramInt;
  }

  public String upLoadData(InputStream paramInputStream, String paramString)
    throws JHException
  {
    int i = getHttpRetryTimes();
    while (true)
    {
      if (i <= 0)
        return null;
      try
      {
        String str = uploadDataOnce(paramInputStream, paramString);
        return str;
      }
      catch (JHException localJHException)
      {
        if (i == 1)
          throw localJHException;
        i--;
        try
        {
          Thread.sleep(getHttpRetryInterval());
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
  }

  // ERROR //
  public String uploadFile(String paramString1, String paramString2)
    throws JHException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 167	java/io/FileInputStream
    //   5: dup
    //   6: aload_1
    //   7: invokespecial 168	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   10: astore 4
    //   12: aload_0
    //   13: aload 4
    //   15: aload_2
    //   16: invokevirtual 602	com/jh/net/JHHttpClient:upLoadData	(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    //   19: astore 8
    //   21: aload 4
    //   23: invokestatic 175	com/jh/net/JHHttpClient:closeInputStream	(Ljava/io/InputStream;)V
    //   26: aload 8
    //   28: areturn
    //   29: astore 5
    //   31: aload 5
    //   33: invokevirtual 466	java/io/FileNotFoundException:printStackTrace	()V
    //   36: new 452	com/jh/net/JHFileNotFoundException
    //   39: dup
    //   40: invokespecial 467	com/jh/net/JHFileNotFoundException:<init>	()V
    //   43: athrow
    //   44: astore 6
    //   46: aload_3
    //   47: invokestatic 175	com/jh/net/JHHttpClient:closeInputStream	(Ljava/io/InputStream;)V
    //   50: aload 6
    //   52: athrow
    //   53: astore 7
    //   55: aload 7
    //   57: invokevirtual 72	java/io/IOException:printStackTrace	()V
    //   60: new 162	com/jh/net/JHNetIOException
    //   63: dup
    //   64: aload 7
    //   66: invokespecial 163	com/jh/net/JHNetIOException:<init>	(Ljava/lang/Exception;)V
    //   69: athrow
    //   70: astore 6
    //   72: aload 4
    //   74: astore_3
    //   75: goto -29 -> 46
    //   78: astore 7
    //   80: aload 4
    //   82: astore_3
    //   83: goto -28 -> 55
    //   86: astore 5
    //   88: aload 4
    //   90: astore_3
    //   91: goto -60 -> 31
    //
    // Exception table:
    //   from	to	target	type
    //   2	12	29	java/io/FileNotFoundException
    //   2	12	44	finally
    //   31	44	44	finally
    //   55	70	44	finally
    //   2	12	53	java/io/IOException
    //   12	21	70	finally
    //   12	21	78	java/io/IOException
    //   12	21	86	java/io/FileNotFoundException
  }

  public static enum DATAFORMAT
  {
    static
    {
      DATAFORMAT[] arrayOfDATAFORMAT = new DATAFORMAT[2];
      arrayOfDATAFORMAT[0] = JSON;
      arrayOfDATAFORMAT[1] = XML;
    }
  }

  public static abstract interface ErrorHandler
  {
    public abstract void error(int paramInt, String paramString);
  }

  public static class HttpContent
  {
    private long contentLength;
    private InputStream stream;

    public long getContentLength()
    {
      return this.contentLength;
    }

    public InputStream getStream()
    {
      return this.stream;
    }

    public void setContentLength(long paramLong)
    {
      this.contentLength = paramLong;
    }

    public void setStream(InputStream paramInputStream)
    {
      this.stream = paramInputStream;
    }
  }

  public static class ResponseErrorException extends JHException
  {
    private int errorCode;
    private String errorString;

    public ResponseErrorException(int paramInt, String paramString)
    {
      this.errorCode = paramInt;
      this.errorString = paramString;
    }

    public int getErrorCode()
    {
      return this.errorCode;
    }

    public String getErrorString()
    {
      return this.errorString;
    }

    public void setErrorCode(int paramInt)
    {
      this.errorCode = paramInt;
    }

    public void setErrorString(String paramString)
    {
      this.errorString = paramString;
    }
  }

  public static abstract interface SessionInvalideHandler
  {
    public abstract void process();
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.net.JHHttpClient
 * JD-Core Version:    0.6.2
 */