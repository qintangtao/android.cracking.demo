package com.lidroid.xutils.db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.db.sqlite.ColumnDbType;

public class ByteColumnConverter
  implements ColumnConverter<Byte>
{
  public Object fieldValue2ColumnValue(Byte paramByte)
  {
    return paramByte;
  }

  public ColumnDbType getColumnDbType()
  {
    return ColumnDbType.INTEGER;
  }

  public Byte getFieldValue(Cursor paramCursor, int paramInt)
  {
    if (paramCursor.isNull(paramInt))
      return null;
    return Byte.valueOf((byte)paramCursor.getInt(paramInt));
  }

  public Byte getFieldValue(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    return Byte.valueOf(paramString);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.converter.ByteColumnConverter
 * JD-Core Version:    0.6.2
 */