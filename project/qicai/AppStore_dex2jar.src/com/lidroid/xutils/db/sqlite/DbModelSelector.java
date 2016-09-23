package com.lidroid.xutils.db.sqlite;

import android.text.TextUtils;
import java.util.List;

public class DbModelSelector
{
  private String[] columnExpressions;
  private String groupByColumnName;
  private WhereBuilder having;
  private Selector selector;

  protected DbModelSelector(Selector paramSelector, String paramString)
  {
    this.selector = paramSelector;
    this.groupByColumnName = paramString;
  }

  protected DbModelSelector(Selector paramSelector, String[] paramArrayOfString)
  {
    this.selector = paramSelector;
    this.columnExpressions = paramArrayOfString;
  }

  private DbModelSelector(Class<?> paramClass)
  {
    this.selector = Selector.from(paramClass);
  }

  public static DbModelSelector from(Class<?> paramClass)
  {
    return new DbModelSelector(paramClass);
  }

  public DbModelSelector and(WhereBuilder paramWhereBuilder)
  {
    this.selector.and(paramWhereBuilder);
    return this;
  }

  public DbModelSelector and(String paramString1, String paramString2, Object paramObject)
  {
    this.selector.and(paramString1, paramString2, paramObject);
    return this;
  }

  public DbModelSelector expr(String paramString)
  {
    this.selector.expr(paramString);
    return this;
  }

  public DbModelSelector expr(String paramString1, String paramString2, Object paramObject)
  {
    this.selector.expr(paramString1, paramString2, paramObject);
    return this;
  }

  public Class<?> getEntityType()
  {
    return this.selector.getEntityType();
  }

  public DbModelSelector groupBy(String paramString)
  {
    this.groupByColumnName = paramString;
    return this;
  }

  public DbModelSelector having(WhereBuilder paramWhereBuilder)
  {
    this.having = paramWhereBuilder;
    return this;
  }

  public DbModelSelector limit(int paramInt)
  {
    this.selector.limit(paramInt);
    return this;
  }

  public DbModelSelector offset(int paramInt)
  {
    this.selector.offset(paramInt);
    return this;
  }

  public DbModelSelector or(WhereBuilder paramWhereBuilder)
  {
    this.selector.or(paramWhereBuilder);
    return this;
  }

  public DbModelSelector or(String paramString1, String paramString2, Object paramObject)
  {
    this.selector.or(paramString1, paramString2, paramObject);
    return this;
  }

  public DbModelSelector orderBy(String paramString)
  {
    this.selector.orderBy(paramString);
    return this;
  }

  public DbModelSelector orderBy(String paramString, boolean paramBoolean)
  {
    this.selector.orderBy(paramString, paramBoolean);
    return this;
  }

  public DbModelSelector select(String[] paramArrayOfString)
  {
    this.columnExpressions = paramArrayOfString;
    return this;
  }

  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("SELECT ");
    int j;
    if ((this.columnExpressions != null) && (this.columnExpressions.length > 0))
    {
      j = 0;
      if (j >= this.columnExpressions.length)
      {
        localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
        label54: localStringBuffer.append(" FROM ").append(this.selector.tableName);
        if ((this.selector.whereBuilder != null) && (this.selector.whereBuilder.getWhereItemSize() > 0))
          localStringBuffer.append(" WHERE ").append(this.selector.whereBuilder.toString());
        if (!TextUtils.isEmpty(this.groupByColumnName))
        {
          localStringBuffer.append(" GROUP BY ").append(this.groupByColumnName);
          if ((this.having != null) && (this.having.getWhereItemSize() > 0))
            localStringBuffer.append(" HAVING ").append(this.having.toString());
        }
        if (this.selector.orderByList == null);
      }
    }
    for (int i = 0; ; i++)
    {
      if (i >= this.selector.orderByList.size())
      {
        if (this.selector.limit > 0)
        {
          localStringBuffer.append(" LIMIT ").append(this.selector.limit);
          localStringBuffer.append(" OFFSET ").append(this.selector.offset);
        }
        return localStringBuffer.toString();
        localStringBuffer.append(this.columnExpressions[j]);
        localStringBuffer.append(",");
        j++;
        break;
        if (!TextUtils.isEmpty(this.groupByColumnName))
        {
          localStringBuffer.append(this.groupByColumnName);
          break label54;
        }
        localStringBuffer.append("*");
        break label54;
      }
      localStringBuffer.append(" ORDER BY ").append(((Selector.OrderBy)this.selector.orderByList.get(i)).toString());
    }
  }

  public DbModelSelector where(WhereBuilder paramWhereBuilder)
  {
    this.selector.where(paramWhereBuilder);
    return this;
  }

  public DbModelSelector where(String paramString1, String paramString2, Object paramObject)
  {
    this.selector.where(paramString1, paramString2, paramObject);
    return this;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.sqlite.DbModelSelector
 * JD-Core Version:    0.6.2
 */