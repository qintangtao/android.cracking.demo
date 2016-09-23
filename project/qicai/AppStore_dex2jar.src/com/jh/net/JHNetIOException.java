package com.jh.net;

public class JHNetIOException extends JHIOException
{
  private static final long serialVersionUID = 5601457664982037832L;

  public JHNetIOException()
  {
  }

  public JHNetIOException(Exception paramException)
  {
    super(paramException);
  }

  public String getMessage()
  {
    return "网络请求错误";
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.net.JHNetIOException
 * JD-Core Version:    0.6.2
 */