package com.hsg.sdk.common.util;

import java.util.HashMap;

public class Session
{
  private static Session instance = null;
  private HashMap<Object, Object> objContainer = null;

  public static Session getSession()
  {
    if (instance == null)
      instance = new Session();
    return instance;
  }

  public void cleanUpSession()
  {
    this.objContainer.clear();
  }

  public Object get(Object paramObject)
  {
    return this.objContainer.get(paramObject);
  }

  public void put(Object paramObject1, Object paramObject2)
  {
    this.objContainer.put(paramObject1, paramObject2);
  }

  public void remove(Object paramObject)
  {
    this.objContainer.remove(paramObject);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.Session
 * JD-Core Version:    0.6.2
 */