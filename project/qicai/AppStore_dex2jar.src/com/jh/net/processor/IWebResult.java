package com.jh.net.processor;

public abstract interface IWebResult<T>
{
  public abstract void failed(int paramInt, Exception paramException);

  public abstract void success(T paramT);
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.net.processor.IWebResult
 * JD-Core Version:    0.6.2
 */