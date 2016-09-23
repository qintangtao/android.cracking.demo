package com.youqicai.manager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import java.util.Iterator;

public class DBHelper
{
  public static final String COL_APP_ADID = "adId";
  public static final String COL_APP_APKDOWN_URL = "appdownurl";
  public static final String COL_APP_APKMD5 = "md5";
  public static final String COL_APP_CATEGORYID = "CategoryId";
  public static final String COL_APP_DES = "description";
  public static final String COL_APP_DOWNLOADCOUNT = "downLoadCount";
  public static final String COL_APP_DOWNLOADTIME = "downloadTime";
  public static final String COL_APP_DOWNLOADURL = "downUrl";
  public static final String COL_APP_FLAG = "appflag";
  public static final String COL_APP_GOLDCOUNT = "goldCount";
  public static final String COL_APP_ICON = "icon";
  public static final String COL_APP_ID = "id";
  public static final String COL_APP_IMGURL = "ImgUrl";
  public static final String COL_APP_LINK = "link";
  public static final String COL_APP_LINK_TYPE = "linkType";
  public static final String COL_APP_NAME = "name";
  public static final String COL_APP_OR_TOPIC = "appInfoOrTopic";
  public static final String COL_APP_PACKAGEID = "packageId";
  public static final String COL_APP_PACKAGENAME = "packageName";
  public static final String COL_APP_PROGRESS = "downloadProgress";
  public static final String COL_APP_SAVED_FILE_PATH = "savedfilepath";
  public static final String COL_APP_STATUS = "appStatus";
  public static final String COL_APP_TOPICIMG = "topicImg";
  public static final String COL_APP_TOTALBYTES = "totalBytes";
  public static final String COL_APP_UPDATERECORD = "updateRecord";
  public static final String COL_APP_UPDATETIME = "updateTime";
  public static final String COL_APP_VERSION = "version";
  public static final String COL_APP_VERSION_CODE = "versionCode";
  public static final String COL_COLLECTION_ID = "collectionid";
  public static final String COL_COLLECTION_NAME = "collectionname";
  public static final String COL_VOTE_COUNT = "votecount";
  public static final String DATABASE_NAME = "base.db";
  private static final int DATABASE_VERSION = 1;
  public static final String TABLE_APPWALLINFO = "T_APPWALLINFO";
  public static final String TABLE_CHILDGAMEAPPINFO = "T_CHILDGAMEAPPINFO";
  public static final String TABLE_CHILDSORTAPPINFO = "T_CHILDSORTAPPINFO";
  public static final String TABLE_COLLECTION_INFO = "T_COLLECTION_INFO";
  public static final String TABLE_DOWNLOADAPPINFO = "T_DOWNLOADAPPINFO";
  public static final String TABLE_GAMEAPPINFO = "T_GAMEAPPINFO";
  public static final String TABLE_JINPINAPPINFO = "T_JINPINAPPINFO";
  public static final String TABLE_ROUNDIMGINFO = "T_ROUNDdIMGINFO";
  public static final String TABLE_SORTAPPINFO = "T_SORTAPPINFO";
  public static final String TABLE_SPECIALAPKINFO = "T_SPECIALAPKINFO";
  public static final String TABLE_UPDATEINFO = "T_UPDATEINFO";
  public static final String TABLE_UPGRADE_APPS_INFO = "T_UPGRADE_APP_INFO";
  private static final byte[] mLocker = new byte[0];
  private final String TAG = "DBHelper";
  protected Context context = null;
  protected MySQLiteDatabase db;
  private DatabaseHelper dbHelper;

  public DBHelper(Context paramContext)
  {
    this.context = paramContext;
    if (this.db == null)
      this.db = new MySQLiteDatabase();
    if (!this.db.isOpen())
      open();
  }

  private void rmDBData(SQLiteDatabase paramSQLiteDatabase)
  {
  }

  public void close()
  {
  }

