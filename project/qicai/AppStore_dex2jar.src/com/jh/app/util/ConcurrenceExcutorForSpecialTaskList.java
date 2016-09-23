package com.jh.app.util;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.jh.exception.JHException;
import java.io.PrintStream;
import java.util.Iterator;
import java.util.Vector;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ConcurrenceExcutorForSpecialTaskList
{
  private static ConcurrenceExcutorForSpecialTaskList excutor = new ConcurrenceExcutorForSpecialTaskList();
  private AllTaskFinish allFinish;
  private ExecutorService executorService;
  protected Handler mainHandler;
  private int maxThreads = 10;
  protected Vector<BaseTask> processTasks;
  protected Vector<BaseTask> tmptasks;
  protected Vector<BaseTask> waitTasks;

  private ConcurrenceExcutorForSpecialTaskList()
  {
    this(10);
  }

  public ConcurrenceExcutorForSpecialTaskList(int paramInt)
  {
    this.maxThreads = paramInt;
    this.mainHandler = new Handler(Looper.getMainLooper());
    this.waitTasks = new Vector();
    this.tmptasks = new Vector();
    this.processTasks = new Vector();
    this.executorService = Executors.newFixedThreadPool(this.maxThreads);
  }

  private void doInBackground(BaseTask paramBaseTask)
    throws JHException
  {
    if (!paramBaseTask.isCancel())
    {
      paramBaseTask.doTask();
      System.out.println(paramBaseTask.hashCode() + "做任务");
      if (!paramBaseTask.hasFinish())
        paramBaseTask.setSuccessFlag(true);
      if (paramBaseTask.isSuccess())
      {
        this.mainHandler.post(new BaseRunnable(paramBaseTask)
        {
          public void run()
          {
            super.run();
            if (this.currentTask != null)
            {
              if (this.currentTask.isCancel())
                break label58;
              this.currentTask.success();
              ConcurrenceExcutorForSpecialTaskList.this.processTasks.remove(this.currentTask);
              ConcurrenceExcutorForSpecialTaskList.this.finishExecute();
            }
            while (true)
            {
              ConcurrenceExcutorForSpecialTaskList.this.iterateTask();
              return;
              label58: ConcurrenceExcutorForSpecialTaskList.this.cancelTask(this.currentTask);
            }
          }
        });
        return;
      }
      if (paramBaseTask.getException() != null)
      {
        taskFailed(paramBaseTask, paramBaseTask.getException());
        return;
      }
      taskFailed(paramBaseTask, new JHException(paramBaseTask.getErrorMessage()));
      return;
    }
    this.mainHandler.post(new BaseRunnable(paramBaseTask)
    {
      public void run()
      {
        ConcurrenceExcutorForSpecialTaskList.this.cancelTask(this.currentTask);
      }
    });
    iterateTask();
  }

  private void finishExecute()
  {
    if ((this.waitTasks.size() == 0) && (this.processTasks.size() == 0) && (this.allFinish != null))
      this.allFinish.finish();
  }

  public static ConcurrenceExcutorForSpecialTaskList getInstance()
  {
    return excutor;
  }

  private void taskFailed(BaseTask paramBaseTask, final JHException paramJHException)
  {
    paramBaseTask.setSuccessFlag(false);
    paramBaseTask.setException(paramJHException);
    this.mainHandler.post(new BaseRunnable(paramBaseTask)
    {
      public void run()
      {
        super.run();
        if (this.currentTask != null)
        {
          if (this.currentTask.isCancel())
            break label62;
          this.currentTask.fail(paramJHException);
          ConcurrenceExcutorForSpecialTaskList.this.processTasks.remove(this.currentTask);
          ConcurrenceExcutorForSpecialTaskList.this.finishExecute();
        }
        while (true)
        {
          ConcurrenceExcutorForSpecialTaskList.this.iterateTask();
          return;
          label62: ConcurrenceExcutorForSpecialTaskList.this.cancelTask(this.currentTask);
        }
      }
    });
  }

  public void addTask(BaseTask paramBaseTask)
  {
    this.waitTasks.add(paramBaseTask);
    start();
  }

  public void addTaskFirst(BaseTask paramBaseTask)
  {
    this.waitTasks.add(0, paramBaseTask);
    start();
  }

  public void appendTask(BaseTask paramBaseTask)
  {
    this.waitTasks.add(paramBaseTask);
    start();
  }

  public void cancelBeforeExecute(BaseTask paramBaseTask)
  {
    if (paramBaseTask != null)
      cancelTask(paramBaseTask);
  }

  public void cancelTask(BaseTask paramBaseTask)
  {
    if (paramBaseTask != null)
    {
      this.waitTasks.remove(paramBaseTask);
      this.processTasks.remove(paramBaseTask);
      finishExecute();
      paramBaseTask.cancelTask();
    }
  }

  public void clearall()
  {
    Iterator localIterator;
    if (this.waitTasks != null)
      localIterator = this.waitTasks.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        this.waitTasks.clear();
        this.processTasks.clear();
        return;
      }
      ((BaseTask)localIterator.next()).cancelTask();
    }
  }

  public void executeTaskIfNotExist(BaseTask paramBaseTask)
  {
    if (!hasTask(paramBaseTask))
      appendTask(paramBaseTask);
  }

  public void exit()
  {
    Iterator localIterator;
    if (this.waitTasks != null)
    {
      this.tmptasks.clear();
      localIterator = this.waitTasks.iterator();
    }
    while (true)
    {
      if (!localIterator.hasNext())
      {
        this.waitTasks.clear();
        this.processTasks.clear();
        this.tmptasks = null;
        this.waitTasks = null;
        return;
      }
      ((BaseTask)localIterator.next()).cancelTask();
    }
  }

  public void exit(Context paramContext)
  {
    Iterator localIterator;
    if (this.waitTasks != null)
    {
      this.tmptasks.clear();
      localIterator = this.waitTasks.iterator();
    }
    while (true)
    {
      if (!localIterator.hasNext())
      {
        this.waitTasks.clear();
        this.waitTasks.addAll(this.tmptasks);
        return;
      }
      BaseTask localBaseTask = (BaseTask)localIterator.next();
      if (localBaseTask != null)
        if ((localBaseTask.getContext() == null) || (localBaseTask.getContext() != paramContext))
          this.tmptasks.add(localBaseTask);
        else
          localBaseTask.cancelTask();
    }
  }

  public boolean hasTask(BaseTask paramBaseTask)
  {
    synchronized (this.waitTasks)
    {
      if (this.waitTasks == null)
        break label60;
      if (this.waitTasks.contains(paramBaseTask))
        return true;
      if ((this.processTasks != null) && (this.processTasks.contains(paramBaseTask)))
        return true;
    }
    return false;
    label60: return (this.processTasks != null) && (this.processTasks.contains(paramBaseTask));
  }

  protected void iterateTask()
  {
    if ((this.waitTasks != null) && (this.waitTasks.size() > 0))
    {
      if ((this.waitTasks.size() <= 0) || (this.processTasks.size() >= this.maxThreads))
        break label112;
      System.out.println("waitTasks.size:" + this.waitTasks.size() + ",processTasks.size()<maxThreads," + "processTasks.size():" + this.processTasks.size() + ",maxThreads:" + this.maxThreads);
    }
    while (true)
    {
      if (this.waitTasks.size() <= 0);
      label112: 
      while (this.processTasks.size() >= this.maxThreads)
      {
        return;
        System.out.println("waitTasks.size:" + this.waitTasks.size() + ",processTasks.size()<maxThreads," + "processTasks.size():" + this.processTasks.size() + ",maxThreads:" + this.maxThreads);
        break;
      }
      try
      {
        if (this.processTasks.size() >= this.maxThreads)
          return;
      }
      finally
      {
      }
      BaseTask localBaseTask = (BaseTask)this.waitTasks.remove(0);
      if (localBaseTask != null)
        this.processTasks.add(localBaseTask);
      if (localBaseTask != null)
        if (!localBaseTask.isCancel())
          this.mainHandler.post(new BaseRunnable(localBaseTask)
          {
            public void run()
            {
              if (this.currentTask != null)
              {
                if (!this.currentTask.isCancel())
                {
                  ConcurrenceExcutorForSpecialTaskList.this.prepare(this.currentTask);
                  return;
                }
                ConcurrenceExcutorForSpecialTaskList.this.cancelTask(this.currentTask);
                ConcurrenceExcutorForSpecialTaskList.this.iterateTask();
                return;
              }
              ConcurrenceExcutorForSpecialTaskList.this.iterateTask();
            }
          });
        else
          localBaseTask.cancel();
    }
  }

  void prepare(BaseTask paramBaseTask)
  {
    if (paramBaseTask != null)
    {
      if (!paramBaseTask.isCancel())
      {
        paramBaseTask.prepareTask(new Void[0]);
        this.executorService.submit(new BaseRunnable(paramBaseTask)
        {
          public void run()
          {
            super.run();
            try
            {
              ConcurrenceExcutorForSpecialTaskList.this.doInBackground(this.currentTask);
              return;
            }
            catch (JHException localJHException)
            {
              localJHException.printStackTrace();
              ConcurrenceExcutorForSpecialTaskList.this.taskFailed(this.currentTask, localJHException);
              return;
            }
            catch (Exception localException)
            {
              localException.printStackTrace();
              ConcurrenceExcutorForSpecialTaskList.this.taskFailed(this.currentTask, new JHException(localException));
            }
          }
        });
      }
    }
    else
      return;
    cancelTask(paramBaseTask);
  }

  public void removeTask(BaseTask paramBaseTask)
  {
    if ((this.waitTasks != null) && (this.waitTasks.contains(paramBaseTask)))
      this.waitTasks.remove(paramBaseTask);
  }

  public void setTaskFinishCallBack(AllTaskFinish paramAllTaskFinish)
  {
    this.allFinish = paramAllTaskFinish;
  }

  public void start()
  {
    iterateTask();
  }

  static abstract class BaseRunnable
    implements Runnable
  {
    public BaseTask currentTask;

    public BaseRunnable(BaseTask paramBaseTask)
    {
      this.currentTask = paramBaseTask;
    }

    public void run()
    {
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.app.util.ConcurrenceExcutorForSpecialTaskList
 * JD-Core Version:    0.6.2
 */