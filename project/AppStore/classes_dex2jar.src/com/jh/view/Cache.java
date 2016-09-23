package com.jh.view;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.jh.persistence.db.DBExcutor;

class Cache extends SQLiteOpenHelper
{
  public static final String CACHE = "CACHE";
  private static final String DATABASE_NAME = "cache.db";
  private static final int DATABASE_VERSION = 1;
  private static Context appContext;
  private static DBExcutor excutor;

  private Cache(Context paramContext)
  {
    super(paramContext, "cache.db", null, 1);
  }

  public static DBExcutor getExcutor(Context paramContext)
  {
    appContext = paramContext.getApplicationContext();
    if (excutor != null)
      return excutor;
    synchronized (appContext)
    {
      if (excutor == null)
        excutor = new DBExcutor(new Cache(appContext).getWritableDatabase());
      DBExcutor localDBExcutor = excutor;
      return localDBExcutor;
    }
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE  IF NOT EXISTS CACHE(_id Integer PRIMARY KEY autoincrement,HttpUrl varchar(32),LocalPath varchar(32))");
    paramSQLiteDatabase.execSQL("CREATE index belong_picture on CACHE(HttpUrl)");
  }

  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.view.Cache
 * JD-Core Version:    0.6.2
 */