package com.youqicai.http;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.client.ClientProtocolException;

public class TaskRunnable
  implements Runnable
{
  private final int ERROR = 1;
  private final int RESULT = 0;
  private final String TAG = "Http Connect";
  private ErrorMsg errorMsg;
  private Handler mHandler = new Handler(Looper.getMainLooper())
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default:
      case 0:
      case 1:
      }
      do
      {
        do
          return;
        while (TaskRunnable.this.taskEntity.resultCallBack == null);
        TaskRunnable.this.taskEntity.resultCallBack.onResult(TaskRunnable.this.taskEntity);
        return;
      }
      while (TaskRunnable.this.taskEntity.resultCallBack == null);
      TaskRunnable.this.taskEntity.resultCallBack.onError(TaskRunnable.this.taskEntity);
    }
  };
  private HttpManager mHttpMgr = null;
  private TaskEntity taskEntity;

  public TaskRunnable(TaskEntity paramTaskEntity)
  {
    this.taskEntity = paramTaskEntity;
    this.mHttpMgr = HttpManager.getHttpClient();
  }

  private void dealResult(InputStream paramInputStream)
  {
    if (paramInputStream == null)
    {
      this.errorMsg = new ErrorMsg();
      this.errorMsg.errorMessage = "no data";
      this.taskEntity.errorMsg = this.errorMsg;
      this.mHandler.sendEmptyMessage(1);
      return;
    }
    String str = TextUtil.replaceSpecialChar(TextUtil.inputStream2String(paramInputStream, "utf-8"));
    if (this.taskEntity.parseInfo != null);
    for (this.taskEntity.outObject = this.taskEntity.parseInfo.parseInBackgroud(str); ; this.taskEntity.outObject = str)
    {
      this.mHandler.sendEmptyMessage(0);
      return;
    }
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == null);
    TaskRunnable localTaskRunnable;
    do
    {
      do
        return false;
      while (!(paramObject instanceof TaskRunnable));
      localTaskRunnable = (TaskRunnable)paramObject;
    }
    while (hashCode() != localTaskRunnable.hashCode());
    return true;
  }

  public void run()
  {
    if (this.taskEntity == null)
    {
      this.errorMsg = new ErrorMsg();
      this.errorMsg.errorMessage = "Connect error, taskEntity is null";
      this.taskEntity.errorMsg = this.errorMsg;
      this.mHandler.sendEmptyMessage(1);
      return;
    }
    if ((this.taskEntity.baseUrl == null) || (this.taskEntity.baseUrl.equals("")))
    {
      this.errorMsg = new ErrorMsg();
      this.errorMsg.errorMessage = "Connect error, URL is null";
      this.taskEntity.errorMsg = this.errorMsg;
      this.mHandler.sendEmptyMessage(1);
      return;
    }
    try
    {
      if (this.taskEntity.requestType == 2)
      {
        localObject = this.mHttpMgr.doGet(this.taskEntity.baseUrl);
        dealResult((InputStream)localObject);
        return;
      }
    }
    catch (ClientProtocolException localClientProtocolException)
    {
      while (true)
      {
        this.errorMsg = new ErrorMsg();
        this.errorMsg.errorMessage = localClientProtocolException.getMessage();
        this.taskEntity.errorMsg = this.errorMsg;
        this.mHandler.sendEmptyMessage(1);
        localClientProtocolException.printStackTrace();
        return;
        InputStream localInputStream = this.mHttpMgr.doPost(this.taskEntity.baseUrl, this.taskEntity.params);
        Object localObject = localInputStream;
      }
    }
    catch (IOException localIOException)
    {
      this.errorMsg = new ErrorMsg();
      this.errorMsg.errorMessage = localIOException.getMessage();
      this.taskEntity.errorMsg = this.errorMsg;
      this.mHandler.sendEmptyMessage(1);
      localIOException.printStackTrace();
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.http.TaskRunnable
 * JD-Core Version:    0.6.2
 */