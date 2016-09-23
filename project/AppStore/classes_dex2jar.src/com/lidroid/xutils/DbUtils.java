package com.lidroid.xutils;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.lidroid.xutils.db.sqlite.CursorUtils;
import com.lidroid.xutils.db.sqlite.CursorUtils.FindCacheSequence;
import com.lidroid.xutils.db.sqlite.DbModelSelector;
import com.lidroid.xutils.db.sqlite.Selector;
import com.lidroid.xutils.db.sqlite.SqlInfo;
import com.lidroid.xutils.db.sqlite.SqlInfoBuilder;
import com.lidroid.xutils.db.sqlite.WhereBuilder;
import com.lidroid.xutils.db.table.DbModel;
import com.lidroid.xutils.db.table.Id;
import com.lidroid.xutils.db.table.Table;
import com.lidroid.xutils.db.table.TableUtils;
import com.lidroid.xutils.exception.DbException;
import com.lidroid.xutils.util.IOUtils;
import com.lidroid.xutils.util.LogUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class DbUtils
{
  private static HashMap<String, DbUtils> daoMap = new HashMap();
  private boolean allowTransaction = false;
  private DaoConfig daoConfig;
  private SQLiteDatabase database;
  private boolean debug = false;
  private final FindTempCache findTempCache = new FindTempCache(null);
  private Lock writeLock = new ReentrantLock();
  private volatile boolean writeLocked = false;

  private DbUtils(DaoConfig paramDaoConfig)
  {
    if (paramDaoConfig == null)
      throw new IllegalArgumentException("daoConfig may not be null");
    this.database = createDatabase(paramDaoConfig);
    this.daoConfig = paramDaoConfig;
  }

  private void beginTransaction()
  {
    if (this.allowTransaction)
    {
      this.database.beginTransaction();
      return;
    }
    this.writeLock.lock();
    this.writeLocked = true;
  }

  public static DbUtils create(Context paramContext)
  {
    return getInstance(new DaoConfig(paramContext));
  }

  public static DbUtils create(Context paramContext, String paramString)
  {
    DaoConfig localDaoConfig = new DaoConfig(paramContext);
    localDaoConfig.setDbName(paramString);
    return getInstance(localDaoConfig);
  }

  public static DbUtils create(Context paramContext, String paramString, int paramInt, DbUpgradeListener paramDbUpgradeListener)
  {
    DaoConfig localDaoConfig = new DaoConfig(paramContext);
    localDaoConfig.setDbName(paramString);
    localDaoConfig.setDbVersion(paramInt);
    localDaoConfig.setDbUpgradeListener(paramDbUpgradeListener);
    return getInstance(localDaoConfig);
  }

  public static DbUtils create(Context paramContext, String paramString1, String paramString2)
  {
    DaoConfig localDaoConfig = new DaoConfig(paramContext);
    localDaoConfig.setDbDir(paramString1);
    localDaoConfig.setDbName(paramString2);
    return getInstance(localDaoConfig);
  }

  public static DbUtils create(Context paramContext, String paramString1, String paramString2, int paramInt, DbUpgradeListener paramDbUpgradeListener)
  {
    DaoConfig localDaoConfig = new DaoConfig(paramContext);
    localDaoConfig.setDbDir(paramString1);
    localDaoConfig.setDbName(paramString2);
    localDaoConfig.setDbVersion(paramInt);
    localDaoConfig.setDbUpgradeListener(paramDbUpgradeListener);
    return getInstance(localDaoConfig);
  }

  public static DbUtils create(DaoConfig paramDaoConfig)
  {
    return getInstance(paramDaoConfig);
  }

  private SQLiteDatabase createDatabase(DaoConfig paramDaoConfig)
  {
    String str = paramDaoConfig.getDbDir();
    if (!TextUtils.isEmpty(str))
    {
      File localFile = new File(str);
      SQLiteDatabase localSQLiteDatabase;
      if (!localFile.exists())
      {
        boolean bool = localFile.mkdirs();
        localSQLiteDatabase = null;
        if (!bool);
      }
      else
      {
        localSQLiteDatabase = SQLiteDatabase.openOrCreateDatabase(new File(str, paramDaoConfig.getDbName()), null);
      }
      return localSQLiteDatabase;
    }
    return paramDaoConfig.getContext().openOrCreateDatabase(paramDaoConfig.getDbName(), 0, null);
  }

  private void debugSql(String paramString)
  {
    if (this.debug)
      LogUtils.d(paramString);
  }

  private void endTransaction()
  {
    if (this.allowTransaction)
      this.database.endTransaction();
    if (this.writeLocked)
    {
      this.writeLock.unlock();
      this.writeLocked = false;
    }
  }

  private static DbUtils getInstance(DaoConfig paramDaoConfig)
  {
    while (true)
    {
      DbUtils localDbUtils;
      try
      {
        localDbUtils = (DbUtils)daoMap.get(paramDaoConfig.getDbName());
        if (localDbUtils == null)
        {
          localDbUtils = new DbUtils(paramDaoConfig);
          daoMap.put(paramDaoConfig.getDbName(), localDbUtils);
          SQLiteDatabase localSQLiteDatabase = localDbUtils.database;
          int i = localSQLiteDatabase.getVersion();
          int j = paramDaoConfig.getDbVersion();
          if (i != j)
          {
            if (i != 0)
            {
              DbUpgradeListener localDbUpgradeListener = paramDaoConfig.getDbUpgradeListener();
              if (localDbUpgradeListener != null)
                localDbUpgradeListener.onUpgrade(localDbUtils, i, j);
            }
            else
            {
              localSQLiteDatabase.setVersion(j);
            }
          }
          else
            return localDbUtils;
        }
        else
        {
          localDbUtils.daoConfig = paramDaoConfig;
          continue;
        }
      }
      finally
      {
      }
      try
      {
        localDbUtils.dropDb();
      }
      catch (DbException localDbException)
      {
        LogUtils.e(localDbException.getMessage(), localDbException);
      }
    }
  }

  private long getLastAutoIncrementId(String paramString)
    throws DbException
  {
    long l1 = -1L;
    Cursor localCursor = execQuery("SELECT seq FROM sqlite_sequence WHERE name='" + paramString + "'");
    if (localCursor != null);
    try
    {
      if (localCursor.moveToNext())
      {
        long l2 = localCursor.getLong(0);
        l1 = l2;
      }
      return l1;
    }
    catch (Throwable localThrowable)
    {
      throw new DbException(localThrowable);
    }
    finally
    {
      IOUtils.closeQuietly(localCursor);
    }
  }

  private boolean saveBindingIdWithoutTransaction(Object paramObject)
    throws DbException
  {
    Table localTable = Table.get(this, paramObject.getClass());
    Id localId = localTable.id;
    if (localId.isAutoIncrement())
    {
      execNonQuery(SqlInfoBuilder.buildInsertSqlInfo(this, paramObject));
      long l = getLastAutoIncrementId(localTable.tableName);
      if (l == -1L)
        return false;
      localId.setAutoIncrementId(paramObject, l);
      return true;
    }
    execNonQuery(SqlInfoBuilder.buildInsertSqlInfo(this, paramObject));
    return true;
  }

  private void saveOrUpdateWithoutTransaction(Object paramObject)
    throws DbException
  {
    Id localId = Table.get(this, paramObject.getClass()).id;
    if (localId.isAutoIncrement())
    {
      if (localId.getColumnValue(paramObject) != null)
      {
        execNonQuery(SqlInfoBuilder.buildUpdateSqlInfo(this, paramObject, new String[0]));
        return;
      }
      saveBindingIdWithoutTransaction(paramObject);
      return;
    }
    execNonQuery(SqlInfoBuilder.buildReplaceSqlInfo(this, paramObject));
  }

  private void setTransactionSuccessful()
  {
    if (this.allowTransaction)
      this.database.setTransactionSuccessful();
  }

  public void close()
  {
    String str = this.daoConfig.getDbName();
    if (daoMap.containsKey(str))
    {
      daoMap.remove(str);
      this.database.close();
    }
  }

  public DbUtils configAllowTransaction(boolean paramBoolean)
  {
    this.allowTransaction = paramBoolean;
    return this;
  }

  public DbUtils configDebug(boolean paramBoolean)
  {
    this.debug = paramBoolean;
    return this;
  }

  public long count(Selector paramSelector)
    throws DbException
  {
    Class localClass = paramSelector.getEntityType();
    if (!tableIsExist(localClass))
      return 0L;
    Table localTable = Table.get(this, localClass);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ("count(" + localTable.id.getColumnName() + ") as count");
    return findDbModelFirst(paramSelector.select(arrayOfString)).getLong("count");
  }

  public long count(Class<?> paramClass)
    throws DbException
  {
    return count(Selector.from(paramClass));
  }

  public void createTableIfNotExist(Class<?> paramClass)
    throws DbException
  {
    if (!tableIsExist(paramClass))
    {
      execNonQuery(SqlInfoBuilder.buildCreateTableSqlInfo(this, paramClass));
      String str = TableUtils.getExecAfterTableCreated(paramClass);
      if (!TextUtils.isEmpty(str))
        execNonQuery(str);
    }
  }

  public void delete(Class<?> paramClass, WhereBuilder paramWhereBuilder)
    throws DbException
  {
    if (!tableIsExist(paramClass))
      return;
    try
    {
      beginTransaction();
      execNonQuery(SqlInfoBuilder.buildDeleteSqlInfo(this, paramClass, paramWhereBuilder));
      setTransactionSuccessful();
      return;
    }
    finally
    {
      endTransaction();
    }
  }

  public void delete(Object paramObject)
    throws DbException
  {
    if (!tableIsExist(paramObject.getClass()))
      return;
    try
    {
      beginTransaction();
      execNonQuery(SqlInfoBuilder.buildDeleteSqlInfo(this, paramObject));
      setTransactionSuccessful();
      return;
    }
    finally
    {
      endTransaction();
    }
  }

  public void deleteAll(Class<?> paramClass)
    throws DbException
  {
    delete(paramClass, null);
  }

  public void deleteAll(List<?> paramList)
    throws DbException
  {
    if ((paramList == null) || (paramList.size() == 0) || (!tableIsExist(paramList.get(0).getClass())))
      return;
    try
    {
      beginTransaction();
      Iterator localIterator = paramList.iterator();
      while (true)
      {
        if (!localIterator.hasNext())
        {
          setTransactionSuccessful();
          return;
        }
        execNonQuery(SqlInfoBuilder.buildDeleteSqlInfo(this, localIterator.next()));
      }
    }
    finally
    {
      endTransaction();
    }
  }

  public void deleteById(Class<?> paramClass, Object paramObject)
    throws DbException
  {
    if (!tableIsExist(paramClass))
      return;
    try
    {
      beginTransaction();
      execNonQuery(SqlInfoBuilder.buildDeleteSqlInfo(this, paramClass, paramObject));
      setTransactionSuccessful();
      return;
    }
    finally
    {
      endTransaction();
    }
  }

  public void dropDb()
    throws DbException
  {
    Cursor localCursor = execQuery("SELECT name FROM sqlite_master WHERE type='table' AND name<>'sqlite_sequence'");
    if (localCursor != null);
    try
    {
      while (true)
      {
        boolean bool = localCursor.moveToNext();
        if (!bool)
          return;
        try
        {
          String str = localCursor.getString(0);
          execNonQuery("DROP TABLE " + str);
          Table.remove(this, str);
        }
        catch (Throwable localThrowable2)
        {
          LogUtils.e(localThrowable2.getMessage(), localThrowable2);
        }
      }
    }
    catch (Throwable localThrowable1)
    {
      throw new DbException(localThrowable1);
    }
    finally
    {
      IOUtils.closeQuietly(localCursor);
    }
  }

  public void dropTable(Class<?> paramClass)
    throws DbException
  {
    if (!tableIsExist(paramClass))
      return;
    String str = TableUtils.getTableName(paramClass);
    execNonQuery("DROP TABLE " + str);
    Table.remove(this, paramClass);
  }

  public void execNonQuery(SqlInfo paramSqlInfo)
    throws DbException
  {
    debugSql(paramSqlInfo.getSql());
    try
    {
      if (paramSqlInfo.getBindArgs() != null)
      {
        this.database.execSQL(paramSqlInfo.getSql(), paramSqlInfo.getBindArgsAsArray());
        return;
      }
      this.database.execSQL(paramSqlInfo.getSql());
      return;
    }
    catch (Throwable localThrowable)
    {
      throw new DbException(localThrowable);
    }
  }

  public void execNonQuery(String paramString)
    throws DbException
  {
    debugSql(paramString);
    try
    {
      this.database.execSQL(paramString);
      return;
    }
    catch (Throwable localThrowable)
    {
      throw new DbException(localThrowable);
    }
  }

  public Cursor execQuery(SqlInfo paramSqlInfo)
    throws DbException
  {
    debugSql(paramSqlInfo.getSql());
    try
    {
      Cursor localCursor = this.database.rawQuery(paramSqlInfo.getSql(), paramSqlInfo.getBindArgsAsStrArray());
      return localCursor;
    }
    catch (Throwable localThrowable)
    {
      throw new DbException(localThrowable);
    }
  }

  public Cursor execQuery(String paramString)
    throws DbException
  {
    debugSql(paramString);
    try
    {
      Cursor localCursor = this.database.rawQuery(paramString, null);
      return localCursor;
    }
    catch (Throwable localThrowable)
    {
      throw new DbException(localThrowable);
    }
  }

  public <T> List<T> findAll(Selector paramSelector)
    throws DbException
  {
    if (!tableIsExist(paramSelector.getEntityType()))
      return null;
    String str = paramSelector.toString();
    long l = CursorUtils.FindCacheSequence.getSeq();
    this.findTempCache.setSeq(l);
    Object localObject1 = this.findTempCache.get(str);
    if (localObject1 != null)
      return (List)localObject1;
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = execQuery(str);
    if (localCursor != null);
    try
    {
      while (true)
      {
        if (!localCursor.moveToNext())
        {
          this.findTempCache.put(str, localArrayList);
          return localArrayList;
        }
        localArrayList.add(CursorUtils.getEntity(this, localCursor, paramSelector.getEntityType(), l));
      }
    }
    catch (Throwable localThrowable)
    {
      throw new DbException(localThrowable);
    }
    finally
    {
      IOUtils.closeQuietly(localCursor);
    }
  }

  public <T> List<T> findAll(Class<T> paramClass)
    throws DbException
  {
    return findAll(Selector.from(paramClass));
  }

  public <T> T findById(Class<T> paramClass, Object paramObject)
    throws DbException
  {
    Object localObject1;
    if (!tableIsExist(paramClass))
      localObject1 = null;
    String str;
    long l;
    do
    {
      return localObject1;
      Table localTable = Table.get(this, paramClass);
      str = Selector.from(paramClass).where(localTable.id.getColumnName(), "=", paramObject).limit(1).toString();
      l = CursorUtils.FindCacheSequence.getSeq();
      this.findTempCache.setSeq(l);
      localObject1 = this.findTempCache.get(str);
    }
    while (localObject1 != null);
    Cursor localCursor = execQuery(str);
    if (localCursor != null)
    {
      try
      {
        if (localCursor.moveToNext())
        {
          Object localObject3 = CursorUtils.getEntity(this, localCursor, paramClass, l);
          this.findTempCache.put(str, localObject3);
          return localObject3;
        }
      }
      catch (Throwable localThrowable)
      {
        throw new DbException(localThrowable);
      }
      finally
      {
        IOUtils.closeQuietly(localCursor);
      }
      IOUtils.closeQuietly(localCursor);
    }
    return null;
  }

  public List<DbModel> findDbModelAll(DbModelSelector paramDbModelSelector)
    throws DbException
  {
    Object localObject1;
    if (!tableIsExist(paramDbModelSelector.getEntityType()))
      localObject1 = null;
    Cursor localCursor;
    do
    {
      return localObject1;
      localObject1 = new ArrayList();
      localCursor = execQuery(paramDbModelSelector.toString());
    }
    while (localCursor == null);
    try
    {
      while (true)
      {
        boolean bool = localCursor.moveToNext();
        if (!bool)
          return localObject1;
        ((List)localObject1).add(CursorUtils.getDbModel(localCursor));
      }
    }
    catch (Throwable localThrowable)
    {
      throw new DbException(localThrowable);
    }
    finally
    {
      IOUtils.closeQuietly(localCursor);
    }
  }

  public List<DbModel> findDbModelAll(SqlInfo paramSqlInfo)
    throws DbException
  {
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = execQuery(paramSqlInfo);
    if (localCursor != null);
    try
    {
      while (true)
      {
        boolean bool = localCursor.moveToNext();
        if (!bool)
          return localArrayList;
        localArrayList.add(CursorUtils.getDbModel(localCursor));
      }
    }
    catch (Throwable localThrowable)
    {
      throw new DbException(localThrowable);
    }
    finally
    {
      IOUtils.closeQuietly(localCursor);
    }
  }

  public DbModel findDbModelFirst(DbModelSelector paramDbModelSelector)
    throws DbException
  {
    if (!tableIsExist(paramDbModelSelector.getEntityType()));
    Cursor localCursor;
    do
    {
      return null;
      localCursor = execQuery(paramDbModelSelector.limit(1).toString());
    }
    while (localCursor == null);
    try
    {
      if (localCursor.moveToNext())
      {
        DbModel localDbModel = CursorUtils.getDbModel(localCursor);
        return localDbModel;
      }
    }
    catch (Throwable localThrowable)
    {
      throw new DbException(localThrowable);
    }
    finally
    {
      IOUtils.closeQuietly(localCursor);
    }
    IOUtils.closeQuietly(localCursor);
    return null;
  }

  public DbModel findDbModelFirst(SqlInfo paramSqlInfo)
    throws DbException
  {
    Cursor localCursor = execQuery(paramSqlInfo);
    if (localCursor != null)
    {
      try
      {
        if (localCursor.moveToNext())
        {
          DbModel localDbModel = CursorUtils.getDbModel(localCursor);
          return localDbModel;
        }
      }
      catch (Throwable localThrowable)
      {
        throw new DbException(localThrowable);
      }
      finally
      {
        IOUtils.closeQuietly(localCursor);
      }
      IOUtils.closeQuietly(localCursor);
    }
    return null;
  }

  public <T> T findFirst(Selector paramSelector)
    throws DbException
  {
    Object localObject1;
    if (!tableIsExist(paramSelector.getEntityType()))
      localObject1 = null;
    String str;
    long l;
    do
    {
      return localObject1;
      str = paramSelector.limit(1).toString();
      l = CursorUtils.FindCacheSequence.getSeq();
      this.findTempCache.setSeq(l);
      localObject1 = this.findTempCache.get(str);
    }
    while (localObject1 != null);
    Cursor localCursor = execQuery(str);
    if (localCursor != null)
    {
      try
      {
        if (localCursor.moveToNext())
        {
          Object localObject3 = CursorUtils.getEntity(this, localCursor, paramSelector.getEntityType(), l);
          this.findTempCache.put(str, localObject3);
          return localObject3;
        }
      }
      catch (Throwable localThrowable)
      {
        throw new DbException(localThrowable);
      }
      finally
      {
        IOUtils.closeQuietly(localCursor);
      }
      IOUtils.closeQuietly(localCursor);
    }
    return null;
  }

  public <T> T findFirst(Class<T> paramClass)
    throws DbException
  {
    return findFirst(Selector.from(paramClass));
  }

  public DaoConfig getDaoConfig()
  {
    return this.daoConfig;
  }

  public SQLiteDatabase getDatabase()
  {
    return this.database;
  }

  public void replace(Object paramObject)
    throws DbException
  {
    try
    {
      beginTransaction();
      createTableIfNotExist(paramObject.getClass());
      execNonQuery(SqlInfoBuilder.buildReplaceSqlInfo(this, paramObject));
      setTransactionSuccessful();
      return;
    }
    finally
    {
      endTransaction();
    }
  }

  public void replaceAll(List<?> paramList)
    throws DbException
  {
    if ((paramList == null) || (paramList.size() == 0))
      return;
    try
    {
      beginTransaction();
      createTableIfNotExist(paramList.get(0).getClass());
      Iterator localIterator = paramList.iterator();
      while (true)
      {
        if (!localIterator.hasNext())
        {
          setTransactionSuccessful();
          return;
        }
        execNonQuery(SqlInfoBuilder.buildReplaceSqlInfo(this, localIterator.next()));
      }
    }
    finally
    {
      endTransaction();
    }
  }

  public void save(Object paramObject)
    throws DbException
  {
    try
    {
      beginTransaction();
      createTableIfNotExist(paramObject.getClass());
      execNonQuery(SqlInfoBuilder.buildInsertSqlInfo(this, paramObject));
      setTransactionSuccessful();
      return;
    }
    finally
    {
      endTransaction();
    }
  }

  public void saveAll(List<?> paramList)
    throws DbException
  {
    if ((paramList == null) || (paramList.size() == 0))
      return;
    try
    {
      beginTransaction();
      createTableIfNotExist(paramList.get(0).getClass());
      Iterator localIterator = paramList.iterator();
      while (true)
      {
        if (!localIterator.hasNext())
        {
          setTransactionSuccessful();
          return;
        }
        execNonQuery(SqlInfoBuilder.buildInsertSqlInfo(this, localIterator.next()));
      }
    }
    finally
    {
      endTransaction();
    }
  }

  public boolean saveBindingId(Object paramObject)
    throws DbException
  {
    try
    {
      beginTransaction();
      createTableIfNotExist(paramObject.getClass());
      boolean bool = saveBindingIdWithoutTransaction(paramObject);
      setTransactionSuccessful();
      return bool;
    }
    finally
    {
      endTransaction();
    }
  }

  public void saveBindingIdAll(List<?> paramList)
    throws DbException
  {
    if ((paramList == null) || (paramList.size() == 0))
      return;
    try
    {
      beginTransaction();
      createTableIfNotExist(paramList.get(0).getClass());
      Iterator localIterator = paramList.iterator();
      do
        if (!localIterator.hasNext())
        {
          setTransactionSuccessful();
          return;
        }
      while (saveBindingIdWithoutTransaction(localIterator.next()));
      throw new DbException("saveBindingId error, transaction will not commit!");
    }
    finally
    {
      endTransaction();
    }
  }

  public void saveOrUpdate(Object paramObject)
    throws DbException
  {
    try
    {
      beginTransaction();
      createTableIfNotExist(paramObject.getClass());
      saveOrUpdateWithoutTransaction(paramObject);
      setTransactionSuccessful();
      return;
    }
    finally
    {
      endTransaction();
    }
  }

  public void saveOrUpdateAll(List<?> paramList)
    throws DbException
  {
    if ((paramList == null) || (paramList.size() == 0))
      return;
    try
    {
      beginTransaction();
      createTableIfNotExist(paramList.get(0).getClass());
      Iterator localIterator = paramList.iterator();
      while (true)
      {
        if (!localIterator.hasNext())
        {
          setTransactionSuccessful();
          return;
        }
        saveOrUpdateWithoutTransaction(localIterator.next());
      }
    }
    finally
    {
      endTransaction();
    }
  }

  public boolean tableIsExist(Class<?> paramClass)
    throws DbException
  {
    Table localTable = Table.get(this, paramClass);
    if (localTable.isCheckedDatabase())
      return true;
    Cursor localCursor = execQuery("SELECT COUNT(*) AS c FROM sqlite_master WHERE type='table' AND name='" + localTable.tableName + "'");
    if (localCursor != null)
    {
      try
      {
        if ((localCursor.moveToNext()) && (localCursor.getInt(0) > 0))
        {
          localTable.setCheckedDatabase(true);
          return true;
        }
      }
      catch (Throwable localThrowable)
      {
        throw new DbException(localThrowable);
      }
      finally
      {
        IOUtils.closeQuietly(localCursor);
      }
      IOUtils.closeQuietly(localCursor);
    }
    return false;
  }

  public void update(Object paramObject, WhereBuilder paramWhereBuilder, String[] paramArrayOfString)
    throws DbException
  {
    if (!tableIsExist(paramObject.getClass()))
      return;
    try
    {
      beginTransaction();
      execNonQuery(SqlInfoBuilder.buildUpdateSqlInfo(this, paramObject, paramWhereBuilder, paramArrayOfString));
      setTransactionSuccessful();
      return;
    }
    finally
    {
      endTransaction();
    }
  }

  public void update(Object paramObject, String[] paramArrayOfString)
    throws DbException
  {
    if (!tableIsExist(paramObject.getClass()))
      return;
    try
    {
      beginTransaction();
      execNonQuery(SqlInfoBuilder.buildUpdateSqlInfo(this, paramObject, paramArrayOfString));
      setTransactionSuccessful();
      return;
    }
    finally
    {
      endTransaction();
    }
  }

  public void updateAll(List<?> paramList, WhereBuilder paramWhereBuilder, String[] paramArrayOfString)
    throws DbException
  {
    if ((paramList == null) || (paramList.size() == 0) || (!tableIsExist(paramList.get(0).getClass())))
      return;
    try
    {
      beginTransaction();
      Iterator localIterator = paramList.iterator();
      while (true)
      {
        if (!localIterator.hasNext())
        {
          setTransactionSuccessful();
          return;
        }
        execNonQuery(SqlInfoBuilder.buildUpdateSqlInfo(this, localIterator.next(), paramWhereBuilder, paramArrayOfString));
      }
    }
    finally
    {
      endTransaction();
    }
  }

  public void updateAll(List<?> paramList, String[] paramArrayOfString)
    throws DbException
  {
    if ((paramList == null) || (paramList.size() == 0) || (!tableIsExist(paramList.get(0).getClass())))
      return;
    try
    {
      beginTransaction();
      Iterator localIterator = paramList.iterator();
      while (true)
      {
        if (!localIterator.hasNext())
        {
          setTransactionSuccessful();
          return;
        }
        execNonQuery(SqlInfoBuilder.buildUpdateSqlInfo(this, localIterator.next(), paramArrayOfString));
      }
    }
    finally
    {
      endTransaction();
    }
  }

  public static class DaoConfig
  {
    private Context context;
    private String dbDir;
    private String dbName = "xUtils.db";
    private DbUtils.DbUpgradeListener dbUpgradeListener;
    private int dbVersion = 1;

    public DaoConfig(Context paramContext)
    {
      this.context = paramContext.getApplicationContext();
    }

    public Context getContext()
    {
      return this.context;
    }

    public String getDbDir()
    {
      return this.dbDir;
    }

    public String getDbName()
    {
      return this.dbName;
    }

    public DbUtils.DbUpgradeListener getDbUpgradeListener()
    {
      return this.dbUpgradeListener;
    }

    public int getDbVersion()
    {
      return this.dbVersion;
    }

    public void setDbDir(String paramString)
    {
      this.dbDir = paramString;
    }

    public void setDbName(String paramString)
    {
      if (!TextUtils.isEmpty(paramString))
        this.dbName = paramString;
    }

    public void setDbUpgradeListener(DbUtils.DbUpgradeListener paramDbUpgradeListener)
    {
      this.dbUpgradeListener = paramDbUpgradeListener;
    }

    public void setDbVersion(int paramInt)
    {
      this.dbVersion = paramInt;
    }
  }

  public static abstract interface DbUpgradeListener
  {
    public abstract void onUpgrade(DbUtils paramDbUtils, int paramInt1, int paramInt2);
  }

  private class FindTempCache
  {
    private final ConcurrentHashMap<String, Object> cache = new ConcurrentHashMap();
    private long seq = 0L;

    private FindTempCache()
    {
    }

    public Object get(String paramString)
    {
      return this.cache.get(paramString);
    }

    public void put(String paramString, Object paramObject)
    {
      if ((paramString != null) && (paramObject != null))
        this.cache.put(paramString, paramObject);
    }

    public void setSeq(long paramLong)
    {
      if (this.seq != paramLong)
      {
        this.cache.clear();
        this.seq = paramLong;
      }
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.DbUtils
 * JD-Core Version:    0.6.2
 */