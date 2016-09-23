package com.lidroid.xutils.exception;

public class DbException extends BaseException
{
  private static final long serialVersionUID = 1L;

  public DbException()
  {
  }

  public DbException(String paramString)
  {
    super(paramString);
  }

  public DbException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public DbException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.exception.DbException
 * JD-Core Version:    0.6.2
 */