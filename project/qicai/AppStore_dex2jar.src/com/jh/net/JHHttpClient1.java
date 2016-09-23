package com.jh.net;

import com.jh.exception.JHException;

public class JHHttpClient1 extends IHttpRetryService
  implements IClient
{
  private void initValue(IHttpRetryService paramIHttpRetryService)
  {
    paramIHttpRetryService.setCharset(getCharset());
    paramIHttpRetryService.setConnectTimeout(getConnectTimeout());
    paramIHttpRetryService.setDataFormat(getDataFormat());
    paramIHttpRetryService.setHeaders(getHeaders());
    paramIHttpRetryService.setReadTimeout(getReadTimeout());
    paramIHttpRetryService.setRetryTimes(getRetryTimes());
    paramIHttpRetryService.setRetryInterval(getRetryInterval());
  }

  public JHHttpClient.HttpContent getContent(String paramString)
    throws JHException
  {
    int i = getRetryTimes();
    while (true)
    {
      if (i <= 0)
        return null;
      try
      {
        JHHttpGet localJHHttpGet = new JHHttpGet();
        initValue(localJHHttpGet);
        JHHttpClient.HttpContent localHttpContent = localJHHttpGet.getContent(paramString);
        return localHttpContent;
      }
      catch (JHException localJHException)
      {
        if (i == 1)
          throw localJHException;
        i--;
        try
        {
          Thread.sleep(getRetryInterval());
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
  }

  public String request(String paramString1, String paramString2)
    throws JHException
  {
    return null;
  }

  public byte[] requestByte(String paramString1, String paramString2)
    throws JHException
  {
    return null;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.net.JHHttpClient1
 * JD-Core Version:    0.6.2
 */