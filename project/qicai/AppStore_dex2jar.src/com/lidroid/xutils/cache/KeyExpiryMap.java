package com.lidroid.xutils.cache;

import java.util.concurrent.ConcurrentHashMap;

public class KeyExpiryMap<K, V> extends ConcurrentHashMap<K, Long>
{
  private static final int DEFAULT_CONCURRENCY_LEVEL = 16;
  private static final long serialVersionUID = 1L;

  public KeyExpiryMap()
  {
  }

  public KeyExpiryMap(int paramInt)
  {
    super(paramInt);
  }

  public KeyExpiryMap(int paramInt, float paramFloat)
  {
    super(paramInt, paramFloat, 16);
  }

  public KeyExpiryMap(int paramInt1, float paramFloat, int paramInt2)
  {
    super(paramInt1, paramFloat, paramInt2);
  }

  public void clear()
  {
    try
    {
      super.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean containsKey(Object paramObject)
  {
    try
    {
      Long localLong = (Long)super.get(paramObject);
      if (localLong != null)
      {
        long l1 = System.currentTimeMillis();
        long l2 = localLong.longValue();
        if (l1 >= l2);
      }
      for (boolean bool = true; ; bool = false)
      {
        return bool;
        remove(paramObject);
      }
    }
    finally
    {
    }
  }

  public Long get(Object paramObject)
  {
    try
    {
      if (containsKey(paramObject))
      {
        localLong = (Long)super.get(paramObject);
        return localLong;
      }
      Long localLong = null;
    }
    finally
    {
    }
  }

  public Long put(K paramK, Long paramLong)
  {
    try
    {
      if (containsKey(paramK))
        remove(paramK);
      Long localLong = (Long)super.put(paramK, paramLong);
      return localLong;
    }
    finally
    {
    }
  }

  public Long remove(Object paramObject)
  {
    try
    {
      Long localLong = (Long)super.remove(paramObject);
      return localLong;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.cache.KeyExpiryMap
 * JD-Core Version:    0.6.2
 */