package com.youqicai.manager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.youqicai.AppStore.entity.AppInfoEntity;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Iterator;

public class BaseDbAdapter extends DBHelper
{
  private static final String TAG = "Dingkai";
  private static BaseDbAdapter instance = null;

  protected BaseDbAdapter(Context paramContext)
  {
    super(paramContext);
  }

  public static BaseDbAdapter getInstance(Context paramContext)
  {
    try
    {
      if (instance == null)
        instance = new BaseDbAdapter(paramContext);
      BaseDbAdapter localBaseDbAdapter = instance;
      return localBaseDbAdapter;
    }
    finally
    {
    }
  }

  public boolean addDownloadApp(String paramString)
  {
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("packageId", paramString);
      long l = this.db.insert("T_DOWNLOADAPPINFO", null, localContentValues);
      if (l > 0L)
        return true;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }

  public void deleteAllHistoryApkInfo()
  {
    deleteData("T_DOWNLOADAPPINFO", "appStatus=4", null);
    deleteData("T_DOWNLOADAPPINFO", "appStatus=6", null);
    deleteData("T_DOWNLOADAPPINFO", "appStatus=5", null);
  }

  protected boolean deleteData(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    try
    {
      this.db.delete(paramString1, paramString2, paramArrayOfString);
      return true;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }

  public boolean deleteDownloadAppByPackageId(String paramString)
  {
    try
    {
      int i = this.db.delete("T_DOWNLOADAPPINFO", "packageId=?", new String[] { paramString });
      if (i != 0)
        return true;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }

  public void deleteDownloadingApkInfo(String paramString)
  {
    deleteData("T_DOWNLOADAPPINFO", "id='" + paramString + "'", null);
  }

  public void deleteUpgradeApp(String paramString)
  {
    try
    {
      deleteData("T_DOWNLOADAPPINFO", "packageName='" + paramString + "'", null);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  // ERROR //
  public AppInfoEntity getAllDownAPPinfo(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: new 74	java/lang/StringBuilder
    //   7: dup
    //   8: invokespecial 75	java/lang/StringBuilder:<init>	()V
    //   11: ldc 94
    //   13: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: aload_1
    //   17: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: ldc 83
    //   22: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   28: astore 6
    //   30: aload_0
    //   31: getfield 39	com/youqicai/manager/BaseDbAdapter:db	Lcom/youqicai/manager/DBHelper$MySQLiteDatabase;
    //   34: ldc 41
    //   36: aconst_null
    //   37: aload 6
    //   39: aconst_null
    //   40: aconst_null
    //   41: aconst_null
    //   42: aconst_null
    //   43: invokevirtual 98	com/youqicai/manager/DBHelper$MySQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   46: astore_2
    //   47: aconst_null
    //   48: astore_3
    //   49: aload_2
    //   50: ifnull +296 -> 346
    //   53: aload_2
    //   54: invokeinterface 104 1 0
    //   59: istore 7
    //   61: aconst_null
    //   62: astore_3
    //   63: iload 7
    //   65: ifeq +281 -> 346
    //   68: new 106	com/youqicai/AppStore/entity/AppInfoEntity
    //   71: dup
    //   72: invokespecial 107	com/youqicai/AppStore/entity/AppInfoEntity:<init>	()V
    //   75: astore 8
    //   77: aload 8
    //   79: aload_2
    //   80: aload_2
    //   81: ldc 109
    //   83: invokeinterface 113 2 0
    //   88: invokeinterface 117 2 0
    //   93: invokevirtual 120	com/youqicai/AppStore/entity/AppInfoEntity:setAppId	(Ljava/lang/String;)V
    //   96: aload 8
    //   98: aload_2
    //   99: aload_2
    //   100: ldc 122
    //   102: invokeinterface 113 2 0
    //   107: invokeinterface 117 2 0
    //   112: invokevirtual 125	com/youqicai/AppStore/entity/AppInfoEntity:setAppName	(Ljava/lang/String;)V
    //   115: aload 8
    //   117: aload_2
    //   118: aload_2
    //   119: ldc 31
    //   121: invokeinterface 113 2 0
    //   126: invokeinterface 117 2 0
    //   131: invokevirtual 128	com/youqicai/AppStore/entity/AppInfoEntity:setPackageId	(Ljava/lang/String;)V
    //   134: aload 8
    //   136: aload_2
    //   137: aload_2
    //   138: ldc 130
    //   140: invokeinterface 113 2 0
    //   145: invokeinterface 117 2 0
    //   150: invokevirtual 133	com/youqicai/AppStore/entity/AppInfoEntity:setFileSize	(Ljava/lang/String;)V
    //   153: aload 8
    //   155: aload_2
    //   156: aload_2
    //   157: ldc 135
    //   159: invokeinterface 113 2 0
    //   164: invokeinterface 117 2 0
    //   169: invokevirtual 138	com/youqicai/AppStore/entity/AppInfoEntity:setDownCount	(Ljava/lang/String;)V
    //   172: aload 8
    //   174: aload_2
    //   175: aload_2
    //   176: ldc 140
    //   178: invokeinterface 113 2 0
    //   183: invokeinterface 144 2 0
    //   188: invokevirtual 148	com/youqicai/AppStore/entity/AppInfoEntity:setdownloadProgress	(F)V
    //   191: aload 8
    //   193: aload_2
    //   194: aload_2
    //   195: ldc 150
    //   197: invokeinterface 113 2 0
    //   202: invokeinterface 117 2 0
    //   207: invokevirtual 153	com/youqicai/AppStore/entity/AppInfoEntity:setDownloadTime	(Ljava/lang/String;)V
    //   210: aload 8
    //   212: aload_2
    //   213: aload_2
    //   214: ldc 155
    //   216: invokeinterface 113 2 0
    //   221: invokeinterface 159 2 0
    //   226: invokevirtual 163	com/youqicai/AppStore/entity/AppInfoEntity:setVersionCode	(I)V
    //   229: aload 8
    //   231: aload_2
    //   232: aload_2
    //   233: ldc 165
    //   235: invokeinterface 113 2 0
    //   240: invokeinterface 117 2 0
    //   245: invokevirtual 168	com/youqicai/AppStore/entity/AppInfoEntity:setVersionName	(Ljava/lang/String;)V
    //   248: aload 8
    //   250: aload_2
    //   251: aload_2
    //   252: ldc 170
    //   254: invokeinterface 113 2 0
    //   259: invokeinterface 117 2 0
    //   264: invokevirtual 173	com/youqicai/AppStore/entity/AppInfoEntity:setPackageName	(Ljava/lang/String;)V
    //   267: aload 8
    //   269: aload_2
    //   270: aload_2
    //   271: ldc 175
    //   273: invokeinterface 113 2 0
    //   278: invokeinterface 117 2 0
    //   283: invokevirtual 178	com/youqicai/AppStore/entity/AppInfoEntity:setDescription	(Ljava/lang/String;)V
    //   286: aload 8
    //   288: aload_2
    //   289: aload_2
    //   290: ldc 180
    //   292: invokeinterface 113 2 0
    //   297: invokeinterface 117 2 0
    //   302: invokevirtual 183	com/youqicai/AppStore/entity/AppInfoEntity:setIconUrl	(Ljava/lang/String;)V
    //   305: aload 8
    //   307: aload_2
    //   308: aload_2
    //   309: ldc 185
    //   311: invokeinterface 113 2 0
    //   316: invokeinterface 117 2 0
    //   321: invokevirtual 188	com/youqicai/AppStore/entity/AppInfoEntity:setApkUrl	(Ljava/lang/String;)V
    //   324: aload 8
    //   326: aload_2
    //   327: aload_2
    //   328: ldc 190
    //   330: invokeinterface 113 2 0
    //   335: invokeinterface 117 2 0
    //   340: invokevirtual 193	com/youqicai/AppStore/entity/AppInfoEntity:setApkMd5	(Ljava/lang/String;)V
    //   343: aload 8
    //   345: astore_3
    //   346: aload_2
    //   347: ifnull +9 -> 356
    //   350: aload_2
    //   351: invokeinterface 196 1 0
    //   356: aload_0
    //   357: invokevirtual 197	com/youqicai/manager/BaseDbAdapter:close	()V
    //   360: aload_3
    //   361: areturn
    //   362: astore 5
    //   364: aload 5
    //   366: invokevirtual 50	java/lang/Exception:printStackTrace	()V
    //   369: aload_2
    //   370: ifnull +9 -> 379
    //   373: aload_2
    //   374: invokeinterface 196 1 0
    //   379: aload_0
    //   380: invokevirtual 197	com/youqicai/manager/BaseDbAdapter:close	()V
    //   383: aload_3
    //   384: areturn
    //   385: astore 4
    //   387: aload_2
    //   388: ifnull +9 -> 397
    //   391: aload_2
    //   392: invokeinterface 196 1 0
    //   397: aload_0
    //   398: invokevirtual 197	com/youqicai/manager/BaseDbAdapter:close	()V
    //   401: aload 4
    //   403: athrow
    //   404: astore 4
    //   406: goto -19 -> 387
    //   409: astore 5
    //   411: aload 8
    //   413: astore_3
    //   414: goto -50 -> 364
    //
    // Exception table:
    //   from	to	target	type
    //   4	47	362	java/lang/Exception
    //   53	61	362	java/lang/Exception
    //   68	77	362	java/lang/Exception
    //   4	47	385	finally
    //   53	61	385	finally
    //   68	77	385	finally
    //   364	369	385	finally
    //   77	343	404	finally
    //   77	343	409	java/lang/Exception
  }

  public ArrayList<AppInfoEntity> getAllDownAPPinfo()
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = null;
    try
    {
      localCursor = this.db.query("T_DOWNLOADAPPINFO", null, "appStatus!=5", null, null, null, null);
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        int i = localCursor.getCount();
        for (int j = 0; j < i; j++)
        {
          AppInfoEntity localAppInfoEntity = new AppInfoEntity();
          localAppInfoEntity.setAppId(localCursor.getString(localCursor.getColumnIndex("id")));
          localAppInfoEntity.setAppName(localCursor.getString(localCursor.getColumnIndex("name")));
          localAppInfoEntity.setPackageId(localCursor.getString(localCursor.getColumnIndex("packageId")));
          localAppInfoEntity.setAppStatus(localCursor.getInt(localCursor.getColumnIndex("appStatus")));
          localAppInfoEntity.setFileSize(localCursor.getString(localCursor.getColumnIndex("totalBytes")));
          localAppInfoEntity.setDownCount(localCursor.getString(localCursor.getColumnIndex("downLoadCount")));
          localAppInfoEntity.setdownloadProgress(localCursor.getFloat(localCursor.getColumnIndex("downloadProgress")));
          localAppInfoEntity.setDownloadTime(localCursor.getString(localCursor.getColumnIndex("downloadTime")));
          localAppInfoEntity.setVersionCode(localCursor.getInt(localCursor.getColumnIndex("versionCode")));
          localAppInfoEntity.setVersionName(localCursor.getString(localCursor.getColumnIndex("version")));
          localAppInfoEntity.setPackageName(localCursor.getString(localCursor.getColumnIndex("packageName")));
          localAppInfoEntity.setDescription(localCursor.getString(localCursor.getColumnIndex("description")));
          localAppInfoEntity.setIconUrl(localCursor.getString(localCursor.getColumnIndex("icon")));
          localAppInfoEntity.setApkUrl(localCursor.getString(localCursor.getColumnIndex("downUrl")));
          localAppInfoEntity.setApkMd5(localCursor.getString(localCursor.getColumnIndex("md5")));
          localArrayList.add(localAppInfoEntity);
          localCursor.moveToNext();
        }
      }
      return localArrayList;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return localArrayList;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
      close();
    }
  }

  public String getApkMD5(String paramString)
  {
    Cursor localCursor = null;
    try
    {
      String str1 = "packageName='" + paramString + "'";
      localCursor = this.db.query("T_DOWNLOADAPPINFO", null, str1, null, null, null, null);
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        String str2 = localCursor.getString(localCursor.getColumnIndex("md5"));
        return str2;
      }
      return null;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        if (localCursor != null)
          localCursor.close();
        close();
      }
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
      close();
    }
  }

