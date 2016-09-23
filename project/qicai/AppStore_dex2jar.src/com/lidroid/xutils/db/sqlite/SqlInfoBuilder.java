package com.lidroid.xutils.db.sqlite;

import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.db.table.Column;
import com.lidroid.xutils.db.table.ColumnUtils;
import com.lidroid.xutils.db.table.Finder;
import com.lidroid.xutils.db.table.Id;
import com.lidroid.xutils.db.table.KeyValue;
import com.lidroid.xutils.db.table.Table;
import com.lidroid.xutils.db.table.TableUtils;
import com.lidroid.xutils.exception.DbException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class SqlInfoBuilder
{
  public static SqlInfo buildCreateTableSqlInfo(DbUtils paramDbUtils, Class<?> paramClass)
    throws DbException
  {
    Table localTable = Table.get(paramDbUtils, paramClass);
    Id localId = localTable.id;
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("CREATE TABLE IF NOT EXISTS ");
    localStringBuffer.append(localTable.tableName);
    localStringBuffer.append(" ( ");
    Iterator localIterator;
    if (localId.isAutoIncrement())
    {
      localStringBuffer.append("\"").append(localId.getColumnName()).append("\"  ").append("INTEGER PRIMARY KEY AUTOINCREMENT,");
      localIterator = localTable.columnMap.values().iterator();
    }
    while (true)
    {
      if (!localIterator.hasNext())
      {
        localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
        localStringBuffer.append(" )");
        return new SqlInfo(localStringBuffer.toString());
        localStringBuffer.append("\"").append(localId.getColumnName()).append("\"  ").append(localId.getColumnDbType()).append(" PRIMARY KEY,");
        break;
      }
      Column localColumn = (Column)localIterator.next();
      if (!(localColumn instanceof Finder))
      {
        localStringBuffer.append("\"").append(localColumn.getColumnName()).append("\"  ");
        localStringBuffer.append(localColumn.getColumnDbType());
        if (ColumnUtils.isUnique(localColumn.getColumnField()))
          localStringBuffer.append(" UNIQUE");
        if (ColumnUtils.isNotNull(localColumn.getColumnField()))
          localStringBuffer.append(" NOT NULL");
        String str = ColumnUtils.getCheck(localColumn.getColumnField());
        if (str != null)
          localStringBuffer.append(" CHECK(").append(str).append(")");
        localStringBuffer.append(",");
      }
    }
  }

  private static String buildDeleteSqlByTableName(String paramString)
  {
    return "DELETE FROM " + paramString;
  }

  public static SqlInfo buildDeleteSqlInfo(DbUtils paramDbUtils, Class<?> paramClass, WhereBuilder paramWhereBuilder)
    throws DbException
  {
    StringBuilder localStringBuilder = new StringBuilder(buildDeleteSqlByTableName(Table.get(paramDbUtils, paramClass).tableName));
    if ((paramWhereBuilder != null) && (paramWhereBuilder.getWhereItemSize() > 0))
      localStringBuilder.append(" WHERE ").append(paramWhereBuilder.toString());
    return new SqlInfo(localStringBuilder.toString());
  }

  public static SqlInfo buildDeleteSqlInfo(DbUtils paramDbUtils, Class<?> paramClass, Object paramObject)
    throws DbException
  {
    SqlInfo localSqlInfo = new SqlInfo();
    Table localTable = Table.get(paramDbUtils, paramClass);
    Id localId = localTable.id;
    if (paramObject == null)
      throw new DbException("this entity[" + paramClass + "]'s id value is null");
    StringBuilder localStringBuilder = new StringBuilder(buildDeleteSqlByTableName(localTable.tableName));
    localStringBuilder.append(" WHERE ").append(WhereBuilder.b(localId.getColumnName(), "=", paramObject));
    localSqlInfo.setSql(localStringBuilder.toString());
    return localSqlInfo;
  }

  public static SqlInfo buildDeleteSqlInfo(DbUtils paramDbUtils, Object paramObject)
    throws DbException
  {
    SqlInfo localSqlInfo = new SqlInfo();
    Table localTable = Table.get(paramDbUtils, paramObject.getClass());
    Id localId = localTable.id;
    Object localObject = localId.getColumnValue(paramObject);
    if (localObject == null)
      throw new DbException("this entity[" + paramObject.getClass() + "]'s id value is null");
    StringBuilder localStringBuilder = new StringBuilder(buildDeleteSqlByTableName(localTable.tableName));
    localStringBuilder.append(" WHERE ").append(WhereBuilder.b(localId.getColumnName(), "=", localObject));
    localSqlInfo.setSql(localStringBuilder.toString());
    return localSqlInfo;
  }

  public static SqlInfo buildInsertSqlInfo(DbUtils paramDbUtils, Object paramObject)
    throws DbException
  {
    List localList = entity2KeyValueList(paramDbUtils, paramObject);
    if (localList.size() == 0)
      return null;
    SqlInfo localSqlInfo = new SqlInfo();
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("INSERT INTO ");
    localStringBuffer.append(TableUtils.getTableName(paramObject.getClass()));
    localStringBuffer.append(" (");
    Iterator localIterator = localList.iterator();
    int i;
    if (!localIterator.hasNext())
    {
      localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
      localStringBuffer.append(") VALUES (");
      i = localList.size();
    }
    for (int j = 0; ; j++)
    {
      if (j >= i)
      {
        localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
        localStringBuffer.append(")");
        localSqlInfo.setSql(localStringBuffer.toString());
        return localSqlInfo;
        KeyValue localKeyValue = (KeyValue)localIterator.next();
        localStringBuffer.append(localKeyValue.key).append(",");
        localSqlInfo.addBindArgWithoutConverter(localKeyValue.value);
        break;
      }
      localStringBuffer.append("?,");
    }
  }

  public static SqlInfo buildReplaceSqlInfo(DbUtils paramDbUtils, Object paramObject)
    throws DbException
  {
    List localList = entity2KeyValueList(paramDbUtils, paramObject);
    if (localList.size() == 0)
      return null;
    SqlInfo localSqlInfo = new SqlInfo();
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("REPLACE INTO ");
    localStringBuffer.append(TableUtils.getTableName(paramObject.getClass()));
    localStringBuffer.append(" (");
    Iterator localIterator = localList.iterator();
    int i;
    if (!localIterator.hasNext())
    {
      localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
      localStringBuffer.append(") VALUES (");
      i = localList.size();
    }
    for (int j = 0; ; j++)
    {
      if (j >= i)
      {
        localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
        localStringBuffer.append(")");
        localSqlInfo.setSql(localStringBuffer.toString());
        return localSqlInfo;
        KeyValue localKeyValue = (KeyValue)localIterator.next();
        localStringBuffer.append(localKeyValue.key).append(",");
        localSqlInfo.addBindArgWithoutConverter(localKeyValue.value);
        break;
      }
      localStringBuffer.append("?,");
    }
  }

  public static SqlInfo buildUpdateSqlInfo(DbUtils paramDbUtils, Object paramObject, WhereBuilder paramWhereBuilder, String[] paramArrayOfString)
    throws DbException
  {
    List localList = entity2KeyValueList(paramDbUtils, paramObject);
    if (localList.size() == 0)
      return null;
    HashSet localHashSet = null;
    if (paramArrayOfString != null)
    {
      int i = paramArrayOfString.length;
      localHashSet = null;
      if (i > 0)
      {
        localHashSet = new HashSet(paramArrayOfString.length);
        Collections.addAll(localHashSet, paramArrayOfString);
      }
    }
    String str = TableUtils.getTableName(paramObject.getClass());
    SqlInfo localSqlInfo = new SqlInfo();
    StringBuffer localStringBuffer = new StringBuffer("UPDATE ");
    localStringBuffer.append(str);
    localStringBuffer.append(" SET ");
    Iterator localIterator = localList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
        if ((paramWhereBuilder != null) && (paramWhereBuilder.getWhereItemSize() > 0))
          localStringBuffer.append(" WHERE ").append(paramWhereBuilder.toString());
        localSqlInfo.setSql(localStringBuffer.toString());
        return localSqlInfo;
      }
      KeyValue localKeyValue = (KeyValue)localIterator.next();
      if ((localHashSet == null) || (localHashSet.contains(localKeyValue.key)))
      {
        localStringBuffer.append(localKeyValue.key).append("=?,");
        localSqlInfo.addBindArgWithoutConverter(localKeyValue.value);
      }
    }
  }

  public static SqlInfo buildUpdateSqlInfo(DbUtils paramDbUtils, Object paramObject, String[] paramArrayOfString)
    throws DbException
  {
    List localList = entity2KeyValueList(paramDbUtils, paramObject);
    if (localList.size() == 0)
      return null;
    HashSet localHashSet = null;
    if (paramArrayOfString != null)
    {
      int i = paramArrayOfString.length;
      localHashSet = null;
      if (i > 0)
      {
        localHashSet = new HashSet(paramArrayOfString.length);
        Collections.addAll(localHashSet, paramArrayOfString);
      }
    }
    Table localTable = Table.get(paramDbUtils, paramObject.getClass());
    Id localId = localTable.id;
    Object localObject = localId.getColumnValue(paramObject);
    if (localObject == null)
      throw new DbException("this entity[" + paramObject.getClass() + "]'s id value is null");
    SqlInfo localSqlInfo = new SqlInfo();
    StringBuffer localStringBuffer = new StringBuffer("UPDATE ");
    localStringBuffer.append(localTable.tableName);
    localStringBuffer.append(" SET ");
    Iterator localIterator = localList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
        localStringBuffer.append(" WHERE ").append(WhereBuilder.b(localId.getColumnName(), "=", localObject));
        localSqlInfo.setSql(localStringBuffer.toString());
        return localSqlInfo;
      }
      KeyValue localKeyValue = (KeyValue)localIterator.next();
      if ((localHashSet == null) || (localHashSet.contains(localKeyValue.key)))
      {
        localStringBuffer.append(localKeyValue.key).append("=?,");
        localSqlInfo.addBindArgWithoutConverter(localKeyValue.value);
      }
    }
  }

  private static KeyValue column2KeyValue(Object paramObject, Column paramColumn)
  {
    String str = paramColumn.getColumnName();
    KeyValue localKeyValue = null;
    if (str != null)
    {
      Object localObject = paramColumn.getColumnValue(paramObject);
      if (localObject == null)
        localObject = paramColumn.getDefaultValue();
      localKeyValue = new KeyValue(str, localObject);
    }
    return localKeyValue;
  }

  public static List<KeyValue> entity2KeyValueList(DbUtils paramDbUtils, Object paramObject)
  {
    ArrayList localArrayList = new ArrayList();
    Table localTable = Table.get(paramDbUtils, paramObject.getClass());
    Id localId = localTable.id;
    if (!localId.isAutoIncrement())
    {
      Object localObject = localId.getColumnValue(paramObject);
      localArrayList.add(new KeyValue(localId.getColumnName(), localObject));
    }
    Iterator localIterator = localTable.columnMap.values().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localArrayList;
      Column localColumn = (Column)localIterator.next();
      if (!(localColumn instanceof Finder))
      {
        KeyValue localKeyValue = column2KeyValue(paramObject, localColumn);
        if (localKeyValue != null)
          localArrayList.add(localKeyValue);
      }
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.sqlite.SqlInfoBuilder
 * JD-Core Version:    0.6.2
 */