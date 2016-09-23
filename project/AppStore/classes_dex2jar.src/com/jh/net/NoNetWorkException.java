package com.jh.net;

import com.jh.exception.JHException;

public class NoNetWorkException extends JHException
{
  private static final long serialVersionUID = 4979892205466357307L;

  public String getMessage()
  {
    return "无网络";
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.net.NoNetWorkException
 * JD-Core Version:    0.6.2
 */