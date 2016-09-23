package com.jh.app.util;

public abstract interface IResultCallBack<T>
{
  public abstract void fail(String paramString);

  public abstract void success(T paramT);
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.app.util.IResultCallBack
 * JD-Core Version:    0.6.2
 */