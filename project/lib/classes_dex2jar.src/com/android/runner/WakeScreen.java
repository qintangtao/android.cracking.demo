package com.android.runner;

import android.os.RemoteException;
import com.android.uiautomator.core.UiDevice;
import com.android.uiautomator.core.UiObject;
import com.android.uiautomator.core.UiObjectNotFoundException;
import com.android.uiautomator.core.UiSelector;
import com.android.uiautomator.testrunner.UiAutomatorTestCase;
import com.android.utils.UIHelper;
import java.io.PrintStream;
import java.util.regex.Pattern;

public class WakeScreen extends UiAutomatorTestCase
{
  public boolean existsLauncher()
  {
    try
    {
      String str = UiDevice.getInstance().getCurrentPackageName();
      boolean bool1 = Pattern.matches(".*[l|L]auncher.*", str);
      boolean bool2 = false;
      if (bool1)
      {
        UiObject localUiObject = new UiObject(new UiSelector().packageName(str));
        System.out.println("launcher:" + localUiObject.exists());
        boolean bool3 = localUiObject.exists();
        bool2 = bool3;
      }
      return bool2;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return false;
  }

  public void testDemo()
    throws UiObjectNotFoundException, InterruptedException
  {
    UiDevice localUiDevice = getUiDevice();
    int i;
    int j;
    int k;
    int m;
    int i1;
    try
    {
      System.out.println("screen:" + localUiDevice.isScreenOn());
      if (!localUiDevice.isScreenOn())
        localUiDevice.wakeUp();
      UIHelper.Press_HOME();
      if (existsLauncher())
        return;
      i = localUiDevice.getDisplayHeight();
      j = localUiDevice.getDisplayWidth();
      k = i / 2;
      m = (int)(0.85D * i);
      int n = (int)(0.15D * i);
      i1 = j / 2;
      localUiDevice.swipe(i1, m, i1, n, 5);
      UIHelper.Press_HOME();
      if (existsLauncher())
      {
        System.out.println("try wake screen 1");
        return;
      }
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
      return;
    }
    localUiDevice.swipe(50, k, j, k, 5);
    UIHelper.Press_HOME();
    if (existsLauncher())
    {
      System.out.println("try wake screen 2");
      return;
    }
    localUiDevice.swipe(0, i, j, 0, 5);
    UIHelper.Press_HOME();
    if (existsLauncher())
    {
      System.out.println("try wake screen 3");
      return;
    }
    localUiDevice.swipe(i1 - 100, m, j, m, 5);
    UIHelper.Press_HOME();
    if (existsLauncher())
      System.out.println("try wake screen 4");
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.WakeScreen
 * JD-Core Version:    0.6.2
 */