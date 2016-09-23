package com.lidroid.xutils.db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.db.sqlite.ColumnDbType;

public class ShortColumnConverter
  implements ColumnConverter<Short>
{
  public Object fieldValue2ColumnValue(Short paramShort)
  {
    return paramShort;
  }

  public ColumnDbType getColumnDbType()
  {
    return ColumnDbType.INTEGER;
  }

  public Short getFieldValue(Cursor paramCursor, int paramInt)
  {
    if (paramCursor.isNull(paramInt))
      return null;
    return Short.valueOf(paramCursor.getShort(paramInt));
  }

  public Short getFieldValue(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    return Short.valueOf(paramString);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.converter.ShortColumnConverter
 * JD-Core Version:    0.6.2
 */