package com.android.utils;

import android.graphics.Rect;
import com.android.models.NodeItem;
import com.android.uiautomator.core.UiDevice;
import java.io.PrintStream;
import java.util.List;
import org.w3c.dom.Node;

public class AppUtils
{
  public static boolean enableSwitchList(String paramString)
  {
    if (UIHelper.scrollIntoView(paramString))
    {
      UIHelper.sleep(500);
      NodeItem localNodeItem = getNodeItemByListView(WindowHelper.getWindowHierarchy(), paramString);
      if (localNodeItem != null)
      {
        System.out.println(localNodeItem.toString());
        System.out.println(localNodeItem.getXml());
      }
      if ((localNodeItem != null) && (localNodeItem.isSwitch() != true) && (localNodeItem.getSwtichBounds() != null))
      {
        boolean bool1 = UiDevice.getInstance().click(localNodeItem.getSwtichBounds().left, localNodeItem.getSwtichBounds().top);
        if (bool1)
        {
          System.out.println("click LeftAndTop");
          return bool1;
        }
        boolean bool2 = UiDevice.getInstance().click(localNodeItem.getSwtichBounds().right, localNodeItem.getSwtichBounds().bottom);
        if (bool2)
        {
          System.out.println("click RightAndBottom");
          return bool2;
        }
        System.out.println("click failed");
        Rect localRect = localNodeItem.getSwtichBounds();
        int i = (localRect.right - localRect.left) / 2 + localRect.left;
        int j = localRect.bottom - (localRect.bottom - localRect.top) / 10;
        int k = (localRect.right - localRect.left) / 2 + localRect.left;
        int m = 50 + (localRect.top + (localRect.bottom - localRect.top) / 20);
        if (UiDevice.getInstance().swipe(i, j, k, m, 55))
        {
          System.out.println("swipe");
          return true;
        }
        System.out.println("failed!");
      }
      if (localNodeItem != null)
        System.out.println(localNodeItem.toString());
    }
    System.out.println("not switch:" + paramString);
    return false;
  }

  public static boolean enableSwitchResourceId(String paramString1, String paramString2)
  {
    if (UIHelper.scrollIntoView(paramString1))
    {
      NodeItem localNodeItem = getNodeItemByResourceId(WindowHelper.getWindowHierarchy(), paramString1, paramString2);
      if (localNodeItem != null)
      {
        System.out.println(localNodeItem.toString());
        System.out.println(localNodeItem.getXml());
      }
      if ((localNodeItem != null) && (localNodeItem.isSwitch() != true) && (localNodeItem.getSwtichBounds() != null))
        return UiDevice.getInstance().click(localNodeItem.getSwtichBounds().left, localNodeItem.getSwtichBounds().top);
    }
    System.out.println("unable switch:" + paramString1);
    return false;
  }

  private static Rect getBounds(String paramString)
  {
    String str = RegexUtils.getMatch(paramString, "bounds=\"\\[(.*?)\\]\"", 1);
    if (str != null)
    {
      Rect localRect = new Rect();
      String[] arrayOfString = str.replace("][", ",").split(",");
      localRect.left = Integer.parseInt(arrayOfString[0]);
      localRect.top = Integer.parseInt(arrayOfString[1]);
      localRect.right = Integer.parseInt(arrayOfString[2]);
      localRect.bottom = Integer.parseInt(arrayOfString[3]);
      return localRect;
    }
    return null;
  }

  private static Node getChildSwitchNode(Node paramNode)
  {
    String[] arrayOfString = { "com.oppo.widget.OppoSwitch", "android.widget.CheckBox", "android.widget.Switch", "android.widget.ImageSwitcher", "smartisanos.widget.SwitchEx" };
    int i = arrayOfString.length;
    int j = 0;
    Node localNode;
    if (j < i)
    {
      String str2 = arrayOfString[j];
      localNode = XmlUtils.getMatchNode(paramNode, "//node[@class='" + str2 + "']");
      if (localNode == null);
    }
    while (true)
    {
      return localNode;
      j++;
      break;
      localNode = XmlUtils.getMatchNode(paramNode, "//node[@class='android.widget.Button']");
      try
      {
        boolean bool = RegexUtils.exists(XmlUtils.nodeToString(paramNode), "text=.*允许");
        if (bool)
          continue;
      }
      catch (Exception localException1)
      {
        try
        {
          while (true)
          {
            String str1 = XmlUtils.nodeToString(paramNode);
            if (RegexUtils.exists(str1, "class=.*?([S|s]witch)|([C|c]heckBox)"))
              System.out.println("****exits switch****:" + str1);
            return null;
            localException1 = localException1;
            localException1.printStackTrace();
          }
        }
        catch (Exception localException2)
        {
          while (true)
            localException2.printStackTrace();
        }
      }
    }
  }

