package com.lidroid.xutils.db.table;

import android.text.TextUtils;
import java.util.HashMap;

public class DbModel
{
  private HashMap<String, String> dataMap = new HashMap();

  public void add(String paramString1, String paramString2)
  {
    this.dataMap.put(paramString1, paramString2);
  }

  public boolean getBoolean(String paramString)
  {
    String str = (String)this.dataMap.get(paramString);
    if (str != null)
    {
      if (str.length() == 1)
        return "1".equals(str);
      return Boolean.valueOf(str).booleanValue();
    }
    return false;
  }

  public HashMap<String, String> getDataMap()
  {
    return this.dataMap;
  }

  public java.util.Date getDate(String paramString)
  {
    return new java.util.Date(Long.valueOf((String)this.dataMap.get(paramString)).longValue());
  }

  public double getDouble(String paramString)
  {
    return Double.valueOf((String)this.dataMap.get(paramString)).doubleValue();
  }

  public float getFloat(String paramString)
  {
    return Float.valueOf((String)this.dataMap.get(paramString)).floatValue();
  }

  public int getInt(String paramString)
  {
    return Integer.valueOf((String)this.dataMap.get(paramString)).intValue();
  }

  public long getLong(String paramString)
  {
    return Long.valueOf((String)this.dataMap.get(paramString)).longValue();
  }

  public java.sql.Date getSqlDate(String paramString)
  {
    return new java.sql.Date(Long.valueOf((String)this.dataMap.get(paramString)).longValue());
  }

  public String getString(String paramString)
  {
    return (String)this.dataMap.get(paramString);
  }

  public boolean isEmpty(String paramString)
  {
    return TextUtils.isEmpty((CharSequence)this.dataMap.get(paramString));
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.table.DbModel
 * JD-Core Version:    0.6.2
 */