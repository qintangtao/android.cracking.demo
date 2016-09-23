package com.youqicai.download;

import android.net.Uri;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

public class UriEncoder
{
  public static String encode(String paramString)
    throws UnsupportedEncodingException
  {
    Uri localUri = Uri.parse(paramString);
    localUri.getPathSegments();
    Set localSet = getQueryParameterNames(localUri);
    localUri.getPath();
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(localUri.getScheme()).append("://").append(localUri.getAuthority()).append(localUri.getPath());
    int i = 0;
    Iterator localIterator = localSet.iterator();
    if (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (i == 0)
        localStringBuffer.append("?");
      while (true)
      {
        i++;
        localStringBuffer.append(str);
        if (TextUtils.isEmpty(localUri.getQueryParameter(str)))
          break;
        localStringBuffer.append("=").append(URLEncoder.encode(localUri.getQueryParameter(str), "utf-8"));
        break;
        localStringBuffer.append("&");
      }
    }
    if (!TextUtils.isEmpty(localUri.getFragment()))
      localStringBuffer.append("#").append(localUri.getFragment());
    return localStringBuffer.toString();
  }

  private static Set<String> getQueryParameterNames(Uri paramUri)
  {
    String str = paramUri.getEncodedQuery();
    if (str == null)
      return Collections.emptySet();
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    int i = 0;
    int j = str.indexOf('&', i);
    if (j == -1);
    for (int k = str.length(); ; k = j)
    {
      int m = str.indexOf('=', i);
      if ((m > k) || (m == -1))
        m = k;
      localLinkedHashSet.add(Uri.decode(str.substring(i, m)));
      i = k + 1;
      if (i < str.length())
        break;
      return Collections.unmodifiableSet(localLinkedHashSet);
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.download.UriEncoder
 * JD-Core Version:    0.6.2
 */