package com.lidroid.xutils.db.sqlite;

import android.text.TextUtils;
import com.lidroid.xutils.db.converter.ColumnConverterFactory;
import com.lidroid.xutils.db.table.ColumnUtils;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class WhereBuilder
{
  private final List<String> whereItems = new ArrayList();

  private void appendCondition(String paramString1, String paramString2, String paramString3, Object paramObject)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.whereItems.size() > 0)
      localStringBuilder.append(" ");
    if (!TextUtils.isEmpty(paramString1))
      localStringBuilder.append(paramString1 + " ");
    localStringBuilder.append(paramString2);
    if ("!=".equals(paramString3))
    {
      paramString3 = "<>";
      if (paramObject != null)
        break label183;
      if (!"=".equals(paramString3))
        break label133;
      localStringBuilder.append(" IS NULL");
    }
    while (true)
    {
      this.whereItems.add(localStringBuilder.toString());
      return;
      if (!"==".equals(paramString3))
        break;
      paramString3 = "=";
      break;
      label133: if ("<>".equals(paramString3))
      {
        localStringBuilder.append(" IS NOT NULL");
      }
      else
      {
        localStringBuilder.append(" " + paramString3 + " NULL");
        continue;
        label183: localStringBuilder.append(" " + paramString3 + " ");
        if ("IN".equalsIgnoreCase(paramString3))
        {
          Object localObject7;
          if ((paramObject instanceof Iterable))
            localObject7 = (Iterable)paramObject;
          while (true)
            if (localObject7 != null)
            {
              StringBuffer localStringBuffer = new StringBuffer("(");
              Iterator localIterator2 = ((Iterable)localObject7).iterator();
              if (!localIterator2.hasNext())
              {
                localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
                localStringBuffer.append(")");
                localStringBuilder.append(localStringBuffer.toString());
                break;
                boolean bool2 = paramObject.getClass().isArray();
                localObject7 = null;
                if (!bool2)
                  continue;
                ArrayList localArrayList2 = new ArrayList();
                int k = Array.getLength(paramObject);
                for (int m = 0; ; m++)
                {
                  if (m >= k)
                  {
                    localObject7 = localArrayList2;
                    break;
                  }
                  localArrayList2.add(Array.get(paramObject, m));
                }
              }
              Object localObject8 = ColumnUtils.convert2DbColumnValueIfNeeded(localIterator2.next());
              if (ColumnDbType.TEXT.equals(ColumnConverterFactory.getDbColumnType(localObject8.getClass())))
              {
                String str4 = localObject8.toString();
                if (str4.indexOf('\'') != -1)
                  str4 = str4.replace("'", "''");
                localStringBuffer.append("'" + str4 + "'");
              }
              while (true)
              {
                localStringBuffer.append(",");
                break;
                localStringBuffer.append(localObject8);
              }
            }
          throw new IllegalArgumentException("value must be an Array or an Iterable.");
        }
        if ("BETWEEN".equalsIgnoreCase(paramString3))
        {
          Object localObject2;
          if ((paramObject instanceof Iterable))
            localObject2 = (Iterable)paramObject;
          while (true)
            if (localObject2 != null)
            {
              Iterator localIterator1 = ((Iterable)localObject2).iterator();
              if (!localIterator1.hasNext())
              {
                throw new IllegalArgumentException("value must have tow items.");
                boolean bool1 = paramObject.getClass().isArray();
                localObject2 = null;
                if (bool1)
                {
                  ArrayList localArrayList1 = new ArrayList();
                  int i = Array.getLength(paramObject);
                  for (int j = 0; ; j++)
                  {
                    if (j >= i)
                    {
                      localObject2 = localArrayList1;
                      break;
                    }
                    localArrayList1.add(Array.get(paramObject, j));
                  }
                }
              }
              else
              {
                Object localObject3 = localIterator1.next();
                if (!localIterator1.hasNext())
                  throw new IllegalArgumentException("value must have tow items.");
                Object localObject4 = localIterator1.next();
                Object localObject5 = ColumnUtils.convert2DbColumnValueIfNeeded(localObject3);
                Object localObject6 = ColumnUtils.convert2DbColumnValueIfNeeded(localObject4);
                if (ColumnDbType.TEXT.equals(ColumnConverterFactory.getDbColumnType(localObject5.getClass())))
                {
                  String str2 = localObject5.toString();
                  if (str2.indexOf('\'') != -1)
                    str2 = str2.replace("'", "''");
                  String str3 = localObject6.toString();
                  if (str3.indexOf('\'') != -1)
                    str3 = str3.replace("'", "''");
                  localStringBuilder.append("'" + str2 + "'");
                  localStringBuilder.append(" AND ");
                  localStringBuilder.append("'" + str3 + "'");
                  break;
                }
                localStringBuilder.append(localObject5);
                localStringBuilder.append(" AND ");
                localStringBuilder.append(localObject6);
                break;
              }
            }
          throw new IllegalArgumentException("value must be an Array or an Iterable.");
        }
        Object localObject1 = ColumnUtils.convert2DbColumnValueIfNeeded(paramObject);
        if (ColumnDbType.TEXT.equals(ColumnConverterFactory.getDbColumnType(localObject1.getClass())))
        {
          String str1 = localObject1.toString();
          if (str1.indexOf('\'') != -1)
            str1 = str1.replace("'", "''");
          localStringBuilder.append("'" + str1 + "'");
        }
        else
        {
          localStringBuilder.append(localObject1);
        }
      }
    }
  }

  public static WhereBuilder b()
  {
    return new WhereBuilder();
  }

  public static WhereBuilder b(String paramString1, String paramString2, Object paramObject)
  {
    WhereBuilder localWhereBuilder = new WhereBuilder();
    localWhereBuilder.appendCondition(null, paramString1, paramString2, paramObject);
    return localWhereBuilder;
  }

  public WhereBuilder and(String paramString1, String paramString2, Object paramObject)
  {
    if (this.whereItems.size() == 0);
    for (String str = null; ; str = "AND")
    {
      appendCondition(str, paramString1, paramString2, paramObject);
      return this;
    }
  }

  public WhereBuilder expr(String paramString)
  {
    this.whereItems.add(" " + paramString);
    return this;
  }

  public WhereBuilder expr(String paramString1, String paramString2, Object paramObject)
  {
    appendCondition(null, paramString1, paramString2, paramObject);
    return this;
  }

  public int getWhereItemSize()
  {
    return this.whereItems.size();
  }

  public WhereBuilder or(String paramString1, String paramString2, Object paramObject)
  {
    if (this.whereItems.size() == 0);
    for (String str = null; ; str = "OR")
    {
      appendCondition(str, paramString1, paramString2, paramObject);
      return this;
    }
  }

  public String toString()
  {
    if (this.whereItems.size() == 0)
      return "";
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = this.whereItems.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localStringBuilder.toString();
      localStringBuilder.append((String)localIterator.next());
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.sqlite.WhereBuilder
 * JD-Core Version:    0.6.2
 */