package com.jh.net.db;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.jh.exception.JHException;
import com.jh.net.bean.DomainInfoCDTO;
import java.util.ArrayList;
import java.util.List;

public class SwitchIpDBHelper extends SQLiteOpenHelper
{
  private static final String DB_NAME = "switchip.db";
  public static final String TAG = "db";
  private static final int VersionCode = 1;
  private static SQLiteDatabase database;
  private static SwitchIpDBHelper mInstance;
  public static QueryResult result;
  private Context context;

  private SwitchIpDBHelper(Context paramContext)
  {
    super(paramContext, "switchip.db", null, 1);
    this.context = paramContext;
    database = getWritableDatabase();
  }

  public static SwitchIpDBHelper getInstance(Context paramContext)
  {
    if (mInstance == null);
    try
    {
      if (mInstance == null)
        mInstance = new SwitchIpDBHelper(paramContext);
      return mInstance;
    }
    finally
    {
    }
  }

  public void deleteFailedUrl()
  {
    try
    {
      database.delete("SwitchIPTable", "Status =?", new String[] { "1" });
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void deleteTable(String paramString)
  {
    try
    {
      database.delete("SwitchIPTable", "Domain =?", new String[] { paramString });
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void deleteTableByBizCode(String paramString1, String paramString2)
  {
    try
    {
      database.delete("SwitchIPTable", "BizCode =? and UserId =?", new String[] { paramString1, paramString2 });
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public List<DomainInfoCDTO> getListDomainInfo(String paramString1, String paramString2)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      Cursor localCursor = database.query("SwitchIPTable", null, "BizCode =? and UserId =? and Status=? ", new String[] { paramString1, paramString2, "1" }, null, null, null);
      while (true)
      {
        if ((localCursor == null) || (!localCursor.moveToNext()))
        {
          if (localCursor != null)
            localCursor.close();
          return localArrayList;
        }
        DomainInfoCDTO localDomainInfoCDTO = new DomainInfoCDTO();
        localDomainInfoCDTO.setDomain(localCursor.getString(localCursor.getColumnIndex("Domain")));
        localDomainInfoCDTO.setResponseCode(localCursor.getInt(localCursor.getColumnIndex("ResponseCode")));
        localArrayList.add(localDomainInfoCDTO);
      }
    }
    finally
    {
    }
  }

  public void initOrInsertSwitchIPTable(int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt2, String paramString5)
  {
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("BizCode", Integer.valueOf(paramInt1));
      localContentValues.put("Id", paramString1);
      localContentValues.put("Name", paramString2);
      localContentValues.put("Domain", paramString3);
      localContentValues.put("IP", paramString4);
      localContentValues.put("Status", Integer.valueOf(0));
      localContentValues.put("UserId", paramString5);
      database.insert("SwitchIPTable", null, localContentValues);
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
    Log.e("sql", "sql=" + "CREATE TABLE  IF NOT EXISTS SwitchIPTable(_id Integer PRIMARY KEY autoincrement,BizCode  Integer,Id varchar(100),Name  varchar(100),Domain varchar(100),IP  varchar(20),Status  Integer,ResponseCode  Integer,UserId  varchar(100))");
    try
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE  IF NOT EXISTS SwitchIPTable(_id Integer PRIMARY KEY autoincrement,BizCode  Integer,Id varchar(100),Name  varchar(100),Domain varchar(100),IP  varchar(20),Status  Integer,ResponseCode  Integer,UserId  varchar(100))");
      return;
    }
    catch (SQLException localSQLException)
    {
      localSQLException.printStackTrace();
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      localIllegalStateException.printStackTrace();
    }
  }

  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE SwitchIPTable");
    onCreate(paramSQLiteDatabase);
  }

  public int queryBizCodeByDomain(String paramString1, String paramString2)
    throws JHException
  {
    try
    {
      Cursor localCursor = database.query("SwitchIPTable", null, "Domain =? and UserId = ?", new String[] { paramString1, paramString2 }, null, null, null);
      int i = 0;
      if (localCursor != null)
      {
        boolean bool = localCursor.moveToNext();
        i = 0;
        if (bool)
          i = localCursor.getInt(localCursor.getColumnIndex("BizCode"));
      }
      if ((localCursor != null) && (!localCursor.isClosed()))
        localCursor.close();
      return i;
    }
    finally
    {
    }
  }

  public QueryResult queryCache(String paramString)
    throws JHException
  {
    try
    {
      QueryResult localQueryResult = new QueryResult();
      Cursor localCursor = database.query("SwitchIPTable", null, "Domain =?", new String[] { paramString }, null, null, null);
      if ((localCursor != null) && (localCursor.moveToNext()))
        localQueryResult.Status = localCursor.getInt(localCursor.getColumnIndex("Status"));
      if ((localCursor != null) && (!localCursor.isClosed()))
        localCursor.close();
      return localQueryResult;
    }
    finally
    {
    }
  }

  public boolean queryExistRecoder(String paramString)
    throws JHException
  {
    try
    {
      Cursor localCursor = database.query("SwitchIPTable", null, "UserId =?", new String[] { paramString }, null, null, null);
      int i = 0;
      if (localCursor != null)
      {
        boolean bool1 = localCursor.moveToNext();
        i = 0;
        if (bool1)
          i = localCursor.getCount();
      }
      if ((localCursor != null) && (!localCursor.isClosed()))
        localCursor.close();
      if (i > 0);
      for (boolean bool2 = true; ; bool2 = false)
        return bool2;
    }
    finally
    {
    }
  }

  public boolean queryNeedQuestByDomain(String paramString1, String paramString2)
    throws JHException
  {
    try
    {
      Cursor localCursor1 = database.query("SwitchIPTable", null, "Domain =? and UserId =?", new String[] { paramString1, paramString2 }, null, null, null);
      Cursor localCursor2;
      boolean bool1;
      if ((localCursor1 != null) && (localCursor1.moveToNext()))
      {
        String str = localCursor1.getString(localCursor1.getColumnIndex("BizCode"));
        localCursor2 = database.query("SwitchIPTable", null, "BizCode =?", new String[] { str }, null, null, null);
        if (localCursor2 != null)
        {
          boolean bool2 = localCursor2.moveToNext();
          if (bool2);
        }
        else
        {
          bool1 = true;
        }
      }
      while (true)
      {
        return bool1;
        if (localCursor2.getInt(localCursor2.getColumnIndex("Status")) != 0)
          break;
        bool1 = false;
        continue;
        if ((localCursor1 != null) && (!localCursor1.isClosed()))
          localCursor1.close();
        bool1 = false;
      }
    }
    finally
    {
    }
  }

  public String queryValidDomainByBizCode(String paramString1, String paramString2)
    throws JHException
  {
    try
    {
      Cursor localCursor = database.query("SwitchIPTable", null, "BizCode =? and UserId =?", new String[] { paramString1, paramString2 }, null, null, null);
      Object localObject2 = null;
      if (localCursor != null)
      {
        boolean bool = localCursor.moveToNext();
        localObject2 = null;
        if (bool)
          break label82;
      }
      while (true)
      {
        if ((localCursor != null) && (!localCursor.isClosed()))
          localCursor.close();
        return localObject2;
        label82: if (localCursor.getInt(localCursor.getColumnIndex("Status")) != 0)
          break;
        String str = localCursor.getString(localCursor.getColumnIndex("Domain"));
        localObject2 = str;
      }
    }
    finally
    {
    }
  }

  public void updateStatusToFail(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("Status", Integer.valueOf(1));
      localContentValues.put("ResponseCode", paramString3);
      database.update("SwitchIPTable", localContentValues, "Domain =? and UserId =?", new String[] { paramString1, paramString2 });
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static class QueryResult
  {
    public int BizCode;
    public int Status;
    public boolean flag;
  }

  public static class SwitchIPTable
  {
    public static final String BizCode = "BizCode";
    public static final String Domain = "Domain";
    public static final String IP = "IP";
    public static final String Id = "Id";
    public static final String Name = "Name";
    public static final String ResponseCode = "ResponseCode";
    public static final String Status = "Status";
    public static final String TABLENAME = "SwitchIPTable";
    public static final String UserId = "UserId";
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.net.db.SwitchIpDBHelper
 * JD-Core Version:    0.6.2
 */