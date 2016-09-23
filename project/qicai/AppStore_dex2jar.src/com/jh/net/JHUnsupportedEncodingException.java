package com.jh.net;

import com.jh.exception.JHException;

public class JHUnsupportedEncodingException extends JHException
{
  private static final long serialVersionUID = -6270715810055963155L;

  public String getMessage()
  {
    return "不支持的编码格式";
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.net.JHUnsupportedEncodingException
 * JD-Core Version:    0.6.2
 */