  private static Node getClickabeNode(Node paramNode)
  {
    return XmlUtils.getMatchNode(paramNode, "//node[@clickable='true']");
  }

  private static Node getLastImageViewNode(Node paramNode)
  {
    List localList = XmlUtils.getMatchNodeList(paramNode, "//node[@class='android.widget.ImageView']");
    if ((localList != null) && (localList.size() > 0))
      return (Node)localList.get(-1 + localList.size());
    return null;
  }

  // ERROR //
  private static NodeItem getNodeItem(String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: ldc 211
    //   5: invokestatic 215	com/android/utils/XmlUtils:parseForDoc	(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;
    //   8: aload_2
    //   9: invokestatic 219	com/android/utils/XmlUtils:parseForNode	(Ljava/lang/Object;Ljava/lang/String;)Lorg/w3c/dom/Node;
    //   12: invokeinterface 223 1 0
    //   17: astore 5
    //   19: iconst_0
    //   20: istore 6
    //   22: iload 6
    //   24: aload 5
    //   26: invokeinterface 228 1 0
    //   31: if_icmpge +222 -> 253
    //   34: aload 5
    //   36: iload 6
    //   38: invokeinterface 232 2 0
    //   43: astore 7
    //   45: aload 7
    //   47: invokestatic 174	com/android/utils/XmlUtils:nodeToString	(Lorg/w3c/dom/Node;)Ljava/lang/String;
    //   50: aload_1
    //   51: invokevirtual 235	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   54: iconst_m1
    //   55: if_icmple +175 -> 230
    //   58: aload 7
    //   60: invokestatic 174	com/android/utils/XmlUtils:nodeToString	(Lorg/w3c/dom/Node;)Ljava/lang/String;
    //   63: astore 8
    //   65: new 37	com/android/models/NodeItem
    //   68: dup
    //   69: invokespecial 236	com/android/models/NodeItem:<init>	()V
    //   72: astore 9
    //   74: aload 9
    //   76: aload 7
    //   78: invokestatic 174	com/android/utils/XmlUtils:nodeToString	(Lorg/w3c/dom/Node;)Ljava/lang/String;
    //   81: invokevirtual 239	com/android/models/NodeItem:setXml	(Ljava/lang/String;)V
    //   84: aload 9
    //   86: aload_1
    //   87: invokevirtual 242	com/android/models/NodeItem:setNodeText	(Ljava/lang/String;)V
    //   90: aload 7
    //   92: invokestatic 244	com/android/utils/AppUtils:getChildSwitchNode	(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    //   95: astore 10
    //   97: aload 9
    //   99: aload 8
    //   101: aload 10
    //   103: invokestatic 247	com/android/utils/AppUtils:isSwitch	(Ljava/lang/String;Lorg/w3c/dom/Node;)Z
    //   106: invokevirtual 251	com/android/models/NodeItem:setSwitch	(Z)V
    //   109: aload 10
    //   111: ifnull +52 -> 163
    //   114: aload 10
    //   116: invokestatic 174	com/android/utils/XmlUtils:nodeToString	(Lorg/w3c/dom/Node;)Ljava/lang/String;
    //   119: invokestatic 253	com/android/utils/AppUtils:getBounds	(Ljava/lang/String;)Landroid/graphics/Rect;
    //   122: astore 11
    //   124: getstatic 35	java/lang/System:out	Ljava/io/PrintStream;
    //   127: new 97	java/lang/StringBuilder
    //   130: dup
    //   131: invokespecial 98	java/lang/StringBuilder:<init>	()V
    //   134: ldc 255
    //   136: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: aload 11
    //   141: invokevirtual 256	android/graphics/Rect:toString	()Ljava/lang/String;
    //   144: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   150: invokevirtual 46	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   153: aload 9
    //   155: aload 11
    //   157: invokevirtual 260	com/android/models/NodeItem:setSwtichBounds	(Landroid/graphics/Rect;)V
    //   160: aload 9
    //   162: areturn
    //   163: aload 7
    //   165: invokestatic 262	com/android/utils/AppUtils:getLastImageViewNode	(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    //   168: astore 12
    //   170: aload 7
    //   172: invokestatic 264	com/android/utils/AppUtils:getClickabeNode	(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    //   175: astore 13
    //   177: aload 12
    //   179: ifnull +16 -> 195
    //   182: aload 12
    //   184: invokestatic 174	com/android/utils/XmlUtils:nodeToString	(Lorg/w3c/dom/Node;)Ljava/lang/String;
    //   187: invokestatic 253	com/android/utils/AppUtils:getBounds	(Ljava/lang/String;)Landroid/graphics/Rect;
    //   190: astore 11
    //   192: goto -68 -> 124
    //   195: aload 13
    //   197: ifnull +16 -> 213
    //   200: aload 13
    //   202: invokestatic 174	com/android/utils/XmlUtils:nodeToString	(Lorg/w3c/dom/Node;)Ljava/lang/String;
    //   205: invokestatic 253	com/android/utils/AppUtils:getBounds	(Ljava/lang/String;)Landroid/graphics/Rect;
    //   208: astore 11
    //   210: goto -86 -> 124
    //   213: aload 7
    //   215: invokestatic 174	com/android/utils/XmlUtils:nodeToString	(Lorg/w3c/dom/Node;)Ljava/lang/String;
    //   218: invokestatic 253	com/android/utils/AppUtils:getBounds	(Ljava/lang/String;)Landroid/graphics/Rect;
    //   221: astore 14
    //   223: aload 14
    //   225: astore 11
    //   227: goto -103 -> 124
    //   230: iinc 6 1
    //   233: goto -211 -> 22
    //   236: astore 4
    //   238: aload 4
    //   240: invokevirtual 186	java/lang/Exception:printStackTrace	()V
    //   243: aload_3
    //   244: areturn
    //   245: astore 4
    //   247: aload 9
    //   249: astore_3
    //   250: goto -12 -> 238
    //   253: aconst_null
    //   254: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   2	19	236	java/lang/Exception
    //   22	74	236	java/lang/Exception
    //   74	109	245	java/lang/Exception
    //   114	124	245	java/lang/Exception
    //   124	160	245	java/lang/Exception
    //   163	177	245	java/lang/Exception
    //   182	192	245	java/lang/Exception
    //   200	210	245	java/lang/Exception
    //   213	223	245	java/lang/Exception
  }

