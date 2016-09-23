package com.jh.net;

import com.jh.exception.JHException;

public class JHIOException extends JHException
{
  private static final long serialVersionUID = 7026144800061851010L;

  public JHIOException()
  {
  }

  public JHIOException(Exception paramException)
  {
    super(paramException);
  }

  public String getMessage()
  {
    return "读取数据异常";
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.net.JHIOException
 * JD-Core Version:    0.6.2
 */