package com.youqicai.AppStore.entity;

import java.io.Serializable;

public class BannerItem
  implements Serializable
{
  private String bannerUrl;
  private String dataUrl;
  private String description;
  private String iconUrl;
  private String tagUrl;
  private String target;
  private String title;

  public String getBannerUrl()
  {
    return this.bannerUrl;
  }

  public String getDataUrl()
  {
    return this.dataUrl;
  }

  public String getDescription()
  {
    return this.description;
  }

  public String getIconUrl()
  {
    return this.iconUrl;
  }

  public String getTagUrl()
  {
    return this.tagUrl;
  }

  public String getTarget()
  {
    return this.target;
  }

  public String getTitle()
  {
    return this.title;
  }

  public void setBannerUrl(String paramString)
  {
    this.bannerUrl = paramString;
  }

  public void setDataUrl(String paramString)
  {
    this.dataUrl = paramString;
  }

  public void setDescription(String paramString)
  {
    this.description = paramString;
  }

  public void setIconUrl(String paramString)
  {
    this.iconUrl = paramString;
  }

  public void setTagUrl(String paramString)
  {
    this.tagUrl = paramString;
  }

  public void setTarget(String paramString)
  {
    this.target = paramString;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.entity.BannerItem
 * JD-Core Version:    0.6.2
 */