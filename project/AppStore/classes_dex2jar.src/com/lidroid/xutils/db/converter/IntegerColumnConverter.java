package com.lidroid.xutils.db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.db.sqlite.ColumnDbType;

public class IntegerColumnConverter
  implements ColumnConverter<Integer>
{
  public Object fieldValue2ColumnValue(Integer paramInteger)
  {
    return paramInteger;
  }

  public ColumnDbType getColumnDbType()
  {
    return ColumnDbType.INTEGER;
  }

  public Integer getFieldValue(Cursor paramCursor, int paramInt)
  {
    if (paramCursor.isNull(paramInt))
      return null;
    return Integer.valueOf(paramCursor.getInt(paramInt));
  }

  public Integer getFieldValue(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    return Integer.valueOf(paramString);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.converter.IntegerColumnConverter
 * JD-Core Version:    0.6.2
 */