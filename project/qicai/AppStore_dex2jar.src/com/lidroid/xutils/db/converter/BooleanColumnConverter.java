package com.lidroid.xutils.db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.db.sqlite.ColumnDbType;

public class BooleanColumnConverter
  implements ColumnConverter<Boolean>
{
  public Object fieldValue2ColumnValue(Boolean paramBoolean)
  {
    if (paramBoolean == null)
      return null;
    if (paramBoolean.booleanValue());
    for (int i = 1; ; i = 0)
      return Integer.valueOf(i);
  }

  public ColumnDbType getColumnDbType()
  {
    return ColumnDbType.INTEGER;
  }

  public Boolean getFieldValue(Cursor paramCursor, int paramInt)
  {
    int i = 1;
    if (paramCursor.isNull(paramInt))
      return null;
    if (paramCursor.getInt(paramInt) == i);
    while (true)
    {
      return Boolean.valueOf(i);
      int j = 0;
    }
  }

  public Boolean getFieldValue(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    if (paramString.length() == 1);
    for (boolean bool = "1".equals(paramString); ; bool = Boolean.valueOf(paramString).booleanValue())
      return Boolean.valueOf(bool);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.converter.BooleanColumnConverter
 * JD-Core Version:    0.6.2
 */