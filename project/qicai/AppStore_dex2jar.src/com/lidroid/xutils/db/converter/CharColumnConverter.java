package com.lidroid.xutils.db.converter;

import android.database.Cursor;
import android.text.TextUtils;
import com.lidroid.xutils.db.sqlite.ColumnDbType;

public class CharColumnConverter
  implements ColumnConverter<Character>
{
  public Object fieldValue2ColumnValue(Character paramCharacter)
  {
    if (paramCharacter == null)
      return null;
    return Integer.valueOf(paramCharacter.charValue());
  }

  public ColumnDbType getColumnDbType()
  {
    return ColumnDbType.INTEGER;
  }

  public Character getFieldValue(Cursor paramCursor, int paramInt)
  {
    if (paramCursor.isNull(paramInt))
      return null;
    return Character.valueOf((char)paramCursor.getInt(paramInt));
  }

  public Character getFieldValue(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return null;
    return Character.valueOf(paramString.charAt(0));
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.converter.CharColumnConverter
 * JD-Core Version:    0.6.2
 */