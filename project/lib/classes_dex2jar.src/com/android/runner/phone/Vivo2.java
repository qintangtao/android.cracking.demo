package com.android.runner.phone;

import com.android.utils.AppUtils;
import com.android.utils.UIHelper;

public class Vivo2
{
  public void run()
  {
    UIHelper.Press_HOME();
    if ((UIHelper.StartApp("com.iqoo.secure/.MainGuideActivity")) && (UIHelper.FindClickButtonToNewWindow("软件管理", 0)) && (UIHelper.FindClickButtonToNewWindow("自启动管理", 0)))
    {
      UIHelper.sleep(2000);
      AppUtils.enableSwitchList("应用市场");
    }
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.phone.Vivo2
 * JD-Core Version:    0.6.2
 */