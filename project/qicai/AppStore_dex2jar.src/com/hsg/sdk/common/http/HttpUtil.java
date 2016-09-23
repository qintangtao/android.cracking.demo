package com.hsg.sdk.common.http;

import org.apache.http.entity.StringEntity;

public class HttpUtil
{
  private static int sTaskId = 0;

  public static void AddJHPostTaskToQueue(String paramString1, String paramString2, int paramInt1, ParseInfo paramParseInfo, TaskEntity.OnResultListener paramOnResultListener, int paramInt2, boolean paramBoolean, Object paramObject)
  {
    TaskEntity localTaskEntity = new TaskEntity();
    localTaskEntity.baseUrl = paramString1;
    localTaskEntity.taskId = paramInt1;
    localTaskEntity.jhPostParams = paramString2;
    localTaskEntity.requestType = paramInt2;
    localTaskEntity.parseInfo = paramParseInfo;
    localTaskEntity.resultCallBack = paramOnResultListener;
    localTaskEntity.entityObject = paramObject;
    JHPostTaskRunnable localJHPostTaskRunnable = new JHPostTaskRunnable(localTaskEntity);
    if (paramBoolean)
    {
      TaskThreadPool.getInstance().executeUrgent(localJHPostTaskRunnable);
      return;
    }
    TaskThreadPool.getInstance().execute(localJHPostTaskRunnable);
  }

  public static void AddJHPostTaskToQueueHead(String paramString1, String paramString2, int paramInt, ParseInfo paramParseInfo, TaskEntity.OnResultListener paramOnResultListener)
  {
    AddJHPostTaskToQueue(paramString1, paramString2, paramInt, paramParseInfo, paramOnResultListener, 1, true, null);
  }

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

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.http.HttpUtil
 * JD-Core Version:    0.6.2
 */