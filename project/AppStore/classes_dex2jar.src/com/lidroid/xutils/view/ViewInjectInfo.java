package com.lidroid.xutils.view;

public class ViewInjectInfo
{
  public int parentId;
  public Object value;

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    ViewInjectInfo localViewInjectInfo;
    do
    {
      return true;
      if (!(paramObject instanceof ViewInjectInfo))
        return false;
      localViewInjectInfo = (ViewInjectInfo)paramObject;
      if (this.parentId != localViewInjectInfo.parentId)
        return false;
      if (this.value != null)
        break;
    }
    while (localViewInjectInfo.value == null);
    return false;
    return this.value.equals(localViewInjectInfo.value);
  }

  public int hashCode()
  {
    return 31 * this.value.hashCode() + this.parentId;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.view.ViewInjectInfo
 * JD-Core Version:    0.6.2
 */