  private static NodeItem getNodeItemByListView(String paramString1, String paramString2)
  {
    return getNodeItem(paramString1, paramString2, "//node[@class='android.widget.ListView']");
  }

  private static NodeItem getNodeItemByResourceId(String paramString1, String paramString2, String paramString3)
  {
    return getNodeItem(paramString1, paramString2, "//node[@resource-id='" + paramString3 + "']");
  }

  private static NodeItem getNodeItemByScrollView(String paramString1, String paramString2)
  {
    return getNodeItem(paramString1, paramString2, "//node[@class='android.widget.ScrollView']");
  }

  private static boolean isSwitch(String paramString, Node paramNode)
  {
    boolean bool1 = false;
    if (paramNode != null);
    try
    {
      if (RegexUtils.exists(XmlUtils.nodeToString(paramNode), "checked=\"true\""))
        bool1 = true;
      while (true)
      {
        System.out.println("find in switchNode");
        System.out.println("switchNodeXml:" + XmlUtils.nodeToString(paramNode));
        return bool1;
        boolean bool2 = RegexUtils.exists(XmlUtils.nodeToString(paramNode), "text=\"已允许\"");
        bool1 = false;
        if (bool2)
          bool1 = true;
      }
      if (RegexUtils.exists(paramString, "text=.*允许"))
      {
        bool1 = true;
        System.out.println("find in nodeXml");
        return bool1;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return bool1;
    }
    if ((RegexUtils.exists(paramString, "text=.*禁止")) || (RegexUtils.exists(paramString, "text=.*禁用")))
    {
      bool1 = false;
      System.out.println("find in nodeXml");
      return false;
    }
    System.out.println("can not find is switch");
    return false;
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.utils.AppUtils
 * JD-Core Version:    0.6.2
 */