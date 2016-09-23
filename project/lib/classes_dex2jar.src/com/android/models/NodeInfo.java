package com.android.models;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.List;

public class NodeInfo
{
  public List<NodeInfo> CNodeInfo = new ArrayList();
  public String DeepPathABS = "";
  public NodeInfo PNodeInfo = null;
  public Rect bounds = new Rect();
  public boolean checkable;
  public boolean checked;
  public String class_;
  public boolean clickable;
  public String content_desc;
  public boolean enabled;
  public boolean focusable;
  public boolean focused;
  public int index;
  public boolean long_clickable;
  public String package_;
  public boolean password;
  public String resource_id;
  public boolean scrollable;
  public boolean selected;
  public String text;
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.models.NodeInfo
 * JD-Core Version:    0.6.2
 */