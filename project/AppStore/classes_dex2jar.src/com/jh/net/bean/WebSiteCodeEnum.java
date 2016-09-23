package com.jh.net.bean;

public enum WebSiteCodeEnum
{
  int value = 0;

  static
  {
    CTCC = new WebSiteCodeEnum("CTCC", 2, 3);
    WebSiteCodeEnum[] arrayOfWebSiteCodeEnum = new WebSiteCodeEnum[3];
    arrayOfWebSiteCodeEnum[0] = CMCC;
    arrayOfWebSiteCodeEnum[1] = CUCC;
    arrayOfWebSiteCodeEnum[2] = CTCC;
  }

  private WebSiteCodeEnum(int arg3)
  {
    int j;
    this.value = j;
  }

  public int getValue()
  {
    return this.value;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.net.bean.WebSiteCodeEnum
 * JD-Core Version:    0.6.2
 */