package com.lidroid.xutils.db.table;

import android.database.Cursor;
import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.db.converter.ColumnConverter;
import com.lidroid.xutils.db.converter.ColumnConverterFactory;
import com.lidroid.xutils.db.sqlite.ColumnDbType;
import com.lidroid.xutils.db.sqlite.ForeignLazyLoader;
import com.lidroid.xutils.exception.DbException;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

public class Foreign extends Column
{
  private final ColumnConverter foreignColumnConverter;
  private final String foreignColumnName;

  Foreign(Class<?> paramClass, Field paramField)
  {
    super(paramClass, paramField);
    this.foreignColumnName = ColumnUtils.getForeignColumnNameByField(paramField);
    this.foreignColumnConverter = ColumnConverterFactory.getColumnConverter(TableUtils.getColumnOrId(getForeignEntityType(), this.foreignColumnName).columnField.getType());
  }

  public ColumnDbType getColumnDbType()
  {
    return this.foreignColumnConverter.getColumnDbType();
  }

  public Object getColumnValue(Object paramObject)
  {
    Object localObject1 = getFieldValue(paramObject);
    Object localObject2 = null;
    Class localClass;
    if (localObject1 != null)
    {
      localClass = this.columnField.getType();
      if (!localClass.equals(ForeignLazyLoader.class))
        break label41;
      localObject2 = ((ForeignLazyLoader)localObject1).getColumnValue();
    }
    while (true)
    {
      return localObject2;
      label41: if (localClass.equals(List.class))
        try
        {
          List localList = (List)localObject1;
          int i = localList.size();
          localObject2 = null;
          if (i > 0)
          {
            Column localColumn2 = TableUtils.getColumnOrId(ColumnUtils.getForeignEntityType(this), this.foreignColumnName);
            localObject2 = localColumn2.getColumnValue(localList.get(0));
            Table localTable2 = getTable();
            Iterator localIterator;
            if ((localTable2 != null) && ((localColumn2 instanceof Id)))
              localIterator = localList.iterator();
            while (true)
            {
              if (!localIterator.hasNext())
                return localColumn2.getColumnValue(localList.get(0));
              Object localObject4 = localIterator.next();
              if (localColumn2.getColumnValue(localObject4) == null)
                localTable2.db.saveOrUpdate(localObject4);
            }
          }
        }
        catch (Throwable localThrowable2)
        {
          LogUtils.e(localThrowable2.getMessage(), localThrowable2);
          return localObject2;
        }
    }
    try
    {
      Column localColumn1 = TableUtils.getColumnOrId(localClass, this.foreignColumnName);
      localObject2 = localColumn1.getColumnValue(localObject1);
      Table localTable1 = getTable();
      if ((localTable1 != null) && (localObject2 == null) && ((localColumn1 instanceof Id)))
        localTable1.db.saveOrUpdate(localObject1);
      Object localObject3 = localColumn1.getColumnValue(localObject1);
      return localObject3;
    }
    catch (Throwable localThrowable1)
    {
      LogUtils.e(localThrowable1.getMessage(), localThrowable1);
    }
    return localObject2;
  }

  public Object getDefaultValue()
  {
    return null;
  }

  public String getForeignColumnName()
  {
    return this.foreignColumnName;
  }

  public Class<?> getForeignEntityType()
  {
    return ColumnUtils.getForeignEntityType(this);
  }

  public void setValue2Entity(Object paramObject, Cursor paramCursor, int paramInt)
  {
    Object localObject1 = this.foreignColumnConverter.getFieldValue(paramCursor, paramInt);
    if (localObject1 == null)
      return;
    Class localClass = this.columnField.getType();
    Object localObject2;
    if (localClass.equals(ForeignLazyLoader.class))
      localObject2 = new ForeignLazyLoader(this, localObject1);
    while (this.setMethod != null)
    {
      try
      {
        this.setMethod.invoke(paramObject, new Object[] { localObject2 });
        return;
      }
      catch (Throwable localThrowable2)
      {
        LogUtils.e(localThrowable2.getMessage(), localThrowable2);
        return;
      }
      if (localClass.equals(List.class))
        try
        {
          List localList = new ForeignLazyLoader(this, localObject1).getAllFromDb();
          localObject2 = localList;
        }
        catch (DbException localDbException2)
        {
          LogUtils.e(localDbException2.getMessage(), localDbException2);
          localObject2 = null;
        }
      else
        try
        {
          Object localObject3 = new ForeignLazyLoader(this, localObject1).getFirstFromDb();
          localObject2 = localObject3;
        }
        catch (DbException localDbException1)
        {
          LogUtils.e(localDbException1.getMessage(), localDbException1);
          localObject2 = null;
        }
    }
    try
    {
      this.columnField.setAccessible(true);
      this.columnField.set(paramObject, localObject2);
      return;
    }
    catch (Throwable localThrowable1)
    {
      LogUtils.e(localThrowable1.getMessage(), localThrowable1);
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.table.Foreign
 * JD-Core Version:    0.6.2
 */