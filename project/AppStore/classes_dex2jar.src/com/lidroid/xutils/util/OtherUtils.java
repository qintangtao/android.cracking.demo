package com.lidroid.xutils.util;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.security.cert.X509Certificate;
import java.util.Locale;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.methods.HttpRequestBase;

public class OtherUtils
{
  private static final int STRING_BUFFER_LENGTH = 100;
  private static javax.net.ssl.SSLSocketFactory sslSocketFactory;

  public static long getAvailableSpace(File paramFile)
  {
    try
    {
      StatFs localStatFs = new StatFs(paramFile.getPath());
      long l = localStatFs.getBlockSize();
      int i = localStatFs.getAvailableBlocks();
      return l * i;
    }
    catch (Throwable localThrowable)
    {
      LogUtils.e(localThrowable.getMessage(), localThrowable);
    }
    return -1L;
  }

  public static StackTraceElement getCallerStackTraceElement()
  {
    return java.lang.Thread.currentThread().getStackTrace()[4];
  }

  public static Charset getCharsetFromHttpRequest(HttpRequestBase paramHttpRequestBase)
  {
    if (paramHttpRequestBase == null);
    while (true)
    {
      return null;
      Header localHeader = paramHttpRequestBase.getFirstHeader("Content-Type");
      Object localObject = null;
      HeaderElement[] arrayOfHeaderElement;
      int k;
      label44: int i;
      if (localHeader != null)
      {
        arrayOfHeaderElement = localHeader.getElements();
        int j = arrayOfHeaderElement.length;
        k = 0;
        localObject = null;
        if (k < j);
      }
      else
      {
        boolean bool1 = TextUtils.isEmpty((CharSequence)localObject);
        i = 0;
        if (bool1);
      }
      try
      {
        boolean bool2 = Charset.isSupported((String)localObject);
        i = bool2;
        if (i == 0)
          continue;
        return Charset.forName((String)localObject);
        NameValuePair localNameValuePair = arrayOfHeaderElement[k].getParameterByName("charset");
        if (localNameValuePair != null)
        {
          localObject = localNameValuePair.getValue();
          break label44;
        }
        k++;
      }
      catch (Throwable localThrowable)
      {
        while (true)
          i = 0;
      }
    }
  }

  public static StackTraceElement getCurrentStackTraceElement()
  {
    return java.lang.Thread.currentThread().getStackTrace()[3];
  }

  public static String getDiskCacheDir(Context paramContext, String paramString)
  {
    boolean bool = "mounted".equals(Environment.getExternalStorageState());
    String str = null;
    if (bool)
    {
      File localFile2 = paramContext.getExternalCacheDir();
      str = null;
      if (localFile2 != null)
        str = localFile2.getPath();
    }
    if (str == null)
    {
      File localFile1 = paramContext.getCacheDir();
      if ((localFile1 != null) && (localFile1.exists()))
        str = localFile1.getPath();
    }
    return str + File.separator + paramString;
  }

  public static String getFileNameFromHttpResponse(HttpResponse paramHttpResponse)
  {
    if (paramHttpResponse == null);
    while (true)
    {
      return null;
      Header localHeader = paramHttpResponse.getFirstHeader("Content-Disposition");
      if (localHeader != null)
      {
        HeaderElement[] arrayOfHeaderElement = localHeader.getElements();
        int i = arrayOfHeaderElement.length;
        for (int j = 0; j < i; j++)
        {
          NameValuePair localNameValuePair = arrayOfHeaderElement[j].getParameterByName("filename");
          if (localNameValuePair != null)
          {
            String str = localNameValuePair.getValue();
            return CharsetUtils.toCharset(str, "UTF-8", str.length());
          }
        }
      }
    }
  }

  public static String getSubString(String paramString, int paramInt1, int paramInt2)
  {
    return new String(paramString.substring(paramInt1, paramInt2));
  }

