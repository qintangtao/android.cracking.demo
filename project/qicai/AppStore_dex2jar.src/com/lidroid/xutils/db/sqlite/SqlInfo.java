package com.lidroid.xutils.db.sqlite;

import com.lidroid.xutils.db.table.ColumnUtils;
import java.util.LinkedList;

public class SqlInfo
{
  private LinkedList<Object> bindArgs;
  private String sql;

  public SqlInfo()
  {
  }

  public SqlInfo(String paramString)
  {
    this.sql = paramString;
  }

  public SqlInfo(String paramString, Object[] paramArrayOfObject)
  {
    this.sql = paramString;
    addBindArgs(paramArrayOfObject);
  }

  public void addBindArg(Object paramObject)
  {
    if (this.bindArgs == null)
      this.bindArgs = new LinkedList();
    this.bindArgs.add(ColumnUtils.convert2DbColumnValueIfNeeded(paramObject));
  }

  void addBindArgWithoutConverter(Object paramObject)
  {
    if (this.bindArgs == null)
      this.bindArgs = new LinkedList();
    this.bindArgs.add(paramObject);
  }

  public void addBindArgs(Object[] paramArrayOfObject)
  {
    int i;
    if (paramArrayOfObject != null)
      i = paramArrayOfObject.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      addBindArg(paramArrayOfObject[j]);
    }
  }

  public LinkedList<Object> getBindArgs()
  {
    return this.bindArgs;
  }

  public Object[] getBindArgsAsArray()
  {
    if (this.bindArgs != null)
      return this.bindArgs.toArray();
    return null;
  }

  public String[] getBindArgsAsStrArray()
  {
    if (this.bindArgs != null)
    {
      String[] arrayOfString = new String[this.bindArgs.size()];
      int i = 0;
      if (i >= this.bindArgs.size())
        return arrayOfString;
      Object localObject = this.bindArgs.get(i);
      if (localObject == null);
      for (String str = null; ; str = localObject.toString())
      {
        arrayOfString[i] = str;
        i++;
        break;
      }
    }
    return null;
  }

  public String getSql()
  {
    return this.sql;
  }

  public void setSql(String paramString)
  {
    this.sql = paramString;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.sqlite.SqlInfo
 * JD-Core Version:    0.6.2
 */