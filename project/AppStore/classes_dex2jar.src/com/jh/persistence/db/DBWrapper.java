package com.jh.persistence.db;

import android.database.sqlite.SQLiteOpenHelper;

public class DBWrapper
{
  private SQLiteOpenHelper dbHelper;

  public DBWrapper(SQLiteOpenHelper paramSQLiteOpenHelper)
  {
    this.dbHelper = paramSQLiteOpenHelper;
  }

  public static DBWrapper getSession(SQLiteOpenHelper paramSQLiteOpenHelper)
  {
    return new DBWrapper(paramSQLiteOpenHelper);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.persistence.db.DBWrapper
 * JD-Core Version:    0.6.2
 */