package com.lidroid.xutils.db.table;

import android.text.TextUtils;
import com.lidroid.xutils.db.annotation.Check;
import com.lidroid.xutils.db.annotation.Column;
import com.lidroid.xutils.db.annotation.Id;
import com.lidroid.xutils.db.annotation.NotNull;
import com.lidroid.xutils.db.annotation.Transient;
import com.lidroid.xutils.db.annotation.Unique;
import com.lidroid.xutils.db.converter.ColumnConverter;
import com.lidroid.xutils.db.converter.ColumnConverterFactory;
import com.lidroid.xutils.db.sqlite.FinderLazyLoader;
import com.lidroid.xutils.db.sqlite.ForeignLazyLoader;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.List;

public class ColumnUtils
{
  private static final HashSet<String> DB_PRIMITIVE_TYPES = new HashSet(14);

  static
  {
    DB_PRIMITIVE_TYPES.add(Integer.TYPE.getName());
    DB_PRIMITIVE_TYPES.add(Long.TYPE.getName());
    DB_PRIMITIVE_TYPES.add(Short.TYPE.getName());
    DB_PRIMITIVE_TYPES.add(Byte.TYPE.getName());
    DB_PRIMITIVE_TYPES.add(Float.TYPE.getName());
    DB_PRIMITIVE_TYPES.add(Double.TYPE.getName());
    DB_PRIMITIVE_TYPES.add(Integer.class.getName());
    DB_PRIMITIVE_TYPES.add(Long.class.getName());
    DB_PRIMITIVE_TYPES.add(Short.class.getName());
    DB_PRIMITIVE_TYPES.add(Byte.class.getName());
    DB_PRIMITIVE_TYPES.add(Float.class.getName());
    DB_PRIMITIVE_TYPES.add(Double.class.getName());
    DB_PRIMITIVE_TYPES.add(String.class.getName());
    DB_PRIMITIVE_TYPES.add([B.class.getName());
  }

  public static Object convert2DbColumnValueIfNeeded(Object paramObject)
  {
    Object localObject = paramObject;
    if (paramObject != null)
    {
      Class localClass = paramObject.getClass();
      if (!isDbPrimitiveType(localClass))
      {
        ColumnConverter localColumnConverter = ColumnConverterFactory.getColumnConverter(localClass);
        if (localColumnConverter == null)
          break label37;
        localObject = localColumnConverter.fieldValue2ColumnValue(paramObject);
      }
    }
    return localObject;
    label37: return paramObject;
  }

  private static Method getBooleanColumnGetMethod(Class<?> paramClass, String paramString)
  {
    String str = "is" + paramString.substring(0, 1).toUpperCase() + paramString.substring(1);
    if (isStartWithIs(paramString))
      str = paramString;
    try
    {
      Method localMethod = paramClass.getDeclaredMethod(str, new Class[0]);
      return localMethod;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      LogUtils.d(str + " not exist");
    }
    return null;
  }

  private static Method getBooleanColumnSetMethod(Class<?> paramClass, Field paramField)
  {
    String str1 = paramField.getName();
    String str2;
    if (isStartWithIs(paramField.getName()))
      str2 = "set" + str1.substring(2, 3).toUpperCase() + str1.substring(3);
    try
    {
      while (true)
      {
        Class[] arrayOfClass = new Class[1];
        arrayOfClass[0] = paramField.getType();
        Method localMethod = paramClass.getDeclaredMethod(str2, arrayOfClass);
        return localMethod;
        str2 = "set" + str1.substring(0, 1).toUpperCase() + str1.substring(1);
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      LogUtils.d(str2 + " not exist");
    }
    return null;
  }

  public static String getCheck(Field paramField)
  {
    Check localCheck = (Check)paramField.getAnnotation(Check.class);
    if (localCheck != null)
      return localCheck.value();
    return null;
  }

  public static String getColumnDefaultValue(Field paramField)
  {
    Column localColumn = (Column)paramField.getAnnotation(Column.class);
    if ((localColumn != null) && (!TextUtils.isEmpty(localColumn.defaultValue())))
      return localColumn.defaultValue();
    return null;
  }

  public static Method getColumnGetMethod(Class<?> paramClass, Field paramField)
  {
    String str1 = paramField.getName();
    Class localClass1 = paramField.getType();
    Class localClass2 = Boolean.TYPE;
    Object localObject = null;
    if (localClass1 == localClass2)
      localObject = getBooleanColumnGetMethod(paramClass, str1);
    String str2;
    if (localObject == null)
      str2 = "get" + str1.substring(0, 1).toUpperCase() + str1.substring(1);
    try
    {
      Method localMethod = paramClass.getDeclaredMethod(str2, new Class[0]);
      localObject = localMethod;
      if ((localObject == null) && (!Object.class.equals(paramClass.getSuperclass())))
        localObject = getColumnGetMethod(paramClass.getSuperclass(), paramField);
      return localObject;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        LogUtils.d(str2 + " not exist");
    }
  }

  public static String getColumnNameByField(Field paramField)
  {
    Column localColumn = (Column)paramField.getAnnotation(Column.class);
    if ((localColumn != null) && (!TextUtils.isEmpty(localColumn.column())))
      return localColumn.column();
    Id localId = (Id)paramField.getAnnotation(Id.class);
    if ((localId != null) && (!TextUtils.isEmpty(localId.column())))
      return localId.column();
    com.lidroid.xutils.db.annotation.Foreign localForeign = (com.lidroid.xutils.db.annotation.Foreign)paramField.getAnnotation(com.lidroid.xutils.db.annotation.Foreign.class);
    if ((localForeign != null) && (!TextUtils.isEmpty(localForeign.column())))
      return localForeign.column();
    if ((com.lidroid.xutils.db.annotation.Finder)paramField.getAnnotation(com.lidroid.xutils.db.annotation.Finder.class) != null)
      return paramField.getName();
    return paramField.getName();
  }

  public static Method getColumnSetMethod(Class<?> paramClass, Field paramField)
  {
    String str1 = paramField.getName();
    Class localClass1 = paramField.getType();
    Class localClass2 = Boolean.TYPE;
    Object localObject = null;
    if (localClass1 == localClass2)
      localObject = getBooleanColumnSetMethod(paramClass, paramField);
    String str2;
    if (localObject == null)
      str2 = "set" + str1.substring(0, 1).toUpperCase() + str1.substring(1);
    try
    {
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = paramField.getType();
      Method localMethod = paramClass.getDeclaredMethod(str2, arrayOfClass);
      localObject = localMethod;
      if ((localObject == null) && (!Object.class.equals(paramClass.getSuperclass())))
        localObject = getColumnSetMethod(paramClass.getSuperclass(), paramField);
      return localObject;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        LogUtils.d(str2 + " not exist");
    }
  }

  public static Class<?> getFinderTargetEntityType(Finder paramFinder)
  {
    Class localClass = paramFinder.getColumnField().getType();
    if ((localClass.equals(FinderLazyLoader.class)) || (localClass.equals(List.class)))
      localClass = (Class)((java.lang.reflect.ParameterizedType)paramFinder.getColumnField().getGenericType()).getActualTypeArguments()[0];
    return localClass;
  }

  public static String getForeignColumnNameByField(Field paramField)
  {
    com.lidroid.xutils.db.annotation.Foreign localForeign = (com.lidroid.xutils.db.annotation.Foreign)paramField.getAnnotation(com.lidroid.xutils.db.annotation.Foreign.class);
    if (localForeign != null)
      return localForeign.foreign();
    return paramField.getName();
  }

  public static Class<?> getForeignEntityType(Foreign paramForeign)
  {
    Class localClass = paramForeign.getColumnField().getType();
    if ((localClass.equals(ForeignLazyLoader.class)) || (localClass.equals(List.class)))
      localClass = (Class)((java.lang.reflect.ParameterizedType)paramForeign.getColumnField().getGenericType()).getActualTypeArguments()[0];
    return localClass;
  }

  public static boolean isDbPrimitiveType(Class<?> paramClass)
  {
    return DB_PRIMITIVE_TYPES.contains(paramClass.getName());
  }

  public static boolean isFinder(Field paramField)
  {
    return paramField.getAnnotation(com.lidroid.xutils.db.annotation.Finder.class) != null;
  }

  public static boolean isForeign(Field paramField)
  {
    return paramField.getAnnotation(com.lidroid.xutils.db.annotation.Foreign.class) != null;
  }

  public static boolean isNotNull(Field paramField)
  {
    return paramField.getAnnotation(NotNull.class) != null;
  }

  private static boolean isStartWithIs(String paramString)
  {
    return (paramString != null) && (paramString.startsWith("is"));
  }

  public static boolean isTransient(Field paramField)
  {
    return paramField.getAnnotation(Transient.class) != null;
  }

  public static boolean isUnique(Field paramField)
  {
    return paramField.getAnnotation(Unique.class) != null;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.table.ColumnUtils
 * JD-Core Version:    0.6.2
 */