  public ArrayList<String> getDownLoadingAPPinfo()
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = null;
    try
    {
      localCursor = this.db.query("T_DOWNLOADAPPINFO", null, "appStatus!=5 and appStatus!=4 and appStatus!=6", null, null, null, null);
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        int i = localCursor.getCount();
        for (int j = 0; j < i; j++)
        {
          localArrayList.add(localCursor.getString(localCursor.getColumnIndex("packageId")));
          localCursor.moveToNext();
        }
      }
      return localArrayList;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return localArrayList;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
      close();
    }
  }

  public int getDownloadAppDownCount(AppInfoEntity paramAppInfoEntity)
  {
    Cursor localCursor = null;
    try
    {
      DBHelper.MySQLiteDatabase localMySQLiteDatabase = this.db;
      String[] arrayOfString1 = { "downLoadCount" };
      String[] arrayOfString2 = new String[1];
      arrayOfString2[0] = paramAppInfoEntity.getAppId();
      localCursor = localMySQLiteDatabase.query("T_DOWNLOADAPPINFO", arrayOfString1, "id=?", arrayOfString2, null, null, null);
      System.out.println("cursor:" + localCursor + "");
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        int j = localCursor.getInt(localCursor.getColumnIndex("downLoadCount"));
        i = j;
        return i;
      }
      i = 0;
      return 0;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      int i = 0;
      return 0;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public String getDownloadUrl(String paramString)
  {
    Cursor localCursor = null;
    try
    {
      String str1 = "id='" + paramString + "'";
      localCursor = this.db.query("T_DOWNLOADAPPINFO", null, str1, null, null, null, null);
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        String str2 = localCursor.getString(localCursor.getColumnIndex("downUrl"));
        return str2;
      }
      return null;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        if (localCursor != null)
          localCursor.close();
        close();
      }
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
      close();
    }
  }

  protected boolean insertData(String paramString, ContentValues paramContentValues)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramContentValues);
      boolean bool = insertData(paramString, localArrayList);
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }

  protected boolean insertData(String paramString, ArrayList<ContentValues> paramArrayList)
  {
    try
    {
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        ContentValues localContentValues = (ContentValues)localIterator.next();
        this.db.insert(paramString, null, localContentValues);
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

  public void removeAll()
  {
  }

  public void saveDownloadAppInfo(AppInfoEntity paramAppInfoEntity)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("id", paramAppInfoEntity.getAppId());
    localContentValues.put("name", paramAppInfoEntity.getAppName());
    localContentValues.put("description", paramAppInfoEntity.getDescription());
    localContentValues.put("icon", paramAppInfoEntity.getIconUrl());
    localContentValues.put("packageId", paramAppInfoEntity.getPackageId());
    localContentValues.put("totalBytes", paramAppInfoEntity.getFileSize());
    localContentValues.put("downLoadCount", paramAppInfoEntity.getDownCount());
    localContentValues.put("appStatus", Integer.valueOf(paramAppInfoEntity.getAppStatus()));
    localContentValues.put("downloadProgress", Float.valueOf(paramAppInfoEntity.getdownloadProgress()));
    localContentValues.put("downloadTime", paramAppInfoEntity.getDownloadTime());
    localContentValues.put("versionCode", Integer.valueOf(paramAppInfoEntity.getVersionCode()));
    localContentValues.put("version", paramAppInfoEntity.getVersionName());
    localContentValues.put("packageName", paramAppInfoEntity.getPackageName());
    localContentValues.put("downUrl", paramAppInfoEntity.getApkUrl());
    localContentValues.put("md5", paramAppInfoEntity.getApkMd5());
    Cursor localCursor = null;
    try
    {
      localCursor = this.db.query("T_DOWNLOADAPPINFO", new String[] { "id" }, "id='" + paramAppInfoEntity.getAppId() + "'", null, null, null, null);
      if ((localCursor != null) && (localCursor.getCount() > 0))
        updateData("T_DOWNLOADAPPINFO", localContentValues, "id='" + paramAppInfoEntity.getAppId() + "'", null);
      while (true)
      {
        return;
        insertData("T_DOWNLOADAPPINFO", localContentValues);
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public void saveUpdateApp(AppInfoEntity paramAppInfoEntity, int paramInt)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("id", paramAppInfoEntity.getAppId());
    localContentValues.put("packageName", paramAppInfoEntity.getPackageName());
    localContentValues.put("appflag", Integer.valueOf(paramInt));
    Cursor localCursor = null;
    try
    {
      localCursor = this.db.query("T_UPDATEINFO", new String[] { "packageName" }, "packageName='" + paramAppInfoEntity.getPackageName() + "'", null, null, null, null);
      if ((localCursor != null) && (localCursor.getCount() > 0))
        updateData("T_UPDATEINFO", localContentValues, "packageName='" + paramAppInfoEntity.getPackageName() + "'", null);
      while (true)
      {
        return;
        insertData("T_UPDATEINFO", localContentValues);
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public void saveUpgradeApp(AppInfoEntity paramAppInfoEntity)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("id", paramAppInfoEntity.getAppId());
    localContentValues.put("name", paramAppInfoEntity.getAppName());
    localContentValues.put("description", paramAppInfoEntity.getDescription());
    localContentValues.put("icon", paramAppInfoEntity.getIconUrl());
    localContentValues.put("packageId", paramAppInfoEntity.getPackageId());
    localContentValues.put("totalBytes", paramAppInfoEntity.getFileSize());
    localContentValues.put("appStatus", Integer.valueOf(paramAppInfoEntity.getAppStatus()));
    localContentValues.put("downloadProgress", Float.valueOf(paramAppInfoEntity.getdownloadProgress()));
    localContentValues.put("downloadTime", paramAppInfoEntity.getDownloadTime());
    localContentValues.put("versionCode", Integer.valueOf(paramAppInfoEntity.getVersionCode()));
    localContentValues.put("version", paramAppInfoEntity.getVersionName());
    localContentValues.put("packageName", paramAppInfoEntity.getPackageName());
    localContentValues.put("appflag", Integer.valueOf(paramAppInfoEntity.getFlag()));
    localContentValues.put("savedfilepath", paramAppInfoEntity.getSavedFilePath());
    localContentValues.put("appdownurl", paramAppInfoEntity.getApkUrl());
    localContentValues.put("downLoadCount", paramAppInfoEntity.getDownCount());
    localContentValues.put("updateTime", paramAppInfoEntity.getUpdateTime());
    localContentValues.put("updateRecord", paramAppInfoEntity.getNewFeature());
    Cursor localCursor = null;
    try
    {
      localCursor = this.db.query("T_DOWNLOADAPPINFO", new String[] { "packageName" }, "packageName='" + paramAppInfoEntity.getPackageName() + "'", null, null, null, null);
      if ((localCursor != null) && (localCursor.getCount() > 0))
        updateData("T_DOWNLOADAPPINFO", localContentValues, "packageName='" + paramAppInfoEntity.getPackageName() + "'", null);
      while (true)
      {
        return;
        insertData("T_DOWNLOADAPPINFO", localContentValues);
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  protected boolean updateData(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString)
  {
    try
    {
      this.db.update(paramString1, paramContentValues, paramString2, paramArrayOfString);
      return true;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }

  public void updateDownloadAppInfo(String paramString, int paramInt)
  {
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("appStatus", Integer.valueOf(paramInt));
      this.db.update("T_DOWNLOADAPPINFO", localContentValues, "id=?", new String[] { paramString });
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void updateDownloadAppInfo(String paramString1, int paramInt, String paramString2)
  {
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("appStatus", Integer.valueOf(paramInt));
      localContentValues.put("downloadTime", paramString2);
      this.db.update("T_DOWNLOADAPPINFO", localContentValues, "id=?", new String[] { paramString1 });
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void updateDownloadAppStatusAndPro(String paramString, int paramInt, float paramFloat)
  {
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("appStatus", Integer.valueOf(paramInt));
      localContentValues.put("downloadProgress", Float.valueOf(paramFloat));
      this.db.update("T_DOWNLOADAPPINFO", localContentValues, "packageName=?", new String[] { paramString });
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void updateDownloadAppStatusOfPackageId(String paramString1, int paramInt, String paramString2)
  {
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("appStatus", Integer.valueOf(paramInt));
      localContentValues.put("downloadTime", paramString2);
      this.db.update("T_DOWNLOADAPPINFO", localContentValues, "packageId=?", new String[] { paramString1 });
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void updateDownloadAppTotalSizeInfo(String paramString1, String paramString2)
  {
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("totalBytes", paramString2);
      this.db.update("T_DOWNLOADAPPINFO", localContentValues, "id=?", new String[] { paramString1 });
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void updateDownloadLoadUrlInfo(String paramString1, String paramString2)
  {
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("downUrl", paramString2);
      this.db.update("T_DOWNLOADAPPINFO", localContentValues, "id=?", new String[] { paramString1 });
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void updateDownloadProgressAppInfo(String paramString, float paramFloat)
  {
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("downloadProgress", Float.valueOf(paramFloat));
      this.db.update("T_DOWNLOADAPPINFO", localContentValues, "id=?", new String[] { paramString });
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void updateDownloadStatus(String paramString, int paramInt)
  {
    try
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("appStatus", Integer.valueOf(paramInt));
      this.db.update("T_DOWNLOADAPPINFO", localContentValues, "packageName=?", new String[] { paramString });
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.manager.BaseDbAdapter
 * JD-Core Version:    0.6.2
 */