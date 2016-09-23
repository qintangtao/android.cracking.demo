package com.jh.net.bean;

import java.util.List;

public class ResultDTO
{
  private int BizCode;
  private List<WebSiteCDTO> WebSiteCDTO;

  public int getBizCode()
  {
    return this.BizCode;
  }

  public List<WebSiteCDTO> getWebSiteCDTO()
  {
    return this.WebSiteCDTO;
  }

  public void setBizCode(int paramInt)
  {
    this.BizCode = paramInt;
  }

  public void setWebSiteCDTO(List<WebSiteCDTO> paramList)
  {
    this.WebSiteCDTO = paramList;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.net.bean.ResultDTO
 * JD-Core Version:    0.6.2
 */