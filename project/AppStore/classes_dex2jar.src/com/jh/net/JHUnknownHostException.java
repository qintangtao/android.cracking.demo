package com.jh.net;

public class JHUnknownHostException extends JHIOException
{
  public JHUnknownHostException(Exception paramException)
  {
    super(paramException);
  }

  public String getMessage()
  {
    return "无法连接的主机地址";
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.net.JHUnknownHostException
 * JD-Core Version:    0.6.2
 */