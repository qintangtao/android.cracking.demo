package com.youqicai.http;

import java.util.concurrent.LinkedBlockingQueue;

public class TaskThreadPool
{
  protected static int MAX_THREAD_POOL_COUNT = 5;
  private static final String TAG = TaskThreadPool.class.getSimpleName();
  private static TaskThreadPool threadPool = null;
  protected int mThreadCount = MAX_THREAD_POOL_COUNT;
  private final LinkedBlockingQueue<Runnable> queue;
  protected PoolWorker[] threads;

  private TaskThreadPool(int paramInt)
  {
    if (paramInt != 0)
      this.mThreadCount = paramInt;
    this.queue = new LinkedBlockingQueue();
    if (this.threads == null)
      initThreads();
  }

  public static TaskThreadPool getInstance()
  {
    try
    {
      TaskThreadPool localTaskThreadPool = getInstance(0);
      return localTaskThreadPool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static TaskThreadPool getInstance(int paramInt)
  {
    try
    {
      if (threadPool == null)
        threadPool = new TaskThreadPool(paramInt);
      TaskThreadPool localTaskThreadPool = threadPool;
      return localTaskThreadPool;
    }
    finally
    {
    }
  }

  protected void execute(Runnable paramRunnable)
  {
    synchronized (this.queue)
    {
      try
      {
        boolean bool1 = this.queue.contains(paramRunnable);
        boolean bool2 = isInRunning(paramRunnable);
        if ((!bool1) && (!bool2))
        {
          this.queue.put(paramRunnable);
          this.queue.notifyAll();
        }
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          localInterruptedException.printStackTrace();
      }
    }
  }

  protected void executeUrgent(Runnable paramRunnable)
  {
    synchronized (this.queue)
    {
      try
      {
        boolean bool = this.queue.contains(paramRunnable);
        if (!isInRunning(paramRunnable))
        {
          if (bool)
            this.queue.remove(paramRunnable);
          LinkedBlockingQueue localLinkedBlockingQueue2 = new LinkedBlockingQueue();
          this.queue.drainTo(localLinkedBlockingQueue2);
          this.queue.put(paramRunnable);
          this.queue.addAll(localLinkedBlockingQueue2);
          this.queue.notifyAll();
        }
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          localInterruptedException.printStackTrace();
      }
    }
  }

  protected void initThreads()
  {
    this.threads = new PoolWorker[this.mThreadCount];
    for (int i = 0; i < this.mThreadCount; i++)
    {
      this.threads[i] = new PoolWorker();
      this.threads[i].start();
    }
  }

  public boolean isInRunning(Runnable paramRunnable)
  {
    boolean bool = false;
    for (int i = 0; i < this.mThreadCount; i++)
    {
      bool |= this.threads[i].isInRunning(paramRunnable);
      if (bool)
        return bool;
    }
    return bool;
  }

  class PoolWorker extends Thread
  {
    private boolean isCancle = false;
    Runnable r = null;

    PoolWorker()
    {
    }

    public boolean isCancle()
    {
      return this.isCancle;
    }

    public boolean isInRunning(Runnable paramRunnable)
    {
      if (paramRunnable == null)
        return false;
      synchronized (TaskThreadPool.this.queue)
      {
        boolean bool = paramRunnable.equals(this.r);
        return bool;
      }
    }

    public void run()
    {
      while (!this.isCancle)
        synchronized (TaskThreadPool.this.queue)
        {
          while (true)
          {
            boolean bool = TaskThreadPool.this.queue.isEmpty();
            if (!bool)
              break;
            try
            {
              TaskThreadPool.this.queue.wait();
            }
            catch (InterruptedException localInterruptedException2)
            {
            }
          }
          try
          {
            this.r = ((Runnable)TaskThreadPool.this.queue.take());
            try
            {
              if (this.r != null)
                this.r.run();
              this.r = null;
            }
            catch (RuntimeException localRuntimeException)
            {
            }
          }
          catch (InterruptedException localInterruptedException1)
          {
            while (true)
              localInterruptedException1.printStackTrace();
          }
        }
    }

    public void setCancle(boolean paramBoolean)
    {
      this.isCancle = paramBoolean;
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.http.TaskThreadPool
 * JD-Core Version:    0.6.2
 */