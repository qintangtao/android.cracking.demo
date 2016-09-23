package com.lidroid.xutils.db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.db.sqlite.ColumnDbType;
import java.sql.Date;

public class SqlDateColumnConverter
  implements ColumnConverter<Date>
{
  public Object fieldValue2ColumnValue(Date paramDate)
  {
    if (paramDate == null)
      return null;
    return Long.valueOf(paramDate.getTime());
  }

  public ColumnDbType getColumnDbType()
  {
    return ColumnDbType.INTEGER;
  }

  public Date getFieldValue(Cursor paramCursor, int paramInt)
  {
    if (paramCursor.isNull(paramInt))
      return null;
    return new Date(paramCursor.getLong(paramInt));
  }

  public Date getFieldValue(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    return new Date(Long.valueOf(paramString).longValue());
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.converter.SqlDateColumnConverter
 * JD-Core Version:    0.6.2
 */