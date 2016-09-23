package com.android.runner.phone;

import com.android.runner.AutoObserveAppInListView;
import com.android.uiautomator.core.UiDevice;
import com.android.utils.UIHelper;
import java.io.PrintStream;

public class Honor
{
  public void run()
  {
    int i = UIHelper.GetAppVcode("com.android.settings");
    if (i > 0)
    {
      UIHelper.Press_BACK(2);
      System.out.println("com.android.settings ver:" + i);
      if (((i == 19) || (i != 19)) && (UIHelper.StartApp("com.android.settings/.HWSettings")))
      {
        UIHelper.FindClickButton("全部设置", 2);
        if (!UIHelper.ScrollIntoView("开机自动启动"));
      }
    }
    while (true)
    {
      try
      {
        Thread.sleep(1000L);
        new AutoObserveAppInListView().AutoCheckAPP_List_Sleep_v1(false, false, 100);
        UiDevice.getInstance().pressBack();
        if (!UIHelper.ScrollIntoView("受保护的后台应用"));
      }
      catch (InterruptedException localInterruptedException4)
      {
        try
        {
          Thread.sleep(1000L);
          new AutoObserveAppInListView().AutoCheckAPP_List_Sleep_v1(false, false, 100);
          UiDevice.getInstance().pressBack();
          if (!UIHelper.ScrollIntoView("权限管理"));
        }
        catch (InterruptedException localInterruptedException4)
        {
          try
          {
            Thread.sleep(1000L);
            if (UIHelper.ScrollIntoView("读取本机识别码"))
            {
              if (!UIHelper.FindClickButtonToNewWindow("菜单", 2))
                continue;
              if (!UIHelper.FindClickLikeButton("允许", 2));
            }
            UIHelper.Press_BACK(2);
            return;
            localInterruptedException5 = localInterruptedException5;
            localInterruptedException5.printStackTrace();
            continue;
            localInterruptedException4 = localInterruptedException4;
            localInterruptedException4.printStackTrace();
          }
          catch (InterruptedException localInterruptedException1)
          {
            localInterruptedException1.printStackTrace();
            continue;
            UiDevice.getInstance().pressMenu();
          }
        }
      }
      try
      {
        Thread.sleep(500L);
        if (!UIHelper.FindLikeClickButtonToNewWindow("允许", 2))
          continue;
      }
      catch (InterruptedException localInterruptedException2)
      {
        try
        {
          Thread.sleep(500L);
          UIHelper.FindClickRealLikeButton("允许", 2);
          continue;
          localInterruptedException2 = localInterruptedException2;
          localInterruptedException2.printStackTrace();
        }
        catch (InterruptedException localInterruptedException3)
        {
          while (true)
            localInterruptedException3.printStackTrace();
        }
      }
    }
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.phone.Honor
 * JD-Core Version:    0.6.2
 */