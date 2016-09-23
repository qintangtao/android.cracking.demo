package com.youqicai.http;

import org.apache.http.entity.StringEntity;

public class HttpUtil
{
  private static int sTaskId = 0;

  private static void AddTaskToQueue(String paramString, StringEntity paramStringEntity, int paramInt1, ParseInfo paramParseInfo, TaskEntity.OnResultListener paramOnResultListener, int paramInt2, boolean paramBoolean, Object paramObject)
  {
    TaskEntity localTaskEntity = new TaskEntity();
    localTaskEntity.baseUrl = paramString;
    localTaskEntity.taskId = paramInt1;
    localTaskEntity.params = paramStringEntity;
    localTaskEntity.requestType = paramInt2;
    localTaskEntity.parseInfo = paramParseInfo;
    localTaskEntity.resultCallBack = paramOnResultListener;
    localTaskEntity.entityObject = paramObject;
    TaskRunnable localTaskRunnable = new TaskRunnable(localTaskEntity);
    if (paramBoolean)
    {
      TaskThreadPool.getInstance().executeUrgent(localTaskRunnable);
      return;
    }
    TaskThreadPool.getInstance().execute(localTaskRunnable);
  }

  public static void AddTaskToQueueHead(String paramString, int paramInt, ParseInfo paramParseInfo, TaskEntity.OnResultListener paramOnResultListener)
  {
    AddTaskToQueue(paramString, null, paramInt, paramParseInfo, paramOnResultListener, 2, true, null);
  }

  public static void AddTaskToQueueHead(String paramString, StringEntity paramStringEntity, int paramInt, ParseInfo paramParseInfo, TaskEntity.OnResultListener paramOnResultListener)
  {
    AddTaskToQueue(paramString, paramStringEntity, paramInt, paramParseInfo, paramOnResultListener, 1, true, null);
  }

  public static void AddTaskToQueueHeadWithObject(String paramString, int paramInt, ParseInfo paramParseInfo, TaskEntity.OnResultListener paramOnResultListener, Object paramObject)
  {
    AddTaskToQueue(paramString, null, paramInt, paramParseInfo, paramOnResultListener, 2, true, paramObject);
  }

  public static void AddTaskToQueueHeadWithObject(String paramString, StringEntity paramStringEntity, int paramInt, ParseInfo paramParseInfo, TaskEntity.OnResultListener paramOnResultListener, Object paramObject)
  {
    AddTaskToQueue(paramString, paramStringEntity, paramInt, paramParseInfo, paramOnResultListener, 1, true, paramObject);
  }

  public static void AddTaskToQueueTail(String paramString, int paramInt, ParseInfo paramParseInfo, TaskEntity.OnResultListener paramOnResultListener)
  {
    AddTaskToQueue(paramString, null, paramInt, paramParseInfo, paramOnResultListener, 2, false, null);
  }

  public static void AddTaskToQueueTail(String paramString, StringEntity paramStringEntity, int paramInt, ParseInfo paramParseInfo, TaskEntity.OnResultListener paramOnResultListener)
  {
    AddTaskToQueue(paramString, paramStringEntity, paramInt, paramParseInfo, paramOnResultListener, 1, false, null);
  }

  public static void AddTaskToQueueTailWithObject(String paramString, int paramInt, ParseInfo paramParseInfo, TaskEntity.OnResultListener paramOnResultListener, Object paramObject)
  {
    AddTaskToQueue(paramString, null, paramInt, paramParseInfo, paramOnResultListener, 2, false, paramObject);
  }

  public static void AddTaskToQueueTailWithObject(String paramString, StringEntity paramStringEntity, int paramInt, ParseInfo paramParseInfo, TaskEntity.OnResultListener paramOnResultListener, Object paramObject)
  {
    AddTaskToQueue(paramString, paramStringEntity, paramInt, paramParseInfo, paramOnResultListener, 1, false, paramObject);
  }

  public static int getTaskId()
  {
    try
    {
      if (sTaskId == 2147483647)
        sTaskId = 0;
      int i = sTaskId;
      sTaskId = i + 1;
      return i;
    }
    finally
    {
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.http.HttpUtil
 * JD-Core Version:    0.6.2
 */