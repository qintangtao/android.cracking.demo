package run;

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
    boolean bool1 = true;
    UiObject localUiObject1 = new UiObject(new UiSelector().instance(0));
    try
    {
      Rect localRect = localUiObject1.getBounds();
      if ((localRect.left <= 0) && (localRect.top <= 0))
        break label204;
      UiObject localUiObject2 = new UiObject(new UiSelector().className("android.widget.TextView").instance(0));
      try
      {
        System.out.println("find new top window:" + localUiObject2.getText());
        if (FindClickButtonToNewWindow("关闭", 0))
          break label204;
        if (FindClickButtonToNewWindow("允许", 0))
          break label196;
        if (FindClickButtonToNewWindow("确定", 0))
          break label192;
        if (FindClickButtonToNewWindow("继续", 0))
          break label188;
        if (FindClickButtonToNewWindow("好", 0))
          break label184;
        if (FindClickButtonToNewWindow("取消", 0))
          break label180;
        if (!FindLikeClickButtonToNewWindow("允许", 0))
          return bool1;
      }
      catch (UiObjectNotFoundException localUiObjectNotFoundException2)
      {
        while (true)
          localUiObjectNotFoundException2.printStackTrace();
      }
    }
    catch (UiObjectNotFoundException localUiObjectNotFoundException1)
    {
      localUiObjectNotFoundException1.printStackTrace();
      return bool1;
    }
    return CloseTopWindow();
    label180: return CloseTopWindow();
    label184: return CloseTopWindow();
    label188: return CloseTopWindow();
    label192: return CloseTopWindow();
    label196: boolean bool2 = CloseTopWindow();
    bool1 = bool2;
    label204: return bool1;
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

  public static boolean FindClickLikeButton(String paramString, int paramInt)
  {
    int i = 0;
    while (i <= paramInt)
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
    String str1 = shellhelper.ExecShell("dumpsys package " + paramString);
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

  public static void Press_BACK(int paramInt)
  {
    for (int i = 0; i < paramInt; i++)
      UiDevice.getInstance().pressHome();
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
        localUiObject = new UiObject(new UiSelector().textContains(paramString).enabled(true));
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

  public static boolean StartApp(String paramString)
  {
    return !shellhelper.ExecShell("am start -n " + paramString).contains("not exist");
  }
}

/* Location:           C:\Users\Tato\Desktop\uiclick\classes_dex2jar.jar
 * Qualified Name:     run.UIHelper
 * JD-Core Version:    0.6.2
 */