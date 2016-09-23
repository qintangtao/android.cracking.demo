package com.jh.net;

import com.jh.exception.JHException;

public abstract interface IClient
{
  public abstract String request(String paramString1, String paramString2)
    throws JHException;

  public abstract byte[] requestByte(String paramString1, String paramString2)
    throws JHException;
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.net.IClient
 * JD-Core Version:    0.6.2
 */