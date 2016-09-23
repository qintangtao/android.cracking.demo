package com.lidroid.xutils.db.sqlite;

import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.db.table.ColumnUtils;
import com.lidroid.xutils.db.table.Finder;
import com.lidroid.xutils.db.table.Table;
import com.lidroid.xutils.exception.DbException;
import java.util.List;

public class FinderLazyLoader<T>
{
  private final Finder finderColumn;
  private final Object finderValue;

  public FinderLazyLoader(Finder paramFinder, Object paramObject)
  {
    this.finderColumn = paramFinder;
    this.finderValue = ColumnUtils.convert2DbColumnValueIfNeeded(paramObject);
  }

  public List<T> getAllFromDb()
    throws DbException
  {
    Table localTable = this.finderColumn.getTable();
    List localList = null;
    if (localTable != null)
      localList = localTable.db.findAll(Selector.from(this.finderColumn.getTargetEntityType()).where(this.finderColumn.getTargetColumnName(), "=", this.finderValue));
    return localList;
  }

  public T getFirstFromDb()
    throws DbException
  {
    Table localTable = this.finderColumn.getTable();
    Object localObject = null;
    if (localTable != null)
      localObject = localTable.db.findFirst(Selector.from(this.finderColumn.getTargetEntityType()).where(this.finderColumn.getTargetColumnName(), "=", this.finderValue));
    return localObject;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.sqlite.FinderLazyLoader
 * JD-Core Version:    0.6.2
 */