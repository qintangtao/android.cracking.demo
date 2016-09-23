package com.hsg.sdk.common.http;

import com.hsg.sdk.common.util.ConnectionUtil;
import com.hsg.sdk.common.util.Logg;
import java.util.concurrent.LinkedBlockingQueue;

public class TaskThreadPool
{
  protected static int MAX_2G_THREAD_POOL_COUNT = 3;
  protected static int MAX_THREAD_POOL_COUNT = 5;
  private static final String TAG = TaskThreadPool.class.getSimpleName();
  private static TaskThreadPool threadPool = null;
  protected int mThreadCount = MAX_THREAD_POOL_COUNT;
  private final LinkedBlockingQueue<Runnable> queue;
  protected PoolWorker[] threads;

  private TaskThreadPool(int paramInt)
  {
    if (paramInt != 0);
    for (this.mThreadCount = paramInt; ; this.mThreadCount = MAX_2G_THREAD_POOL_COUNT)
    {
      int i;
      do
      {
        this.queue = new LinkedBlockingQueue();
        if (this.threads == null)
          initThreads();
        return;
        i = ConnectionUtil.getNetworkType();
      }
      while (((i != 1) && (i != 2) && (i != 3)) || (MAX_2G_THREAD_POOL_COUNT >= MAX_THREAD_POOL_COUNT));
    }
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
        while (true)
        {
          return;
          Logg.d(TAG, "queue has exist obj or Running obj is this obj,[" + paramRunnable.toString() + "]");
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
        {
          localInterruptedException.printStackTrace();
          Logg.e(TAG, "execute task error:" + localInterruptedException.getMessage());
        }
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
        while (true)
        {
          return;
          Logg.d(TAG, "queue has exist obj or Running obj is this obj,[" + paramRunnable.toString() + "]");
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
        {
          localInterruptedException.printStackTrace();
          Logg.e(TAG, "execute task error:" + localInterruptedException.getMessage());
        }
      }
    }
  }

  protected void initThreads()
  {
    this.threads = new PoolWorker[this.mThreadCount];
    for (int i = 0; ; i++)
    {
      if (i >= this.mThreadCount)
        return;
      this.threads[i] = new PoolWorker();
      this.threads[i].start();
    }
  }

  public boolean isInRunning(Runnable paramRunnable)
  {
    boolean bool = false;
    for (int i = 0; ; i++)
    {
      if (i >= this.mThreadCount)
        return bool;
      bool |= this.threads[i].isInRunning(paramRunnable);
      if (bool)
        return bool;
    }
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
      while (true)
      {
        if (this.isCancle)
          return;
        synchronized (TaskThreadPool.this.queue)
        {
          label18: boolean bool = TaskThreadPool.this.queue.isEmpty();
          if (bool);
        }
        try
        {
          while (true)
          {
            while (true)
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
                Logg.e(TaskThreadPool.TAG, "NetThreadPool Error:" + localRuntimeException.getMessage());
              }
            }
            break;
            try
            {
              TaskThreadPool.this.queue.wait();
            }
            catch (InterruptedException localInterruptedException1)
            {
              Logg.e(TaskThreadPool.TAG, "NetThreadPool Error:" + localInterruptedException1.getMessage());
            }
          }
          break label18;
          localObject = finally;
          throw localObject;
        }
        catch (InterruptedException localInterruptedException2)
        {
          while (true)
            localInterruptedException2.printStackTrace();
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
 * Qualified Name:     com.hsg.sdk.common.http.TaskThreadPool
 * JD-Core Version:    0.6.2
 */