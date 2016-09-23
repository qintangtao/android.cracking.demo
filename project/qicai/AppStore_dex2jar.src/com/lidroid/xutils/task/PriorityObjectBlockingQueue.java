package com.lidroid.xutils.task;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

public class PriorityObjectBlockingQueue<E> extends AbstractQueue<E>
  implements BlockingQueue<E>, Serializable
{
  private static final long serialVersionUID = -6903933977591709194L;
  private final int capacity;
  private final AtomicInteger count = new AtomicInteger();
  transient Node<E> head;
  private transient Node<E> last;
  private final Condition notEmpty = this.takeLock.newCondition();
  private final Condition notFull = this.putLock.newCondition();
  private final ReentrantLock putLock = new ReentrantLock();
  private final ReentrantLock takeLock = new ReentrantLock();

  public PriorityObjectBlockingQueue()
  {
    this(2147483647);
  }

  public PriorityObjectBlockingQueue(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException();
    this.capacity = paramInt;
    Node localNode = new Node(null);
    this.head = localNode;
    this.last = localNode;
  }

  public PriorityObjectBlockingQueue(Collection<? extends E> paramCollection)
  {
    this(2147483647);
    ReentrantLock localReentrantLock = this.putLock;
    localReentrantLock.lock();
    for (int i = 0; ; i++)
    {
      Object localObject2;
      try
      {
        Iterator localIterator = paramCollection.iterator();
        if (!localIterator.hasNext())
        {
          this.count.set(i);
          return;
        }
        localObject2 = (Object)localIterator.next();
        if (localObject2 == null)
          throw new NullPointerException();
      }
      finally
      {
        localReentrantLock.unlock();
      }
      if (i == this.capacity)
        throw new IllegalStateException("Queue full");
      opQueue(new Node(localObject2));
    }
  }

  private E _dequeue()
  {
    Node localNode1 = this.head;
    Node localNode2 = localNode1.next;
    localNode1.next = localNode1;
    this.head = localNode2;
    Object localObject = localNode2.getValue();
    localNode2.setValue(null);
    return localObject;
  }

  private void _enqueue(Node<E> paramNode)
  {
    for (Node localNode1 = this.head; ; localNode1 = localNode1.next)
    {
      Node localNode2 = localNode1.next;
      int i = 0;
      if (localNode2 == null);
      while (true)
      {
        if (i == 0)
        {
          this.last.next = paramNode;
          this.last = paramNode;
        }
        return;
        Node localNode3 = localNode1.next;
        if (localNode3.getPriority().ordinal() <= paramNode.getPriority().ordinal())
          break;
        localNode1.next = paramNode;
        paramNode.next = localNode3;
        i = 1;
      }
    }
  }

  private E opQueue(Node<E> paramNode)
  {
    if (paramNode == null);
    try
    {
      Object localObject3 = _dequeue();
      for (Object localObject2 = localObject3; ; localObject2 = null)
      {
        return localObject2;
        _enqueue(paramNode);
      }
    }
    finally
    {
    }
  }

  private void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    paramObjectInputStream.defaultReadObject();
    this.count.set(0);
    Node localNode = new Node(null);
    this.head = localNode;
    this.last = localNode;
    while (true)
    {
      Object localObject = paramObjectInputStream.readObject();
      if (localObject == null)
        return;
      add(localObject);
    }
  }

  private void signalNotEmpty()
  {
    ReentrantLock localReentrantLock = this.takeLock;
    localReentrantLock.lock();
    try
    {
      this.notEmpty.signal();
      return;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  private void signalNotFull()
  {
    ReentrantLock localReentrantLock = this.putLock;
    localReentrantLock.lock();
    try
    {
      this.notFull.signal();
      return;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  private void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    fullyLock();
    try
    {
      paramObjectOutputStream.defaultWriteObject();
      for (Node localNode = this.head.next; ; localNode = localNode.next)
      {
        if (localNode == null)
        {
          paramObjectOutputStream.writeObject(null);
          return;
        }
        paramObjectOutputStream.writeObject(localNode.getValue());
      }
    }
    finally
    {
      fullyUnlock();
    }
  }

  public void clear()
  {
    fullyLock();
    try
    {
      Node localNode;
      for (Object localObject2 = this.head; ; localObject2 = localNode)
      {
        localNode = ((Node)localObject2).next;
        if (localNode == null)
        {
          this.head = this.last;
          if (this.count.getAndSet(0) == this.capacity)
            this.notFull.signal();
          return;
        }
        ((Node)localObject2).next = ((Node)localObject2);
        localNode.setValue(null);
      }
    }
    finally
    {
      fullyUnlock();
    }
  }

  public boolean contains(Object paramObject)
  {
    if (paramObject == null)
      return false;
    fullyLock();
    try
    {
      for (Node localNode = this.head.next; ; localNode = localNode.next)
      {
        if (localNode == null)
          return false;
        boolean bool = paramObject.equals(localNode.getValue());
        if (bool)
          return true;
      }
    }
    finally
    {
      fullyUnlock();
    }
  }

  public int drainTo(Collection<? super E> paramCollection)
  {
    return drainTo(paramCollection, 2147483647);
  }

  public int drainTo(Collection<? super E> paramCollection, int paramInt)
  {
    if (paramCollection == null)
      throw new NullPointerException();
    if (paramCollection == this)
      throw new IllegalArgumentException();
    if (paramInt <= 0)
      return 0;
    int i = 0;
    ReentrantLock localReentrantLock = this.takeLock;
    localReentrantLock.lock();
    while (true)
    {
      try
      {
        int j = Math.min(paramInt, this.count.get());
        localObject2 = this.head;
        k = 0;
        if (k >= j)
        {
          i = 0;
          if (k > 0)
          {
            this.head = ((Node)localObject2);
            int m = this.count.getAndAdd(-k);
            int n = this.capacity;
            if (m != n)
              continue;
            i = 1;
          }
          localReentrantLock.unlock();
          if (i != 0)
            signalNotFull();
          return j;
        }
      }
      finally
      {
        try
        {
          Node localNode = ((Node)localObject2).next;
          paramCollection.add(localNode.getValue());
          localNode.setValue(null);
          ((Node)localObject2).next = ((Node)localObject2);
          localObject2 = localNode;
          k++;
          continue;
          i = 0;
        }
        finally
        {
          Object localObject2;
          int k;
          i = 0;
          if (k > 0)
          {
            this.head = ((Node)localObject2);
            if (this.count.getAndAdd(-k) != this.capacity)
              break label231;
            i = 1;
          }
        }
      }
      label231: i = 0;
    }
  }

  void fullyLock()
  {
    this.putLock.lock();
    this.takeLock.lock();
  }

  void fullyUnlock()
  {
    this.takeLock.unlock();
    this.putLock.unlock();
  }

  public Iterator<E> iterator()
  {
    return new Itr();
  }

  public boolean offer(E paramE)
  {
    if (paramE == null)
      throw new NullPointerException();
    AtomicInteger localAtomicInteger = this.count;
    if (localAtomicInteger.get() == this.capacity);
    while (true)
    {
      return false;
      int i = -1;
      Node localNode = new Node(paramE);
      ReentrantLock localReentrantLock = this.putLock;
      localReentrantLock.lock();
      try
      {
        if (localAtomicInteger.get() < this.capacity)
        {
          opQueue(localNode);
          i = localAtomicInteger.getAndIncrement();
          if (i + 1 < this.capacity)
            this.notFull.signal();
        }
        localReentrantLock.unlock();
        if (i == 0)
          signalNotEmpty();
        if (i < 0)
          continue;
        return true;
      }
      finally
      {
        localReentrantLock.unlock();
      }
    }
  }

  public boolean offer(E paramE, long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException
  {
    if (paramE == null)
      throw new NullPointerException();
    long l1 = paramTimeUnit.toNanos(paramLong);
    ReentrantLock localReentrantLock = this.putLock;
    AtomicInteger localAtomicInteger = this.count;
    localReentrantLock.lockInterruptibly();
    try
    {
      while (true)
      {
        if (localAtomicInteger.get() != this.capacity)
        {
          opQueue(new Node(paramE));
          int i = localAtomicInteger.getAndIncrement();
          if (i + 1 < this.capacity)
            this.notFull.signal();
          localReentrantLock.unlock();
          if (i == 0)
            signalNotEmpty();
          return true;
        }
        if (l1 <= 0L)
          return false;
        long l2 = this.notFull.awaitNanos(l1);
        l1 = l2;
      }
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  public E peek()
  {
    if (this.count.get() == 0)
      return null;
    ReentrantLock localReentrantLock = this.takeLock;
    localReentrantLock.lock();
    try
    {
      Node localNode = this.head.next;
      if (localNode == null)
        return null;
      Object localObject2 = localNode.getValue();
      return localObject2;
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  public E poll()
  {
    AtomicInteger localAtomicInteger = this.count;
    int i = localAtomicInteger.get();
    Object localObject1 = null;
    if (i == 0);
    while (true)
    {
      return localObject1;
      int j = -1;
      ReentrantLock localReentrantLock = this.takeLock;
      localReentrantLock.lock();
      try
      {
        int k = localAtomicInteger.get();
        localObject1 = null;
        if (k > 0)
        {
          localObject1 = opQueue(null);
          j = localAtomicInteger.getAndDecrement();
          if (j > 1)
            this.notEmpty.signal();
        }
        localReentrantLock.unlock();
        if (j != this.capacity)
          continue;
        signalNotFull();
        return localObject1;
      }
      finally
      {
        localReentrantLock.unlock();
      }
    }
  }

  public E poll(long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException
  {
    long l1 = paramTimeUnit.toNanos(paramLong);
    AtomicInteger localAtomicInteger = this.count;
    ReentrantLock localReentrantLock = this.takeLock;
    localReentrantLock.lockInterruptibly();
    try
    {
      while (true)
      {
        if (localAtomicInteger.get() != 0)
        {
          Object localObject2 = opQueue(null);
          int i = localAtomicInteger.getAndDecrement();
          if (i > 1)
            this.notEmpty.signal();
          localReentrantLock.unlock();
          if (i == this.capacity)
            signalNotFull();
          return localObject2;
        }
        if (l1 <= 0L)
          return null;
        long l2 = this.notEmpty.awaitNanos(l1);
        l1 = l2;
      }
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  public void put(E paramE)
    throws InterruptedException
  {
    if (paramE == null)
      throw new NullPointerException();
    Node localNode = new Node(paramE);
    ReentrantLock localReentrantLock = this.putLock;
    AtomicInteger localAtomicInteger = this.count;
    localReentrantLock.lockInterruptibly();
    try
    {
      while (true)
      {
        if (localAtomicInteger.get() != this.capacity)
        {
          opQueue(localNode);
          int i = localAtomicInteger.getAndIncrement();
          if (i + 1 < this.capacity)
            this.notFull.signal();
          localReentrantLock.unlock();
          if (i == 0)
            signalNotEmpty();
          return;
        }
        this.notFull.await();
      }
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  public int remainingCapacity()
  {
    return this.capacity - this.count.get();
  }

  public boolean remove(Object paramObject)
  {
    if (paramObject == null)
      return false;
    fullyLock();
    try
    {
      Object localObject2 = this.head;
      for (Node localNode = ((Node)localObject2).next; ; localNode = localNode.next)
      {
        if (localNode == null)
          return false;
        if (paramObject.equals(localNode.getValue()))
        {
          unlink(localNode, (Node)localObject2);
          return true;
        }
        localObject2 = localNode;
      }
    }
    finally
    {
      fullyUnlock();
    }
  }

  public int size()
  {
    return this.count.get();
  }

  public E take()
    throws InterruptedException
  {
    AtomicInteger localAtomicInteger = this.count;
    ReentrantLock localReentrantLock = this.takeLock;
    localReentrantLock.lockInterruptibly();
    try
    {
      while (true)
      {
        if (localAtomicInteger.get() != 0)
        {
          Object localObject2 = opQueue(null);
          int i = localAtomicInteger.getAndDecrement();
          if (i > 1)
            this.notEmpty.signal();
          localReentrantLock.unlock();
          if (i == this.capacity)
            signalNotFull();
          return localObject2;
        }
        this.notEmpty.await();
      }
    }
    finally
    {
      localReentrantLock.unlock();
    }
  }

  public Object[] toArray()
  {
    fullyLock();
    try
    {
      Object[] arrayOfObject = new Object[this.count.get()];
      Node localNode = this.head.next;
      int j;
      for (int i = 0; ; i = j)
      {
        if (localNode == null)
          return arrayOfObject;
        j = i + 1;
        arrayOfObject[i] = localNode.getValue();
        localNode = localNode.next;
      }
    }
    finally
    {
      fullyUnlock();
    }
  }

  public <T> T[] toArray(T[] paramArrayOfT)
  {
    fullyLock();
    try
    {
      int i = this.count.get();
      if (paramArrayOfT.length < i)
        paramArrayOfT = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), i);
      Node localNode = this.head.next;
      int k;
      for (int j = 0; ; j = k)
      {
        if (localNode == null)
        {
          if (paramArrayOfT.length > j)
            paramArrayOfT[j] = null;
          return paramArrayOfT;
        }
        k = j + 1;
        paramArrayOfT[j] = localNode.getValue();
        localNode = localNode.next;
      }
    }
    finally
    {
      fullyUnlock();
    }
  }

  void unlink(Node<E> paramNode1, Node<E> paramNode2)
  {
    paramNode1.setValue(null);
    paramNode2.next = paramNode1.next;
    if (this.last == paramNode1)
      this.last = paramNode2;
    if (this.count.getAndDecrement() == this.capacity)
      this.notFull.signal();
  }

  private class Itr
    implements Iterator<E>
  {
    private Node<E> current;
    private E currentElement;
    private Node<E> lastRet;

    Itr()
    {
      PriorityObjectBlockingQueue.this.fullyLock();
      try
      {
        this.current = PriorityObjectBlockingQueue.this.head.next;
        if (this.current != null)
          this.currentElement = this.current.getValue();
        return;
      }
      finally
      {
        PriorityObjectBlockingQueue.this.fullyUnlock();
      }
    }

    private Node<E> nextNode(Node<E> paramNode)
    {
      while (true)
      {
        Node localNode = paramNode.next;
        if (localNode == paramNode)
          localNode = PriorityObjectBlockingQueue.this.head.next;
        while ((localNode == null) || (localNode.getValue() != null))
          return localNode;
        paramNode = localNode;
      }
    }

    public boolean hasNext()
    {
      return this.current != null;
    }

    public E next()
    {
      PriorityObjectBlockingQueue.this.fullyLock();
      try
      {
        if (this.current == null)
          throw new NoSuchElementException();
      }
      finally
      {
        PriorityObjectBlockingQueue.this.fullyUnlock();
      }
      Object localObject2 = this.currentElement;
      this.lastRet = this.current;
      this.current = nextNode(this.current);
      if (this.current == null);
      Object localObject4;
      for (Object localObject3 = null; ; localObject3 = localObject4)
      {
        this.currentElement = localObject3;
        PriorityObjectBlockingQueue.this.fullyUnlock();
        return localObject2;
        localObject4 = this.current.getValue();
      }
    }

    public void remove()
    {
      if (this.lastRet == null)
        throw new IllegalStateException();
      PriorityObjectBlockingQueue.this.fullyLock();
      while (true)
      {
        try
        {
          Node localNode1 = this.lastRet;
          this.lastRet = null;
          localObject2 = PriorityObjectBlockingQueue.this.head;
          localNode2 = ((Node)localObject2).next;
          if (localNode2 == null)
            return;
          if (localNode2 == localNode1)
          {
            PriorityObjectBlockingQueue.this.unlink(localNode2, (Node)localObject2);
            continue;
          }
        }
        finally
        {
          PriorityObjectBlockingQueue.this.fullyUnlock();
        }
        Object localObject2 = localNode2;
        Node localNode2 = localNode2.next;
      }
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.task.PriorityObjectBlockingQueue
 * JD-Core Version:    0.6.2
 */