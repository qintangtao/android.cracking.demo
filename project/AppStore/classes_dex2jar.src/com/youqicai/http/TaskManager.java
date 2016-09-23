package com.youqicai.http;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

public class TaskManager
  implements TaskEntity.OnResultListener
{
  private static final String TAG = "TaskManager";
  private static TaskManager sTaskMgr = null;
  private Handler mHandler = new Handler(Looper.getMainLooper())
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
    }
  };

  private TaskManager(Context paramContext)
  {
  }

  public static TaskManager newInstance(Context paramContext)
  {
    if (sTaskMgr == null)
      sTaskMgr = new TaskManager(paramContext);
    return sTaskMgr;
  }

  public void onError(Object paramObject)
  {
  }

  public void onResult(Object paramObject)
  {
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.http.TaskManager
 * JD-Core Version:    0.6.2
 */