package com.jh.net;

import com.jh.util.GzipUtil;
import com.jh.util.LogUtil;
import java.io.UnsupportedEncodingException;

public class JHHttpPost extends IHttpRetryService
{
  // ERROR //
  private byte[] postBytesOnce(String paramString1, String paramString2)
    throws JHIOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: aconst_null
    //   6: astore 5
    //   8: aload_0
    //   9: invokevirtual 22	com/jh/net/JHHttpPost:hasNet	()Z
    //   12: istore 12
    //   14: aconst_null
    //   15: astore 5
    //   17: aconst_null
    //   18: astore 4
    //   20: aconst_null
    //   21: astore_3
    //   22: iload 12
    //   24: ifeq +100 -> 124
    //   27: new 24	org/apache/http/impl/client/DefaultHttpClient
    //   30: dup
    //   31: aload_0
    //   32: invokevirtual 28	com/jh/net/JHHttpPost:getParams	()Lorg/apache/http/params/BasicHttpParams;
    //   35: invokespecial 31	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/params/HttpParams;)V
    //   38: astore 13
    //   40: new 33	org/apache/http/client/methods/HttpPost
    //   43: dup
    //   44: aload_1
    //   45: invokespecial 36	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   48: astore 14
    //   50: aload 14
    //   52: new 38	org/apache/http/entity/StringEntity
    //   55: dup
    //   56: aload_2
    //   57: aload_0
    //   58: getfield 42	com/jh/net/JHHttpPost:reqCharset	Lcom/jh/net/IHttpRetryService$JHChaset;
    //   61: invokevirtual 48	com/jh/net/IHttpRetryService$JHChaset:toString	()Ljava/lang/String;
    //   64: invokespecial 51	org/apache/http/entity/StringEntity:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   67: invokevirtual 55	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   70: aload_0
    //   71: aload 14
    //   73: invokevirtual 59	com/jh/net/JHHttpPost:setRequestHeaders	(Lorg/apache/http/client/methods/HttpRequestBase;)V
    //   76: aload 13
    //   78: aload 14
    //   80: invokevirtual 63	org/apache/http/impl/client/DefaultHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   83: astore 16
    //   85: aload_0
    //   86: aload 16
    //   88: invokevirtual 67	com/jh/net/JHHttpPost:validateStatus	(Lorg/apache/http/HttpResponse;)V
    //   91: aload_0
    //   92: aload 16
    //   94: invokevirtual 70	com/jh/net/JHHttpPost:setResponseCharset	(Lorg/apache/http/HttpResponse;)V
    //   97: aload 16
    //   99: invokeinterface 76 1 0
    //   104: invokeinterface 82 1 0
    //   109: astore_3
    //   110: aload_3
    //   111: invokestatic 86	com/jh/net/JHHttpPost:readStream	(Ljava/io/InputStream;)[B
    //   114: astore 17
    //   116: aload 17
    //   118: astore 5
    //   120: aload 13
    //   122: astore 4
    //   124: aload_0
    //   125: aload 4
    //   127: invokevirtual 90	com/jh/net/JHHttpPost:closeHttpConnection	(Lorg/apache/http/client/HttpClient;)V
    //   130: aload_3
    //   131: invokestatic 94	com/jh/net/JHHttpPost:closeInputStream	(Ljava/io/InputStream;)V
    //   134: iconst_0
    //   135: ifeq +130 -> 265
    //   138: aconst_null
    //   139: athrow
    //   140: astore 11
    //   142: aload 11
    //   144: invokevirtual 97	java/net/MalformedURLException:printStackTrace	()V
    //   147: new 99	com/jh/net/JHMalformedURLException
    //   150: dup
    //   151: aload 11
    //   153: invokespecial 102	com/jh/net/JHMalformedURLException:<init>	(Ljava/lang/Exception;)V
    //   156: astore 8
    //   158: aload_0
    //   159: aload 4
    //   161: invokevirtual 90	com/jh/net/JHHttpPost:closeHttpConnection	(Lorg/apache/http/client/HttpClient;)V
    //   164: aload_3
    //   165: invokestatic 94	com/jh/net/JHHttpPost:closeInputStream	(Ljava/io/InputStream;)V
    //   168: aload 8
    //   170: ifnull +92 -> 262
    //   173: aload 8
    //   175: athrow
    //   176: astore 10
    //   178: aload 10
    //   180: invokevirtual 103	java/io/IOException:printStackTrace	()V
    //   183: new 12	com/jh/net/JHIOException
    //   186: dup
    //   187: aload 10
    //   189: invokespecial 104	com/jh/net/JHIOException:<init>	(Ljava/lang/Exception;)V
    //   192: astore 8
    //   194: aload_0
    //   195: aload 4
    //   197: invokevirtual 90	com/jh/net/JHHttpPost:closeHttpConnection	(Lorg/apache/http/client/HttpClient;)V
    //   200: aload_3
    //   201: invokestatic 94	com/jh/net/JHHttpPost:closeInputStream	(Ljava/io/InputStream;)V
    //   204: aload 8
    //   206: ifnull +56 -> 262
    //   209: aload 8
    //   211: athrow
    //   212: astore 7
    //   214: new 12	com/jh/net/JHIOException
    //   217: dup
    //   218: invokespecial 105	com/jh/net/JHIOException:<init>	()V
    //   221: astore 8
    //   223: aload_0
    //   224: aload 4
    //   226: invokevirtual 90	com/jh/net/JHHttpPost:closeHttpConnection	(Lorg/apache/http/client/HttpClient;)V
    //   229: aload_3
    //   230: invokestatic 94	com/jh/net/JHHttpPost:closeInputStream	(Ljava/io/InputStream;)V
    //   233: aload 8
    //   235: ifnull +27 -> 262
    //   238: aload 8
    //   240: athrow
    //   241: astore 6
    //   243: aload_0
    //   244: aload 4
    //   246: invokevirtual 90	com/jh/net/JHHttpPost:closeHttpConnection	(Lorg/apache/http/client/HttpClient;)V
    //   249: aload_3
    //   250: invokestatic 94	com/jh/net/JHHttpPost:closeInputStream	(Ljava/io/InputStream;)V
    //   253: iconst_0
    //   254: ifeq +5 -> 259
    //   257: aconst_null
    //   258: athrow
    //   259: aload 6
    //   261: athrow
    //   262: aload 8
    //   264: pop
    //   265: aload 5
    //   267: areturn
    //   268: astore 6
    //   270: aload 13
    //   272: astore 4
    //   274: goto -31 -> 243
    //   277: astore 15
    //   279: aload 13
    //   281: astore 4
    //   283: goto -69 -> 214
    //   286: astore 10
    //   288: aload 13
    //   290: astore 4
    //   292: goto -114 -> 178
    //   295: astore 11
    //   297: aload 13
    //   299: astore 4
    //   301: goto -159 -> 142
    //
    // Exception table:
    //   from	to	target	type
    //   8	14	140	java/net/MalformedURLException
    //   27	40	140	java/net/MalformedURLException
    //   8	14	176	java/io/IOException
    //   27	40	176	java/io/IOException
    //   8	14	212	java/lang/AssertionError
    //   27	40	212	java/lang/AssertionError
    //   8	14	241	finally
    //   27	40	241	finally
    //   142	158	241	finally
    //   178	194	241	finally
    //   214	223	241	finally
    //   40	116	268	finally
    //   40	116	277	java/lang/AssertionError
    //   40	116	286	java/io/IOException
    //   40	116	295	java/net/MalformedURLException
  }

  public String post(String paramString1, String paramString2)
    throws JHNetIOException, JHUnsupportedEncodingException
  {
    LogUtil.println("req:" + paramString2);
    LogUtil.println("url:" + paramString1);
    byte[] arrayOfByte = postBytes(paramString1, paramString2);
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

  public byte[] postBytes(String paramString1, String paramString2)
    throws JHIOException
  {
    return (byte[])doTaskRetry(getMethod("postBytesOnce", new String[] { paramString1, paramString2 }), new String[] { paramString1, paramString2 });
  }

  public String postGzip(String paramString1, String paramString2)
    throws JHNetIOException, JHUnsupportedEncodingException
  {
    LogUtil.println("req:" + paramString2);
    LogUtil.println("url:" + paramString1);
    addHeader("Accept-Encoding", "gzip, deflate");
    byte[] arrayOfByte = postBytes(paramString1, paramString2);
    try
    {
      String str = new String(GzipUtil.decompress(arrayOfByte), this.responseCharset.toString());
      LogUtil.println("res:" + str);
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new JHUnsupportedEncodingException();
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      throw new JHNetIOException(localException);
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.net.JHHttpPost
 * JD-Core Version:    0.6.2
 */