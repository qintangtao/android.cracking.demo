package com.jh.net;

import com.jh.exception.JHException;

public class WebServiceException extends JHException
{
  private static final long serialVersionUID = 4559322935080530654L;

  public String getMessage()
  {
    return "服务调用错误";
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.net.WebServiceException
 * JD-Core Version:    0.6.2
 */