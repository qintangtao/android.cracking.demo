package com.jh.app.util;

import android.os.Handler;
import java.util.concurrent.BlockingQueue;

public class SerialExcutor
{
  private static SerialExcutor executor = new SerialExcutor();
  private ConcurrenceExcutor taskQueue = new ConcurrenceExcutor(1)
  {
    private BaseTask currentTask;

    protected void iterateTask()
    {
      try
      {
        if ((this.waitTasks != null) && (this.waitTasks.size() > 0) && ((this.currentTask == null) || (this.currentTask.hasFinish())))
        {
          this.currentTask = ((BaseTask)this.waitTasks.poll());
          if (this.currentTask != null)
          {
            if (this.currentTask.isCancel())
              break label94;
            this.mainHandler.post(new ConcurrenceExcutor.BaseRunnable(this.currentTask)
            {
              public void run()
              {
                if (this.currentTask != null)
                {
                  if (!this.currentTask.isCancel())
                  {
                    SerialExcutor.1.this.prepare(this.currentTask);
                    return;
                  }
                  this.currentTask.cancel();
                  SerialExcutor.1.this.iterateTask();
                  return;
                }
                SerialExcutor.1.this.iterateTask();
              }
            });
          }
        }
        while (true)
        {
          return;
          label94: this.currentTask.cancel();
        }
      }
      finally
      {
      }
    }
  };

  public static SerialExcutor getInstance()
  {
    return executor;
  }

  public void execute(BaseTask paramBaseTask)
  {
    this.taskQueue.appendTask(paramBaseTask);
  }

  public void removeTask(BaseTask paramBaseTask)
  {
    this.taskQueue.cancelTask(paramBaseTask);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.app.util.SerialExcutor
 * JD-Core Version:    0.6.2
 */