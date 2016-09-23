package com.jh.net.bean;

import java.util.List;

public class UrlDTO
{
  public static final int URL_COULD_NOT_USE = 1;
  public static final int URL_COULD_USE;
  List<ResponseDTO> reses;
  int status = 0;
  String url;

  public List<ResponseDTO> getReses()
  {
    return this.reses;
  }

  public int getStatus()
  {
    return this.status;
  }

  public String getUrl()
  {
    return this.url;
  }

  public void setReses(List<ResponseDTO> paramList)
  {
    this.reses = paramList;
  }

  public void setStatus(int paramInt)
  {
    this.status = paramInt;
  }

  public void setUrl(String paramString)
  {
    this.url = paramString;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.net.bean.UrlDTO
 * JD-Core Version:    0.6.2
 */