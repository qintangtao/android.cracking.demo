package com.jh.net;

import android.content.Context;
import com.jh.exception.JHException;
import com.jh.util.LogUtil;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

public class IHttpRetryService extends IRetryService
{
  protected static Context context;
  private int connectTimeout = 10000;
  private DATAFORMAT dataFormat = DATAFORMAT.JSON;
  private HashMap<String, String> headers;
  private int readTimeout = 10000;
  protected JHChaset reqCharset = JHChaset.UTF8;
  protected JHChaset responseCharset = JHChaset.UTF8;

  protected static void closeInputStream(InputStream paramInputStream)
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

  protected static void closeOutputStream(OutputStream paramOutputStream)
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

  public static Context getContext()
  {
    return context;
  }

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

  public static void setContext(Context paramContext)
  {
    context = paramContext;
  }

  private void setResponseCharset(JHChaset paramJHChaset)
  {
    this.responseCharset = paramJHChaset;
  }

  public void addHeader(String paramString1, String paramString2)
  {
    if (this.headers == null)
      this.headers = new HashMap();
    this.headers.put(paramString1, paramString2);
  }

  protected void closeHttpConnection(HttpClient paramHttpClient)
  {
    if ((paramHttpClient != null) && (paramHttpClient.getConnectionManager() != null))
      paramHttpClient.getConnectionManager().shutdown();
  }

  public JHChaset getCharset()
  {
    return this.reqCharset;
  }

  public int getConnectTimeout()
  {
    return this.connectTimeout;
  }

  public DATAFORMAT getDataFormat()
  {
    return this.dataFormat;
  }

  protected HashMap<String, String> getHeaders()
  {
    return this.headers;
  }

  protected BasicHttpParams getParams()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, this.connectTimeout);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, this.readTimeout);
    return localBasicHttpParams;
  }

  public int getReadTimeout()
  {
    return this.readTimeout;
  }

  protected JHChaset getResponseCharset()
  {
    return this.responseCharset;
  }

  protected boolean hasNet()
    throws JHException
  {
    if ((context == null) || (NetStatus.hasNet(context)))
      return true;
    throw new NoNetWorkException();
  }

  public void setCharset(JHChaset paramJHChaset)
  {
    this.reqCharset = paramJHChaset;
  }

  public void setConnectTimeout(int paramInt)
  {
    this.connectTimeout = paramInt;
  }

  public void setDataFormat(DATAFORMAT paramDATAFORMAT)
  {
    this.dataFormat = paramDATAFORMAT;
  }

  public void setHeaders(HashMap<String, String> paramHashMap)
  {
    this.headers = paramHashMap;
  }

  public void setReadTimeout(int paramInt)
  {
    this.readTimeout = paramInt;
  }

  protected void setRequestHeaders(HttpRequestBase paramHttpRequestBase)
  {
    Iterator localIterator;
    if (this.headers != null)
      localIterator = this.headers.entrySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        if (this.dataFormat == DATAFORMAT.JSON)
          paramHttpRequestBase.addHeader("content-type", "application/json; charset=" + this.reqCharset);
        return;
      }
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramHttpRequestBase.setHeader((String)localEntry.getKey(), (String)localEntry.getValue());
    }
  }

  protected void setResponseCharset(HttpResponse paramHttpResponse)
  {
    setResponseCharset(JHChaset.parse(paramHttpResponse.getEntity().getContentEncoding().getValue()));
  }

  protected void transferData(InputStream paramInputStream, OutputStream paramOutputStream)
    throws JHIOException
  {
    try
    {
      arrayOfByte = new byte[1024];
      localBufferedInputStream2 = new BufferedInputStream(paramInputStream);
    }
    catch (IOException localIOException2)
    {
      try
      {
        byte[] arrayOfByte;
        BufferedOutputStream localBufferedOutputStream2 = new BufferedOutputStream(paramOutputStream);
        try
        {
          while (true)
          {
            int i = localBufferedInputStream2.read(arrayOfByte);
            if (i == -1)
            {
              localBufferedOutputStream2.flush();
              closeInputStream(localBufferedInputStream2);
              closeOutputStream(localBufferedOutputStream2);
              return;
            }
            localBufferedOutputStream2.write(arrayOfByte, 0, i);
          }
        }
        catch (IOException localIOException1)
        {
          localBufferedOutputStream1 = localBufferedOutputStream2;
          localBufferedInputStream1 = localBufferedInputStream2;
        }
        while (true)
        {
          closeInputStream(localBufferedInputStream1);
          closeOutputStream(localBufferedOutputStream1);
          throw new JHIOException(localIOException1);
          localIOException2 = localIOException2;
          localBufferedInputStream1 = null;
          localBufferedOutputStream1 = null;
        }
      }
      catch (IOException localIOException3)
      {
        while (true)
        {
          BufferedInputStream localBufferedInputStream2;
          BufferedInputStream localBufferedInputStream1 = localBufferedInputStream2;
          BufferedOutputStream localBufferedOutputStream1 = null;
        }
      }
    }
  }

  protected void validateStatus(HttpResponse paramHttpResponse)
    throws SessionInvalidException, JHIOException
  {
    LogUtil.println(paramHttpResponse.getStatusLine().toString());
    if (paramHttpResponse.getStatusLine().getStatusCode() == 500)
      throw new JHIOException();
    if (paramHttpResponse.getStatusLine().getStatusCode() == 404)
      throw new JHIOException();
    if (paramHttpResponse.getStatusLine().getStatusCode() == 401)
      throw new SessionInvalidException();
    if (paramHttpResponse.getStatusLine().getStatusCode() != 200)
      throw new JHIOException();
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

  public static enum JHChaset
  {
    private String name;

    static
    {
      GBK = new JHChaset("GBK", 1, "gbk");
      JHChaset[] arrayOfJHChaset = new JHChaset[2];
      arrayOfJHChaset[0] = UTF8;
      arrayOfJHChaset[1] = GBK;
    }

    private JHChaset(String arg3)
    {
      Object localObject;
      this.name = localObject;
    }

    public static JHChaset parse(String paramString)
    {
      if ((paramString == null) || (paramString.trim().length() == 0))
        return UTF8;
      if (paramString.equalsIgnoreCase(GBK.toString()))
        return GBK;
      return UTF8;
    }

    public String toString()
    {
      return this.name;
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.net.IHttpRetryService
 * JD-Core Version:    0.6.2
 */