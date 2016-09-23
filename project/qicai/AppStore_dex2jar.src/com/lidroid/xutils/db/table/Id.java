package com.lidroid.xutils.db.table;

import com.lidroid.xutils.db.annotation.NoAutoIncrement;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashSet;

public class Id extends Column
{
  private static final HashSet<String> AUTO_INCREMENT_TYPES;
  private static final HashSet<String> INTEGER_TYPES = new HashSet(2);
  private String columnFieldClassName = this.columnField.getType().getName();
  private boolean isAutoIncrement = false;
  private boolean isAutoIncrementChecked = false;

  static
  {
    AUTO_INCREMENT_TYPES = new HashSet(4);
    INTEGER_TYPES.add(Integer.TYPE.getName());
    INTEGER_TYPES.add(Integer.class.getName());
    AUTO_INCREMENT_TYPES.addAll(INTEGER_TYPES);
    AUTO_INCREMENT_TYPES.add(Long.TYPE.getName());
    AUTO_INCREMENT_TYPES.add(Long.class.getName());
  }

  Id(Class<?> paramClass, Field paramField)
  {
    super(paramClass, paramField);
  }

  public Object getColumnValue(Object paramObject)
  {
    Object localObject = super.getColumnValue(paramObject);
    if (localObject != null)
    {
      if ((isAutoIncrement()) && ((localObject.equals(Integer.valueOf(0))) || (localObject.equals(Long.valueOf(0L)))))
        localObject = null;
      return localObject;
    }
    return null;
  }

  public boolean isAutoIncrement()
  {
    boolean bool = true;
    if (!this.isAutoIncrementChecked)
    {
      this.isAutoIncrementChecked = bool;
      if ((this.columnField.getAnnotation(NoAutoIncrement.class) != null) || (!AUTO_INCREMENT_TYPES.contains(this.columnFieldClassName)))
        break label49;
    }
    while (true)
    {
      this.isAutoIncrement = bool;
      return this.isAutoIncrement;
      label49: bool = false;
    }
  }

  public void setAutoIncrementId(Object paramObject, long paramLong)
  {
    Object localObject = Long.valueOf(paramLong);
    if (INTEGER_TYPES.contains(this.columnFieldClassName))
      localObject = Integer.valueOf((int)paramLong);
    if (this.setMethod != null)
      try
      {
        this.setMethod.invoke(paramObject, new Object[] { localObject });
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
      this.columnField.set(paramObject, localObject);
      return;
    }
    catch (Throwable localThrowable1)
    {
      LogUtils.e(localThrowable1.getMessage(), localThrowable1);
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.table.Id
 * JD-Core Version:    0.6.2
 */