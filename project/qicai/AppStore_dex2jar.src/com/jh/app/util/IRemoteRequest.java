package com.jh.app.util;

import java.util.HashMap;

public abstract interface IRemoteRequest
{
  public abstract <T> void request(String paramString, Object paramObject, IResultCallBack<T> paramIResultCallBack, Class<T> paramClass);

  public abstract <T> void request(String paramString, HashMap<String, String> paramHashMap, Object paramObject, IResultCallBack<T> paramIResultCallBack, Class<T> paramClass);
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.app.util.IRemoteRequest
 * JD-Core Version:    0.6.2
 */