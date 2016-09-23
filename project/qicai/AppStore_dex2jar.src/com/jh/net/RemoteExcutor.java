package com.jh.net;

import com.jh.app.util.ConcurrenceExcutor;
import com.jh.app.util.IRemoteRequest;
import com.jh.app.util.IResultCallBack;
import java.util.HashMap;

public class RemoteExcutor
  implements IRemoteRequest
{
  private static RemoteExcutor excutor = new RemoteExcutor();
  private ConcurrenceExcutor cuExcutor = ConcurrenceExcutor.getInstance();

  public static RemoteExcutor getInstance()
  {
    return excutor;
  }

  public <T> void request(String paramString, Object paramObject, IResultCallBack<T> paramIResultCallBack, Class<T> paramClass)
  {
    request(paramString, null, paramObject, paramIResultCallBack, paramClass);
  }

  public <T> void request(String paramString, HashMap<String, String> paramHashMap, Object paramObject, IResultCallBack<T> paramIResultCallBack, Class<T> paramClass)
  {
    this.cuExcutor.addTaskFirst(new RemoteTask(paramString, paramHashMap, paramObject, paramIResultCallBack, paramClass));
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.net.RemoteExcutor
 * JD-Core Version:    0.6.2
 */