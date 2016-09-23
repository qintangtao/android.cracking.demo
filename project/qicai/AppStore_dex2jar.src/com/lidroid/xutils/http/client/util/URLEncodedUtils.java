package com.lidroid.xutils.http.client.util;

import android.text.TextUtils;
import java.net.URI;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicHeaderValueParser;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.CharArrayBuffer;

public class URLEncodedUtils
{
  public static final String CONTENT_TYPE = "application/x-www-form-urlencoded";
  private static final char[] DELIM = { '&' };
  private static final BitSet FRAGMENT;
  private static final String NAME_VALUE_SEPARATOR = "=";
  private static final String PARAMETER_SEPARATOR = "&";
  private static final BitSet PATHSAFE;
  private static final BitSet PUNCT;
  private static final int RADIX = 16;
  private static final BitSet RESERVED;
  private static final BitSet UNRESERVED = new BitSet(256);
  private static final BitSet URLENCODER;
  private static final BitSet USERINFO;

  static
  {
    PUNCT = new BitSet(256);
    USERINFO = new BitSet(256);
    PATHSAFE = new BitSet(256);
    FRAGMENT = new BitSet(256);
    RESERVED = new BitSet(256);
    URLENCODER = new BitSet(256);
    int i = 97;
    int j;
    if (i > 122)
    {
      j = 65;
      label114: if (j <= 90)
        break label493;
    }
    for (int k = 48; ; k++)
    {
      if (k > 57)
      {
        UNRESERVED.set(95);
        UNRESERVED.set(45);
        UNRESERVED.set(46);
        UNRESERVED.set(42);
        URLENCODER.or(UNRESERVED);
        UNRESERVED.set(33);
        UNRESERVED.set(126);
        UNRESERVED.set(39);
        UNRESERVED.set(40);
        UNRESERVED.set(41);
        PUNCT.set(44);
        PUNCT.set(59);
        PUNCT.set(58);
        PUNCT.set(36);
        PUNCT.set(38);
        PUNCT.set(43);
        PUNCT.set(61);
        USERINFO.or(UNRESERVED);
        USERINFO.or(PUNCT);
        PATHSAFE.or(UNRESERVED);
        PATHSAFE.set(47);
        PATHSAFE.set(59);
        PATHSAFE.set(58);
        PATHSAFE.set(64);
        PATHSAFE.set(38);
        PATHSAFE.set(61);
        PATHSAFE.set(43);
        PATHSAFE.set(36);
        PATHSAFE.set(44);
        RESERVED.set(59);
        RESERVED.set(47);
        RESERVED.set(63);
        RESERVED.set(58);
        RESERVED.set(64);
        RESERVED.set(38);
        RESERVED.set(61);
        RESERVED.set(43);
        RESERVED.set(36);
        RESERVED.set(44);
        RESERVED.set(91);
        RESERVED.set(93);
        FRAGMENT.or(RESERVED);
        FRAGMENT.or(UNRESERVED);
        return;
        UNRESERVED.set(i);
        i++;
        break;
        label493: UNRESERVED.set(j);
        j++;
        break label114;
      }
      UNRESERVED.set(k);
    }
  }

  private static String decodeFormFields(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      return null;
    if (paramString2 != null);
    for (Charset localCharset = Charset.forName(paramString2); ; localCharset = Charset.forName("UTF-8"))
      return urldecode(paramString1, localCharset, true);
  }

  private static String decodeFormFields(String paramString, Charset paramCharset)
  {
    if (paramString == null)
      return null;
    if (paramCharset != null);
    while (true)
    {
      return urldecode(paramString, paramCharset, true);
      paramCharset = Charset.forName("UTF-8");
    }
  }

  static String encFragment(String paramString, Charset paramCharset)
  {
    return urlencode(paramString, paramCharset, FRAGMENT, false);
  }

  static String encPath(String paramString, Charset paramCharset)
  {
    return urlencode(paramString, paramCharset, PATHSAFE, false);
  }

  static String encUserInfo(String paramString, Charset paramCharset)
  {
    return urlencode(paramString, paramCharset, USERINFO, false);
  }

  private static String encodeFormFields(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      return null;
    if (paramString2 != null);
    for (Charset localCharset = Charset.forName(paramString2); ; localCharset = Charset.forName("UTF-8"))
      return urlencode(paramString1, localCharset, URLENCODER, true);
  }

  private static String encodeFormFields(String paramString, Charset paramCharset)
  {
    if (paramString == null)
      return null;
    if (paramCharset != null);
    while (true)
    {
      return urlencode(paramString, paramCharset, URLENCODER, true);
      paramCharset = Charset.forName("UTF-8");
    }
  }

