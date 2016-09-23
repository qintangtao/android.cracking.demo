package com.youqicai.speed;

import java.io.Serializable;

public class DeskTopGameItem
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  public String icon;
  public String id;
  public int layoutType;
  public String name;
  public String pname;

  public DeskTopGameItem clone()
    throws CloneNotSupportedException
  {
    try
    {
      DeskTopGameItem localDeskTopGameItem = (DeskTopGameItem)super.clone();
      return localDeskTopGameItem;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
    }
    return null;
  }

  public int getLayoutType()
  {
    return this.layoutType;
  }

  public void setLayoutType(int paramInt)
  {
    this.layoutType = paramInt;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.speed.DeskTopGameItem
 * JD-Core Version:    0.6.2
 */