package com.youqicai.datasdk;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.youqicai.AppStore.AppStoreApplication;
import java.util.List;

public class DBProvider
{
  private static DBProvider provider = null;
  private Context context = AppStoreApplication.getInstance().getApplicationContext();
  private DBHelper dbHelper = null;

  public static DBProvider getDBProvider()
  {
    try
    {
      if (provider == null)
        provider = new DBProvider();
      DBProvider localDBProvider = provider;
      return localDBProvider;
    }
    finally
    {
    }
  }

  public void close()
  {
    if (this.dbHelper == null)
      return;
    this.dbHelper.close();
  }

  public int delete(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    if (this.dbHelper == null)
      return 0;
    SQLiteDatabase localSQLiteDatabase = this.dbHelper.getWritableDatabase();
    try
    {
      int i = localSQLiteDatabase.delete(paramString1, paramString2, paramArrayOfString);
      return i;
    }
    catch (Exception localException)
    {
    }
    return 0;
  }

  public int getCount(String paramString)
  {
    if (this.dbHelper == null)
      return 0;
    Cursor localCursor = null;
    SQLiteDatabase localSQLiteDatabase = this.dbHelper.getWritableDatabase();
    try
    {
      localCursor = localSQLiteDatabase.rawQuery("select count(*) from " + paramString, null);
      boolean bool = localCursor.moveToNext();
      int i = 0;
      if (bool)
      {
        int j = localCursor.getInt(0);
        i = j;
      }
      return i;
    }
    catch (Exception localException)
    {
      return 0;
    }
    finally
    {
      localCursor.close();
    }
  }

  public long insert(String paramString, ContentValues paramContentValues)
  {
    if (this.dbHelper == null)
      return -1L;
    SQLiteDatabase localSQLiteDatabase = this.dbHelper.getWritableDatabase();
    try
    {
      long l = localSQLiteDatabase.replace(paramString, null, paramContentValues);
      return l;
    }
    catch (Exception localException)
    {
    }
    return -1L;
  }

  public Cursor query(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3)
  {
    if (this.dbHelper == null)
      return null;
    SQLiteDatabase localSQLiteDatabase = this.dbHelper.getWritableDatabase();
    try
    {
      Cursor localCursor = localSQLiteDatabase.query(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, null, null, paramString3);
      return localCursor;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public long transactInsert(String paramString, List<ContentValues> paramList)
  {
    if (this.dbHelper == null)
      return -1L;
    SQLiteDatabase localSQLiteDatabase = this.dbHelper.getWritableDatabase();
    localSQLiteDatabase.beginTransaction();
    long l = -1L;
    int i = 0;
    try
    {
      while (i < paramList.size())
      {
        l = localSQLiteDatabase.insert(paramString, null, (ContentValues)paramList.get(i));
        i++;
      }
      localSQLiteDatabase.setTransactionSuccessful();
      return l;
    }
    catch (Exception localException)
    {
      return l;
    }
    finally
    {
      localSQLiteDatabase.endTransaction();
    }
  }

  public int update(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString)
  {
    if (this.dbHelper == null)
      return 0;
    SQLiteDatabase localSQLiteDatabase = this.dbHelper.getWritableDatabase();
    try
    {
      int i = localSQLiteDatabase.update(paramString1, paramContentValues, paramString2, paramArrayOfString);
      return i;
    }
    catch (Exception localException)
    {
    }
    return 0;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.datasdk.DBProvider
 * JD-Core Version:    0.6.2
 */