package com.jh.persistence.db;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.jh.app.util.AllTaskFinish;
import com.jh.app.util.RunnableExecutor;

public class DBExecutorHelper
{
  private SQLiteOpenHelper dbHelper;
  private SQLiteDatabase dbwriter;
  private RunnableExecutor executor;

  public DBExecutorHelper(SQLiteOpenHelper paramSQLiteOpenHelper)
  {
    this.dbHelper = paramSQLiteOpenHelper;
    this.executor = RunnableExecutor.newInstance(1);
    this.executor.setTaskFinishCallBack(new AllTaskFinish()
    {
      public void finish()
      {
        if (DBExecutorHelper.this.dbwriter != null)
          DBExecutorHelper.this.close();
      }
    });
  }

  private void closeDb()
  {
    try
    {
      if (this.dbwriter != null)
      {
        if (this.dbwriter.isOpen())
          this.dbwriter.close();
        this.dbwriter = null;
      }
      return;
    }
    finally
    {
    }
  }

  private SQLiteDatabase getDbWriter()
  {
    if ((this.dbwriter == null) || (!this.dbwriter.isOpen()));
    try
    {
      if ((this.dbwriter == null) || (!this.dbwriter.isOpen()))
        this.dbwriter = this.dbHelper.getWritableDatabase();
      return this.dbwriter;
    }
    finally
    {
    }
  }

  public void close()
  {
    this.executor.executeTask(new Runnable()
    {
      public void run()
      {
        Log.i("closeDb", "closeDb");
        DBExecutorHelper.this.closeDb();
      }
    });
  }

  public void delete(final String paramString1, final String paramString2, final String[] paramArrayOfString)
  {
    this.executor.executeTask(new TranctionTask(paramString1)
    {
      public void excuteTranction(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        paramAnonymousSQLiteDatabase.delete(paramString1, paramString2, paramArrayOfString);
      }
    });
  }

  public void excute(TranctionTask paramTranctionTask)
  {
    this.executor.executeTask(paramTranctionTask);
  }

  public void excuteRawsql(final String paramString)
  {
    this.executor.executeTask(new TranctionTask(paramString)
    {
      public void excuteTranction(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        paramAnonymousSQLiteDatabase.execSQL(paramString);
      }
    });
  }

  public Object executeBlock(final TranctionTask paramTranctionTask)
  {
    synchronized (new Object())
    {
      try
      {
        this.executor.executeTask(new TranctionTask(???)
        {
          public void excuteTranction(SQLiteDatabase paramAnonymousSQLiteDatabase)
          {
            synchronized (localObject1)
            {
              try
              {
                paramTranctionTask.excuteTranction(paramAnonymousSQLiteDatabase);
                localObject1.notify();
                return;
              }
              catch (Exception localException)
              {
                while (true)
                  localException.printStackTrace();
              }
            }
          }
        });
        ???.wait();
        Object localObject3 = paramTranctionTask.result;
        return localObject3;
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          localInterruptedException.printStackTrace();
      }
    }
  }

  public void insert(String paramString1, String paramString2, ContentValues paramContentValues)
  {
    insert(paramString1, paramString2, paramContentValues, null);
  }

  public void insert(final String paramString1, final String paramString2, final ContentValues paramContentValues, final InsertCallBack paramInsertCallBack)
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
  }

  public void update(final String paramString1, final ContentValues paramContentValues, final String paramString2, final String[] paramArrayOfString)
  {
    this.executor.executeTask(new TranctionTask(paramString1)
    {
      public void excuteTranction(SQLiteDatabase paramAnonymousSQLiteDatabase)
      {
        paramAnonymousSQLiteDatabase.update(paramString1, paramContentValues, paramString2, paramArrayOfString);
      }
    });
  }

  public static abstract interface FinishDBTask
  {
    public abstract void finish(Object paramObject);
  }

  public static abstract interface InsertCallBack
  {
    public abstract void success(long paramLong);
  }

  public abstract class QueryCallBack
    implements DBExecutorHelper.FinishDBTask
  {
    public Object object;

    public QueryCallBack()
    {
    }
  }

  public abstract class TranctionTask
    implements Runnable
  {
    private DBExecutorHelper.FinishDBTask finishTask;
    private boolean finished = false;
    private Object result;

    public TranctionTask()
    {
    }

    public TranctionTask(DBExecutorHelper.FinishDBTask arg2)
    {
      Object localObject;
      this.finishTask = localObject;
    }

    public abstract void excuteTranction(SQLiteDatabase paramSQLiteDatabase)
      throws Exception;

    public void finish()
    {
      if (this.finishTask != null)
        this.finishTask.finish(this.result);
      this.finished = true;
    }

    public final void run()
    {
      SQLiteDatabase localSQLiteDatabase = DBExecutorHelper.this.getDbWriter();
      localSQLiteDatabase.beginTransaction();
      try
      {
        excuteTranction(localSQLiteDatabase);
        if (localSQLiteDatabase.inTransaction())
          localSQLiteDatabase.setTransactionSuccessful();
        if (localSQLiteDatabase.inTransaction())
          localSQLiteDatabase.endTransaction();
        finish();
        return;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }

    public void setResult(Object paramObject)
    {
      this.result = paramObject;
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.persistence.db.DBExecutorHelper
 * JD-Core Version:    0.6.2
 */