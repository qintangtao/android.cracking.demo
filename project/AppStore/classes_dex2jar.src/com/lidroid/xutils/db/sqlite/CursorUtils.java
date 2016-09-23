package com.lidroid.xutils.db.sqlite;

import android.database.Cursor;
import com.lidroid.xutils.DbUtils;
import com.lidroid.xutils.db.converter.ColumnConverter;
import com.lidroid.xutils.db.table.Column;
import com.lidroid.xutils.db.table.DbModel;
import com.lidroid.xutils.db.table.Finder;
import com.lidroid.xutils.db.table.Id;
import com.lidroid.xutils.db.table.Table;
import com.lidroid.xutils.util.LogUtils;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

public class CursorUtils
{
  public static DbModel getDbModel(Cursor paramCursor)
  {
    DbModel localDbModel = null;
    int i;
    if (paramCursor != null)
    {
      localDbModel = new DbModel();
      i = paramCursor.getColumnCount();
    }
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return localDbModel;
      localDbModel.add(paramCursor.getColumnName(j), paramCursor.getString(j));
    }
  }

  public static <T> T getEntity(DbUtils paramDbUtils, Cursor paramCursor, Class<T> paramClass, long paramLong)
  {
    Object localObject1;
    if ((paramDbUtils == null) || (paramCursor == null))
    {
      localObject1 = null;
      return localObject1;
    }
    EntityTempCache.setSeq(paramLong);
    while (true)
    {
      Table localTable;
      int k;
      try
      {
        localTable = Table.get(paramDbUtils, paramClass);
        Id localId = localTable.id;
        String str1 = localId.getColumnName();
        int i = localId.getIndex();
        if (i < 0)
          i = paramCursor.getColumnIndex(str1);
        Object localObject2 = localId.getColumnConverter().getFieldValue(paramCursor, i);
        localObject1 = EntityTempCache.get(paramClass, localObject2);
        if (localObject1 != null)
          break;
        localObject1 = paramClass.newInstance();
        localId.setValue2Entity(localObject1, paramCursor, i);
        EntityTempCache.put(paramClass, localObject2, localObject1);
        int j = paramCursor.getColumnCount();
        k = 0;
        if (k >= j)
        {
          Iterator localIterator = localTable.finderMap.values().iterator();
          if (!localIterator.hasNext())
            break;
          ((Finder)localIterator.next()).setValue2Entity(localObject1, null, 0);
          continue;
        }
      }
      catch (Throwable localThrowable)
      {
        LogUtils.e(localThrowable.getMessage(), localThrowable);
        return null;
      }
      String str2 = paramCursor.getColumnName(k);
      Column localColumn = (Column)localTable.columnMap.get(str2);
      if (localColumn != null)
        localColumn.setValue2Entity(localObject1, paramCursor, k);
      k++;
    }
  }

  private static class EntityTempCache
  {
    private static final ConcurrentHashMap<String, Object> cache = new ConcurrentHashMap();
    private static long seq = 0L;

    public static <T> T get(Class<T> paramClass, Object paramObject)
    {
      return cache.get(paramClass.getName() + "#" + paramObject);
    }

    public static <T> void put(Class<T> paramClass, Object paramObject1, Object paramObject2)
    {
      cache.put(paramClass.getName() + "#" + paramObject1, paramObject2);
    }

    public static void setSeq(long paramLong)
    {
      if (seq != paramLong)
      {
        cache.clear();
        seq = paramLong;
      }
    }
  }

  public static class FindCacheSequence
  {
    private static final String FINDER_LAZY_LOADER_CLASS_NAME = FinderLazyLoader.class.getName();
    private static final String FOREIGN_LAZY_LOADER_CLASS_NAME;
    private static long seq = 0L;

    static
    {
      FOREIGN_LAZY_LOADER_CLASS_NAME = ForeignLazyLoader.class.getName();
    }

    public static long getSeq()
    {
      String str = java.lang.Thread.currentThread().getStackTrace()[4].getClassName();
      if ((!str.equals(FOREIGN_LAZY_LOADER_CLASS_NAME)) && (!str.equals(FINDER_LAZY_LOADER_CLASS_NAME)))
        seq = 1L + seq;
      return seq;
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.sqlite.CursorUtils
 * JD-Core Version:    0.6.2
 */