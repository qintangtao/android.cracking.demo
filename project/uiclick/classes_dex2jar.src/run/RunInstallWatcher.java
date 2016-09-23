package run;

import android.os.RemoteException;
import android.test.FlakyTest;
import android.test.suitebuilder.annotation.LargeTest;
import com.android.uiautomator.core.UiDevice;
import com.android.uiautomator.core.UiSelector;
import com.android.uiautomator.testrunner.UiAutomatorTestCase;
import com.dingkai.uiautomatorstub.watcher.ClickUiObjectWatcher;

public class RunInstallWatcher extends UiAutomatorTestCase
{
  private static final int TEST_TOLERANCE = 3;
  String[] def = { "激活", "确认", "立即清理", "下一步", "确定", "关闭", "清理", "好", "允许本次安装", "安装", "允许", "解除", "等待", "继续卸载", "立即清除", "解除禁止" };

  protected void setUp()
    throws Exception
  {
    super.setUp();
  }

  protected void tearDown()
    throws Exception
  {
    super.tearDown();
  }

  @FlakyTest(tolerance=3)
  @LargeTest
  public void testUIAutomatorStub()
    throws InterruptedException
  {
    int i = 1;
    for (int j = 0; j < this.def.length; j++)
    {
      String str = this.def[j];
      UiSelector[] arrayOfUiSelector = new UiSelector[1];
      arrayOfUiSelector[0] = new UiSelector().textContains(str);
      UiDevice localUiDevice = UiDevice.getInstance();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i);
      localUiDevice.registerWatcher(String.format("watcher_%d", arrayOfObject), new ClickUiObjectWatcher(arrayOfUiSelector, new UiSelector().text(str)));
      i++;
    }
    try
    {
      while (true)
      {
        UiDevice.getInstance().wakeUp();
        UiDevice.getInstance().runWatchers();
      }
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        localRemoteException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\uiclick\classes_dex2jar.jar
 * Qualified Name:     run.RunInstallWatcher
 * JD-Core Version:    0.6.2
 */