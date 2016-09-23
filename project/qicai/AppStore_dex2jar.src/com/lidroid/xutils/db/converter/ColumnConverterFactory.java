package com.lidroid.xutils.db.converter;

import com.lidroid.xutils.db.sqlite.ColumnDbType;
import java.util.concurrent.ConcurrentHashMap;

public class ColumnConverterFactory
{
  private static final ConcurrentHashMap<String, ColumnConverter> columnType_columnConverter_map = new ConcurrentHashMap();

  static
  {
    BooleanColumnConverter localBooleanColumnConverter = new BooleanColumnConverter();
    columnType_columnConverter_map.put(Boolean.TYPE.getName(), localBooleanColumnConverter);
    columnType_columnConverter_map.put(Boolean.class.getName(), localBooleanColumnConverter);
    ByteArrayColumnConverter localByteArrayColumnConverter = new ByteArrayColumnConverter();
    columnType_columnConverter_map.put([B.class.getName(), localByteArrayColumnConverter);
    ByteColumnConverter localByteColumnConverter = new ByteColumnConverter();
    columnType_columnConverter_map.put(Byte.TYPE.getName(), localByteColumnConverter);
    columnType_columnConverter_map.put(Byte.class.getName(), localByteColumnConverter);
    CharColumnConverter localCharColumnConverter = new CharColumnConverter();
    columnType_columnConverter_map.put(Character.TYPE.getName(), localCharColumnConverter);
    columnType_columnConverter_map.put(Character.class.getName(), localCharColumnConverter);
    DateColumnConverter localDateColumnConverter = new DateColumnConverter();
    columnType_columnConverter_map.put(java.util.Date.class.getName(), localDateColumnConverter);
    DoubleColumnConverter localDoubleColumnConverter = new DoubleColumnConverter();
    columnType_columnConverter_map.put(Double.TYPE.getName(), localDoubleColumnConverter);
    columnType_columnConverter_map.put(Double.class.getName(), localDoubleColumnConverter);
    FloatColumnConverter localFloatColumnConverter = new FloatColumnConverter();
    columnType_columnConverter_map.put(Float.TYPE.getName(), localFloatColumnConverter);
    columnType_columnConverter_map.put(Float.class.getName(), localFloatColumnConverter);
    IntegerColumnConverter localIntegerColumnConverter = new IntegerColumnConverter();
    columnType_columnConverter_map.put(Integer.TYPE.getName(), localIntegerColumnConverter);
    columnType_columnConverter_map.put(Integer.class.getName(), localIntegerColumnConverter);
    LongColumnConverter localLongColumnConverter = new LongColumnConverter();
    columnType_columnConverter_map.put(Long.TYPE.getName(), localLongColumnConverter);
    columnType_columnConverter_map.put(Long.class.getName(), localLongColumnConverter);
    ShortColumnConverter localShortColumnConverter = new ShortColumnConverter();
    columnType_columnConverter_map.put(Short.TYPE.getName(), localShortColumnConverter);
    columnType_columnConverter_map.put(Short.class.getName(), localShortColumnConverter);
    SqlDateColumnConverter localSqlDateColumnConverter = new SqlDateColumnConverter();
    columnType_columnConverter_map.put(java.sql.Date.class.getName(), localSqlDateColumnConverter);
    StringColumnConverter localStringColumnConverter = new StringColumnConverter();
    columnType_columnConverter_map.put(String.class.getName(), localStringColumnConverter);
  }

  public static ColumnConverter getColumnConverter(Class paramClass)
  {
    if (columnType_columnConverter_map.containsKey(paramClass.getName()))
      return (ColumnConverter)columnType_columnConverter_map.get(paramClass.getName());
    if (ColumnConverter.class.isAssignableFrom(paramClass))
      try
      {
        ColumnConverter localColumnConverter = (ColumnConverter)paramClass.newInstance();
        if (localColumnConverter != null)
          columnType_columnConverter_map.put(paramClass.getName(), localColumnConverter);
        return localColumnConverter;
      }
      catch (Throwable localThrowable)
      {
      }
    return null;
  }

  public static ColumnDbType getDbColumnType(Class paramClass)
  {
    ColumnConverter localColumnConverter = getColumnConverter(paramClass);
    if (localColumnConverter != null)
      return localColumnConverter.getColumnDbType();
    return ColumnDbType.TEXT;
  }

  public static boolean isSupportColumnConverter(Class paramClass)
  {
    if (columnType_columnConverter_map.containsKey(paramClass.getName()));
    while (true)
    {
      return true;
      if (ColumnConverter.class.isAssignableFrom(paramClass))
        try
        {
          ColumnConverter localColumnConverter = (ColumnConverter)paramClass.newInstance();
          if (localColumnConverter != null)
            columnType_columnConverter_map.put(paramClass.getName(), localColumnConverter);
          if (localColumnConverter != null)
            return false;
        }
        catch (Throwable localThrowable)
        {
        }
    }
    return false;
  }

  public static void registerColumnConverter(Class paramClass, ColumnConverter paramColumnConverter)
  {
    columnType_columnConverter_map.put(paramClass.getName(), paramColumnConverter);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.converter.ColumnConverterFactory
 * JD-Core Version:    0.6.2
 */