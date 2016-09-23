package com.lidroid.xutils.db.sqlite;

import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.db.table.ColumnUtils;
import com.lidroid.xutils.db.table.Foreign;
import com.lidroid.xutils.db.table.Table;
import com.lidroid.xutils.exception.DbException;
import java.util.List;

public class ForeignLazyLoader<T>
{
  private Object columnValue;
  private final Foreign foreignColumn;

  public ForeignLazyLoader(Foreign paramForeign, Object paramObject)
  {
    this.foreignColumn = paramForeign;
    this.columnValue = ColumnUtils.convert2DbColumnValueIfNeeded(paramObject);
  }

  public List<T> getAllFromDb()
    throws DbException
  {
    Table localTable = this.foreignColumn.getTable();
    List localList = null;
    if (localTable != null)
      localList = localTable.db.findAll(Selector.from(this.foreignColumn.getForeignEntityType()).where(this.foreignColumn.getForeignColumnName(), "=", this.columnValue));
    return localList;
  }

  public Object getColumnValue()
  {
    return this.columnValue;
  }

  public T getFirstFromDb()
    throws DbException
  {
    Table localTable = this.foreignColumn.getTable();
    Object localObject = null;
    if (localTable != null)
      localObject = localTable.db.findFirst(Selector.from(this.foreignColumn.getForeignEntityType()).where(this.foreignColumn.getForeignColumnName(), "=", this.columnValue));
    return localObject;
  }

  public void setColumnValue(Object paramObject)
  {
    this.columnValue = ColumnUtils.convert2DbColumnValueIfNeeded(paramObject);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.sqlite.ForeignLazyLoader
 * JD-Core Version:    0.6.2
 */