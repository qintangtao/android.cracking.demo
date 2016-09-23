package com.android.runner.phone;

import com.android.utils.AppUtils;
import com.android.utils.UIHelper;

public class Xiaomi
{
  public void run()
  {
    if (UIHelper.GetAppVcode("com.android.settings") > 0)
    {
      UIHelper.Press_BACK(2);
      if ((UIHelper.StartApp("com.android.settings/com.miui.securitycenter.Main")) && (UIHelper.FindClickButtonToNewWindow("授权管理", 2)) && (UIHelper.FindLikeClickButtonToNewWindow("自启动", 0)) && (UIHelper.FindLikeClickButtonToNewWindow("添加", 0)))
        AppUtils.enableSwitchList("应用市场");
      UIHelper.Press_BACK(2);
    }
    if (UIHelper.StartApp("com.miui.securitycenter/com.miui.securitycenter.MainActivity"))
    {
      if ((UIHelper.FindClickButtonToNewWindow("授权管理", 2)) && (UIHelper.FindClickButtonToNewWindow("自启动管理", 2)))
      {
        UIHelper.FindClickButtonToNewWindow("确定", 2);
        AppUtils.enableSwitchList("应用市场");
      }
      UIHelper.Press_BACK(2);
    }
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.phone.Xiaomi
 * JD-Core Version:    0.6.2
 */