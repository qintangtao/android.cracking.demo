package com.android.runner.phone;

import com.android.utils.AppUtils;
import com.android.utils.UIHelper;

public class Meizu
{
  public void run()
  {
    if ((UIHelper.GetAppVcode("com.meizu.safe") != 0) && (UIHelper.StartApp("com.meizu.safe/com.meizu.safe.SecurityCenterActivity")))
    {
      UIHelper.sleep(500);
      if (UIHelper.FindClickButtonToNewWindow("权限管理", 2))
        AppUtils.enableSwitchList("应用市场");
      UIHelper.Press_BACK(2);
    }
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.phone.Meizu
 * JD-Core Version:    0.6.2
 */