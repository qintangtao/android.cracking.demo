package com.android.runner.phone;

import com.android.utils.AppUtils;
import com.android.utils.UIHelper;

public class Lenovo
{
  public void run()
  {
    if ((UIHelper.StartApp("com.lenovo.safecenter/com.lenovo.safecenter.MainTab.LeSafeMainActivity")) && (UIHelper.FindClickButtonToNewWindow("清理加速", 2)) && (UIHelper.FindClickButtonToNewWindow("自启管理", 2)))
    {
      UIHelper.Block4WaitUiObject("com.lenovo.safecenter:id/app_name", 10);
      AppUtils.enableSwitchResourceId("应用市场", "com.lenovo.safecenter:id/listView");
      UIHelper.Press_BACK(2);
    }
    UIHelper.Press_HOME();
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.phone.Lenovo
 * JD-Core Version:    0.6.2
 */