  public static String format(Iterable<? extends NameValuePair> paramIterable, Charset paramCharset)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramIterable.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localStringBuilder.toString();
      NameValuePair localNameValuePair = (NameValuePair)localIterator.next();
      String str1 = encodeFormFields(localNameValuePair.getName(), paramCharset);
      String str2 = encodeFormFields(localNameValuePair.getValue(), paramCharset);
      if (localStringBuilder.length() > 0)
        localStringBuilder.append("&");
      localStringBuilder.append(str1);
      if (str2 != null)
      {
        localStringBuilder.append("=");
        localStringBuilder.append(str2);
      }
    }
  }

  public static String format(List<? extends NameValuePair> paramList, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localStringBuilder.toString();
      NameValuePair localNameValuePair = (NameValuePair)localIterator.next();
      String str1 = encodeFormFields(localNameValuePair.getName(), paramString);
      String str2 = encodeFormFields(localNameValuePair.getValue(), paramString);
      if (localStringBuilder.length() > 0)
        localStringBuilder.append("&");
      localStringBuilder.append(str1);
      if (str2 != null)
      {
        localStringBuilder.append("=");
        localStringBuilder.append(str2);
      }
    }
  }

  public static boolean isEncoded(HttpEntity paramHttpEntity)
  {
    Header localHeader = paramHttpEntity.getContentType();
    boolean bool = false;
    if (localHeader != null)
    {
      HeaderElement[] arrayOfHeaderElement = localHeader.getElements();
      int i = arrayOfHeaderElement.length;
      bool = false;
      if (i > 0)
        bool = arrayOfHeaderElement[0].getName().equalsIgnoreCase("application/x-www-form-urlencoded");
    }
    return bool;
  }

  public static List<NameValuePair> parse(String paramString)
  {
    Object localObject;
    if (paramString == null)
      localObject = Collections.emptyList();
    while (true)
    {
      return localObject;
      BasicHeaderValueParser localBasicHeaderValueParser = BasicHeaderValueParser.DEFAULT;
      CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(paramString.length());
      localCharArrayBuffer.append(paramString);
      ParserCursor localParserCursor = new ParserCursor(0, localCharArrayBuffer.length());
      localObject = new ArrayList();
      while (!localParserCursor.atEnd())
      {
        NameValuePair localNameValuePair = localBasicHeaderValueParser.parseNameValuePair(localCharArrayBuffer, localParserCursor, DELIM);
        if (localNameValuePair.getName().length() > 0)
          ((List)localObject).add(new BasicNameValuePair(localNameValuePair.getName(), localNameValuePair.getValue()));
      }
    }
  }

  public static List<NameValuePair> parse(URI paramURI)
  {
    String str = paramURI.getRawQuery();
    if (!TextUtils.isEmpty(str))
    {
      ArrayList localArrayList = new ArrayList();
      parse(localArrayList, new Scanner(str));
      return localArrayList;
    }
    return Collections.emptyList();
  }

  public static void parse(List<NameValuePair> paramList, Scanner paramScanner)
  {
    paramScanner.useDelimiter("&");
    if (!paramScanner.hasNext())
      return;
    String str1 = paramScanner.next();
    int i = str1.indexOf("=");
    String str2;
    if (i != -1)
      str2 = str1.substring(0, i).trim();
    for (String str3 = str1.substring(i + 1).trim(); ; str3 = null)
    {
      paramList.add(new BasicNameValuePair(str2, str3));
      break;
      str2 = str1.trim();
    }
  }

  private static String urldecode(String paramString, Charset paramCharset, boolean paramBoolean)
  {
    if (paramString == null)
      return null;
    ByteBuffer localByteBuffer = ByteBuffer.allocate(paramString.length());
    CharBuffer localCharBuffer = CharBuffer.wrap(paramString);
    while (true)
    {
      if (!localCharBuffer.hasRemaining())
      {
        localByteBuffer.flip();
        return paramCharset.decode(localByteBuffer).toString();
      }
      int i = localCharBuffer.get();
      if ((i == 37) && (localCharBuffer.remaining() >= 2))
      {
        char c1 = localCharBuffer.get();
        char c2 = localCharBuffer.get();
        int j = Character.digit(c1, 16);
        int k = Character.digit(c2, 16);
        if ((j != -1) && (k != -1))
        {
          localByteBuffer.put((byte)(k + (j << 4)));
        }
        else
        {
          localByteBuffer.put((byte)37);
          localByteBuffer.put((byte)c1);
          localByteBuffer.put((byte)c2);
        }
      }
      else if ((paramBoolean) && (i == 43))
      {
        localByteBuffer.put((byte)32);
      }
      else
      {
        localByteBuffer.put((byte)i);
      }
    }
  }

  private static String urlencode(String paramString, Charset paramCharset, BitSet paramBitSet, boolean paramBoolean)
  {
    if (paramString == null)
      return null;
    StringBuilder localStringBuilder = new StringBuilder();
    ByteBuffer localByteBuffer = paramCharset.encode(paramString);
    while (true)
    {
      if (!localByteBuffer.hasRemaining())
        return localStringBuilder.toString();
      int i = 0xFF & localByteBuffer.get();
      if (paramBitSet.get(i))
      {
        localStringBuilder.append((char)i);
      }
      else if ((paramBoolean) && (i == 32))
      {
        localStringBuilder.append('+');
      }
      else
      {
        localStringBuilder.append("%");
        char c1 = Character.toUpperCase(Character.forDigit(0xF & i >> 4, 16));
        char c2 = Character.toUpperCase(Character.forDigit(i & 0xF, 16));
        localStringBuilder.append(c1);
        localStringBuilder.append(c2);
      }
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.http.client.util.URLEncodedUtils
 * JD-Core Version:    0.6.2
 */