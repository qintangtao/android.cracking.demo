package com.jh.net;

import com.jh.exception.JHException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

public class JHHttpGet extends IHttpRetryService
{
  // ERROR //
  private JHHttpClient.HttpContent getContentOnce(String paramString)
    throws JHException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: aconst_null
    //   5: astore 4
    //   7: aload_0
    //   8: invokevirtual 22	com/jh/net/JHHttpGet:hasNet	()Z
    //   11: istore 11
    //   13: aconst_null
    //   14: astore_3
    //   15: aconst_null
    //   16: astore_2
    //   17: aconst_null
    //   18: astore 4
    //   20: iload 11
    //   22: ifeq +113 -> 135
    //   25: new 24	org/apache/http/impl/client/DefaultHttpClient
    //   28: dup
    //   29: aload_0
    //   30: invokevirtual 28	com/jh/net/JHHttpGet:getParams	()Lorg/apache/http/params/BasicHttpParams;
    //   33: invokespecial 31	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/params/HttpParams;)V
    //   36: astore 12
    //   38: new 33	org/apache/http/client/methods/HttpGet
    //   41: dup
    //   42: aload_1
    //   43: invokespecial 36	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   46: astore 13
    //   48: aload_0
    //   49: aload 13
    //   51: invokevirtual 40	com/jh/net/JHHttpGet:setRequestHeaders	(Lorg/apache/http/client/methods/HttpRequestBase;)V
    //   54: aload 12
    //   56: aload 13
    //   58: invokevirtual 44	org/apache/http/impl/client/DefaultHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   61: astore 14
    //   63: aload_0
    //   64: aload 14
    //   66: invokevirtual 48	com/jh/net/JHHttpGet:validateStatus	(Lorg/apache/http/HttpResponse;)V
    //   69: aload_0
    //   70: aload 14
    //   72: invokevirtual 51	com/jh/net/JHHttpGet:setResponseCharset	(Lorg/apache/http/HttpResponse;)V
    //   75: new 53	com/jh/net/JHHttpClient$HttpContent
    //   78: dup
    //   79: invokespecial 54	com/jh/net/JHHttpClient$HttpContent:<init>	()V
    //   82: astore 15
    //   84: aload 15
    //   86: aload 14
    //   88: invokeinterface 60 1 0
    //   93: invokeinterface 66 1 0
    //   98: invokevirtual 70	com/jh/net/JHHttpClient$HttpContent:setContentLength	(J)V
    //   101: aload 14
    //   103: invokeinterface 60 1 0
    //   108: invokeinterface 74 1 0
    //   113: astore 4
    //   115: aload 15
    //   117: new 76	java/io/BufferedInputStream
    //   120: dup
    //   121: aload 4
    //   123: invokespecial 79	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   126: invokevirtual 82	com/jh/net/JHHttpClient$HttpContent:setStream	(Ljava/io/InputStream;)V
    //   129: aload 15
    //   131: astore_3
    //   132: aload 12
    //   134: astore_2
    //   135: aload_0
    //   136: aload_2
    //   137: invokevirtual 86	com/jh/net/JHHttpGet:closeHttpConnection	(Lorg/apache/http/client/HttpClient;)V
    //   140: iconst_0
    //   141: ifeq +142 -> 283
    //   144: aload 4
    //   146: invokestatic 89	com/jh/net/JHHttpGet:closeInputStream	(Ljava/io/InputStream;)V
    //   149: aconst_null
    //   150: athrow
    //   151: astore 10
    //   153: aload 10
    //   155: invokevirtual 92	java/net/MalformedURLException:printStackTrace	()V
    //   158: new 94	com/jh/net/JHMalformedURLException
    //   161: dup
    //   162: aload 10
    //   164: invokespecial 97	com/jh/net/JHMalformedURLException:<init>	(Ljava/lang/Exception;)V
    //   167: astore 7
    //   169: aload_0
    //   170: aload_2
    //   171: invokevirtual 86	com/jh/net/JHHttpGet:closeHttpConnection	(Lorg/apache/http/client/HttpClient;)V
    //   174: aload 7
    //   176: ifnull +104 -> 280
    //   179: aload 4
    //   181: invokestatic 89	com/jh/net/JHHttpGet:closeInputStream	(Ljava/io/InputStream;)V
    //   184: aload 7
    //   186: athrow
    //   187: astore 9
    //   189: aload 9
    //   191: invokevirtual 98	java/net/ProtocolException:printStackTrace	()V
    //   194: new 100	com/jh/net/exception/JHProtocolException
    //   197: dup
    //   198: aload 9
    //   200: invokespecial 101	com/jh/net/exception/JHProtocolException:<init>	(Ljava/lang/Exception;)V
    //   203: astore 7
    //   205: aload_0
    //   206: aload_2
    //   207: invokevirtual 86	com/jh/net/JHHttpGet:closeHttpConnection	(Lorg/apache/http/client/HttpClient;)V
    //   210: aload 7
    //   212: ifnull +68 -> 280
    //   215: aload 4
    //   217: invokestatic 89	com/jh/net/JHHttpGet:closeInputStream	(Ljava/io/InputStream;)V
    //   220: aload 7
    //   222: athrow
    //   223: astore 6
    //   225: aload 6
    //   227: invokevirtual 102	java/io/IOException:printStackTrace	()V
    //   230: new 104	com/jh/net/JHIOException
    //   233: dup
    //   234: aload 6
    //   236: invokespecial 105	com/jh/net/JHIOException:<init>	(Ljava/lang/Exception;)V
    //   239: astore 7
    //   241: aload_0
    //   242: aload_2
    //   243: invokevirtual 86	com/jh/net/JHHttpGet:closeHttpConnection	(Lorg/apache/http/client/HttpClient;)V
    //   246: aload 7
    //   248: ifnull +32 -> 280
    //   251: aload 4
    //   253: invokestatic 89	com/jh/net/JHHttpGet:closeInputStream	(Ljava/io/InputStream;)V
    //   256: aload 7
    //   258: athrow
    //   259: astore 5
    //   261: aload_0
    //   262: aload_2
    //   263: invokevirtual 86	com/jh/net/JHHttpGet:closeHttpConnection	(Lorg/apache/http/client/HttpClient;)V
    //   266: iconst_0
    //   267: ifeq +10 -> 277
    //   270: aload 4
    //   272: invokestatic 89	com/jh/net/JHHttpGet:closeInputStream	(Ljava/io/InputStream;)V
    //   275: aconst_null
    //   276: athrow
    //   277: aload 5
    //   279: athrow
    //   280: aload 7
    //   282: pop
    //   283: aload_3
    //   284: areturn
    //   285: astore 5
    //   287: aload 12
    //   289: astore_2
    //   290: aconst_null
    //   291: astore 4
    //   293: goto -32 -> 261
    //   296: astore 5
    //   298: aload 12
    //   300: astore_2
    //   301: goto -40 -> 261
    //   304: astore 6
    //   306: aload 12
    //   308: astore_2
    //   309: aconst_null
    //   310: astore_3
    //   311: aconst_null
    //   312: astore 4
    //   314: goto -89 -> 225
    //   317: astore 6
    //   319: aload 15
    //   321: astore_3
    //   322: aload 12
    //   324: astore_2
    //   325: goto -100 -> 225
    //   328: astore 9
    //   330: aload 12
    //   332: astore_2
    //   333: aconst_null
    //   334: astore_3
    //   335: aconst_null
    //   336: astore 4
    //   338: goto -149 -> 189
    //   341: astore 9
    //   343: aload 15
    //   345: astore_3
    //   346: aload 12
    //   348: astore_2
    //   349: goto -160 -> 189
    //   352: astore 10
    //   354: aload 12
    //   356: astore_2
    //   357: aconst_null
    //   358: astore_3
    //   359: aconst_null
    //   360: astore 4
    //   362: goto -209 -> 153
    //   365: astore 10
    //   367: aload 15
    //   369: astore_3
    //   370: aload 12
    //   372: astore_2
    //   373: goto -220 -> 153
    //
    // Exception table:
    //   from	to	target	type
    //   7	13	151	java/net/MalformedURLException
    //   25	38	151	java/net/MalformedURLException
    //   7	13	187	java/net/ProtocolException
    //   25	38	187	java/net/ProtocolException
    //   7	13	223	java/io/IOException
    //   25	38	223	java/io/IOException
    //   7	13	259	finally
    //   25	38	259	finally
    //   153	169	259	finally
    //   189	205	259	finally
    //   225	241	259	finally
    //   38	84	285	finally
    //   84	129	296	finally
    //   38	84	304	java/io/IOException
    //   84	129	317	java/io/IOException
    //   38	84	328	java/net/ProtocolException
    //   84	129	341	java/net/ProtocolException
    //   38	84	352	java/net/MalformedURLException
    //   84	129	365	java/net/MalformedURLException
  }

  private byte[] getbytesOnce(String paramString)
    throws JHException
  {
    InputStream localInputStream = getInput(paramString);
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

  public String get(String paramString)
    throws JHException
  {
    try
    {
      String str = new String(getbytes(paramString), this.responseCharset.toString());
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
    }
    throw new JHUnsupportedEncodingException();
  }

  public JHHttpClient.HttpContent getContent(String paramString)
    throws JHException
  {
    return (JHHttpClient.HttpContent)doTaskRetry(getMethod("getContentOnce", new String[] { paramString }), new String[] { paramString });
  }

  public InputStream getInput(String paramString)
    throws JHException
  {
    return getContent(paramString).getStream();
  }

  public byte[] getbytes(String paramString)
    throws JHException
  {
    return (byte[])doTaskRetry(getMethod("getbytesOnce", new String[] { paramString }), new String[] { paramString });
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.net.JHHttpGet
 * JD-Core Version:    0.6.2
 */