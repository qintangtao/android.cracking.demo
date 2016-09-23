package com.android.runner;

import android.os.RemoteException;
import com.android.models.Window;
import com.android.runner.phone.Coolpad;
import com.android.runner.phone.GiONEE;
import com.android.runner.phone.Honor;
import com.android.runner.phone.Huawei;
import com.android.runner.phone.Lenovo;
import com.android.runner.phone.Meizu;
import com.android.runner.phone.OPPO;
import com.android.runner.phone.Samsung;
import com.android.runner.phone.Smartisan;
import com.android.runner.phone.Vivo2;
import com.android.runner.phone.Xiaomi;
import com.android.uiautomator.core.UiDevice;
import com.android.uiautomator.core.UiWatcher;
import com.android.uiautomator.testrunner.UiAutomatorTestCase;
import com.android.utils.EncryptUtils;
import com.android.utils.PhoneUtils;
import com.android.utils.UIHelper;
import com.android.utils.WindowHelper;
import java.io.PrintStream;

public class AutoStart extends UiAutomatorTestCase
{
  public static String[] enableApps = { "应用市场" };
  UiWatcher closeAlertWatcher = new UiWatcher()
  {
    public boolean checkForCondition()
    {
      UIHelper.CloseTopWindow();
      return true;
    }
  };

  public static void startDebugThread()
  {
    Thread local3 = new Thread()
    {
      public void run()
      {
        Object localObject = "";
        try
        {
          while (true)
          {
            String str1 = WindowHelper.getWindowHierarchy();
            String str2 = EncryptUtils.encryptMD5(str1);
            if (!((String)localObject).equals(EncryptUtils.encryptMD5(str1)))
            {
              localObject = str2;
              Window localWindow = WindowHelper.getWindow();
              System.out.println(localWindow.currentActivity);
              System.out.println(str1);
            }
            UIHelper.sleep(1200);
          }
        }
        catch (Exception localException)
        {
          while (true)
            localException.printStackTrace();
        }
      }
    };
    local3.setDaemon(true);
    local3.setPriority(10);
    local3.start();
  }

  private static void startWakeThead()
  {
    Thread local2 = new Thread()
    {
      public void run()
      {
        try
        {
          while (true)
          {
            UiDevice.getInstance().wakeUp();
            UIHelper.sleep(1200);
          }
        }
        catch (RemoteException localRemoteException)
        {
          while (true)
            localRemoteException.printStackTrace();
        }
      }
    };
    local2.setDaemon(true);
    local2.setPriority(10);
    local2.start();
  }

  public void Runner()
  {
    System.out.print('\001');
    System.out.println("start....");
    startWakeThead();
    String str1 = PhoneUtils.getInstance().Brand;
    String str2 = PhoneUtils.getInstance().Model;
    int i = PhoneUtils.getInstance().SDKVer;
    System.out.print("brand:" + str1 + ",model:" + str2 + ",android sdk:" + i + "\n");
    if (i > 17);
    try
    {
      UiDevice.getInstance().setOrientationNatural();
      UiDevice.getInstance().registerWatcher("CLOSE_ALERT_WATCHER", this.closeAlertWatcher);
      UiDevice.getInstance().runWatchers();
      if (str1.equals("vivo"))
      {
        new Vivo2().run();
        UiDevice.getInstance().removeWatcher("CLOSE_ALERT_WATCHER");
        System.out.print("end....\n");
        System.out.print('\002');
        return;
      }
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
      {
        localRemoteException.printStackTrace();
        continue;
        if (str1.equals("OPPO"))
          new OPPO().run();
        else if (str1.equals("Coolpad"))
          new Coolpad().run();
        else if (str1.equals("Xiaomi"))
          new Xiaomi().run();
        else if (str1.equals("Honor"))
          new Honor().run();
        else if (str1.equals("Huawei"))
          new Huawei().run();
        else if (str1.equals("GiONEE"))
          new GiONEE().run();
        else if (str1.equals("samsung"))
          new Samsung().run();
        else if (str1.equals("smartisan"))
          new Smartisan().run();
        else if (str1.equals("Meizu"))
          new Meizu().run();
        else if (str1.equals("Lenovo"))
          new Lenovo().run();
      }
    }
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.AutoStart
 * JD-Core Version:    0.6.2
 */