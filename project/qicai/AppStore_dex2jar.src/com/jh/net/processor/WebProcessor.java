package com.jh.net.processor;

import com.jh.app.util.BaseTask;
import com.jh.exception.JHException;
import com.jh.net.JHHttpClient;
import com.jh.util.GsonUtil;

public class WebProcessor<T> extends BaseTask
{
  private IWebResult<T> callback;
  private JHHttpClient client;
  private Object req;
  private T result;
  private String url;
  private Class<T> value;

  public WebProcessor(JHHttpClient paramJHHttpClient, String paramString, Object paramObject, Class<T> paramClass, IWebResult<T> paramIWebResult)
  {
    this.client = paramJHHttpClient;
    this.url = paramString;
    this.req = paramObject;
    this.value = paramClass;
    this.callback = paramIWebResult;
  }

  public void doTask()
    throws JHException
  {
    String str = GsonUtil.format(this.req);
    this.result = GsonUtil.parseMessage(this.client.request(this.url, str), this.value);
  }

  public void fail(JHException paramJHException)
  {
    super.fail(paramJHException);
  }

  public void success()
  {
    super.success();
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.net.processor.WebProcessor
 * JD-Core Version:    0.6.2
 */