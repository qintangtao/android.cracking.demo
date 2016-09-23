package com.jh.net.bean;

public enum WebSiteStatusEnum
{
  int value;

  static
  {
    Available = new WebSiteStatusEnum("Available", 1, 1);
    WebSiteStatusEnum[] arrayOfWebSiteStatusEnum = new WebSiteStatusEnum[2];
    arrayOfWebSiteStatusEnum[0] = Disable;
    arrayOfWebSiteStatusEnum[1] = Available;
  }

  private WebSiteStatusEnum(int arg3)
  {
    int j;
    this.value = j;
  }

  public int getValue()
  {
    return this.value;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.net.bean.WebSiteStatusEnum
 * JD-Core Version:    0.6.2
 */