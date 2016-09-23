package com.youqicai.http;

import org.apache.http.entity.StringEntity;

public class TaskEntity
{
  public static final int REQUEST_GET = 2;
  public static final int REQUEST_POST = 1;
  public String baseUrl;
  public Object entityObject = null;
  public ErrorMsg errorMsg;
  public Object outObject;
  public StringEntity params = null;
  public ParseInfo parseInfo = null;
  public String postParams;
  public int requestType;
  public OnResultListener resultCallBack;
  public int taskId;

  public static abstract interface OnResultListener
  {
    public abstract void onError(Object paramObject);

    public abstract void onResult(Object paramObject);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.http.TaskEntity
 * JD-Core Version:    0.6.2
 */