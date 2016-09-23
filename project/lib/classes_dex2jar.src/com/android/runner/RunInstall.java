package com.android.runner;

import com.android.uiautomator.core.UiObjectNotFoundException;
import com.android.uiautomator.testrunner.UiAutomatorTestCase;
import com.android.utils.UIHelper;

public class RunInstall extends UiAutomatorTestCase
{
  public void testDemo()
    throws UiObjectNotFoundException
  {
    while (true)
    {
      UIHelper.closeDialogWindow();
      UIHelper.sleep(1000);
    }
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.RunInstall
 * JD-Core Version:    0.6.2
 */