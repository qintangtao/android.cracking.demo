package com.jh.net.bean;

public class ResponseDTO
{
  int responseCode;
  long responseTime;

  public int getResponseCode()
  {
    return this.responseCode;
  }

  public long getResponseTime()
  {
    return this.responseTime;
  }

  public void setResponseCode(int paramInt)
  {
    this.responseCode = paramInt;
  }

  public void setResponseTime(long paramLong)
  {
    this.responseTime = paramLong;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.net.bean.ResponseDTO
 * JD-Core Version:    0.6.2
 */