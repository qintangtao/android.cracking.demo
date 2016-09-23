package com.lidroid.xutils.db.table;

import android.text.TextUtils;
import com.lidroid.xutils.db.annotation.Table;
import com.lidroid.xutils.db.converter.ColumnConverterFactory;
import com.lidroid.xutils.util.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

public class TableUtils
{
  private static ConcurrentHashMap<String, HashMap<String, Column>> entityColumnsMap = new ConcurrentHashMap();
  private static ConcurrentHashMap<String, Id> entityIdMap = new ConcurrentHashMap();

  private static void addColumns2Map(Class<?> paramClass, String paramString, HashMap<String, Column> paramHashMap)
  {
    if (Object.class.equals(paramClass))
      return;
    while (true)
    {
      Field[] arrayOfField;
      int j;
      try
      {
        arrayOfField = paramClass.getDeclaredFields();
        int i = arrayOfField.length;
        j = 0;
        if (j >= i)
        {
          if (Object.class.equals(paramClass.getSuperclass()))
            break;
          addColumns2Map(paramClass.getSuperclass(), paramString, paramHashMap);
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        LogUtils.e(localThrowable.getMessage(), localThrowable);
        return;
      }
      Field localField = arrayOfField[j];
      if ((!ColumnUtils.isTransient(localField)) && (!Modifier.isStatic(localField.getModifiers())))
        if (ColumnConverterFactory.isSupportColumnConverter(localField.getType()))
        {
          if (!localField.getName().equals(paramString))
          {
            Column localColumn = new Column(paramClass, localField);
            if (!paramHashMap.containsKey(localColumn.getColumnName()))
              paramHashMap.put(localColumn.getColumnName(), localColumn);
          }
        }
        else if (ColumnUtils.isForeign(localField))
        {
          Foreign localForeign = new Foreign(paramClass, localField);
          if (!paramHashMap.containsKey(localForeign.getColumnName()))
            paramHashMap.put(localForeign.getColumnName(), localForeign);
        }
        else if (ColumnUtils.isFinder(localField))
        {
          Finder localFinder = new Finder(paramClass, localField);
          if (!paramHashMap.containsKey(localFinder.getColumnName()))
            paramHashMap.put(localFinder.getColumnName(), localFinder);
        }
      j++;
    }
  }

  static HashMap<String, Column> getColumnMap(Class<?> paramClass)
  {
    try
    {
      if (entityColumnsMap.containsKey(paramClass.getName()));
      HashMap localHashMap;
      for (Object localObject2 = (HashMap)entityColumnsMap.get(paramClass.getName()); ; localObject2 = localHashMap)
      {
        return localObject2;
        localHashMap = new HashMap();
        addColumns2Map(paramClass, getPrimaryKeyFieldName(paramClass), localHashMap);
        entityColumnsMap.put(paramClass.getName(), localHashMap);
      }
    }
    finally
    {
    }
  }

  static Column getColumnOrId(Class<?> paramClass, String paramString)
  {
    if (getPrimaryKeyColumnName(paramClass).equals(paramString))
      return getId(paramClass);
    return (Column)getColumnMap(paramClass).get(paramString);
  }

  public static String getExecAfterTableCreated(Class<?> paramClass)
  {
    Table localTable = (Table)paramClass.getAnnotation(Table.class);
    if (localTable != null)
      return localTable.execAfterTableCreated();
    return null;
  }

  static Id getId(Class<?> paramClass)
  {
    try
    {
      if (Object.class.equals(paramClass))
        throw new RuntimeException("field 'id' not found");
    }
    finally
    {
    }
    Object localObject3;
    if (entityIdMap.containsKey(paramClass.getName()))
    {
      localObject3 = (Id)entityIdMap.get(paramClass.getName());
      return localObject3;
    }
    Field[] arrayOfField = paramClass.getDeclaredFields();
    Object localObject2 = null;
    int i;
    int j;
    label83: int k;
    int m;
    if (arrayOfField != null)
    {
      i = arrayOfField.length;
      j = 0;
    }
    else
    {
      while (true)
      {
        if (localObject2 == null)
        {
          k = arrayOfField.length;
          m = 0;
          break label213;
        }
        if (localObject2 != null)
          break label170;
        localObject3 = getId(paramClass.getSuperclass());
        break;
        label113: Field localField2 = arrayOfField[j];
        if (localField2.getAnnotation(com.lidroid.xutils.db.annotation.Id.class) == null)
          break label223;
        localObject2 = localField2;
      }
    }
    label170: label201: label213: label223: label229: label235: label239: 
    while (true)
    {
      Field localField1 = arrayOfField[m];
      if (!"id".equals(localField1.getName()))
      {
        if (!"_id".equals(localField1.getName()))
          break label235;
        break label229;
        Id localId = new Id(paramClass, localObject2);
        entityIdMap.put(paramClass.getName(), localId);
        localObject3 = localId;
        break;
        if (j >= i)
        {
          localObject2 = null;
          break label83;
        }
      }
      while (true)
      {
        if (m < k)
          break label239;
        break;
        j++;
        break label201;
        break label113;
        localObject2 = localField1;
        break;
        m++;
      }
    }
  }

  private static String getPrimaryKeyColumnName(Class<?> paramClass)
  {
    Id localId = getId(paramClass);
    if (localId == null)
      return null;
    return localId.getColumnName();
  }

  private static String getPrimaryKeyFieldName(Class<?> paramClass)
  {
    Id localId = getId(paramClass);
    if (localId == null)
      return null;
    return localId.getColumnField().getName();
  }

  public static String getTableName(Class<?> paramClass)
  {
    Table localTable = (Table)paramClass.getAnnotation(Table.class);
    if ((localTable == null) || (TextUtils.isEmpty(localTable.name())))
      return paramClass.getName().replace('.', '_');
    return localTable.name();
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.table.TableUtils
 * JD-Core Version:    0.6.2
 */