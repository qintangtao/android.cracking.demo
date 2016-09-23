package com.lidroid.xutils.db.converter;

import android.database.Cursor;
import com.lidroid.xutils.db.sqlite.ColumnDbType;

public class StringColumnConverter
  implements ColumnConverter<String>
{
  public Object fieldValue2ColumnValue(String paramString)
  {
    return paramString;
  }

  public ColumnDbType getColumnDbType()
  {
    return ColumnDbType.TEXT;
  }

  public String getFieldValue(Cursor paramCursor, int paramInt)
  {
    if (paramCursor.isNull(paramInt))
      return null;
    return paramCursor.getString(paramInt);
  }

  public String getFieldValue(String paramString)
  {
    return paramString;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.converter.StringColumnConverter
 * JD-Core Version:    0.6.2
 */