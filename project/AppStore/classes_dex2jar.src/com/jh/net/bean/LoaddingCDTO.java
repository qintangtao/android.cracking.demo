package com.jh.net.bean;

import java.util.List;

public class LoaddingCDTO
{
  private String AppId;
  private int BizCode;
  private List<DomainInfoCDTO> DomainInfo;
  private String UserId;

  public String getAppId()
  {
    return this.AppId;
  }

  public int getBizCode()
  {
    return this.BizCode;
  }

  public List<DomainInfoCDTO> getDomainInfo()
  {
    return this.DomainInfo;
  }

  public String getUserId()
  {
    return this.UserId;
  }

  public void setAppId(String paramString)
  {
    this.AppId = paramString;
  }

  public void setBizCode(int paramInt)
  {
    this.BizCode = paramInt;
  }

  public void setDomainInfo(List<DomainInfoCDTO> paramList)
  {
    this.DomainInfo = paramList;
  }

  public void setUserId(String paramString)
  {
    this.UserId = paramString;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.net.bean.LoaddingCDTO
 * JD-Core Version:    0.6.2
 */