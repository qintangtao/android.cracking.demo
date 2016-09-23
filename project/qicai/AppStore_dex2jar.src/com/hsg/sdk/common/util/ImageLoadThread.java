package com.hsg.sdk.common.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

public class ImageLoadThread
{
  private static final String LOG_TAG = ImageLoadThread.class.getName();
  private boolean isRunning = true;
  private LooperThread localThread = new LooperThread(null);

  public Handler getHandler()
  {
    return this.localThread.getHandler();
  }

  public Thread getThread()
  {
    return this.localThread;
  }

  public void onReceiveMessage(int paramInt)
  {
  }

  public void quit()
  {
    this.localThread.getHandler().getLooper().quit();
  }

  public void sendMessage(int paramInt)
  {
    getHandler().sendEmptyMessage(paramInt);
  }

  public void start()
  {
    this.localThread.start();
  }

  private class LooperThread extends Thread
  {
    private Handler mHandler;

    private LooperThread()
    {
    }

    Handler getHandler()
    {
      return this.mHandler;
    }

    public void run()
    {
      Looper.prepare();
      this.mHandler = new Handler()
      {
        public void handleMessage(Message paramAnonymousMessage)
        {
          ImageLoadThread.this.onReceiveMessage(paramAnonymousMessage.what);
        }
      };
      Looper.loop();
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.ImageLoadThread
 * JD-Core Version:    0.6.2
 */