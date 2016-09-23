package com.android.runner;

import android.os.RemoteException;
import com.android.models.Window;
import com.android.uiautomator.core.UiDevice;
import com.android.uiautomator.core.UiObjectNotFoundException;
import com.android.uiautomator.testrunner.UiAutomatorTestCase;
import com.android.utils.EncryptUtils;
import com.android.utils.WindowHelper;
import java.io.PrintStream;

public class DebugScreen extends UiAutomatorTestCase
{
  public void testDemo()
    throws UiObjectNotFoundException
  {
    Object localObject = "";
    try
    {
      while (true)
      {
        UiDevice.getInstance().wakeUp();
        String str1 = WindowHelper.getWindowHierarchy();
        String str2 = EncryptUtils.encryptMD5(str1);
        if (!((String)localObject).equals(str2))
        {
          localObject = str2;
          Window localWindow = WindowHelper.getWindow();
          System.out.println(localWindow.currentActivity);
          System.out.println(str1);
        }
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
    catch (RemoteException localRemoteException)
    {
      while (true)
        localRemoteException.printStackTrace();
    }
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.DebugScreen
 * JD-Core Version:    0.6.2
 */