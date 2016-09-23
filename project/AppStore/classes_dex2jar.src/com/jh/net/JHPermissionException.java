package com.jh.net;

import com.jh.exception.JHException;

public class JHPermissionException extends JHException
{
  private static final long serialVersionUID = 7952867004226065293L;

  public String getMessage()
  {
    return "不被授权的程序";
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.net.JHPermissionException
 * JD-Core Version:    0.6.2
 */