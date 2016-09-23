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

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.http.ErrorMsg
 * JD-Core Version:    0.6.2
 */