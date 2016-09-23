package com.lidroid.xutils.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class DoubleKeyValueMap<K1, K2, V>
{
  private ConcurrentHashMap<K1, ConcurrentHashMap<K2, V>> k1_k2V_map = new ConcurrentHashMap();

  public void clear()
  {
    Iterator localIterator;
    if (this.k1_k2V_map.size() > 0)
      localIterator = this.k1_k2V_map.values().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        this.k1_k2V_map.clear();
        return;
      }
      ((ConcurrentHashMap)localIterator.next()).clear();
    }
  }

  public boolean containsKey(K1 paramK1)
  {
    return this.k1_k2V_map.containsKey(paramK1);
  }

  public boolean containsKey(K1 paramK1, K2 paramK2)
  {
    if (this.k1_k2V_map.containsKey(paramK1))
      return ((ConcurrentHashMap)this.k1_k2V_map.get(paramK1)).containsKey(paramK2);
    return false;
  }

  public V get(K1 paramK1, K2 paramK2)
  {
    ConcurrentHashMap localConcurrentHashMap = (ConcurrentHashMap)this.k1_k2V_map.get(paramK1);
    if (localConcurrentHashMap == null)
      return null;
    return localConcurrentHashMap.get(paramK2);
  }

  public ConcurrentHashMap<K2, V> get(K1 paramK1)
  {
    return (ConcurrentHashMap)this.k1_k2V_map.get(paramK1);
  }

  public Collection<V> getAllValues()
  {
    Set localSet = this.k1_k2V_map.keySet();
    ArrayList localArrayList = null;
    Iterator localIterator;
    if (localSet != null)
    {
      localArrayList = new ArrayList();
      localIterator = localSet.iterator();
    }
    while (true)
    {
      if (!localIterator.hasNext())
        return localArrayList;
      Object localObject = (Object)localIterator.next();
      Collection localCollection = ((ConcurrentHashMap)this.k1_k2V_map.get(localObject)).values();
      if (localCollection != null)
        localArrayList.addAll(localCollection);
    }
  }

  public Collection<V> getAllValues(K1 paramK1)
  {
    ConcurrentHashMap localConcurrentHashMap = (ConcurrentHashMap)this.k1_k2V_map.get(paramK1);
    if (localConcurrentHashMap == null)
      return null;
    return localConcurrentHashMap.values();
  }

  public Set<K1> getFirstKeys()
  {
    return this.k1_k2V_map.keySet();
  }

  public void put(K1 paramK1, K2 paramK2, V paramV)
  {
    if ((paramK1 == null) || (paramK2 == null) || (paramV == null))
      return;
    if (this.k1_k2V_map.containsKey(paramK1))
    {
      ConcurrentHashMap localConcurrentHashMap2 = (ConcurrentHashMap)this.k1_k2V_map.get(paramK1);
      if (localConcurrentHashMap2 != null)
      {
        localConcurrentHashMap2.put(paramK2, paramV);
        return;
      }
      ConcurrentHashMap localConcurrentHashMap3 = new ConcurrentHashMap();
      localConcurrentHashMap3.put(paramK2, paramV);
      this.k1_k2V_map.put(paramK1, localConcurrentHashMap3);
      return;
    }
    ConcurrentHashMap localConcurrentHashMap1 = new ConcurrentHashMap();
    localConcurrentHashMap1.put(paramK2, paramV);
    this.k1_k2V_map.put(paramK1, localConcurrentHashMap1);
  }

  public void remove(K1 paramK1)
  {
    this.k1_k2V_map.remove(paramK1);
  }

  public void remove(K1 paramK1, K2 paramK2)
  {
    ConcurrentHashMap localConcurrentHashMap = (ConcurrentHashMap)this.k1_k2V_map.get(paramK1);
    if (localConcurrentHashMap != null)
      localConcurrentHashMap.remove(paramK2);
  }

  public int size()
  {
    int i;
    if (this.k1_k2V_map.size() == 0)
      i = 0;
    while (true)
    {
      return i;
      i = 0;
      Iterator localIterator = this.k1_k2V_map.values().iterator();
      while (localIterator.hasNext())
        i += ((ConcurrentHashMap)localIterator.next()).size();
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.util.DoubleKeyValueMap
 * JD-Core Version:    0.6.2
 */