package com.hsg.sdk.common.imagecache;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class ArrayDeque<E> extends AbstractCollection<E>
  implements Deque<E>, Cloneable, Serializable
{
  private static final int MIN_INITIAL_CAPACITY = 8;
  private static final long serialVersionUID = 2340985798034038923L;
  private transient Object[] elements;
  private transient int head;
  private transient int tail;

  static
  {
    if (!ArrayDeque.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ArrayDeque()
  {
    this.elements = new Object[16];
  }

  public ArrayDeque(int paramInt)
  {
    allocateElements(paramInt);
  }

  public ArrayDeque(Collection<? extends E> paramCollection)
  {
    allocateElements(paramCollection.size());
    addAll(paramCollection);
  }

  private void allocateElements(int paramInt)
  {
    int i = 8;
    if (paramInt >= i)
    {
      int j = paramInt | paramInt >>> 1;
      int k = j | j >>> 2;
      int m = k | k >>> 4;
      int n = m | m >>> 8;
      i = 1 + (n | n >>> 16);
      if (i < 0)
        i >>>= 1;
    }
    this.elements = new Object[i];
  }

  private void checkInvariants()
  {
    assert (this.elements[this.tail] == null);
    if (!$assertionsDisabled)
      if (this.head == this.tail)
      {
        if (this.elements[this.head] == null);
      }
      else
        while ((this.elements[this.head] == null) || (this.elements[(-1 + this.tail & -1 + this.elements.length)] == null))
          throw new AssertionError();
    assert (this.elements[(-1 + this.head & -1 + this.elements.length)] == null);
  }

  private <T> T[] copyElements(T[] paramArrayOfT)
  {
    if (this.head < this.tail)
      System.arraycopy(this.elements, this.head, paramArrayOfT, 0, size());
    while (this.head <= this.tail)
      return paramArrayOfT;
    int i = this.elements.length - this.head;
    System.arraycopy(this.elements, this.head, paramArrayOfT, 0, i);
    System.arraycopy(this.elements, 0, paramArrayOfT, i, this.tail);
    return paramArrayOfT;
  }

  public static <T> T[] copyOf(T[] paramArrayOfT, int paramInt)
  {
    if (paramArrayOfT == null)
      throw new NullPointerException("original == null");
    if (paramInt < 0)
      throw new NegativeArraySizeException(Integer.toString(paramInt));
    return copyOfRange(paramArrayOfT, 0, paramInt);
  }

  public static <T> T[] copyOfRange(T[] paramArrayOfT, int paramInt1, int paramInt2)
  {
    int i = paramArrayOfT.length;
    if (paramInt1 > paramInt2)
      throw new IllegalArgumentException();
    if ((paramInt1 < 0) || (paramInt1 > i))
      throw new ArrayIndexOutOfBoundsException();
    int j = paramInt2 - paramInt1;
    int k = Math.min(j, i - paramInt1);
    Object[] arrayOfObject = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), j);
    System.arraycopy(paramArrayOfT, paramInt1, arrayOfObject, 0, k);
    return arrayOfObject;
  }

  private boolean delete(int paramInt)
  {
    checkInvariants();
    Object[] arrayOfObject = this.elements;
    int i = -1 + arrayOfObject.length;
    int j = this.head;
    int k = this.tail;
    int m = i & paramInt - j;
    int n = i & k - paramInt;
    if (m >= (i & k - j))
      throw new ConcurrentModificationException();
    if (m < n)
    {
      if (j <= paramInt)
        System.arraycopy(arrayOfObject, j, arrayOfObject, j + 1, m);
      while (true)
      {
        arrayOfObject[j] = null;
        this.head = (i & j + 1);
        return false;
        System.arraycopy(arrayOfObject, 0, arrayOfObject, 1, paramInt);
        arrayOfObject[0] = arrayOfObject[i];
        System.arraycopy(arrayOfObject, j, arrayOfObject, j + 1, i - j);
      }
    }
    if (paramInt < k)
      System.arraycopy(arrayOfObject, paramInt + 1, arrayOfObject, paramInt, n);
    for (this.tail = (k - 1); ; this.tail = (i & k - 1))
    {
      return true;
      System.arraycopy(arrayOfObject, paramInt + 1, arrayOfObject, paramInt, i - paramInt);
      arrayOfObject[i] = arrayOfObject[0];
      System.arraycopy(arrayOfObject, 1, arrayOfObject, 0, k);
    }
  }

  private void doubleCapacity()
  {
    assert (this.head == this.tail);
    int i = this.head;
    int j = this.elements.length;
    int k = j - i;
    int m = j << 1;
    if (m < 0)
      throw new IllegalStateException("Sorry, deque too big");
    Object[] arrayOfObject = new Object[m];
    System.arraycopy(this.elements, i, arrayOfObject, 0, k);
    System.arraycopy(this.elements, 0, arrayOfObject, k, i);
    this.elements = arrayOfObject;
    this.head = 0;
    this.tail = j;
  }

  private void readObject(ObjectInputStream paramObjectInputStream)
    throws IOException, ClassNotFoundException
  {
    paramObjectInputStream.defaultReadObject();
    int i = paramObjectInputStream.readInt();
    allocateElements(i);
    this.head = 0;
    this.tail = i;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      this.elements[j] = paramObjectInputStream.readObject();
    }
  }

  private void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    paramObjectOutputStream.defaultWriteObject();
    paramObjectOutputStream.writeInt(size());
    int i = -1 + this.elements.length;
    for (int j = this.head; ; j = i & j + 1)
    {
      if (j == this.tail)
        return;
      paramObjectOutputStream.writeObject(this.elements[j]);
    }
  }

  public boolean add(E paramE)
  {
    addLast(paramE);
    return true;
  }

  public void addFirst(E paramE)
  {
    if (paramE == null)
      throw new NullPointerException("e == null");
    Object[] arrayOfObject = this.elements;
    int i = -1 + this.head & -1 + this.elements.length;
    this.head = i;
    arrayOfObject[i] = paramE;
    if (this.head == this.tail)
      doubleCapacity();
  }

  public void addLast(E paramE)
  {
    if (paramE == null)
      throw new NullPointerException("e == null");
    this.elements[this.tail] = paramE;
    int i = 1 + this.tail & -1 + this.elements.length;
    this.tail = i;
    if (i == this.head)
      doubleCapacity();
  }

  public void clear()
  {
    int i = this.head;
    int j = this.tail;
    if (i != j)
    {
      this.tail = 0;
      this.head = 0;
      int k = i;
      int m = -1 + this.elements.length;
      do
      {
        this.elements[k] = null;
        k = m & k + 1;
      }
      while (k != j);
    }
  }

  public ArrayDeque<E> clone()
  {
    try
    {
      ArrayDeque localArrayDeque = (ArrayDeque)super.clone();
      localArrayDeque.elements = copyOf(this.elements, this.elements.length);
      return localArrayDeque;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
    }
    throw new AssertionError();
  }

  public boolean contains(Object paramObject)
  {
    if (paramObject == null)
      return false;
    int i = -1 + this.elements.length;
    for (int j = this.head; ; j = i & j + 1)
    {
      Object localObject = this.elements[j];
      if (localObject == null)
        break;
      if (paramObject.equals(localObject))
        return true;
    }
  }

  public Iterator<E> descendingIterator()
  {
    return new DescendingIterator(null);
  }

  public E element()
  {
    return getFirst();
  }

  public E getFirst()
  {
    Object localObject = this.elements[this.head];
    if (localObject == null)
      throw new NoSuchElementException();
    return localObject;
  }

  public E getLast()
  {
    Object localObject = this.elements[(-1 + this.tail & -1 + this.elements.length)];
    if (localObject == null)
      throw new NoSuchElementException();
    return localObject;
  }

  public boolean isEmpty()
  {
    return this.head == this.tail;
  }

  public Iterator<E> iterator()
  {
    return new DeqIterator(null);
  }

  public boolean offer(E paramE)
  {
    return offerLast(paramE);
  }

  public boolean offerFirst(E paramE)
  {
    addFirst(paramE);
    return true;
  }

  public boolean offerLast(E paramE)
  {
    addLast(paramE);
    return true;
  }

  public E peek()
  {
    return peekFirst();
  }

  public E peekFirst()
  {
    return this.elements[this.head];
  }

  public E peekLast()
  {
    return this.elements[(-1 + this.tail & -1 + this.elements.length)];
  }

  public E poll()
  {
    return pollFirst();
  }

  public E pollFirst()
  {
    int i = this.head;
    Object localObject = this.elements[i];
    if (localObject == null)
      return null;
    this.elements[i] = null;
    this.head = (i + 1 & -1 + this.elements.length);
    return localObject;
  }

  public E pollLast()
  {
    int i = -1 + this.tail & -1 + this.elements.length;
    Object localObject = this.elements[i];
    if (localObject == null)
      return null;
    this.elements[i] = null;
    this.tail = i;
    return localObject;
  }

  public E pop()
  {
    return removeFirst();
  }

  public void push(E paramE)
  {
    addFirst(paramE);
  }

  public E remove()
  {
    return removeFirst();
  }

  public boolean remove(Object paramObject)
  {
    return removeFirstOccurrence(paramObject);
  }

  public E removeFirst()
  {
    Object localObject = pollFirst();
    if (localObject == null)
      throw new NoSuchElementException();
    return localObject;
  }

  public boolean removeFirstOccurrence(Object paramObject)
  {
    if (paramObject == null)
      return false;
    int i = -1 + this.elements.length;
    for (int j = this.head; ; j = i & j + 1)
    {
      Object localObject = this.elements[j];
      if (localObject == null)
        break;
      if (paramObject.equals(localObject))
      {
        delete(j);
        return true;
      }
    }
  }

  public E removeLast()
  {
    Object localObject = pollLast();
    if (localObject == null)
      throw new NoSuchElementException();
    return localObject;
  }

  public boolean removeLastOccurrence(Object paramObject)
  {
    if (paramObject == null)
      return false;
    int i = -1 + this.elements.length;
    for (int j = i & -1 + this.tail; ; j = i & j - 1)
    {
      Object localObject = this.elements[j];
      if (localObject == null)
        break;
      if (paramObject.equals(localObject))
      {
        delete(j);
        return true;
      }
    }
  }

  public int size()
  {
    return this.tail - this.head & -1 + this.elements.length;
  }

  public Object[] toArray()
  {
    return copyElements(new Object[size()]);
  }

  public <T> T[] toArray(T[] paramArrayOfT)
  {
    int i = size();
    if (paramArrayOfT.length < i)
      paramArrayOfT = (Object[])Array.newInstance(paramArrayOfT.getClass().getComponentType(), i);
    copyElements(paramArrayOfT);
    if (paramArrayOfT.length > i)
      paramArrayOfT[i] = null;
    return paramArrayOfT;
  }

  private class DeqIterator
    implements Iterator<E>
  {
    private int cursor = ArrayDeque.this.head;
    private int fence = ArrayDeque.this.tail;
    private int lastRet = -1;

    private DeqIterator()
    {
    }

    public boolean hasNext()
    {
      return this.cursor != this.fence;
    }

    public E next()
    {
      if (this.cursor == this.fence)
        throw new NoSuchElementException();
      Object localObject = ArrayDeque.this.elements[this.cursor];
      if ((ArrayDeque.this.tail != this.fence) || (localObject == null))
        throw new ConcurrentModificationException();
      this.lastRet = this.cursor;
      this.cursor = (1 + this.cursor & -1 + ArrayDeque.this.elements.length);
      return localObject;
    }

    public void remove()
    {
      if (this.lastRet < 0)
        throw new IllegalStateException();
      if (ArrayDeque.this.delete(this.lastRet))
      {
        this.cursor = (-1 + this.cursor & -1 + ArrayDeque.this.elements.length);
        this.fence = ArrayDeque.this.tail;
      }
      this.lastRet = -1;
    }
  }

  private class DescendingIterator
    implements Iterator<E>
  {
    private int cursor = ArrayDeque.this.tail;
    private int fence = ArrayDeque.this.head;
    private int lastRet = -1;

    private DescendingIterator()
    {
    }

    public boolean hasNext()
    {
      return this.cursor != this.fence;
    }

    public E next()
    {
      if (this.cursor == this.fence)
        throw new NoSuchElementException();
      this.cursor = (-1 + this.cursor & -1 + ArrayDeque.this.elements.length);
      Object localObject = ArrayDeque.this.elements[this.cursor];
      if ((ArrayDeque.this.head != this.fence) || (localObject == null))
        throw new ConcurrentModificationException();
      this.lastRet = this.cursor;
      return localObject;
    }

    public void remove()
    {
      if (this.lastRet < 0)
        throw new IllegalStateException();
      if (!ArrayDeque.this.delete(this.lastRet))
      {
        this.cursor = (1 + this.cursor & -1 + ArrayDeque.this.elements.length);
        this.fence = ArrayDeque.this.head;
      }
      this.lastRet = -1;
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.imagecache.ArrayDeque
 * JD-Core Version:    0.6.2
 */