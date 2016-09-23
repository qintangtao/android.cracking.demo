package com.android.runner.phone;

import com.android.uiautomator.core.UiObject;
import com.android.uiautomator.core.UiObjectNotFoundException;
import com.android.uiautomator.core.UiSelector;
import com.android.utils.AppUtils;
import com.android.utils.UIHelper;

public class Coolpad
{
  public void run()
  {
    if ((UIHelper.GetAppVcode("com.yulong.android.security") != 0) && (UIHelper.StartApp("com.yulong.android.security/.ui.activity.MainActivity")))
    {
      if ((UIHelper.FindClickButtonToNewWindow("软件管理", 2)) && (UIHelper.FindClickButtonToNewWindow("自启动管理", 2)))
      {
        UIHelper.Block4WaitUiObject("com.yulong.android.security:id/forbid_autorun_title_textview", 10);
        AppUtils.enableSwitchList("应用市场");
      }
      UIHelper.Press_BACK(2);
    }
    if ((UIHelper.GetAppVcode("com.yulong.android.softmanager") != 0) && (UIHelper.StartApp("com.yulong.android.softmanager/com.yulong.android.softmanager.SpeedupActivity")))
      if (UIHelper.FindClickButtonToNewWindow("应用启动管理", 2))
        UIHelper.sleep(2000);
    try
    {
      new UiObject(new UiSelector().resourceId("com.yulong.android:id/general_btn2")).click();
      if (!AppUtils.enableSwitchList("应用市场"));
    }
    catch (UiObjectNotFoundException localUiObjectNotFoundException1)
    {
      try
      {
        new UiObject(new UiSelector().resourceId("com.yulong.android:id/general_btn3")).click();
        UIHelper.Press_BACK(2);
        UIHelper.Press_HOME();
        return;
        localUiObjectNotFoundException1 = localUiObjectNotFoundException1;
        localUiObjectNotFoundException1.printStackTrace();
      }
      catch (UiObjectNotFoundException localUiObjectNotFoundException2)
      {
        while (true)
          localUiObjectNotFoundException2.printStackTrace();
      }
    }
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.phone.Coolpad
 * JD-Core Version:    0.6.2
 */