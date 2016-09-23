package com.jh.net;

import com.jh.exception.JHException;
import java.io.InputStream;

public class JHHttpUpload extends IHttpRetryService
{
  // ERROR //
  private String uploadDataOnce(InputStream paramInputStream, String paramString)
    throws JHException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: aconst_null
    //   6: astore 5
    //   8: aload_0
    //   9: invokevirtual 20	com/jh/net/JHHttpUpload:hasNet	()Z
    //   12: istore 11
    //   14: aconst_null
    //   15: astore_3
    //   16: aconst_null
    //   17: astore 5
    //   19: aconst_null
    //   20: astore 4
    //   22: iload 11
    //   24: ifeq +172 -> 196
    //   27: aload_0
    //   28: invokevirtual 24	com/jh/net/JHHttpUpload:getParams	()Lorg/apache/http/params/BasicHttpParams;
    //   31: astore 12
    //   33: aload 12
    //   35: ldc 26
    //   37: aload_0
    //   38: getfield 30	com/jh/net/JHHttpUpload:reqCharset	Lcom/jh/net/IHttpRetryService$JHChaset;
    //   41: invokevirtual 36	com/jh/net/IHttpRetryService$JHChaset:toString	()Ljava/lang/String;
    //   44: invokevirtual 42	org/apache/http/params/BasicHttpParams:setParameter	(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    //   47: pop
    //   48: aload 12
    //   50: ldc 44
    //   52: new 46	java/lang/StringBuilder
    //   55: dup
    //   56: ldc 48
    //   58: invokespecial 51	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   61: invokestatic 57	java/lang/System:currentTimeMillis	()J
    //   64: invokevirtual 61	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   67: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   70: invokevirtual 42	org/apache/http/params/BasicHttpParams:setParameter	(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    //   73: pop
    //   74: aload 12
    //   76: ldc 64
    //   78: ldc 66
    //   80: invokevirtual 42	org/apache/http/params/BasicHttpParams:setParameter	(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    //   83: pop
    //   84: aload 12
    //   86: ldc 68
    //   88: ldc 70
    //   90: invokevirtual 42	org/apache/http/params/BasicHttpParams:setParameter	(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    //   93: pop
    //   94: new 72	org/apache/http/impl/client/DefaultHttpClient
    //   97: dup
    //   98: aload 12
    //   100: invokespecial 75	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/params/HttpParams;)V
    //   103: astore 17
    //   105: new 77	org/apache/http/client/methods/HttpPost
    //   108: dup
    //   109: aload_2
    //   110: invokespecial 78	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   113: astore 18
    //   115: aload_0
    //   116: aload 18
    //   118: invokevirtual 82	com/jh/net/JHHttpUpload:setRequestHeaders	(Lorg/apache/http/client/methods/HttpRequestBase;)V
    //   121: aload 18
    //   123: new 84	org/apache/http/entity/InputStreamEntity
    //   126: dup
    //   127: aload_1
    //   128: aload_1
    //   129: invokevirtual 90	java/io/InputStream:available	()I
    //   132: i2l
    //   133: invokespecial 93	org/apache/http/entity/InputStreamEntity:<init>	(Ljava/io/InputStream;J)V
    //   136: invokevirtual 97	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   139: aload 17
    //   141: aload 18
    //   143: invokevirtual 101	org/apache/http/impl/client/DefaultHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   146: astore 19
    //   148: aload_0
    //   149: aload 19
    //   151: invokevirtual 105	com/jh/net/JHHttpUpload:validateStatus	(Lorg/apache/http/HttpResponse;)V
    //   154: aload 19
    //   156: invokeinterface 111 1 0
    //   161: invokeinterface 117 1 0
    //   166: astore 4
    //   168: new 119	java/lang/String
    //   171: dup
    //   172: aload 4
    //   174: invokestatic 123	com/jh/net/JHHttpUpload:readStream	(Ljava/io/InputStream;)[B
    //   177: aload_0
    //   178: invokevirtual 127	com/jh/net/JHHttpUpload:getResponseCharset	()Lcom/jh/net/IHttpRetryService$JHChaset;
    //   181: invokevirtual 36	com/jh/net/IHttpRetryService$JHChaset:toString	()Ljava/lang/String;
    //   184: invokespecial 130	java/lang/String:<init>	([BLjava/lang/String;)V
    //   187: astore 20
    //   189: aload 17
    //   191: astore 5
    //   193: aload 20
    //   195: astore_3
    //   196: aload 4
    //   198: invokestatic 134	com/jh/net/JHHttpUpload:closeInputStream	(Ljava/io/InputStream;)V
    //   201: aload_0
    //   202: aload 5
    //   204: invokevirtual 138	com/jh/net/JHHttpUpload:closeHttpConnection	(Lorg/apache/http/client/HttpClient;)V
    //   207: iconst_0
    //   208: ifeq +99 -> 307
    //   211: aconst_null
    //   212: athrow
    //   213: astore 10
    //   215: aload 10
    //   217: invokevirtual 141	java/io/IOException:printStackTrace	()V
    //   220: new 143	com/jh/net/JHIOException
    //   223: dup
    //   224: aload 10
    //   226: invokespecial 146	com/jh/net/JHIOException:<init>	(Ljava/lang/Exception;)V
    //   229: astore 8
    //   231: aload 4
    //   233: invokestatic 134	com/jh/net/JHHttpUpload:closeInputStream	(Ljava/io/InputStream;)V
    //   236: aload_0
    //   237: aload 5
    //   239: invokevirtual 138	com/jh/net/JHHttpUpload:closeHttpConnection	(Lorg/apache/http/client/HttpClient;)V
    //   242: aload 8
    //   244: ifnull +60 -> 304
    //   247: aload 8
    //   249: athrow
    //   250: astore 7
    //   252: new 12	com/jh/exception/JHException
    //   255: dup
    //   256: aload 7
    //   258: invokespecial 147	com/jh/exception/JHException:<init>	(Ljava/lang/Exception;)V
    //   261: astore 8
    //   263: aload 4
    //   265: invokestatic 134	com/jh/net/JHHttpUpload:closeInputStream	(Ljava/io/InputStream;)V
    //   268: aload_0
    //   269: aload 5
    //   271: invokevirtual 138	com/jh/net/JHHttpUpload:closeHttpConnection	(Lorg/apache/http/client/HttpClient;)V
    //   274: aload 8
    //   276: ifnull +28 -> 304
    //   279: aload 8
    //   281: athrow
    //   282: astore 6
    //   284: aload 4
    //   286: invokestatic 134	com/jh/net/JHHttpUpload:closeInputStream	(Ljava/io/InputStream;)V
    //   289: aload_0
    //   290: aload 5
    //   292: invokevirtual 138	com/jh/net/JHHttpUpload:closeHttpConnection	(Lorg/apache/http/client/HttpClient;)V
    //   295: iconst_0
    //   296: ifeq +5 -> 301
    //   299: aconst_null
    //   300: athrow
    //   301: aload 6
    //   303: athrow
    //   304: aload 8
    //   306: pop
    //   307: aload_3
    //   308: areturn
    //   309: astore 6
    //   311: aload 17
    //   313: astore 5
    //   315: goto -31 -> 284
    //   318: astore 7
    //   320: aload 17
    //   322: astore 5
    //   324: goto -72 -> 252
    //   327: astore 10
    //   329: aload 17
    //   331: astore 5
    //   333: goto -118 -> 215
    //
    // Exception table:
    //   from	to	target	type
    //   8	14	213	java/io/IOException
    //   27	105	213	java/io/IOException
    //   8	14	250	java/lang/RuntimeException
    //   27	105	250	java/lang/RuntimeException
    //   8	14	282	finally
    //   27	105	282	finally
    //   215	231	282	finally
    //   252	263	282	finally
    //   105	189	309	finally
    //   105	189	318	java/lang/RuntimeException
    //   105	189	327	java/io/IOException
  }

  public String uploadData(InputStream paramInputStream, String paramString)
    throws JHException
  {
    return (String)doTaskRetry(getMethod("uploadDataOnce", new Object[] { paramInputStream, paramString }), new Object[] { paramInputStream, paramString });
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.net.JHHttpUpload
 * JD-Core Version:    0.6.2
 */