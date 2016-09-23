package com.jh.net;

import com.jh.exception.JHException;

public class JHConnectionException extends JHException
{
  private static final long serialVersionUID = -3678138775403090892L;

  public String getMessage()
  {
    return "服务器连接超时";
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.net.JHConnectionException
 * JD-Core Version:    0.6.2
 */