package com.android.runner.phone;

import com.android.uiautomator.core.UiDevice;
import com.android.utils.AppUtils;
import com.android.utils.UIHelper;

public class Huawei
{
  public void run()
  {
    if (UIHelper.StartApp("com.android.settings/.HWSettings"))
    {
      UIHelper.FindClickButton("全部设置", 2);
      if (UIHelper.ScrollIntoLikeView("开机自"))
      {
        UIHelper.sleep(1000);
        AppUtils.enableSwitchList("应用市场");
        UIHelper.Press_BACK(1);
      }
      if (UIHelper.ScrollIntoView("受保护的后台应用"))
      {
        UIHelper.sleep(1000);
        AppUtils.enableSwitchList("应用市场");
        UIHelper.Press_BACK(1);
      }
      if (UIHelper.ScrollIntoView("权限管理"))
        if (UIHelper.ScrollIntoView("读取本机识别码"))
        {
          if (!UIHelper.FindClickButtonToNewWindow("菜单", 2))
            break label100;
          UIHelper.FindClickLikeButton("允许", 2);
        }
    }
    while (true)
    {
      UIHelper.Press_BACK(2);
      return;
      label100: UiDevice.getInstance().pressMenu();
      if (UIHelper.FindLikeClickButtonToNewWindow("允许", 2))
        UIHelper.FindClickRealLikeButton("允许", 2);
    }
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.phone.Huawei
 * JD-Core Version:    0.6.2
 */