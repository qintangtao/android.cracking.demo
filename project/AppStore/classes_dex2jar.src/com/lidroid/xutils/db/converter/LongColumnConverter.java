package com.lidroid.xutils.db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.db.sqlite.ColumnDbType;

public class LongColumnConverter
  implements ColumnConverter<Long>
{
  public Object fieldValue2ColumnValue(Long paramLong)
  {
    return paramLong;
  }

  public ColumnDbType getColumnDbType()
  {
    return ColumnDbType.INTEGER;
  }

  public Long getFieldValue(Cursor paramCursor, int paramInt)
  {
    if (paramCursor.isNull(paramInt))
      return null;
    return Long.valueOf(paramCursor.getLong(paramInt));
  }

  public Long getFieldValue(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    return Long.valueOf(paramString);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.converter.LongColumnConverter
 * JD-Core Version:    0.6.2
 */