package com.jh.exception;

public class ILegalException extends JHException
{
  private static final long serialVersionUID = -9056311235505576826L;

  public String getMessage()
  {
    return "数据不合法";
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.exception.ILegalException
 * JD-Core Version:    0.6.2
 */