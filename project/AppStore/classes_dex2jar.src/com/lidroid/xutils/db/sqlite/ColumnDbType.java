package com.lidroid.xutils.db.sqlite;

public enum ColumnDbType
{
  private String value;

  static
  {
    BLOB = new ColumnDbType("BLOB", 3, "BLOB");
    ColumnDbType[] arrayOfColumnDbType = new ColumnDbType[4];
    arrayOfColumnDbType[0] = INTEGER;
    arrayOfColumnDbType[1] = REAL;
    arrayOfColumnDbType[2] = TEXT;
    arrayOfColumnDbType[3] = BLOB;
  }

  private ColumnDbType(String arg3)
  {
    Object localObject;
    this.value = localObject;
  }

  public String toString()
  {
    return this.value;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.db.sqlite.ColumnDbType
 * JD-Core Version:    0.6.2
 */