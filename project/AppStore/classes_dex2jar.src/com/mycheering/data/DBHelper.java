package com.mycheering.data;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class DBHelper extends SQLiteOpenHelper
{
  public static final String COLUMN_DATA = "data";
  public static final String COLUMN_ID = "_id";
  public static final String COLUMN_TIME = "time";
  static final String CREATE_STATISTICS_SQL = " create table  t_statistics(_id integer primary key autoincrement,time text not null, data text not null);";
  public static final String DBFILE = "dtsdk.db";
  public static final String TABLE_STATISTICS = "t_statistics";
  public static final int VERSION = 1;

  public DBHelper(Context paramContext, String paramString)
  {
    super(paramContext.getApplicationContext(), paramString, null, 1);
  }

  public void clear()
  {
    getWritableDatabase().execSQL(" delete from t_statistics");
  }

  public void close()
  {
    try
    {
      super.close();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL(" create table  t_statistics(_id integer primary key autoincrement,time text not null, data text not null);");
  }

  public void onOpen(SQLiteDatabase paramSQLiteDatabase)
  {
    super.onOpen(paramSQLiteDatabase);
  }

  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.mycheering.data.DBHelper
 * JD-Core Version:    0.6.2
 */