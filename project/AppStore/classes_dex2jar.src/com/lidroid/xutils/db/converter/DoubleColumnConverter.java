package com.lidroid.xutils.db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.db.sqlite.ColumnDbType;

public class DoubleColumnConverter
  implements ColumnConverter<Double>
{
  public Object fieldValue2ColumnValue(Double paramDouble)
  {
    return paramDouble;
  }

  public ColumnDbType getColumnDbType()
  {
    return ColumnDbType.REAL;
  }

  public Double getFieldValue(Cursor paramCursor, int paramInt)
  {
    if (paramCursor.isNull(paramInt))
      return null;
    return Double.valueOf(paramCursor.getDouble(paramInt));
  }

  public Double getFieldValue(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    return Double.valueOf(paramString);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.converter.DoubleColumnConverter
 * JD-Core Version:    0.6.2
 */