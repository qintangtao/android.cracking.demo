package com.jh.app.util;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.jh.exception.JHException;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;

public class ConcurrenceExcutor
{
  private static ConcurrenceExcutor excutor = new ConcurrenceExcutor();
  private AllTaskFinish allFinish;
  private ExecutorService executorService;
  protected Handler mainHandler;
  private int maxThreads = 10;
  private BlockingQueue<BaseTask> processTasks;
  private BlockingQueue<BaseTask> tmptasks;
  protected BlockingQueue<BaseTask> waitTasks;

  private ConcurrenceExcutor()
  {
    this(10);
  }

  public ConcurrenceExcutor(int paramInt)
  {
    this.maxThreads = paramInt;
    this.mainHandler = new Handler(Looper.getMainLooper());
    this.waitTasks = new LinkedBlockingQueue();
    this.tmptasks = new LinkedBlockingQueue();
    this.processTasks = new LinkedBlockingQueue();
    this.executorService = Executors.newFixedThreadPool(this.maxThreads);
  }

  private void doInBackground(BaseTask paramBaseTask)
    throws JHException
  {
    if (!paramBaseTask.isCancel())
    {
      paramBaseTask.doTask();
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
                break label60;
              this.currentTask.success();
              ConcurrenceExcutor.this.processTasks.remove(this.currentTask);
              ConcurrenceExcutor.this.finishExecute();
            }
            while (true)
            {
              ConcurrenceExcutor.this.iterateTask();
              return;
              label60: ConcurrenceExcutor.this.cancelTask(this.currentTask);
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
        ConcurrenceExcutor.this.cancelTask(this.currentTask);
      }
    });
    iterateTask();
  }

  private void finishExecute()
  {
    if ((this.waitTasks.size() == 0) && (this.processTasks.size() == 0) && (this.allFinish != null))
      this.allFinish.finish();
  }

  public static ConcurrenceExcutor getInstance()
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
            break label64;
          this.currentTask.fail(paramJHException);
          ConcurrenceExcutor.this.processTasks.remove(this.currentTask);
          ConcurrenceExcutor.this.finishExecute();
        }
        while (true)
        {
          ConcurrenceExcutor.this.iterateTask();
          return;
          label64: ConcurrenceExcutor.this.cancelTask(this.currentTask);
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
    this.waitTasks.offer(paramBaseTask);
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

  public int getTaskSize()
  {
    return this.waitTasks.size() + this.processTasks.size();
  }

  public boolean hasTask(BaseTask paramBaseTask)
  {
    synchronized (this.waitTasks)
    {
      if (this.waitTasks == null)
        break label64;
      if (this.waitTasks.contains(paramBaseTask))
        return true;
      if ((this.processTasks != null) && (this.processTasks.contains(paramBaseTask)))
        return true;
    }
    return false;
    label64: return (this.processTasks != null) && (this.processTasks.contains(paramBaseTask));
  }

  protected void iterateTask()
  {
    if ((this.waitTasks != null) && (this.waitTasks.size() > 0));
    while (true)
    {
      if (this.waitTasks.size() <= 0);
      while (this.processTasks.size() >= this.maxThreads)
        return;
      BaseTask localBaseTask = (BaseTask)this.waitTasks.poll();
      if (localBaseTask != null)
      {
        this.processTasks.add(localBaseTask);
        if (!localBaseTask.isCancel())
          this.mainHandler.post(new BaseRunnable(localBaseTask)
          {
            public void run()
            {
              if (this.currentTask != null)
              {
                if (!this.currentTask.isCancel())
                {
                  ConcurrenceExcutor.this.prepare(this.currentTask);
                  return;
                }
                ConcurrenceExcutor.this.cancelTask(this.currentTask);
                ConcurrenceExcutor.this.iterateTask();
                return;
              }
              ConcurrenceExcutor.this.iterateTask();
            }
          });
        else
          localBaseTask.cancel();
      }
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
              ConcurrenceExcutor.this.doInBackground(this.currentTask);
              return;
            }
            catch (JHException localJHException)
            {
              localJHException.printStackTrace();
              ConcurrenceExcutor.this.taskFailed(this.currentTask, localJHException);
              return;
            }
            catch (Exception localException)
            {
              localException.printStackTrace();
              ConcurrenceExcutor.this.taskFailed(this.currentTask, new JHException(localException));
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

  public void trimSize(int paramInt)
  {
    synchronized (this.waitTasks)
    {
      Vector localVector;
      int i;
      if (this.waitTasks.size() > paramInt)
      {
        localVector = new Vector();
        i = 0;
        if (i >= paramInt)
        {
          this.waitTasks.clear();
          this.waitTasks.addAll(localVector);
        }
      }
      else
      {
        return;
      }
      localVector.add((BaseTask)this.waitTasks.poll());
      i++;
    }
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

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.app.util.ConcurrenceExcutor
 * JD-Core Version:    0.6.2
 */