  public static String getUserAgent(Context paramContext)
  {
    Object localObject = null;
    if (paramContext != null);
    try
    {
      String str6 = paramContext.getString(((Integer)Class.forName("com.android.internal.R$string").getDeclaredField("web_user_agent").get(null)).intValue());
      localObject = str6;
      if (TextUtils.isEmpty((CharSequence)localObject))
        localObject = "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 %sSafari/533.1";
      Locale localLocale = Locale.getDefault();
      StringBuffer localStringBuffer = new StringBuffer();
      String str1 = Build.VERSION.RELEASE;
      if (str1.length() > 0)
      {
        localStringBuffer.append(str1);
        localStringBuffer.append("; ");
        String str2 = localLocale.getLanguage();
        if (str2 == null)
          break label228;
        localStringBuffer.append(str2.toLowerCase());
        String str5 = localLocale.getCountry();
        if (str5 != null)
        {
          localStringBuffer.append("-");
          localStringBuffer.append(str5.toLowerCase());
        }
      }
      while (true)
      {
        if ("REL".equals(Build.VERSION.CODENAME))
        {
          String str4 = Build.MODEL;
          if (str4.length() > 0)
          {
            localStringBuffer.append("; ");
            localStringBuffer.append(str4);
          }
        }
        String str3 = Build.ID;
        if (str3.length() > 0)
        {
          localStringBuffer.append(" Build/");
          localStringBuffer.append(str3);
        }
        return String.format((String)localObject, new Object[] { localStringBuffer, "Mobile " });
        localStringBuffer.append("1.0");
        break;
        label228: localStringBuffer.append("en");
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
        localObject = null;
    }
  }

  public static boolean isSupportRange(HttpResponse paramHttpResponse)
  {
    if (paramHttpResponse == null);
    String str;
    do
    {
      Header localHeader2;
      do
      {
        return false;
        Header localHeader1 = paramHttpResponse.getFirstHeader("Accept-Ranges");
        if (localHeader1 != null)
          return "bytes".equals(localHeader1.getValue());
        localHeader2 = paramHttpResponse.getFirstHeader("Content-Range");
      }
      while (localHeader2 == null);
      str = localHeader2.getValue();
    }
    while ((str == null) || (!str.startsWith("bytes")));
    return true;
  }

  public static long sizeOfString(String paramString1, String paramString2)
    throws UnsupportedEncodingException
  {
    if (TextUtils.isEmpty(paramString1))
    {
      l = 0L;
      return l;
    }
    int i = paramString1.length();
    if (i < 100)
      return paramString1.getBytes(paramString2).length;
    long l = 0L;
    int j = 0;
    label35: int k;
    if (j < i)
    {
      k = j + 100;
      if (k >= i)
        break label77;
    }
    while (true)
    {
      l += getSubString(paramString1, j, k).getBytes(paramString2).length;
      j += 100;
      break label35;
      break;
      label77: k = i;
    }
  }

  public static void trustAllHttpsURLConnection()
  {
    TrustManager[] arrayOfTrustManager;
    if (sslSocketFactory == null)
    {
      arrayOfTrustManager = new TrustManager[1];
      arrayOfTrustManager[0] = new X509TrustManager()
      {
        public void checkClientTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString)
        {
        }

        public void checkServerTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString)
        {
        }

        public X509Certificate[] getAcceptedIssuers()
        {
          return null;
        }
      };
    }
    try
    {
      SSLContext localSSLContext = SSLContext.getInstance("TLS");
      localSSLContext.init(null, arrayOfTrustManager, null);
      sslSocketFactory = localSSLContext.getSocketFactory();
      if (sslSocketFactory != null)
      {
        HttpsURLConnection.setDefaultSSLSocketFactory(sslSocketFactory);
        HttpsURLConnection.setDefaultHostnameVerifier(org.apache.http.conn.ssl.SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        LogUtils.e(localThrowable.getMessage(), localThrowable);
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.util.OtherUtils
 * JD-Core Version:    0.6.2
 */