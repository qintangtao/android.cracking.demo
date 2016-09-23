package com.android.runner;

import com.android.uiautomator.core.UiDevice;
import com.android.uiautomator.core.UiObject;
import com.android.uiautomator.core.UiObjectNotFoundException;
import com.android.uiautomator.core.UiScrollable;
import com.android.uiautomator.core.UiSelector;
import com.android.uiautomator.core.UiWatcher;
import com.android.uiautomator.testrunner.UiAutomatorTestCase;
import com.android.utils.UIHelper;
import java.io.PrintStream;

public class OpenAccessibility extends UiAutomatorTestCase
{
  UiWatcher closeAlertWatcher = new UiWatcher()
  {
    public boolean checkForCondition()
    {
      UIHelper.CloseTopWindow();
      return true;
    }
  };

  public static boolean enableSwitch()
    throws UiObjectNotFoundException
  {
    UiObject localUiObject = new UiObject(new UiSelector().className("android.widget.Switch"));
    if (!localUiObject.exists())
    {
      localUiObject = new UiObject(new UiSelector().className("android.widget.CheckBox"));
      if (!localUiObject.exists())
      {
        localUiObject = new UiObject(new UiSelector().classNameMatches(".*[s|S]witch.*"));
        if (!localUiObject.exists())
        {
          localUiObject = new UiObject(new UiSelector().classNameMatches(".*CheckBox.*"));
          if (!localUiObject.exists())
            localUiObject = new UiObject(new UiSelector().resourceIdMatches(".*[s|S]witch.*").clickable(true));
        }
      }
    }
    if (localUiObject.exists())
    {
      System.out.println("Switch Checkable:" + localUiObject.isCheckable());
      if (localUiObject.isCheckable())
      {
        System.out.println("Switch Checked:" + localUiObject.isChecked());
        if (!localUiObject.isChecked())
          localUiObject.clickAndWaitForNewWindow();
      }
    }
    while (localUiObject.exists())
    {
      return true;
      if (localUiObject.isClickable())
      {
        localUiObject.clickAndWaitForNewWindow();
      }
      else
      {
        localUiObject.swipeRight(1);
        continue;
        localUiObject = new UiObject(new UiSelector().resourceId("com.yulong.android:id/dragable_switch_btn"));
        if (localUiObject.exists())
          localUiObject.swipeLeft(1);
      }
    }
    System.out.println("can not find switchUI");
    return false;
  }

  public static boolean scrollIntoView(String paramString)
  {
    System.out.println("scrollIntoView:" + paramString);
    Object localObject = new UiObject(new UiSelector().text(paramString).enabled(true));
    UiScrollable localUiScrollable;
    if (!((UiObject)localObject).exists())
      localUiScrollable = new UiScrollable(new UiSelector().scrollable(true));
    try
    {
      localUiScrollable.flingToEnd(1);
      localUiScrollable.scrollIntoView(new UiSelector().text(paramString).enabled(true));
      UiObject localUiObject = new UiObject(new UiSelector().text(paramString).enabled(true));
      localObject = localUiObject;
      if (!((UiObject)localObject).exists());
    }
    catch (UiObjectNotFoundException localUiObjectNotFoundException1)
    {
      try
      {
        boolean bool = ((UiObject)localObject).clickAndWaitForNewWindow();
        if (!bool)
          System.out.println("can not into :" + paramString);
        return bool;
        localUiObjectNotFoundException1 = localUiObjectNotFoundException1;
        localUiObjectNotFoundException1.printStackTrace();
      }
      catch (UiObjectNotFoundException localUiObjectNotFoundException2)
      {
        localUiObjectNotFoundException2.printStackTrace();
      }
      System.out.println("can not find:" + paramString);
    }
    return false;
  }

  public void testDemo()
    throws UiObjectNotFoundException
  {
    UiDevice.getInstance().registerWatcher("CLOSE_ALERT_WATCHER", this.closeAlertWatcher);
    UiDevice.getInstance().runWatchers();
    if (!UIHelper.ExistText("请点击右上角的开启"))
      scrollIntoView("应用自动装");
    enableSwitch();
    UIHelper.CloseTopWindow();
    UiDevice.getInstance().removeWatcher("CLOSE_ALERT_WATCHER");
    UIHelper.Press_BACK(2);
    UIHelper.Press_HOME();
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.OpenAccessibility
 * JD-Core Version:    0.6.2
 */