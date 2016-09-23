package com.lidroid.xutils.db.converter;

import android.database.Cursor;
import com.lidroid.xutils.db.sqlite.ColumnDbType;

public abstract interface ColumnConverter<T>
{
  public abstract Object fieldValue2ColumnValue(T paramT);

  public abstract ColumnDbType getColumnDbType();

  public abstract T getFieldValue(Cursor paramCursor, int paramInt);

  public abstract T getFieldValue(String paramString);
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.converter.ColumnConverter
 * JD-Core Version:    0.6.2
 */