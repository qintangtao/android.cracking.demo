package com.hsg.sdk.common.http;

public class ErrorMsg
{
  public int errorCode;
  public String errorMessage;

  public String toString()
  {
    return "errorCode : " + this.errorCode + " || errorMsg : " + this.errorMessage;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.http.ErrorMsg
 * JD-Core Version:    0.6.2
 */