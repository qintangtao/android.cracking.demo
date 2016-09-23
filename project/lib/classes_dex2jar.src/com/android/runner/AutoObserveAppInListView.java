package com.android.runner;

import android.graphics.Rect;
import com.android.models.NodeInfo;
import com.android.uiautomator.core.UiDevice;
import com.android.uiautomator.core.UiObjectNotFoundException;
import com.android.uiautomator.core.UiScrollable;
import com.android.uiautomator.core.UiSelector;
import com.android.uiautomator.testrunner.UiAutomatorTestCase;
import com.android.utils.WindowHelper;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class AutoObserveAppInListView extends UiAutomatorTestCase
{
  static int getuierrortimes = 0;
  String[] BlockKeyList = { "false", "已禁止" };
  String[] CheckBoxClassList = { "com.oppo.widget.OppoSwitch", "android.widget.CheckBox", "android.widget.Switch" };
  public List<NodeInfo> ListViews = new ArrayList();
  long lastmillis = 0L;

  private void DeepEach(List<UImodel> paramList, NodeInfo paramNodeInfo)
  {
    ArrayList localArrayList = new ArrayList();
    GetAllLeafNode(paramNodeInfo, "", 0, localArrayList);
    Iterator localIterator1 = localArrayList.iterator();
    while (localIterator1.hasNext())
    {
      NodeInfo localNodeInfo = (NodeInfo)localIterator1.next();
      if ((localNodeInfo.class_.equals("android.widget.TextView")) || (isCheckBox(localNodeInfo.class_)) || (localNodeInfo.class_.equals("android.widget.Button")))
      {
        String str = "";
        if (localNodeInfo.class_.equals("android.widget.TextView"))
          str = localNodeInfo.text;
        while (true)
        {
          Iterator localIterator2 = paramList.iterator();
          UImodel localUImodel2;
          do
          {
            boolean bool = localIterator2.hasNext();
            i = 0;
            if (!bool)
              break;
            localUImodel2 = (UImodel)localIterator2.next();
          }
          while ((!localUImodel2.Class.equals(localNodeInfo.class_)) || (!localUImodel2.Path.equals(localNodeInfo.DeepPathABS)));
          if (!localUImodel2.Value.contains(str))
            localUImodel2.Value.add(str);
          int i = 1;
          if (i != 0)
            break;
          UImodel localUImodel1 = new UImodel();
          localUImodel1.Class = localNodeInfo.class_;
          localUImodel1.Path = localNodeInfo.DeepPathABS;
          HashSet localHashSet = new HashSet();
          localHashSet.add(str);
          localUImodel1.Value = localHashSet;
          paramList.add(localUImodel1);
          break;
          if (isCheckBox(localNodeInfo.class_))
          {
            if (localNodeInfo.checked);
            for (str = "true"; ; str = "false")
              break;
          }
          if (localNodeInfo.class_.equals("android.widget.Button"))
            str = localNodeInfo.text;
        }
      }
    }
  }

  private void GetAllLeafNode(NodeInfo paramNodeInfo, String paramString, int paramInt, List<NodeInfo> paramList)
  {
    if (paramNodeInfo.CNodeInfo.size() > 0)
      for (int i = 0; i < paramNodeInfo.CNodeInfo.size(); i++)
        GetAllLeafNode((NodeInfo)paramNodeInfo.CNodeInfo.get(i), paramString, i, paramList);
    paramNodeInfo.DeepPathABS = (paramString + "/" + paramInt);
    paramList.add(paramNodeInfo);
  }

  private void GetNodeInfoByNode(NodeInfo paramNodeInfo, Node paramNode)
  {
    NamedNodeMap localNamedNodeMap = paramNode.getAttributes();
    if (localNamedNodeMap != null)
    {
      int i = 0;
      if (i < localNamedNodeMap.getLength())
      {
        Attr localAttr = (Attr)localNamedNodeMap.item(i);
        String str1 = localAttr.getName();
        String str2 = localAttr.getValue();
        if (str1.equals("bounds"))
        {
          String[] arrayOfString = str2.replace("[", "").split("]");
          paramNodeInfo.bounds.left = Integer.parseInt(arrayOfString[0].split(",")[0]);
          paramNodeInfo.bounds.top = Integer.parseInt(arrayOfString[0].split(",")[1]);
          paramNodeInfo.bounds.right = Integer.parseInt(arrayOfString[1].split(",")[0]);
          paramNodeInfo.bounds.bottom = Integer.parseInt(arrayOfString[1].split(",")[1]);
        }
        while (true)
        {
          i++;
          break;
          if (str1.equals("checkable"))
          {
            if (str2.indexOf("false") > -1);
            for (boolean bool10 = false; ; bool10 = true)
            {
              paramNodeInfo.checkable = bool10;
              break;
            }
          }
          if (str1.equals("checked"))
          {
            if (str2.indexOf("false") > -1);
            for (boolean bool9 = false; ; bool9 = true)
            {
              paramNodeInfo.checked = bool9;
              break;
            }
          }
          if (str1.equals("class"))
          {
            paramNodeInfo.class_ = str2;
            if (str2.equals("android.widget.ListView"))
              this.ListViews.add(paramNodeInfo);
          }
          else
          {
            if (str1.equals("clickable"))
            {
              if (str2.indexOf("false") > -1);
              for (boolean bool8 = false; ; bool8 = true)
              {
                paramNodeInfo.clickable = bool8;
                break;
              }
            }
            if (str1.equals("content-desc"))
            {
              paramNodeInfo.content_desc = str2;
            }
            else
            {
              if (str1.equals("enabled"))
              {
                if (str2.indexOf("false") > -1);
                for (boolean bool7 = false; ; bool7 = true)
                {
                  paramNodeInfo.enabled = bool7;
                  break;
                }
              }
              if (str1.equals("focusable"))
              {
                if (str2.indexOf("false") > -1);
                for (boolean bool6 = false; ; bool6 = true)
                {
                  paramNodeInfo.focusable = bool6;
                  break;
                }
              }
              if (str1.equals("focused"))
              {
                if (str2.indexOf("false") > -1);
                for (boolean bool5 = false; ; bool5 = true)
                {
                  paramNodeInfo.focused = bool5;
                  break;
                }
              }
              if (str1.equals("index"))
              {
                paramNodeInfo.index = Integer.parseInt(str2);
              }
              else
              {
                if (str1.equals("long-clickable"))
                {
                  if (str2.indexOf("false") > -1);
                  for (boolean bool4 = false; ; bool4 = true)
                  {
                    paramNodeInfo.long_clickable = bool4;
                    break;
                  }
                }
                if (str1.equals("package"))
                {
                  paramNodeInfo.package_ = str2;
                }
                else
                {
                  if (str1.equals("password"))
                  {
                    if (str2.indexOf("false") > -1);
                    for (boolean bool3 = false; ; bool3 = true)
                    {
                      paramNodeInfo.password = bool3;
                      break;
                    }
                  }
                  if (str1.equals("resource-id"))
                  {
                    paramNodeInfo.resource_id = str2;
                  }
                  else
                  {
                    if (str1.equals("scrollable"))
                    {
                      if (str2.indexOf("false") > -1);
                      for (boolean bool2 = false; ; bool2 = true)
                      {
                        paramNodeInfo.scrollable = bool2;
                        break;
                      }
                    }
                    if (str1.equals("selected"))
                    {
                      if (str2.indexOf("false") > -1);
                      for (boolean bool1 = false; ; bool1 = true)
                      {
                        paramNodeInfo.selected = bool1;
                        break;
                      }
                    }
                    if (str1.equals("text"))
                      paramNodeInfo.text = str2;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  private List<UImodel> GetUImodel(NodeInfo paramNodeInfo)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramNodeInfo.CNodeInfo.iterator();
    while (localIterator.hasNext())
      DeepEach(localArrayList, (NodeInfo)localIterator.next());
    return localArrayList;
  }

  private void GetXMLTree(Node paramNode, NodeInfo paramNodeInfo)
  {
    NodeList localNodeList = paramNode.getChildNodes();
    int i = localNodeList.getLength();
    if (i > 0)
    {
      paramNodeInfo.CNodeInfo = new ArrayList();
      for (int j = 0; j < i; j++)
      {
        Node localNode = localNodeList.item(j);
        NodeInfo localNodeInfo = new NodeInfo();
        GetNodeInfoByNode(localNodeInfo, localNode);
        localNodeInfo.PNodeInfo = paramNodeInfo;
        GetXMLTree(localNode, localNodeInfo);
        paramNodeInfo.CNodeInfo.add(localNodeInfo);
      }
    }
  }

  private boolean isCheckBox(String paramString)
  {
    String[] arrayOfString = this.CheckBoxClassList;
    int i = arrayOfString.length;
    for (int j = 0; j < i; j++)
      if (paramString.equals(arrayOfString[j]))
        return true;
    return false;
  }

  private PathLable observerlist(NodeInfo paramNodeInfo)
  {
    NodeInfo localNodeInfo = GetMainListView();
    if (localNodeInfo == null)
    {
      System.out.println("can not find any listview");
      return null;
    }
    List localList = GetUImodel(localNodeInfo);
    System.out.println("get uimodellist count:" + localList.size());
    if (localList.size() < 2)
    {
      System.out.println("can not find appname and click keyvalue");
      return null;
    }
    String str1 = "";
    int i = 0;
    String str2 = "";
    int j = 0;
    Iterator localIterator1 = localList.iterator();
    while (localIterator1.hasNext())
    {
      UImodel localUImodel = (UImodel)localIterator1.next();
      String str3 = "path:" + localUImodel.Path + ",class:" + localUImodel.Class;
      Iterator localIterator2 = localUImodel.Value.iterator();
      while (localIterator2.hasNext())
      {
        String str5 = (String)localIterator2.next();
        str3 = str3 + str5 + ",";
      }
      System.out.println(str3);
      if (localUImodel.Value.size() > i)
      {
        str1 = localUImodel.Path + "@" + localUImodel.Class;
        i = localUImodel.Value.size();
      }
      if ((localUImodel.Value.size() == 2) || (localUImodel.Value.size() == 1))
      {
        String str4 = localUImodel.Value.toString();
        if (j < 1)
        {
          str2 = localUImodel.Path + "@" + localUImodel.Class;
          j = 1;
        }
        if ((j < 2) && ((str4.indexOf("允许") > -1) || (str4.indexOf("禁止") > -1) || (str4.indexOf("禁用") > -1)))
        {
          str2 = localUImodel.Path + "@" + localUImodel.Class;
          j = 2;
        }
        if ((j < 5) && (isCheckBox(localUImodel.Class)))
        {
          str2 = localUImodel.Path + "@" + localUImodel.Class;
          j = 5;
        }
      }
    }
    if ((str1.equals("")) || (str2.equals("")))
    {
      System.out.println("can not find app lable or switch lable");
      return null;
    }
    PathLable localPathLable = new PathLable(null);
    localPathLable.AppName = str1;
    localPathLable.Switch = str2;
    localPathLable.ListView = localNodeInfo;
    return localPathLable;
  }

  public void AutoCheckAPP_List_Sleep_v1(boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    AutoCheckAPP_List_v1_core(paramBoolean1, paramBoolean2, paramInt);
  }

  public void AutoCheckAPP_List_v1(boolean paramBoolean1, boolean paramBoolean2)
  {
    AutoCheckAPP_List_v1_core(paramBoolean1, paramBoolean2, 0);
  }

  public void AutoCheckAPP_List_v1_core(boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    if (paramBoolean1)
      System.out.println("PutBackFront fail");
    PathLable localPathLable;
    do
    {
      return;
      if (paramBoolean2)
      {
        System.out.println("IsdynamicView fail");
        return;
      }
      localPathLable = observerlist(GetUI());
    }
    while (localPathLable == null);
    Object localObject = "";
    while (true)
    {
      String str = ScrollClickApp(localPathLable, paramInt);
      if (((String)localObject).equals(str))
        break;
      localObject = str;
      UiScrollable localUiScrollable = new UiScrollable(new UiSelector().className("android.widget.ListView").resourceId(localPathLable.ListView.resource_id));
      try
      {
        Rect localRect2 = localUiScrollable.getVisibleBounds();
        localRect1 = localRect2;
        if (localRect1 != null)
        {
          boolean bool = UiDevice.getInstance().swipe((localRect1.right - localRect1.left) / 2 + localRect1.left, localRect1.bottom - (localRect1.bottom - localRect1.top) / 10, (localRect1.right - localRect1.left) / 2 + localRect1.left, localRect1.top + (localRect1.bottom - localRect1.top) / 10, 50);
          System.out.println("swbool:" + bool);
        }
      }
      catch (UiObjectNotFoundException localUiObjectNotFoundException)
      {
        try
        {
          Thread.sleep(1000L);
          GetUI();
          continue;
          localUiObjectNotFoundException = localUiObjectNotFoundException;
          localUiObjectNotFoundException.printStackTrace();
          Rect localRect1 = null;
        }
        catch (InterruptedException localInterruptedException)
        {
          while (true)
            localInterruptedException.printStackTrace();
        }
      }
    }
  }

  NodeInfo GetMainListView()
  {
    if (this.ListViews.size() > 0)
    {
      Iterator localIterator = this.ListViews.iterator();
      if (localIterator.hasNext())
        return (NodeInfo)localIterator.next();
    }
    return null;
  }

  public NodeInfo GetUI()
  {
    try
    {
      this.ListViews = new ArrayList();
      Node localNode = WindowHelper.getWindowHierarchyXML().getElementsByTagName("hierarchy").item(0).getFirstChild();
      NodeInfo localNodeInfo = new NodeInfo();
      GetNodeInfoByNode(localNodeInfo, localNode);
      GetXMLTree(localNode, localNodeInfo);
      return localNodeInfo;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      int i = getuierrortimes;
      getuierrortimes = i + 1;
      if (i > 50)
        return null;
    }
    return GetUI();
  }

  public boolean ProcessApp(String paramString1, String paramString2)
  {
    int i = 1;
    String[] arrayOfString = this.BlockKeyList;
    int j = arrayOfString.length;
    for (int k = 0; ; k++)
      if (k < j)
      {
        if (paramString2.equals(arrayOfString[k]))
          i = 0;
      }
      else
      {
        if ((i ^ Run.AppIsNeedAutoStart(paramString1)) == 0)
          break;
        return true;
      }
    return false;
  }

  String ScrollClickApp(PathLable paramPathLable, int paramInt)
  {
    NodeInfo localNodeInfo1 = GetMainListView();
    String str1 = "";
    Iterator localIterator1 = localNodeInfo1.CNodeInfo.iterator();
    while (localIterator1.hasNext())
    {
      NodeInfo localNodeInfo2 = (NodeInfo)localIterator1.next();
      ArrayList localArrayList = new ArrayList();
      GetAllLeafNode(localNodeInfo2, "", 0, localArrayList);
      int i = 0;
      String str2 = "";
      Rect localRect = null;
      Iterator localIterator2 = localArrayList.iterator();
      while (localIterator2.hasNext())
      {
        NodeInfo localNodeInfo3 = (NodeInfo)localIterator2.next();
        String str3 = localNodeInfo3.DeepPathABS + "@" + localNodeInfo3.class_;
        if (str3.equals(paramPathLable.AppName))
        {
          if (!localNodeInfo3.text.equals(""))
          {
            str1 = localNodeInfo3.text;
            i++;
          }
          else
          {
            System.out.println("App name is empty");
          }
        }
        else if (str3.equals(paramPathLable.Switch))
        {
          i += 2;
          if (localNodeInfo3.class_.equals("android.widget.TextView"))
            str2 = localNodeInfo3.text;
          while (true)
          {
            localRect = localNodeInfo3.bounds;
            break;
            if (isCheckBox(localNodeInfo3.class_))
            {
              if (localNodeInfo3.checked);
              for (str2 = "true"; ; str2 = "false")
                break;
            }
            if (localNodeInfo3.class_.equals("android.widget.Button"))
              str2 = localNodeInfo3.text;
          }
        }
      }
      if (i == 3)
      {
        System.out.println("find app:" + str1 + ",text:" + str2);
        if (ProcessApp(str1, str2))
        {
          long l2;
          if (paramInt > 0)
          {
            long l1 = System.currentTimeMillis();
            l2 = paramInt - (l1 - this.lastmillis);
            if (l2 <= 0L);
          }
          try
          {
            System.out.println("Sleep:" + l2);
            Thread.sleep(l2);
            this.lastmillis = System.currentTimeMillis();
            UiDevice.getInstance().click(localRect.left, localRect.top);
          }
          catch (InterruptedException localInterruptedException)
          {
            while (true)
              localInterruptedException.printStackTrace();
          }
        }
      }
      else
      {
        System.out.println("More key times error:" + i);
      }
    }
    return str1;
  }

  private class PathLable
  {
    public String AppName;
    public NodeInfo ListView;
    public String Switch;

    private PathLable()
    {
    }
  }

  public class UImodel
  {
    public String Class;
    public boolean IsAPPName = false;
    public boolean IsStatCode = false;
    public String Path;
    public HashSet<String> Value;

    public UImodel()
    {
    }
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.AutoObserveAppInListView
 * JD-Core Version:    0.6.2
 */