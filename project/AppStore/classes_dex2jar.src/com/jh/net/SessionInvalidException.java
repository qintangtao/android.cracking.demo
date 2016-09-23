package com.jh.net;

import com.jh.exception.JHException;

public class SessionInvalidException extends JHException
{
  private static final long serialVersionUID = 8025563296005515752L;

  public String getMessage()
  {
    return "无网络";
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.net.SessionInvalidException
 * JD-Core Version:    0.6.2
 */