package com.lidroid.xutils.cache;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class LruMemoryCache<K, V>
{
  private int createCount;
  private int evictionCount;
  private int hitCount;
  private KeyExpiryMap<K, Long> keyExpiryMap;
  private final LinkedHashMap<K, V> map;
  private int maxSize;
  private int missCount;
  private int putCount;
  private int size;

  public LruMemoryCache(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException("maxSize <= 0");
    this.maxSize = paramInt;
    this.map = new LinkedHashMap(0, 0.75F, true);
    this.keyExpiryMap = new KeyExpiryMap(0, 0.75F);
  }

  private int safeSizeOf(K paramK, V paramV)
  {
    int i = sizeOf(paramK, paramV);
    Iterator localIterator;
    if (i <= 0)
    {
      this.size = 0;
      localIterator = this.map.entrySet().iterator();
    }
    while (true)
    {
      if (!localIterator.hasNext())
        return i;
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      this.size += sizeOf(localEntry.getKey(), localEntry.getValue());
    }
  }

  private void trimToSize(int paramInt)
  {
    while (true)
      try
      {
        if ((this.size <= paramInt) || (this.map.isEmpty()))
          return;
        Map.Entry localEntry = (Map.Entry)this.map.entrySet().iterator().next();
        Object localObject2 = localEntry.getKey();
        Object localObject3 = localEntry.getValue();
        this.map.remove(localObject2);
        this.keyExpiryMap.remove(localObject2);
        this.size -= safeSizeOf(localObject2, localObject3);
        this.evictionCount = (1 + this.evictionCount);
        entryRemoved(true, localObject2, localObject3, null);
      }
      finally
      {
      }
  }

  public final boolean containsKey(K paramK)
  {
    return this.map.containsKey(paramK);
  }

  protected V create(K paramK)
  {
    return null;
  }

  public final int createCount()
  {
    try
    {
      int i = this.createCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected void entryRemoved(boolean paramBoolean, K paramK, V paramV1, V paramV2)
  {
  }

  public final void evictAll()
  {
    trimToSize(-1);
    this.keyExpiryMap.clear();
  }

  public final int evictionCount()
  {
    try
    {
      int i = this.evictionCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final V get(K paramK)
  {
    if (paramK == null)
      throw new NullPointerException("key == null");
    try
    {
      if (!this.keyExpiryMap.containsKey(paramK))
      {
        remove(paramK);
        return null;
      }
      Object localObject2 = this.map.get(paramK);
      if (localObject2 != null)
      {
        this.hitCount = (1 + this.hitCount);
        return localObject2;
      }
    }
    finally
    {
    }
    this.missCount = (1 + this.missCount);
    Object localObject3 = create(paramK);
    if (localObject3 == null)
      return null;
    try
    {
      this.createCount = (1 + this.createCount);
      Object localObject5 = this.map.put(paramK, localObject3);
      if (localObject5 != null)
        this.map.put(paramK, localObject5);
      while (true)
      {
        if (localObject5 == null)
          break;
        entryRemoved(false, paramK, localObject3, localObject5);
        return localObject5;
        this.size += safeSizeOf(paramK, localObject3);
      }
    }
    finally
    {
    }
    trimToSize(this.maxSize);
    return localObject3;
  }

  public final int hitCount()
  {
    try
    {
      int i = this.hitCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int maxSize()
  {
    try
    {
      int i = this.maxSize;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int missCount()
  {
    try
    {
      int i = this.missCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final V put(K paramK, V paramV)
  {
    return put(paramK, paramV, 9223372036854775807L);
  }

  public final V put(K paramK, V paramV, long paramLong)
  {
    if ((paramK == null) || (paramV == null))
      throw new NullPointerException("key == null || value == null");
    try
    {
      this.putCount = (1 + this.putCount);
      this.size += safeSizeOf(paramK, paramV);
      Object localObject2 = this.map.put(paramK, paramV);
      this.keyExpiryMap.put(paramK, Long.valueOf(paramLong));
      if (localObject2 != null)
        this.size -= safeSizeOf(paramK, localObject2);
      if (localObject2 != null)
        entryRemoved(false, paramK, localObject2, paramV);
      trimToSize(this.maxSize);
      return localObject2;
    }
    finally
    {
    }
  }

  public final int putCount()
  {
    try
    {
      int i = this.putCount;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final V remove(K paramK)
  {
    if (paramK == null)
      throw new NullPointerException("key == null");
    try
    {
      Object localObject2 = this.map.remove(paramK);
      this.keyExpiryMap.remove(paramK);
      if (localObject2 != null)
        this.size -= safeSizeOf(paramK, localObject2);
      if (localObject2 != null)
        entryRemoved(false, paramK, localObject2, null);
      return localObject2;
    }
    finally
    {
    }
  }

  public void setMaxSize(int paramInt)
  {
    this.maxSize = paramInt;
    trimToSize(paramInt);
  }

  public final int size()
  {
    try
    {
      int i = this.size;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected int sizeOf(K paramK, V paramV)
  {
    return 1;
  }

  public final Map<K, V> snapshot()
  {
    try
    {
      LinkedHashMap localLinkedHashMap = new LinkedHashMap(this.map);
      return localLinkedHashMap;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String toString()
  {
    try
    {
      int i = this.hitCount + this.missCount;
      int j = 0;
      if (i != 0)
        j = 100 * this.hitCount / i;
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = Integer.valueOf(this.maxSize);
      arrayOfObject[1] = Integer.valueOf(this.hitCount);
      arrayOfObject[2] = Integer.valueOf(this.missCount);
      arrayOfObject[3] = Integer.valueOf(j);
      String str = String.format("LruMemoryCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", arrayOfObject);
      return str;
    }
    finally
    {
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.cache.LruMemoryCache
 * JD-Core Version:    0.6.2
 */