  protected boolean insertData(String paramString, ContentValues paramContentValues, SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramContentValues);
      boolean bool = insertData(paramString, localArrayList, paramSQLiteDatabase);
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }

  protected boolean insertData(String paramString, ArrayList<ContentValues> paramArrayList, SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        ContentValues localContentValues = (ContentValues)localIterator.next();
        paramSQLiteDatabase.insert(paramString, null, localContentValues);
        localContentValues.clear();
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return false;
    }
    return true;
  }

  public void open()
    throws SQLException
  {
    this.dbHelper = new DatabaseHelper(this.context);
    synchronized (mLocker)
    {
      try
      {
        if ((this.db != null) && (this.db.isOpen()))
          this.db.close();
        if (this.db != null)
          this.db.setDB(this.dbHelper.getWritableDatabase());
        return;
      }
      catch (Exception localException1)
      {
        while (true)
          try
          {
            Thread.sleep(1500L);
            if ((this.db != null) && (this.db.isOpen()))
              this.db.close();
            if (this.db != null)
              this.db.setDB(this.dbHelper.getWritableDatabase());
          }
          catch (Exception localException2)
          {
            localException2.printStackTrace();
          }
      }
    }
  }

  protected class DatabaseHelper extends SQLiteOpenHelper
  {
    Context thisContext = null;

    public DatabaseHelper(Context arg2)
    {
      super("base.db", null, 1);
      this.thisContext = localContext;
    }

    private void clearDB(SQLiteDatabase paramSQLiteDatabase)
    {
      for (String str : new String[0])
      {
        paramSQLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s ;", new Object[] { str }));
        paramSQLiteDatabase.execSQL(String.format("update sqlite_sequence SET seq=0 where name='%s';", new Object[] { str }));
      }
    }

    private void initDB(SQLiteDatabase paramSQLiteDatabase, Context paramContext)
    {
      paramSQLiteDatabase.execSQL(CreateSQL.getAppDownloadInfoSQL());
      paramSQLiteDatabase.execSQL(CreateSQL.getJinpinAppInfoSQL());
      paramSQLiteDatabase.execSQL(CreateSQL.getRoundImgInfoSQL());
      paramSQLiteDatabase.execSQL(CreateSQL.getSpecialInfoSQL());
      paramSQLiteDatabase.execSQL(CreateSQL.getUpgradeAppsInfoSQL());
      paramSQLiteDatabase.execSQL(CreateSQL.getChildSortAppInfoSQL());
      paramSQLiteDatabase.execSQL(CreateSQL.getSortAppInfoSQL());
      paramSQLiteDatabase.execSQL(CreateSQL.getAppWallInfoSQL());
      paramSQLiteDatabase.execSQL(CreateSQL.getChildGameAppInfoSQL());
      paramSQLiteDatabase.execSQL(CreateSQL.getGameAppInfoSQL());
      paramSQLiteDatabase.execSQL(CreateSQL.getUpdateAppSQL());
    }

    private void upGrade0to2()
    {
    }

    public void onCreate(SQLiteDatabase paramSQLiteDatabase)
    {
      initDB(paramSQLiteDatabase, this.thisContext);
    }

    public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
    {
      try
      {
        clearDB(paramSQLiteDatabase);
        initDB(paramSQLiteDatabase, this.thisContext);
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }

    public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
    {
      if ((paramInt2 <= paramInt1) || (paramInt1 <= 1));
      try
      {
        upGrade0to2();
        DBHelper.this.rmDBData(paramSQLiteDatabase);
        return;
        if (paramInt1 > paramInt2)
        {
          clearDB(paramSQLiteDatabase);
          initDB(paramSQLiteDatabase, this.thisContext);
          return;
        }
      }
      catch (Exception localException)
      {
        clearDB(paramSQLiteDatabase);
        initDB(paramSQLiteDatabase, this.thisContext);
        localException.printStackTrace();
      }
    }
  }

  public class MySQLiteDatabase
  {
    private SQLiteDatabase mydb = null;

    public MySQLiteDatabase()
    {
    }

    public void checkDBIsOpen()
    {
      try
      {
        if ((this.mydb == null) || (!this.mydb.isOpen()))
          this.mydb = DBHelper.this.dbHelper.getWritableDatabase();
        return;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
      finally
      {
      }
    }

    public void close()
    {
      try
      {
        this.mydb.close();
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public int delete(String paramString1, String paramString2, String[] paramArrayOfString)
    {
      try
      {
        checkDBIsOpen();
        int i = this.mydb.delete(paramString1, paramString2, paramArrayOfString);
        return i;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public void execSQL(String paramString)
      throws SQLException
    {
      try
      {
        checkDBIsOpen();
        this.mydb.execSQL(paramString);
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public void execSQL(String paramString, Object[] paramArrayOfObject)
      throws SQLException
    {
      try
      {
        checkDBIsOpen();
        this.mydb.execSQL(paramString, paramArrayOfObject);
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public SQLiteDatabase getDB()
    {
      try
      {
        SQLiteDatabase localSQLiteDatabase = this.mydb;
        return localSQLiteDatabase;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public long insert(String paramString1, String paramString2, ContentValues paramContentValues)
    {
      try
      {
        checkDBIsOpen();
        long l = this.mydb.insert(paramString1, paramString2, paramContentValues);
        return l;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public boolean isOpen()
    {
      try
      {
        if (this.mydb != null)
        {
          boolean bool2 = this.mydb.isOpen();
          if (bool2)
          {
            bool1 = true;
            return bool1;
          }
        }
        boolean bool1 = false;
      }
      finally
      {
      }
    }

    public Cursor query(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5)
    {
      try
      {
        checkDBIsOpen();
        Cursor localCursor = this.mydb.query(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, paramString4, paramString5);
        return localCursor;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public Cursor query(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5, String paramString6)
    {
      try
      {
        checkDBIsOpen();
        Cursor localCursor = this.mydb.query(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, paramString4, paramString5, paramString6);
        return localCursor;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public Cursor query(boolean paramBoolean, String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5, String paramString6)
    {
      try
      {
        checkDBIsOpen();
        Cursor localCursor = this.mydb.query(paramBoolean, paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, paramString4, paramString5, paramString6);
        return localCursor;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public Cursor rawQuery(String paramString, String[] paramArrayOfString)
    {
      try
      {
        checkDBIsOpen();
        Cursor localCursor = this.mydb.rawQuery(paramString, paramArrayOfString);
        return localCursor;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public void setDB(SQLiteDatabase paramSQLiteDatabase)
    {
      try
      {
        this.mydb = paramSQLiteDatabase;
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public int update(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString)
    {
      try
      {
        checkDBIsOpen();
        int i = this.mydb.update(paramString1, paramContentValues, paramString2, paramArrayOfString);
        return i;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.manager.DBHelper
 * JD-Core Version:    0.6.2
 */