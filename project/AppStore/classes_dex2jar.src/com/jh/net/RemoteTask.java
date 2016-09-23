package com.jh.net;

import com.jh.app.util.BaseTask;
import com.jh.app.util.IResultCallBack;
import com.jh.exception.JHException;
import com.jh.util.GsonUtil;
import java.util.HashMap;

public class RemoteTask<T> extends BaseTask
{
  private IResultCallBack<T> callBack;
  private Class<T> entityClass;
  private HashMap<String, String> headers;
  private String reponse;
  private Object req;
  private String url;

  public RemoteTask(String paramString, HashMap<String, String> paramHashMap, Object paramObject, IResultCallBack<T> paramIResultCallBack, Class<T> paramClass)
  {
    this.url = paramString;
    this.req = paramObject;
    this.callBack = paramIResultCallBack;
    this.entityClass = paramClass;
    this.headers = paramHashMap;
  }

  public void doTask()
    throws JHException
  {
    JHHttpClient localJHHttpClient = new JHHttpClient();
    if (this.headers != null)
      localJHHttpClient.setHeaders(this.headers);
    this.reponse = localJHHttpClient.request(this.url, GsonUtil.format(this.req));
  }

  public void fail(String paramString)
  {
    this.callBack.fail(paramString);
  }

  public void success()
  {
    Object localObject = GsonUtil.parseMessage(this.reponse, this.entityClass);
    this.callBack.success(localObject);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.net.RemoteTask
 * JD-Core Version:    0.6.2
 */