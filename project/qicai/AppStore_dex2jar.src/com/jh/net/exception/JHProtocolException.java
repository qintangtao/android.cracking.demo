package com.jh.net.exception;

import com.jh.net.JHIOException;

public class JHProtocolException extends JHIOException
{
  public JHProtocolException(Exception paramException)
  {
    super(paramException);
  }

  public String getMessage()
  {
    return "错误的通讯协议";
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.net.exception.JHProtocolException
 * JD-Core Version:    0.6.2
 */