package com.lidroid.xutils.exception;

public class BaseException extends Exception
{
  private static final long serialVersionUID = 1L;

  public BaseException()
  {
  }

  public BaseException(String paramString)
  {
    super(paramString);
  }

  public BaseException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public BaseException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.exception.BaseException
 * JD-Core Version:    0.6.2
 */