package com.youqicai.download;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.jh.util.BaseEncrypt;
import java.io.File;
import java.io.PrintStream;

public class DownloadDBCache extends SQLiteOpenHelper
{
  private static final String DB_NAME = "downloadcache.db";
  public static final String TAG = "db";
  private static final int VersionCode = 2;
  private static SQLiteDatabase database;
  private static DownloadDBCache mInstance;
  public static QueryResult result;
  private Context context;

  private DownloadDBCache(Context paramContext)
  {
    super(paramContext, "downloadcache.db", null, 2);
    this.context = paramContext;
    database = getWritableDatabase();
  }

  public static DownloadDBCache getInstance(Context paramContext)
  {
    if (mInstance == null);
    try
    {
      if (mInstance == null)
        mInstance = new DownloadDBCache(paramContext);
      return mInstance;
    }
    finally
    {
    }
  }

  public void deleteTable(String paramString)
  {
    try
    {
      database.delete("DownloadCache", "HttpUrl =?", new String[] { paramString });
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void deleteTable(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      if (!TextUtils.isEmpty(paramString3))
        database.delete("DownloadCache", "GUID =?", new String[] { paramString3 });
      while (true)
      {
        return;
        database.delete("DownloadCache", "HttpUrl =? AND FilePath =? ", new String[] { paramString1, paramString2 });
      }
    }
    finally
    {
    }
  }

  public void deleteTableBySavePath(String paramString)
  {
    try
    {
      database.delete("DownloadCache", "FilePath =? ", new String[] { paramString });
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean hasHistory(String paramString)
  {
    try
    {
      Cursor localCursor = database.query("DownloadCache", null, "FilePath =?", new String[] { paramString }, null, null, null);
      if ((localCursor != null) && (localCursor.moveToNext()))
        localCursor.close();
      for (boolean bool = true; ; bool = false)
      {
        return bool;
        if (localCursor != null)
          localCursor.close();
      }
    }
    finally
    {
    }
  }

  public void insertFileLength(String paramString1, String paramString2, long paramLong)
  {
    try
    {
      database.query("DownloadCache", null, "HttpUrl =?", new String[] { paramString1 }, null, null, null);
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("FileLength", Long.valueOf(paramLong));
      database.update("DownloadCache", localContentValues, "HttpUrl =?", new String[] { paramString1 });
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void insertHistory(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      insertHistory(paramString1, paramString2, paramString3, new File(paramString2).length());
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void insertHistory(String paramString1, String paramString2, String paramString3, long paramLong)
  {
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("HttpUrl", paramString1);
      localContentValues.put("FilePath", paramString2);
      localContentValues.put("GUID", paramString3);
      try
      {
        localContentValues.put("Md5Key", BaseEncrypt.encryptMD5(paramString2));
        if (BaseEncrypt.encryptSHA1(paramString2) == null);
        String str;
        for (Object localObject2 = ""; ; localObject2 = str)
        {
          localContentValues.put("Sha1Key", (String)localObject2);
          localContentValues.put("FileLength", Long.valueOf(paramLong));
          database.insert("DownloadCache", null, localContentValues);
          return;
          str = BaseEncrypt.encryptSHA1(paramString2);
        }
      }
      catch (Exception localException)
      {
        while (true)
          System.err.print(localException.toString());
      }
    }
    finally
    {
    }
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    try
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE  IF NOT EXISTS DownloadCache(_id Integer PRIMARY KEY autoincrement,HttpUrl  varchar(100),FilePath varchar(200),FileLength  long,DownloadedSize long,Md5Key  varchar(100),GUID  varchar(100),Sha1Key  varchar(100),Status  Integer)");
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
    paramSQLiteDatabase.execSQL("DROP TABLE DownloadCache");
    onCreate(paramSQLiteDatabase);
  }

  // ERROR //
  public QueryResult queryCache(String paramString1, String paramString2, String paramString3)
    throws com.jh.exception.JHException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 193	com/youqicai/download/DownloadDBCache$QueryResult
    //   5: dup
    //   6: invokespecial 194	com/youqicai/download/DownloadDBCache$QueryResult:<init>	()V
    //   9: astore 4
    //   11: aload_3
    //   12: invokestatic 62	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   15: ifeq +305 -> 320
    //   18: getstatic 35	com/youqicai/download/DownloadDBCache:database	Landroid/database/sqlite/SQLiteDatabase;
    //   21: ldc 45
    //   23: aconst_null
    //   24: ldc 196
    //   26: iconst_2
    //   27: anewarray 49	java/lang/String
    //   30: dup
    //   31: iconst_0
    //   32: aload_1
    //   33: aastore
    //   34: dup
    //   35: iconst_1
    //   36: aload_2
    //   37: aastore
    //   38: aconst_null
    //   39: aconst_null
    //   40: aconst_null
    //   41: invokevirtual 77	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   44: astore 6
    //   46: aload 6
    //   48: ifnull +46 -> 94
    //   51: aload 6
    //   53: invokeinterface 83 1 0
    //   58: ifeq +36 -> 94
    //   61: aload 4
    //   63: iconst_1
    //   64: putfield 200	com/youqicai/download/DownloadDBCache$QueryResult:hasCache	Z
    //   67: aload 4
    //   69: iconst_1
    //   70: putfield 203	com/youqicai/download/DownloadDBCache$QueryResult:sameTask	Z
    //   73: aload 4
    //   75: aload 6
    //   77: aload 6
    //   79: ldc 205
    //   81: invokeinterface 209 2 0
    //   86: invokeinterface 213 2 0
    //   91: putfield 217	com/youqicai/download/DownloadDBCache$QueryResult:downloadedLen	J
    //   94: aload 6
    //   96: ifnull +212 -> 308
    //   99: aload 4
    //   101: getfield 200	com/youqicai/download/DownloadDBCache$QueryResult:hasCache	Z
    //   104: ifeq +204 -> 308
    //   107: aload 6
    //   109: aload 6
    //   111: ldc 147
    //   113: invokeinterface 209 2 0
    //   118: invokeinterface 221 2 0
    //   123: astore 7
    //   125: aload 6
    //   127: aload 6
    //   129: ldc 134
    //   131: invokeinterface 209 2 0
    //   136: invokeinterface 221 2 0
    //   141: astore 8
    //   143: aload 6
    //   145: aload 6
    //   147: ldc 205
    //   149: invokeinterface 209 2 0
    //   154: invokeinterface 213 2 0
    //   159: lstore 9
    //   161: aload 6
    //   163: aload 6
    //   165: ldc 95
    //   167: invokeinterface 209 2 0
    //   172: invokeinterface 213 2 0
    //   177: lstore 11
    //   179: aload 4
    //   181: lload 9
    //   183: putfield 217	com/youqicai/download/DownloadDBCache$QueryResult:downloadedLen	J
    //   186: aload 4
    //   188: aload 6
    //   190: aload 6
    //   192: ldc 223
    //   194: invokeinterface 209 2 0
    //   199: invokeinterface 227 2 0
    //   204: putfield 230	com/youqicai/download/DownloadDBCache$QueryResult:status	I
    //   207: aload 4
    //   209: lload 11
    //   211: putfield 233	com/youqicai/download/DownloadDBCache$QueryResult:allLen	J
    //   214: new 112	java/io/File
    //   217: dup
    //   218: aload_2
    //   219: invokespecial 114	java/io/File:<init>	(Ljava/lang/String;)V
    //   222: astore 13
    //   224: aload 13
    //   226: invokevirtual 236	java/io/File:exists	()Z
    //   229: ifeq +167 -> 396
    //   232: aload 13
    //   234: invokevirtual 118	java/io/File:length	()J
    //   237: lstore 20
    //   239: lload 20
    //   241: lstore 14
    //   243: aload_2
    //   244: invokestatic 143	com/jh/util/BaseEncrypt:encryptSHA1	(Ljava/lang/String;)Ljava/lang/String;
    //   247: ifnonnull +155 -> 402
    //   250: ldc 145
    //   252: astore 17
    //   254: aload_2
    //   255: invokestatic 140	com/jh/util/BaseEncrypt:encryptMD5	(Ljava/lang/String;)Ljava/lang/String;
    //   258: astore 18
    //   260: lload 14
    //   262: lload 9
    //   264: lcmp
    //   265: ifne +146 -> 411
    //   268: aload 17
    //   270: aload 7
    //   272: invokevirtual 240	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   275: ifeq +136 -> 411
    //   278: aload 18
    //   280: aload 8
    //   282: invokevirtual 240	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   285: ifeq +126 -> 411
    //   288: aload 4
    //   290: iconst_0
    //   291: putfield 243	com/youqicai/download/DownloadDBCache$QueryResult:isChange	Z
    //   294: lload 14
    //   296: lload 11
    //   298: lcmp
    //   299: ifne +9 -> 308
    //   302: aload 4
    //   304: iconst_0
    //   305: putfield 230	com/youqicai/download/DownloadDBCache$QueryResult:status	I
    //   308: aload 6
    //   310: invokeinterface 87 1 0
    //   315: aload_0
    //   316: monitorexit
    //   317: aload 4
    //   319: areturn
    //   320: getstatic 35	com/youqicai/download/DownloadDBCache:database	Landroid/database/sqlite/SQLiteDatabase;
    //   323: ldc 45
    //   325: aconst_null
    //   326: ldc 64
    //   328: iconst_1
    //   329: anewarray 49	java/lang/String
    //   332: dup
    //   333: iconst_0
    //   334: aload_3
    //   335: aastore
    //   336: aconst_null
    //   337: aconst_null
    //   338: aconst_null
    //   339: invokevirtual 77	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   342: astore 6
    //   344: aload 6
    //   346: ifnull -252 -> 94
    //   349: aload 6
    //   351: invokeinterface 83 1 0
    //   356: ifeq -262 -> 94
    //   359: aload 4
    //   361: iconst_1
    //   362: putfield 200	com/youqicai/download/DownloadDBCache$QueryResult:hasCache	Z
    //   365: aload 4
    //   367: aload 6
    //   369: aload 6
    //   371: ldc 205
    //   373: invokeinterface 209 2 0
    //   378: invokeinterface 213 2 0
    //   383: putfield 217	com/youqicai/download/DownloadDBCache$QueryResult:downloadedLen	J
    //   386: goto -292 -> 94
    //   389: astore 5
    //   391: aload_0
    //   392: monitorexit
    //   393: aload 5
    //   395: athrow
    //   396: lconst_0
    //   397: lstore 14
    //   399: goto -156 -> 243
    //   402: aload_2
    //   403: invokestatic 143	com/jh/util/BaseEncrypt:encryptSHA1	(Ljava/lang/String;)Ljava/lang/String;
    //   406: astore 17
    //   408: goto -154 -> 254
    //   411: aload 4
    //   413: iconst_1
    //   414: putfield 243	com/youqicai/download/DownloadDBCache$QueryResult:isChange	Z
    //   417: aload_0
    //   418: aload_1
    //   419: aload_2
    //   420: aload_3
    //   421: invokevirtual 245	com/youqicai/download/DownloadDBCache:deleteTable	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   424: new 112	java/io/File
    //   427: dup
    //   428: aload_2
    //   429: invokespecial 114	java/io/File:<init>	(Ljava/lang/String;)V
    //   432: invokevirtual 247	java/io/File:delete	()Z
    //   435: pop
    //   436: goto -128 -> 308
    //   439: astore 16
    //   441: getstatic 157	java/lang/System:err	Ljava/io/PrintStream;
    //   444: aload 16
    //   446: invokevirtual 161	java/lang/Exception:toString	()Ljava/lang/String;
    //   449: invokevirtual 166	java/io/PrintStream:print	(Ljava/lang/String;)V
    //   452: aload 4
    //   454: iconst_1
    //   455: putfield 243	com/youqicai/download/DownloadDBCache$QueryResult:isChange	Z
    //   458: goto -150 -> 308
    //
    // Exception table:
    //   from	to	target	type
    //   2	46	389	finally
    //   51	94	389	finally
    //   99	239	389	finally
    //   243	250	389	finally
    //   254	260	389	finally
    //   268	294	389	finally
    //   302	308	389	finally
    //   308	315	389	finally
    //   320	344	389	finally
    //   349	386	389	finally
    //   402	408	389	finally
    //   411	436	389	finally
    //   441	458	389	finally
    //   243	250	439	java/lang/Exception
    //   254	260	439	java/lang/Exception
    //   268	294	439	java/lang/Exception
    //   302	308	439	java/lang/Exception
    //   402	408	439	java/lang/Exception
    //   411	436	439	java/lang/Exception
  }

  // ERROR //
  public QueryResult startDownload(String paramString1, String paramString2, String paramString3)
    throws com.jh.exception.JHException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 193	com/youqicai/download/DownloadDBCache$QueryResult
    //   5: dup
    //   6: invokespecial 194	com/youqicai/download/DownloadDBCache$QueryResult:<init>	()V
    //   9: astore 4
    //   11: aload_0
    //   12: aload_1
    //   13: aload_2
    //   14: aload_3
    //   15: invokevirtual 250	com/youqicai/download/DownloadDBCache:queryCache	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/youqicai/download/DownloadDBCache$QueryResult;
    //   18: astore 4
    //   20: aload 4
    //   22: getfield 200	com/youqicai/download/DownloadDBCache$QueryResult:hasCache	Z
    //   25: ifne +11 -> 36
    //   28: aload_0
    //   29: aload_1
    //   30: aload_2
    //   31: aload_3
    //   32: lconst_0
    //   33: invokevirtual 121	com/youqicai/download/DownloadDBCache:insertHistory	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    //   36: aload_0
    //   37: monitorexit
    //   38: aload 4
    //   40: areturn
    //   41: astore 6
    //   43: aload_0
    //   44: monitorexit
    //   45: aload 6
    //   47: athrow
    //   48: astore 5
    //   50: goto -14 -> 36
    //
    // Exception table:
    //   from	to	target	type
    //   2	11	41	finally
    //   11	36	41	finally
    //   11	36	48	com/jh/exception/JHException
  }

  public void updateProcess(String paramString1, String paramString2, String paramString3, long paramLong, int paramInt)
  {
    while (true)
    {
      ContentValues localContentValues;
      try
      {
        localContentValues = new ContentValues();
        localContentValues.put("DownloadedSize", Long.valueOf(paramLong));
        localContentValues.put("Status", Integer.valueOf(paramInt));
        try
        {
          localContentValues.put("Md5Key", BaseEncrypt.encryptMD5(paramString2));
          Object localObject2;
          if (BaseEncrypt.encryptSHA1(paramString2) == null)
          {
            localObject2 = "";
            localContentValues.put("Sha1Key", (String)localObject2);
            if (!TextUtils.isEmpty(paramString3))
              database.update("DownloadCache", localContentValues, "GUID =? ", new String[] { paramString3 });
          }
          else
          {
            String str = BaseEncrypt.encryptSHA1(paramString2);
            localObject2 = str;
            continue;
          }
        }
        catch (Exception localException)
        {
          System.err.println(localException.getMessage());
          continue;
        }
      }
      finally
      {
      }
      database.update("DownloadCache", localContentValues, "HttpUrl =? AND FilePath =?", new String[] { paramString1, paramString2 });
    }
  }

  public void updateProcess(String paramString1, String paramString2, String paramString3, long paramLong, String paramString4, String paramString5, int paramInt)
  {
    while (true)
    {
      ContentValues localContentValues;
      try
      {
        localContentValues = new ContentValues();
        localContentValues.put("DownloadedSize", Long.valueOf(paramLong));
        localContentValues.put("Status", Integer.valueOf(paramInt));
        try
        {
          localContentValues.put("Md5Key", paramString5);
          localContentValues.put("Sha1Key", paramString4);
          if (!TextUtils.isEmpty(paramString3))
          {
            database.update("DownloadCache", localContentValues, "GUID =? ", new String[] { paramString3 });
            return;
          }
        }
        catch (Exception localException)
        {
          System.err.println(localException.getMessage());
          continue;
        }
      }
      finally
      {
      }
      database.update("DownloadCache", localContentValues, "HttpUrl =? AND FilePath =?", new String[] { paramString1, paramString2 });
    }
  }

  public static class DownloadTable
  {
    public static final String DownloadedSize = "DownloadedSize";
    public static final String FileLength = "FileLength";
    public static final String FilePath = "FilePath";
    public static final String GUID = "GUID";
    public static final String HttpUrl = "HttpUrl";
    public static final String Md5Key = "Md5Key";
    public static final String Sha1Key = "Sha1Key";
    public static final String Status = "Status";
    public static final String TABLENAME = "DownloadCache";
  }

  public static class QueryResult
  {
    public long allLen;
    public long downloadedLen;
    public String filePath;
    public boolean flag = false;
    public boolean hasCache = false;
    public String httpUrl;
    public boolean isChange = false;
    public String preHttpUrl;
    public boolean sameTask = false;
    public int status = -1;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.download.DownloadDBCache
 * JD-Core Version:    0.6.2
 */