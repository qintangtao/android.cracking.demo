package com.jh.persistence.db;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.jh.app.util.AllTaskFinish;
import com.jh.app.util.RunnableExecutor;

@Deprecated
public class DBExcutor
{
  private SQLiteDatabase dbwriter;
  private RunnableExecutor executor;

  public DBExcutor(SQLiteDatabase paramSQLiteDatabase)
  {
    this.dbwriter = paramSQLiteDatabase;
    this.executor = RunnableExecutor.newInstance(1);
  }

  public void close()
  {
    this.executor.executeTask(new Runnable()
    {
      public void run()
      {
        if (DBExcutor.this.dbwriter != null)
        {
          if (DBExcutor.this.dbwriter.isOpen())
            DBExcutor.this.dbwriter.close();
          DBExcutor.this.dbwriter = null;
        }
        DBExcutor.this.executor.cancel();
      }
    });
  }

  public void delete(final String paramString1, final String paramString2, final String[] paramArrayOfString)
  {
    if (this.dbwriter.inTransaction())
    {
      this.executor.executeTask(new TranctionTask(paramString1)
      {
        public void excuteTranction(SQLiteDatabase paramAnonymousSQLiteDatabase)
        {
          paramAnonymousSQLiteDatabase.delete(paramString1, paramString2, paramArrayOfString);
        }
      });
      return;
    }
    synchronized (this.dbwriter)
    {
      if (!this.dbwriter.inTransaction())
        this.dbwriter.delete(paramString1, paramString2, paramArrayOfString);
      return;
    }
  }

  public void excute(TranctionTask paramTranctionTask)
  {
    this.executor.executeTask(paramTranctionTask);
  }

  public void excuteRawsql(final String paramString)
  {
    if (this.dbwriter.inTransaction())
    {
      this.executor.executeTask(new TranctionTask(paramString)
      {
        public void excuteTranction(SQLiteDatabase paramAnonymousSQLiteDatabase)
        {
          paramAnonymousSQLiteDatabase.execSQL(paramString);
        }
      });
      return;
    }
    synchronized (this.dbwriter)
    {
      if (!this.dbwriter.inTransaction())
        this.dbwriter.execSQL(paramString);
      return;
    }
  }

  public SQLiteDatabase getDbwriter()
  {
    return this.dbwriter;
  }

  public void insert(String paramString1, String paramString2, ContentValues paramContentValues)
  {
    insert(paramString1, paramString2, paramContentValues, null);
  }

  public void insert(final String paramString1, final String paramString2, final ContentValues paramContentValues, final InsertCallBack paramInsertCallBack)
  {
    if (this.dbwriter.inTransaction())
    {
      this.executor.executeTask(new TranctionTask(paramString1)
      {
        public void excuteTranction(SQLiteDatabase paramAnonymousSQLiteDatabase)
        {
          long l = paramAnonymousSQLiteDatabase.insert(paramString1, paramString2, paramContentValues);
          if (paramInsertCallBack != null)
            paramInsertCallBack.success(l);
        }
      });
      return;
    }
    synchronized (this.dbwriter)
    {
      if (!this.dbwriter.inTransaction())
      {
        long l = this.dbwriter.insert(paramString1, paramString2, paramContentValues);
        if (paramInsertCallBack != null)
          paramInsertCallBack.success(l);
      }
      return;
    }
  }

  public Cursor query(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5)
  {
    return query(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, paramString4, paramString5, null);
  }

  public Cursor query(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    return this.dbwriter.query(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, paramString4, paramString5, paramString6);
  }

  public Cursor rawQuery(String paramString, String[] paramArrayOfString)
  {
    return this.dbwriter.rawQuery(paramString, paramArrayOfString);
  }

  public void setTaskFinishCallBack(AllTaskFinish paramAllTaskFinish)
  {
    this.executor.setTaskFinishCallBack(paramAllTaskFinish);
  }

  public void update(final String paramString1, final ContentValues paramContentValues, final String paramString2, final String[] paramArrayOfString)
  {
    if (this.dbwriter.inTransaction())
    {
      this.executor.executeTask(new TranctionTask(paramString1)
      {
        public void excuteTranction(SQLiteDatabase paramAnonymousSQLiteDatabase)
        {
          paramAnonymousSQLiteDatabase.update(paramString1, paramContentValues, paramString2, paramArrayOfString);
        }
      });
      return;
    }
    synchronized (this.dbwriter)
    {
      if (!this.dbwriter.inTransaction())
        this.dbwriter.update(paramString1, paramContentValues, paramString2, paramArrayOfString);
      return;
    }
  }

  public static abstract interface FinishDBTask
  {
    public abstract void finish(Object paramObject);
  }

  public static abstract interface InsertCallBack
  {
    public abstract void success(long paramLong);
  }

  public abstract class TranctionTask
    implements Runnable
  {
    private DBExcutor.FinishDBTask finishTask;

    public TranctionTask()
    {
    }

    public TranctionTask(DBExcutor.FinishDBTask arg2)
    {
      Object localObject;
      this.finishTask = localObject;
    }

    public abstract void excuteTranction(SQLiteDatabase paramSQLiteDatabase)
      throws Exception;

    public void finish()
    {
      if (this.finishTask != null)
        this.finishTask.finish(null);
    }

    public final void run()
    {
      DBExcutor.this.dbwriter.beginTransaction();
      try
      {
        excuteTranction(DBExcutor.this.dbwriter);
        if (DBExcutor.this.dbwriter.inTransaction())
          DBExcutor.this.dbwriter.setTransactionSuccessful();
        if (DBExcutor.this.dbwriter.inTransaction())
          DBExcutor.this.dbwriter.endTransaction();
        finish();
        return;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.persistence.db.DBExcutor
 * JD-Core Version:    0.6.2
 */