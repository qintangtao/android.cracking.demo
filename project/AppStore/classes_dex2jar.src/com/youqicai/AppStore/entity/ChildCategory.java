package com.youqicai.AppStore.entity;

import java.io.Serializable;

public class ChildCategory
  implements Serializable
{
  private String dataUrl;
  private String tagId;
  private String tagName;

  public String getDataUrl()
  {
    return this.dataUrl;
  }

  public String getTagId()
  {
    return this.tagId;
  }

  public String getTagName()
  {
    return this.tagName;
  }

  public void setDataUrl(String paramString)
  {
    this.dataUrl = paramString;
  }

  public void setTagId(String paramString)
  {
    this.tagId = paramString;
  }

  public void setTagName(String paramString)
  {
    this.tagName = paramString;
  }

  public String toString()
  {
    return "ChildCategory{tagId='" + this.tagId + '\'' + ", tagName='" + this.tagName + '\'' + ", dataUrl='" + this.dataUrl + '\'' + '}';
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.entity.ChildCategory
 * JD-Core Version:    0.6.2
 */