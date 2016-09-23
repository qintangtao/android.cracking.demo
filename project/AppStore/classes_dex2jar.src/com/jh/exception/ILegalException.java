package com.jh.exception;

public class ILegalException extends JHException
{
  private static final long serialVersionUID = -9056311235505576826L;

  public String getMessage()
  {
    return "数据不合法";
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.exception.ILegalException
 * JD-Core Version:    0.6.2
 */