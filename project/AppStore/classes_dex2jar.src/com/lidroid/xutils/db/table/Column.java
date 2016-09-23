package com.lidroid.xutils.db.table;

import android.database.Cursor;
import com.lidroid.xutils.db.converter.ColumnConverter;
import com.lidroid.xutils.db.converter.ColumnConverterFactory;
import com.lidroid.xutils.db.sqlite.ColumnDbType;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class Column
{
  protected final ColumnConverter columnConverter;
  protected final Field columnField;
  protected final String columnName;
  private final Object defaultValue;
  protected final Method getMethod;
  private int index = -1;
  protected final Method setMethod;
  private Table table;

  Column(Class<?> paramClass, Field paramField)
  {
    this.columnField = paramField;
    this.columnConverter = ColumnConverterFactory.getColumnConverter(paramField.getType());
    this.columnName = ColumnUtils.getColumnNameByField(paramField);
    if (this.columnConverter != null);
    for (this.defaultValue = this.columnConverter.getFieldValue(ColumnUtils.getColumnDefaultValue(paramField)); ; this.defaultValue = null)
    {
      this.getMethod = ColumnUtils.getColumnGetMethod(paramClass, paramField);
      this.setMethod = ColumnUtils.getColumnSetMethod(paramClass, paramField);
      return;
    }
  }

  public ColumnConverter getColumnConverter()
  {
    return this.columnConverter;
  }

  public ColumnDbType getColumnDbType()
  {
    return this.columnConverter.getColumnDbType();
  }

  public Field getColumnField()
  {
    return this.columnField;
  }

  public String getColumnName()
  {
    return this.columnName;
  }

  public Object getColumnValue(Object paramObject)
  {
    Object localObject = getFieldValue(paramObject);
    return this.columnConverter.fieldValue2ColumnValue(localObject);
  }

  public Object getDefaultValue()
  {
    return this.defaultValue;
  }

  public Object getFieldValue(Object paramObject)
  {
    Object localObject1 = null;
    if ((paramObject == null) || (this.getMethod != null))
      try
      {
        Object localObject3 = this.getMethod.invoke(paramObject, new Object[0]);
        localObject1 = localObject3;
        return localObject1;
      }
      catch (Throwable localThrowable2)
      {
        LogUtils.e(localThrowable2.getMessage(), localThrowable2);
        return null;
      }
    try
    {
      this.columnField.setAccessible(true);
      Object localObject2 = this.columnField.get(paramObject);
      return localObject2;
    }
    catch (Throwable localThrowable1)
    {
      LogUtils.e(localThrowable1.getMessage(), localThrowable1);
    }
    return null;
  }

  public int getIndex()
  {
    return this.index;
  }

  public Table getTable()
  {
    return this.table;
  }

  void setTable(Table paramTable)
  {
    this.table = paramTable;
  }

  public void setValue2Entity(Object paramObject, Cursor paramCursor, int paramInt)
  {
    this.index = paramInt;
    Object localObject = this.columnConverter.getFieldValue(paramCursor, paramInt);
    if ((localObject == null) && (this.defaultValue == null))
      return;
    if (this.setMethod != null)
      try
      {
        Method localMethod = this.setMethod;
        Object[] arrayOfObject = new Object[1];
        if (localObject == null)
          localObject = this.defaultValue;
        arrayOfObject[0] = localObject;
        localMethod.invoke(paramObject, arrayOfObject);
        return;
      }
      catch (Throwable localThrowable2)
      {
        LogUtils.e(localThrowable2.getMessage(), localThrowable2);
        return;
      }
    try
    {
      this.columnField.setAccessible(true);
      Field localField = this.columnField;
      if (localObject == null)
        localObject = this.defaultValue;
      localField.set(paramObject, localObject);
      return;
    }
    catch (Throwable localThrowable1)
    {
      LogUtils.e(localThrowable1.getMessage(), localThrowable1);
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.table.Column
 * JD-Core Version:    0.6.2
 */