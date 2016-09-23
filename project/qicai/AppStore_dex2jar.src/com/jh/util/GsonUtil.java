package com.jh.util;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonArray;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonParser;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.JsonSyntaxException;
import com.google.gson.reflect.TypeToken;
import com.jh.exception.JHException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.Enumeration;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class GsonUtil
{
  public static final String DEFAULT_DATE_PATTERN = "yyyy-MM-dd HH:mm:ss SSS";
  public static final String EMPTY_JSON = "{}";
  public static final String EMPTY_JSON_ARRAY = "[]";

  private static Gson dealDateWithDotNet()
  {
    GsonBuilder localGsonBuilder = new GsonBuilder();
    localGsonBuilder.registerTypeAdapter(Date.class, new WcfDateJsonAdapter());
    return localGsonBuilder.create();
  }

  public static String format(Object paramObject)
    throws GsonUtil.JSONException
  {
    try
    {
      String str = dealDateWithDotNet().toJson(paramObject);
      return str;
    }
    catch (JsonSyntaxException localJsonSyntaxException)
    {
    }
    throw new JSONException();
  }

  public static String format(Object paramObject, HashMap<Type, Object> paramHashMap)
    throws GsonUtil.JSONException
  {
    try
    {
      String str = getJson(paramHashMap).toJson(paramObject);
      return str;
    }
    catch (JsonSyntaxException localJsonSyntaxException)
    {
    }
    throw new JSONException();
  }

  public static <T> T fromJson(String paramString, TypeToken<T> paramTypeToken)
  {
    return fromJson(paramString, paramTypeToken, null);
  }

  public static <T> T fromJson(String paramString1, TypeToken<T> paramTypeToken, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1))
      return null;
    GsonBuilder localGsonBuilder = new GsonBuilder();
    if (TextUtils.isEmpty(paramString2));
    Gson localGson = localGsonBuilder.create();
    try
    {
      Object localObject = localGson.fromJson(paramString1, paramTypeToken.getType());
      return localObject;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static <T> T fromJson(String paramString, Class<T> paramClass)
  {
    return fromJson(paramString, paramClass, null);
  }

  public static <T> T fromJson(String paramString1, Class<T> paramClass, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1))
      return null;
    GsonBuilder localGsonBuilder = new GsonBuilder();
    if (TextUtils.isEmpty(paramString2));
    Gson localGson = localGsonBuilder.create();
    try
    {
      Object localObject = localGson.fromJson(paramString1, paramClass);
      return localObject;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  private static Gson getJson(HashMap<Type, Object> paramHashMap)
  {
    GsonBuilder localGsonBuilder = new GsonBuilder();
    Iterator localIterator;
    if (paramHashMap != null)
      localIterator = paramHashMap.entrySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        localGsonBuilder.registerTypeAdapter(Date.class, new WcfDateJsonAdapter());
        return localGsonBuilder.create();
      }
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localGsonBuilder.registerTypeAdapter((Type)localEntry.getKey(), localEntry.getValue());
    }
  }

  public static <T> List<T> parseList(String paramString, TypeToken<List<T>> paramTypeToken)
    throws GsonUtil.JSONException
  {
    return (List)dealDateWithDotNet().fromJson(paramString, paramTypeToken.getType());
  }

  public static <T> List<T> parseList(String paramString, Class<T> paramClass)
    throws GsonUtil.JSONException
  {
    Gson localGson = dealDateWithDotNet();
    JsonParser localJsonParser = new JsonParser();
    new TypeToken()
    {
    }
    .getType();
    JsonArray localJsonArray = localJsonParser.parse(paramString).getAsJsonArray();
    LinkedList localLinkedList = new LinkedList();
    for (int i = 0; ; i++)
    {
      if (i >= localJsonArray.size())
        return localLinkedList;
      localLinkedList.add(localGson.fromJson(localJsonArray.get(i), paramClass));
    }
  }

  public static <T> T parseMessage(String paramString, Class<T> paramClass)
    throws GsonUtil.JSONException
  {
    try
    {
      Object localObject = dealDateWithDotNet().fromJson(paramString, paramClass);
      return localObject;
    }
    catch (JsonSyntaxException localJsonSyntaxException)
    {
    }
    throw new JSONException();
  }

  public static <T> T parseMessage(String paramString, Class<T> paramClass, HashMap<Type, Object> paramHashMap)
    throws GsonUtil.JSONException
  {
    try
    {
      dealDateWithDotNet();
      Object localObject = getJson(paramHashMap).fromJson(paramString, paramClass);
      return localObject;
    }
    catch (JsonSyntaxException localJsonSyntaxException)
    {
    }
    throw new JSONException();
  }

  public static String toJson(Object paramObject)
  {
    return toJson(paramObject, null, false, null, null, true);
  }

  public static String toJson(Object paramObject, Double paramDouble)
  {
    return toJson(paramObject, null, false, paramDouble, null, true);
  }

  public static String toJson(Object paramObject, Double paramDouble, boolean paramBoolean)
  {
    return toJson(paramObject, null, false, paramDouble, null, paramBoolean);
  }

  public static String toJson(Object paramObject, String paramString)
  {
    return toJson(paramObject, null, false, null, paramString, true);
  }

  public static String toJson(Object paramObject, Type paramType)
  {
    return toJson(paramObject, paramType, false, null, null, true);
  }

  public static String toJson(Object paramObject, Type paramType, GsonBuilder paramGsonBuilder)
  {
    String str1;
    if (paramObject == null)
      str1 = "{}";
    do
    {
      return str1;
      Gson localGson;
      if (paramGsonBuilder == null)
        localGson = new Gson();
      while (true)
      {
        str1 = "{}";
        if (paramType == null);
        try
        {
          String str3 = localGson.toJson(paramObject);
          return str3;
          localGson = paramGsonBuilder.create();
          continue;
          String str2 = localGson.toJson(paramObject, paramType);
          return str2;
        }
        catch (Exception localException)
        {
        }
      }
    }
    while ((!(paramObject instanceof Collection)) && (!(paramObject instanceof Iterator)) && (!(paramObject instanceof Enumeration)) && (!paramObject.getClass().isArray()));
    return "[]";
  }

  public static String toJson(Object paramObject, Type paramType, Double paramDouble)
  {
    return toJson(paramObject, paramType, false, paramDouble, null, true);
  }

  public static String toJson(Object paramObject, Type paramType, Double paramDouble, boolean paramBoolean)
  {
    return toJson(paramObject, paramType, false, paramDouble, null, paramBoolean);
  }

  public static String toJson(Object paramObject, Type paramType, boolean paramBoolean)
  {
    return toJson(paramObject, paramType, false, null, null, paramBoolean);
  }

  public static String toJson(Object paramObject, Type paramType, boolean paramBoolean1, Double paramDouble, String paramString, boolean paramBoolean2)
  {
    if (paramObject == null)
      return "{}";
    GsonBuilder localGsonBuilder = new GsonBuilder();
    if (paramBoolean1)
      localGsonBuilder.serializeNulls();
    if (paramDouble != null)
      localGsonBuilder.setVersion(paramDouble.doubleValue());
    if (TextUtils.isEmpty(paramString))
      paramString = "yyyy-MM-dd HH:mm:ss SSS";
    localGsonBuilder.setDateFormat(paramString);
    if (paramBoolean2)
      localGsonBuilder.excludeFieldsWithoutExposeAnnotation();
    return toJson(paramObject, paramType, localGsonBuilder);
  }

  public static String toJson(Object paramObject, boolean paramBoolean)
  {
    return toJson(paramObject, null, false, null, null, paramBoolean);
  }

  public static class JSONException extends JHException
  {
    private static final long serialVersionUID = 3643487842618312404L;

    public String getMessage()
    {
      return "JSON解析异常";
    }
  }

  public static class WcfDateJsonAdapter
    implements JsonDeserializer<Date>, JsonSerializer<Date>
  {
    public Date deserialize(JsonElement paramJsonElement, Type paramType, JsonDeserializationContext paramJsonDeserializationContext)
      throws JsonParseException
    {
      Matcher localMatcher = Pattern.compile("\\/(Date\\((.*?)(\\+.*)?\\))\\/").matcher(paramJsonElement.getAsJsonPrimitive().getAsString());
      localMatcher.matches();
      String str1 = localMatcher.group(3);
      String str2 = localMatcher.replaceAll("$2");
      GregorianCalendar localGregorianCalendar = new GregorianCalendar();
      localGregorianCalendar.setTimeZone(TimeZone.getTimeZone("GMT" + str1));
      localGregorianCalendar.setTimeInMillis(Long.valueOf(str2).longValue());
      return localGregorianCalendar.getTime();
    }

    public JsonElement serialize(Date paramDate, Type paramType, JsonSerializationContext paramJsonSerializationContext)
    {
      TimeZone.getDefault();
      return new JsonPrimitive("/Date(" + paramDate.getTime() + "+0800)/");
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.util.GsonUtil
 * JD-Core Version:    0.6.2
 */