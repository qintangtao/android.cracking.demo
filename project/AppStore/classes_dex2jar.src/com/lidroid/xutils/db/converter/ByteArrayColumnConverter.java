package com.lidroid.xutils.db.converter;

import android.database.Cursor;
import com.lidroid.xutils.db.sqlite.ColumnDbType;

public class ByteArrayColumnConverter
  implements ColumnConverter<byte[]>
{
  public Object fieldValue2ColumnValue(byte[] paramArrayOfByte)
  {
    return paramArrayOfByte;
  }

  public ColumnDbType getColumnDbType()
  {
    return ColumnDbType.BLOB;
  }

  public byte[] getFieldValue(Cursor paramCursor, int paramInt)
  {
    if (paramCursor.isNull(paramInt))
      return null;
    return paramCursor.getBlob(paramInt);
  }

  public byte[] getFieldValue(String paramString)
  {
    return null;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.converter.ByteArrayColumnConverter
 * JD-Core Version:    0.6.2
 */