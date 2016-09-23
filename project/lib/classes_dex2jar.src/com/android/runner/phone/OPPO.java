package com.android.runner.phone;

import com.android.utils.AppUtils;
import com.android.utils.UIHelper;

public class OPPO
{
  public void run()
  {
    if (UIHelper.GetAppVcode("com.oppo.purebackground") != 0)
    {
      UIHelper.Press_BACK(2);
      if (UIHelper.StartApp("com.oppo.purebackground/.PurebackgroundTopActivity"))
      {
        UIHelper.FindSwitchToOpen("com.oppo.purebackground:id/check_box");
        if (UIHelper.FindLikeClickButtonToNewWindow("添加", 0))
        {
          AppUtils.enableSwitchList("应用市场");
          UIHelper.FindClickButtonToNewWindow("确定", 0);
        }
      }
    }
    if ((UIHelper.GetAppVcode("com.oppo.safe") != 0) && (UIHelper.StartApp("com.oppo.safe/.permission.PermissionTopActivity")))
    {
      UIHelper.FindSwitchToOpen("com.oppo.safe:id/check_box");
      UIHelper.scrollIntoView("自启动管理");
      if (UIHelper.FindClickButtonToNewWindow("自启动管理", 0))
      {
        UIHelper.FindClickButtonToNewWindow("添加自启动程序", 2);
        AppUtils.enableSwitchList("应用市场");
        UIHelper.FindClickButton("确定", 2);
      }
    }
    UIHelper.Press_BACK(4);
    UIHelper.Press_HOME();
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.phone.OPPO
 * JD-Core Version:    0.6.2
 */