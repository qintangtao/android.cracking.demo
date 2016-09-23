package com.jh.net;

import com.jh.net.bean.DomainInfoCDTO;
import com.jh.net.bean.ResultDTO;
import java.util.List;

public abstract interface GetWebIP
{
  public abstract List<ResultDTO> getAddresses(String paramString, int paramInt1, int paramInt2);

  public abstract List<ResultDTO> getAddresses(List<DomainInfoCDTO> paramList, int paramInt);

  public abstract String getUserId();
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.net.GetWebIP
 * JD-Core Version:    0.6.2
 */