package com.android.runner.phone;

import com.android.utils.AppUtils;
import com.android.utils.UIHelper;

public class Smartisan
{
  public void run()
  {
    if ((UIHelper.StartApp("com.smartisanos.security/.PackagesOverview")) && (UIHelper.ScrollIntoView("应用市场")))
    {
      UIHelper.sleep(1000);
      AppUtils.enableSwitchResourceId("开机自启动", "com.smartisanos.security:id/detail_container");
      UIHelper.sleep(1000);
      UIHelper.Press_BACK(2);
    }
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.phone.Smartisan
 * JD-Core Version:    0.6.2
 */