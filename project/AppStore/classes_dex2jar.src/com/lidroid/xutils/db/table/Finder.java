package com.lidroid.xutils.db.table;

import android.database.Cursor;
import com.lidroid.xutils.db.sqlite.ColumnDbType;
import com.lidroid.xutils.db.sqlite.FinderLazyLoader;
import com.lidroid.xutils.exception.DbException;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

public class Finder extends Column
{
  private final String targetColumnName;
  private final String valueColumnName;

  Finder(Class<?> paramClass, Field paramField)
  {
    super(paramClass, paramField);
    com.lidroid.xutils.db.annotation.Finder localFinder = (com.lidroid.xutils.db.annotation.Finder)paramField.getAnnotation(com.lidroid.xutils.db.annotation.Finder.class);
    this.valueColumnName = localFinder.valueColumn();
    this.targetColumnName = localFinder.targetColumn();
  }

  public ColumnDbType getColumnDbType()
  {
    return ColumnDbType.TEXT;
  }

  public Object getColumnValue(Object paramObject)
  {
    return null;
  }

  public Object getDefaultValue()
  {
    return null;
  }

  public String getTargetColumnName()
  {
    return this.targetColumnName;
  }

  public Class<?> getTargetEntityType()
  {
    return ColumnUtils.getFinderTargetEntityType(this);
  }

  public void setValue2Entity(Object paramObject, Cursor paramCursor, int paramInt)
  {
    Class localClass = this.columnField.getType();
    Object localObject1 = TableUtils.getColumnOrId(paramObject.getClass(), this.valueColumnName).getColumnValue(paramObject);
    Object localObject2;
    if (localClass.equals(FinderLazyLoader.class))
      localObject2 = new FinderLazyLoader(this, localObject1);
    while (this.setMethod != null)
      try
      {
        this.setMethod.invoke(paramObject, new Object[] { localObject2 });
        return;
        if (localClass.equals(List.class))
          try
          {
            List localList = new FinderLazyLoader(this, localObject1).getAllFromDb();
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
            Object localObject3 = new FinderLazyLoader(this, localObject1).getFirstFromDb();
            localObject2 = localObject3;
          }
          catch (DbException localDbException1)
          {
            LogUtils.e(localDbException1.getMessage(), localDbException1);
            localObject2 = null;
          }
      }
      catch (Throwable localThrowable2)
      {
        LogUtils.e(localThrowable2.getMessage(), localThrowable2);
        return;
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

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.table.Finder
 * JD-Core Version:    0.6.2
 */