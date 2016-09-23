package com.jh.exception;

public class JHException extends RuntimeException
{
  private static final long serialVersionUID = 7290998729894906365L;

  public JHException()
  {
  }

  public JHException(Exception paramException)
  {
    super(paramException);
  }

  public JHException(String paramString)
  {
    super(paramString);
  }

  public String getDefaultMessage()
  {
    return "";
  }

  public String getMessage()
  {
    if (super.getMessage() != null)
      return super.getMessage();
    return getDefaultMessage();
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.exception.JHException
 * JD-Core Version:    0.6.2
 */