package com.jh.persistence.db;

import android.os.Handler;
import android.os.HandlerThread;
import com.jh.app.util.AllTaskFinish;

public class SerialTask
{
  private AllTaskFinish allFinish;
  private Handler handler;
  private HandlerThread thread;

  public SerialTask(String paramString)
  {
    this.thread = new HandlerThread(paramString)
    {
    };
    this.handler = null;
  }

  public void cancle()
  {
    if (this.handler != null)
      this.handler = null;
    if (this.thread != null)
    {
      this.thread.quit();
      this.thread = null;
    }
  }

  public void sendMessage(Runnable paramRunnable)
  {
    if (!this.thread.isAlive());
    try
    {
      if (!this.thread.isAlive())
      {
        this.thread.start();
        this.handler = new Handler(this.thread.getLooper());
      }
      if (this.handler != null)
        this.handler.post(paramRunnable);
      return;
    }
    finally
    {
    }
  }

  public void setTaskFinishCallBack(AllTaskFinish paramAllTaskFinish)
  {
    this.allFinish = paramAllTaskFinish;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.persistence.db.SerialTask
 * JD-Core Version:    0.6.2
 */