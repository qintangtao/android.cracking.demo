package com.lidroid.xutils.db.table;

import android.text.TextUtils;
import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.DbUtils.DaoConfig;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class Table
{
  private static final HashMap<String, Table> tableMap = new HashMap();
  private boolean checkedDatabase;
  public final HashMap<String, Column> columnMap;
  public final DbUtils db;
  public final HashMap<String, Finder> finderMap;
  public final Id id;
  public final String tableName;

  private Table(DbUtils paramDbUtils, Class<?> paramClass)
  {
    this.db = paramDbUtils;
    this.tableName = TableUtils.getTableName(paramClass);
    this.id = TableUtils.getId(paramClass);
    this.columnMap = TableUtils.getColumnMap(paramClass);
    this.finderMap = new HashMap();
    Iterator localIterator = this.columnMap.values().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      Column localColumn = (Column)localIterator.next();
      localColumn.setTable(this);
      if ((localColumn instanceof Finder))
        this.finderMap.put(localColumn.getColumnName(), (Finder)localColumn);
    }
  }

  public static Table get(DbUtils paramDbUtils, Class<?> paramClass)
  {
    try
    {
      String str = paramDbUtils.getDaoConfig().getDbName() + "#" + paramClass.getName();
      Table localTable = (Table)tableMap.get(str);
      if (localTable == null)
      {
        localTable = new Table(paramDbUtils, paramClass);
        tableMap.put(str, localTable);
      }
      return localTable;
    }
    finally
    {
    }
  }

  public static void remove(DbUtils paramDbUtils, Class<?> paramClass)
  {
    try
    {
      String str = paramDbUtils.getDaoConfig().getDbName() + "#" + paramClass.getName();
      tableMap.remove(str);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void remove(DbUtils paramDbUtils, String paramString)
  {
    try
    {
      Object localObject2;
      Iterator localIterator;
      if (tableMap.size() > 0)
      {
        localObject2 = null;
        localIterator = tableMap.entrySet().iterator();
        if (localIterator.hasNext())
          break label56;
      }
      while (true)
      {
        if (TextUtils.isEmpty((CharSequence)localObject2))
          tableMap.remove(localObject2);
        return;
        label56: Map.Entry localEntry = (Map.Entry)localIterator.next();
        Table localTable = (Table)localEntry.getValue();
        if ((localTable == null) || (!localTable.tableName.equals(paramString)))
          break;
        localObject2 = (String)localEntry.getKey();
        boolean bool = ((String)localObject2).startsWith(paramDbUtils.getDaoConfig().getDbName() + "#");
        if (!bool)
          break;
      }
    }
    finally
    {
    }
  }

  public boolean isCheckedDatabase()
  {
    return this.checkedDatabase;
  }

  public void setCheckedDatabase(boolean paramBoolean)
  {
    this.checkedDatabase = paramBoolean;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.table.Table
 * JD-Core Version:    0.6.2
 */