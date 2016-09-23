package com.android.models;

import android.graphics.Rect;

public class NodeItem
{
  private boolean isSwitch;
  private String nodeText;
  private Rect swtichBounds;
  private String xml;

  public String getNodeText()
  {
    return this.nodeText;
  }

  public Rect getSwtichBounds()
  {
    return this.swtichBounds;
  }

  public String getXml()
  {
    return this.xml;
  }

  public boolean isSwitch()
  {
    return this.isSwitch;
  }

  public void setNodeText(String paramString)
  {
    this.nodeText = paramString;
  }

  public void setSwitch(boolean paramBoolean)
  {
    this.isSwitch = paramBoolean;
  }

  public void setSwtichBounds(Rect paramRect)
  {
    this.swtichBounds = paramRect;
  }

  public void setXml(String paramString)
  {
    this.xml = paramString;
  }

  public String toString()
  {
    return "[nodeText:" + this.nodeText + ",isSwtich:" + this.isSwitch + ",swtichBounds:" + this.swtichBounds.toString() + "]";
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.models.NodeItem
 * JD-Core Version:    0.6.2
 */