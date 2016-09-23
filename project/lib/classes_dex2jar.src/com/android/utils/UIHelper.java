package com.android.utils;

import android.graphics.Rect;
import com.android.uiautomator.core.UiDevice;
import com.android.uiautomator.core.UiObject;
import com.android.uiautomator.core.UiObjectNotFoundException;
import com.android.uiautomator.core.UiScrollable;
import com.android.uiautomator.core.UiSelector;
import com.android.uiautomator.testrunner.UiAutomatorTestCase;
import java.io.PrintStream;

public class UIHelper extends UiAutomatorTestCase
{
  public static void Block4WaitUiObject(String paramString, int paramInt)
  {
    int i = 0;
    while ((GetUiObjectByResourceid(paramString) == null) && (paramInt > i))
      try
      {
        Thread.sleep(1000L);
        i++;
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
  }

  public static void CloseAllCheckBox(int paramInt)
  {
    int i = 0;
    while (true)
      if (i < paramInt)
      {
        UiObject localUiObject = new UiObject(new UiSelector().className("android.widget.CheckBox").enabled(true).checked(true).instance(0));
        if (localUiObject.exists())
        {
          System.out.println("find CheckBox times:" + i);
          try
          {
            localUiObject.click();
            i++;
          }
          catch (UiObjectNotFoundException localUiObjectNotFoundException)
          {
            while (true)
              localUiObjectNotFoundException.printStackTrace();
          }
        }
      }
  }

  public static boolean CloseTopWindow()
  {
    UiObject localUiObject1 = new UiObject(new UiSelector().instance(0));
    try
    {
      Rect localRect = localUiObject1.getBounds();
      boolean bool1;
      String[] arrayOfString;
      if (localRect.left <= 0)
      {
        int k = localRect.top;
        bool1 = false;
        if (k <= 0);
      }
      else
      {
        UiObject localUiObject2 = new UiObject(new UiSelector().className("android.widget.TextView").instance(0));
        if (localUiObject2.exists())
          System.out.println("find new top window:" + localUiObject2.getText());
        arrayOfString = new String[] { "激活", "确定", "仍然允许", "始终", "启动", "立即清理", "完成", "下一步", "关闭", "清理", "好", "允许本次安装", "安装", "允许", "解除", "等待", "继续卸载", "立即清除", "解除禁止", "卸载", "立即删除", "同意", "继续", "更换", "取消" };
      }
      for (int i = 0; ; i++)
      {
        int j = arrayOfString.length;
        bool1 = false;
        if (i < j)
        {
          String str = arrayOfString[i];
          UiObject localUiObject3 = new UiObject(new UiSelector().text(str));
          if (localUiObject3.exists())
          {
            System.out.println("click:" + localUiObject3.getText());
            boolean bool2 = localUiObject3.clickAndWaitForNewWindow();
            bool1 = bool2;
          }
        }
        else
        {
          return bool1;
        }
      }
    }
    catch (UiObjectNotFoundException localUiObjectNotFoundException)
    {
      localUiObjectNotFoundException.printStackTrace();
    }
    return false;
  }

  public static boolean ExistText(String paramString)
  {
    return new UiObject(new UiSelector().textContains(paramString)).exists();
  }

  public static UiObject FindByLikeText(String paramString)
  {
    UiObject localUiObject = new UiObject(new UiSelector().textContains(paramString));
    if (localUiObject.exists())
      return localUiObject;
    return null;
  }

  public static UiObject FindByText(String paramString)
  {
    UiObject localUiObject = new UiObject(new UiSelector().text(paramString));
    if (localUiObject.exists())
      return localUiObject;
    return null;
  }

  public static UiObject FindByTextClassName(String paramString1, String paramString2)
  {
    UiObject localUiObject = new UiObject(new UiSelector().text(paramString1).className(paramString2));
    if (localUiObject.exists())
      return localUiObject;
    return null;
  }

  public static boolean FindClickButton(String paramString, int paramInt)
  {
    int i = 0;
    while (i <= paramInt)
    {
      i++;
      UiObject localUiObject = new UiObject(new UiSelector().text(paramString));
      if (localUiObject.exists())
        try
        {
          localUiObject.click();
          System.out.println("click " + paramString);
          return true;
        }
        catch (UiObjectNotFoundException localUiObjectNotFoundException)
        {
          localUiObjectNotFoundException.printStackTrace();
        }
      try
      {
        Thread.sleep(1000L);
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
    return false;
  }

  public static boolean FindClickButtonToNewWindow(String paramString, int paramInt)
  {
    int i = 0;
    while (i <= paramInt)
    {
      i++;
      UiObject localUiObject = new UiObject(new UiSelector().text(paramString));
      if (localUiObject.exists())
        try
        {
          System.out.println("click " + paramString);
          boolean bool = localUiObject.clickAndWaitForNewWindow();
          return bool;
        }
        catch (UiObjectNotFoundException localUiObjectNotFoundException)
        {
          localUiObjectNotFoundException.printStackTrace();
        }
      try
      {
        Thread.sleep(1000L);
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
    return false;
  }

  public static boolean FindClickLastButton(String paramString)
  {
    Object localObject = null;
    for (int i = 0; i < 9; i++)
    {
      UiObject localUiObject = new UiObject(new UiSelector().text(paramString).instance(i));
      if (!localUiObject.exists())
        break;
      localObject = localUiObject;
    }
    if ((localObject != null) && (localObject.exists()))
      try
      {
        localObject.click();
        System.out.println("click last" + paramString);
        return true;
      }
      catch (UiObjectNotFoundException localUiObjectNotFoundException)
      {
        localUiObjectNotFoundException.printStackTrace();
      }
    return false;
  }

  public static boolean FindClickLikeButton(String paramString, int paramInt)
  {
    int i = 0;
    if (i <= paramInt)
    {
      i++;
      UiObject localUiObject = new UiObject(new UiSelector().textContains(paramString));
      if (localUiObject.exists())
        try
        {
          localUiObject.click();
          System.out.println("click " + localUiObject.getText());
          return true;
        }
        catch (UiObjectNotFoundException localUiObjectNotFoundException)
        {
          localUiObjectNotFoundException.printStackTrace();
        }
      while (true)
      {
        try
        {
          Thread.sleep(1000L);
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
        break;
        System.out.println("can not find like  " + paramString);
      }
    }
    return false;
  }

  public static boolean FindClickRealButtonToNewWindow(String paramString, int paramInt)
  {
    int i = 0;
    while (i <= paramInt)
    {
      i++;
      UiObject localUiObject = new UiObject(new UiSelector().text(paramString).className("android.widget.Button"));
      if (localUiObject.exists())
        try
        {
          System.out.println("click " + paramString);
          boolean bool = localUiObject.clickAndWaitForNewWindow();
          return bool;
        }
        catch (UiObjectNotFoundException localUiObjectNotFoundException)
        {
          localUiObjectNotFoundException.printStackTrace();
        }
      try
      {
        Thread.sleep(1000L);
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
    return false;
  }

  public static boolean FindClickRealLikeButton(String paramString, int paramInt)
  {
    int i = 0;
    while (true)
    {
      if (i <= paramInt)
        i++;
      try
      {
        UiObject localUiObject1 = new UiObject(new UiSelector().textContains(paramString).className("android.widget.Button"));
        localUiObject2 = localUiObject1;
        if ((localUiObject2 != null) && (localUiObject2.exists()))
          try
          {
            localUiObject2.click();
            System.out.println("click " + localUiObject2.getText());
            return true;
          }
          catch (UiObjectNotFoundException localUiObjectNotFoundException)
          {
            localUiObjectNotFoundException.printStackTrace();
          }
        try
        {
          Thread.sleep(1000L);
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
        continue;
        return false;
      }
      catch (Exception localException)
      {
        while (true)
          UiObject localUiObject2 = null;
      }
    }
  }

  public static boolean FindLikeClickButtonMayToNewWindow(String paramString, int paramInt)
  {
    int i = 0;
    while (i <= paramInt)
    {
      i++;
      UiObject localUiObject = new UiObject(new UiSelector().textContains(paramString));
      if (localUiObject.exists())
        try
        {
          System.out.println("click " + localUiObject.getText());
          localUiObject.clickAndWaitForNewWindow();
          return true;
        }
        catch (UiObjectNotFoundException localUiObjectNotFoundException)
        {
          localUiObjectNotFoundException.printStackTrace();
        }
      try
      {
        Thread.sleep(1000L);
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
    return false;
  }

  public static boolean FindLikeClickButtonToNewWindow(String paramString, int paramInt)
  {
    int i = 0;
    while (i <= paramInt)
    {
      i++;
      UiObject localUiObject = new UiObject(new UiSelector().textContains(paramString));
      if (localUiObject.exists())
        try
        {
          System.out.println("click " + localUiObject.getText());
          boolean bool = localUiObject.clickAndWaitForNewWindow();
          return bool;
        }
        catch (UiObjectNotFoundException localUiObjectNotFoundException)
        {
          localUiObjectNotFoundException.printStackTrace();
        }
      try
      {
        Thread.sleep(1000L);
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
    return false;
  }

  public static boolean FindSwitchToOpen(String paramString)
  {
    UiObject localUiObject = new UiObject(new UiSelector().resourceId(paramString));
    boolean bool1 = localUiObject.exists();
    boolean bool2 = false;
    if (bool1);
    try
    {
      if (!localUiObject.isChecked())
        localUiObject.click();
      bool2 = true;
      return bool2;
    }
    catch (UiObjectNotFoundException localUiObjectNotFoundException)
    {
      localUiObjectNotFoundException.printStackTrace();
    }
    return false;
  }

  public static boolean FindSwitchToOpenByName(String paramString)
  {
    UiObject localUiObject = new UiObject(new UiSelector().text(paramString));
    boolean bool1 = localUiObject.exists();
    boolean bool2 = false;
    if (bool1);
    try
    {
      if (!localUiObject.isChecked())
        localUiObject.click();
      bool2 = true;
      return bool2;
    }
    catch (UiObjectNotFoundException localUiObjectNotFoundException)
    {
      localUiObjectNotFoundException.printStackTrace();
    }
    return false;
  }

  public static int GetAppVcode(String paramString)
  {
    String str1 = ShellHelper.ExecShell("dumpsys package " + paramString);
    int i = str1.indexOf("versionCode=");
    int j = 0;
    String str2;
    if (i != -1)
      str2 = str1.substring(i + 12);
    try
    {
      int k = Integer.parseInt(str2.split(" ")[0].replace("\n", "").trim());
      j = k;
      return j;
    }
    catch (Exception localException)
    {
    }
    return 0;
  }

  public static UiObject GetUiObjectByResourceid(String paramString)
  {
    UiObject localUiObject = new UiObject(new UiSelector().resourceId(paramString));
    if (localUiObject.exists())
      return localUiObject;
    return null;
  }

  public static void Press_BACK(int paramInt)
  {
    for (int i = 0; i < paramInt; i++)
      UiDevice.getInstance().pressBack();
  }

  public static void Press_HOME()
  {
    UiDevice.getInstance().pressHome();
  }

  public static boolean ScrollIntoLikeView(String paramString)
  {
    UiScrollable localUiScrollable = new UiScrollable(new UiSelector().className("android.widget.ListView"));
    try
    {
      boolean bool4 = localUiScrollable.scrollIntoView(new UiSelector().textContains(paramString).enabled(true));
      bool1 = bool4;
      if (bool1)
      {
        System.out.println("find :" + paramString);
        localUiObject = new UiObject(new UiSelector().textContains(paramString).enabled(true));
      }
    }
    catch (UiObjectNotFoundException localUiObjectNotFoundException1)
    {
      try
      {
        UiObject localUiObject;
        boolean bool3 = localUiObject.clickAndWaitForNewWindow();
        bool2 = bool3;
        if (!bool2)
          System.out.println("can not into :" + paramString);
        return bool2;
        localUiObjectNotFoundException1 = localUiObjectNotFoundException1;
        localUiObjectNotFoundException1.printStackTrace();
        boolean bool1 = false;
      }
      catch (UiObjectNotFoundException localUiObjectNotFoundException2)
      {
        while (true)
        {
          localUiObjectNotFoundException2.printStackTrace();
          boolean bool2 = false;
        }
      }
      System.out.println("can not find:" + paramString);
    }
    return false;
  }

  public static boolean ScrollIntoView(String paramString)
  {
    UiScrollable localUiScrollable = new UiScrollable(new UiSelector().className("android.widget.ListView"));
    try
    {
      boolean bool4 = localUiScrollable.scrollIntoView(new UiSelector().text(paramString).enabled(true));
      bool1 = bool4;
      if (bool1)
        localUiObject = new UiObject(new UiSelector().text(paramString).enabled(true));
    }
    catch (UiObjectNotFoundException localUiObjectNotFoundException1)
    {
      try
      {
        UiObject localUiObject;
        boolean bool3 = localUiObject.clickAndWaitForNewWindow();
        bool2 = bool3;
        if (!bool2)
          System.out.println("can not into :" + paramString);
        return bool2;
        localUiObjectNotFoundException1 = localUiObjectNotFoundException1;
        localUiObjectNotFoundException1.printStackTrace();
        boolean bool1 = false;
      }
      catch (UiObjectNotFoundException localUiObjectNotFoundException2)
      {
        while (true)
        {
          localUiObjectNotFoundException2.printStackTrace();
          boolean bool2 = false;
        }
      }
      System.out.println("can not find:" + paramString);
    }
    return false;
  }

  public static String ScrollIntoViewRegex(String paramString)
  {
    UiScrollable localUiScrollable = new UiScrollable(new UiSelector().className("android.widget.ListView"));
    try
    {
      boolean bool3 = localUiScrollable.scrollIntoView(new UiSelector().textMatches(paramString).enabled(true));
      bool1 = bool3;
      if (bool1)
      {
        localUiObject = new UiObject(new UiSelector().textMatches(paramString).enabled(true));
        if (!localUiObject.exists())
          break label240;
      }
    }
    catch (UiObjectNotFoundException localUiObjectNotFoundException2)
    {
      try
      {
        String str2 = localUiObject.getText();
        str1 = str2;
        bool2 = false;
      }
      catch (UiObjectNotFoundException localUiObjectNotFoundException2)
      {
        try
        {
          while (true)
          {
            UiObject localUiObject;
            System.out.println("clickAndWaitForNewWindow begin");
            boolean bool2 = localUiObject.clickAndWaitForNewWindow();
            System.out.println("clickAndWaitForNewWindow end");
            if (!bool2)
              System.out.println("can not into :" + paramString);
            System.out.println("into :" + str1);
            return str1;
            localUiObjectNotFoundException1 = localUiObjectNotFoundException1;
            localUiObjectNotFoundException1.printStackTrace();
            boolean bool1 = false;
          }
          localUiObjectNotFoundException2 = localUiObjectNotFoundException2;
          localUiObjectNotFoundException2.printStackTrace();
          String str1 = null;
        }
        catch (UiObjectNotFoundException localUiObjectNotFoundException3)
        {
          while (true)
            localUiObjectNotFoundException3.printStackTrace();
        }
      }
      System.out.println("can not find:" + paramString);
    }
    label240: return null;
  }

  public static boolean StartAction(String paramString)
  {
    return !ShellHelper.ExecShell("am start -a " + paramString).contains("not exist");
  }

  public static boolean StartApp(String paramString)
  {
    return !ShellHelper.ExecShell("am start -n " + paramString).contains("not exist");
  }

  public static boolean closeDialogWindow()
  {
    try
    {
      String[] arrayOfString = { "激活", "确定", "仍然允许", "始终", "启动", "立即清理", "完成", "下一步", "关闭", "清理", "好", "允许本次安装", "安装", "允许", "解除", "等待", "继续卸载", "立即清除", "解除禁止", "卸载", "立即删除", "同意", "继续", "更换" };
      for (int i = 0; ; i++)
      {
        int j = arrayOfString.length;
        bool1 = false;
        UiObject localUiObject1;
        boolean bool3;
        if (i < j)
        {
          String str = arrayOfString[i];
          localUiObject1 = new UiObject(new UiSelector().text(str));
          if (!localUiObject1.exists())
            continue;
          if (!localUiObject1.isClickable())
            break label251;
          System.out.println("click dialog text:" + localUiObject1.getText());
          bool3 = localUiObject1.click();
        }
        label251: boolean bool2;
        for (bool1 = bool3; ; bool1 = bool2)
        {
          return bool1;
          UiObject localUiObject2 = localUiObject1.getFromParent(new UiSelector().className("android.widget.FrameLayout"));
          if ((!localUiObject2.exists()) || (!localUiObject2.isClickable()))
            break;
          System.out.println("click dialog from parent ui:" + localUiObject1.getText());
          bool2 = localUiObject2.click();
        }
      }
    }
    catch (UiObjectNotFoundException localUiObjectNotFoundException)
    {
      while (true)
      {
        localUiObjectNotFoundException.printStackTrace();
        boolean bool1 = false;
      }
    }
    finally
    {
    }
  }

  public static boolean scrollIntoView(String paramString)
  {
    System.out.println("scrollIntoView:" + paramString);
    Object localObject = new UiObject(new UiSelector().text(paramString));
    UiScrollable localUiScrollable;
    if (!((UiObject)localObject).exists())
      localUiScrollable = new UiScrollable(new UiSelector().scrollable(true));
    try
    {
      localUiScrollable.scrollIntoView(new UiSelector().text(paramString));
      UiObject localUiObject = new UiObject(new UiSelector().text(paramString));
      localObject = localUiObject;
      if (((UiObject)localObject).exists())
        return true;
    }
    catch (UiObjectNotFoundException localUiObjectNotFoundException)
    {
      while (true)
        localUiObjectNotFoundException.printStackTrace();
      System.out.println("can not find:" + paramString);
    }
    return false;
  }

  public static void sleep(int paramInt)
  {
    long l = paramInt;
    try
    {
      Thread.sleep(l);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      localInterruptedException.printStackTrace();
    }
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.utils.UIHelper
 * JD-Core Version:    0.6.2
 */