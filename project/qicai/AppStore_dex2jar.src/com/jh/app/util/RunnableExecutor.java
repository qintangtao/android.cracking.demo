package com.jh.app.util;

import java.util.Vector;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class RunnableExecutor
{
  private static RunnableExecutor instance;
  private AllTaskFinish allFinish;
  private ExecutorService executor;
  private Runnable iterateTask = new Runnable()
  {
    public void run()
    {
      Runnable localRunnable;
      synchronized (RunnableExecutor.this.waitTasks)
      {
        int i = RunnableExecutor.this.waitTasks.size();
        localRunnable = null;
        if (i > 0)
          localRunnable = (Runnable)RunnableExecutor.this.waitTasks.remove(0);
        if (localRunnable != null)
        {
          RunnableExecutor.this.runningTasks.add(localRunnable);
          if (localRunnable == null);
        }
      }
      try
      {
        localRunnable.run();
        RunnableExecutor.this.runningTasks.remove(localRunnable);
        RunnableExecutor.this.finishExecute();
        if ((RunnableExecutor.this.runningTasks.size() <= RunnableExecutor.this.nThreads) && (RunnableExecutor.this.waitTasks.size() > 0))
          RunnableExecutor.this.executor.execute(RunnableExecutor.this.iterateTask);
        return;
        localObject = finally;
        throw localObject;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
  };
  private int nThreads;
  private Vector<Runnable> runningTasks = new Vector(10);
  private volatile Vector<Runnable> waitTasks = new Vector();

  public RunnableExecutor(int paramInt)
  {
    this.executor = Executors.newFixedThreadPool(paramInt);
    this.nThreads = paramInt;
  }

  private void finishExecute()
  {
    if ((this.waitTasks.size() == 0) && (this.runningTasks.size() == 0) && (this.allFinish != null))
      this.allFinish.finish();
  }

  public static RunnableExecutor getInstance()
  {
    if (instance == null);
    try
    {
      if (instance == null)
        instance = new RunnableExecutor(5);
      return instance;
    }
    finally
    {
    }
  }

  public static RunnableExecutor newInstance(int paramInt)
  {
    return new RunnableExecutor(paramInt);
  }

  public void cancel()
  {
    if (this.waitTasks != null)
      this.waitTasks.clear();
    if (this.runningTasks != null)
      this.runningTasks.clear();
  }

  public void executeTask(Runnable paramRunnable)
  {
    this.waitTasks.add(paramRunnable);
    if (this.runningTasks.size() <= this.nThreads)
      this.executor.execute(this.iterateTask);
  }

  public void executeTaskExclude(Runnable paramRunnable)
  {
    if ((!this.waitTasks.contains(paramRunnable)) && (!this.waitTasks.contains(this.runningTasks)))
      executeTask(paramRunnable);
  }

  public void executeTaskNoWaiting(Runnable paramRunnable)
  {
    if (!this.waitTasks.contains(paramRunnable))
      executeTask(paramRunnable);
  }

  public Runnable getNextTask()
  {
    synchronized (this.waitTasks)
    {
      if (this.waitTasks.size() > 0)
      {
        Runnable localRunnable = (Runnable)this.waitTasks.get(0);
        return localRunnable;
      }
      return null;
    }
  }

  public Vector<Runnable> getRunningTasks()
  {
    return this.runningTasks;
  }

  public int getSize()
  {
    return this.waitTasks.size() + this.runningTasks.size();
  }

  public Vector<Runnable> getWaitTasks()
  {
    return this.waitTasks;
  }

  public boolean hasWaitingTask()
  {
    return this.waitTasks.size() > 0;
  }

  public boolean isTaskFull()
  {
    return this.runningTasks.size() >= 5;
  }

  public void removeTask(Runnable paramRunnable)
  {
    this.waitTasks.remove(paramRunnable);
    this.runningTasks.remove(paramRunnable);
  }

  public void setTaskFinishCallBack(AllTaskFinish paramAllTaskFinish)
  {
    this.allFinish = paramAllTaskFinish;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.app.util.RunnableExecutor
 * JD-Core Version:    0.6.2
 */