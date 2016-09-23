package com.youqicai.AppStore.entity;

import java.io.Serializable;
import java.util.ArrayList;

public class Category
  implements Serializable
{
  private String categoryId;
  private String categoryName;
  private ArrayList<ChildCategory> childList;
  private String dataUrl;
  private String iconUrl;

  public String getCategoryId()
  {
    return this.categoryId;
  }

  public String getCategoryName()
  {
    return this.categoryName;
  }

  public ArrayList<ChildCategory> getChildList()
  {
    return this.childList;
  }

  public String getDataUrl()
  {
    return this.dataUrl;
  }

  public String getIconUrl()
  {
    return this.iconUrl;
  }

  public void setCategoryId(String paramString)
  {
    this.categoryId = paramString;
  }

  public void setCategoryName(String paramString)
  {
    this.categoryName = paramString;
  }

  public void setChildList(ArrayList<ChildCategory> paramArrayList)
  {
    this.childList = paramArrayList;
  }

  public void setDataUrl(String paramString)
  {
    this.dataUrl = paramString;
  }

  public void setIconUrl(String paramString)
  {
    this.iconUrl = paramString;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.entity.Category
 * JD-Core Version:    0.6.2
 */