package com.jh.net;

public class JHMalformedURLException extends JHIOException
{
  private static final long serialVersionUID = 2555703391440366773L;

  public JHMalformedURLException(Exception paramException)
  {
    super(paramException);
  }

  public String getMessage()
  {
    return "非法的服务地址";
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.net.JHMalformedURLException
 * JD-Core Version:    0.6.2
 */