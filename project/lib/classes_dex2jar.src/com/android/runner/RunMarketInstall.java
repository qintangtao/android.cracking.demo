package com.android.runner;

import com.android.uiautomator.core.UiObjectNotFoundException;
import com.android.uiautomator.testrunner.UiAutomatorTestCase;
import com.android.utils.UIHelper;
import java.io.PrintStream;

public class RunMarketInstall extends UiAutomatorTestCase
{
  public void testDemo()
    throws UiObjectNotFoundException
  {
    int i = 0;
    while (true)
    {
      if (("com.youqicai.AppStore" != null) && (UIHelper.GetAppVcode("com.youqicai.AppStore") > 0))
      {
        i++;
        if (i > 5)
          return;
        System.out.println("installed packangeName:" + "com.youqicai.AppStore");
      }
      UIHelper.closeDialogWindow();
      try
      {
        Thread.sleep(1000L);
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.RunMarketInstall
 * JD-Core Version:    0.6.2
 */