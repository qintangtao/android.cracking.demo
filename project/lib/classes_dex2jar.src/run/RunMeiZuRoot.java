package run;

import android.os.SystemClock;
import com.android.uiautomator.core.UiDevice;
import com.android.uiautomator.core.UiObject;
import com.android.uiautomator.core.UiObjectNotFoundException;
import com.android.uiautomator.core.UiSelector;
import com.android.uiautomator.testrunner.UiAutomatorTestCase;
import com.android.utils.PhoneUtils;
import com.android.utils.UIHelper;
import java.io.PrintStream;

public class RunMeiZuRoot extends UiAutomatorTestCase
{
  int height = 0;
  boolean rootSuccess = false;
  int width = 0;

  private void startClick()
  {
    new Thread(new Runnable()
    {
      public void run()
      {
        String[] arrayOfString = { "仍然允许", "允许" };
        if (!RunMeiZuRoot.this.rootSuccess)
        {
          int i = 0;
          while (i < arrayOfString.length)
          {
            UiObject localUiObject = UIHelper.FindByText(arrayOfString[i]);
            if (localUiObject != null);
            try
            {
              localUiObject.click();
              i++;
            }
            catch (UiObjectNotFoundException localUiObjectNotFoundException)
            {
              while (true)
              {
                localUiObjectNotFoundException.printStackTrace();
                System.out.println("startClick " + i + " error");
              }
            }
          }
        }
      }
    }).start();
  }

  private void strtRoot()
  {
    UiObject localUiObject1 = UIHelper.FindByText("Root授权监控中");
    UiObject localUiObject2 = UIHelper.FindByText("已获取Root");
    int i;
    if (localUiObject1 != null)
      i = 1;
    while (true)
    {
      int j;
      label25: boolean bool1;
      label59: boolean bool2;
      label107: UiObject localUiObject3;
      UiObject localUiObject6;
      if (localUiObject2 != null)
      {
        j = 1;
        this.rootSuccess = (j | i);
        PrintStream localPrintStream = System.out;
        StringBuilder localStringBuilder1 = new StringBuilder().append("rootWatcher:");
        if (localUiObject1 != null)
          break label211;
        bool1 = true;
        StringBuilder localStringBuilder2 = localStringBuilder1.append(bool1).append(" rootGet:");
        if (localUiObject2 != null)
          break label217;
        bool2 = true;
        localPrintStream.println(bool2 + " rootSuccess:" + this.rootSuccess);
        if (this.rootSuccess)
          break label272;
        localUiObject3 = UIHelper.FindByText("点击修复Root");
        if (localUiObject3 != null)
        {
          localUiObject6 = UIHelper.GetUiObjectByResourceid("com.kingroot.kinguser:id/main_view_circle");
          if (localUiObject6 == null);
        }
      }
      try
      {
        localUiObject6.click();
        System.out.println(" mainView click succ");
        SystemClock.sleep(1000L);
        UiObject localUiObject4 = UIHelper.FindByText("Root授权监控中");
        UiObject localUiObject5 = UIHelper.FindByText("已获取Root");
        if (localUiObject4 != null)
        {
          k = 1;
          if (localUiObject5 == null)
            break label266;
          m = 1;
          this.rootSuccess = (m | k);
          break label107;
          i = 0;
          continue;
          j = 0;
          break label25;
          label211: bool1 = false;
          break label59;
          label217: bool2 = false;
        }
      }
      catch (UiObjectNotFoundException localUiObjectNotFoundException)
      {
        while (true)
        {
          localUiObjectNotFoundException.printStackTrace();
          System.out.println(" mainView click error");
          try
          {
            localUiObject3.click();
            System.out.println(" clickToFix click succ");
          }
          catch (Exception localException)
          {
          }
          continue;
          int k = 0;
          continue;
          label266: int m = 0;
        }
      }
    }
    label272: System.out.println("MEIZUROOTSUCC");
  }

  public void testDemo()
    throws UiObjectNotFoundException
  {
    this.width = getUiDevice().getDisplayWidth();
    this.height = getUiDevice().getDisplayHeight();
    String str1 = PhoneUtils.getInstance().Model;
    String str2 = PhoneUtils.getInstance().Brand;
    System.out.println("start....RunMeiZu" + str1 + " " + str2 + " " + this.width + " X " + this.height);
    startClick();
    UIHelper.StartApp("com.kingroot.kinguser/.activitys.SliderMainActivity");
    SystemClock.sleep(5000L);
    UiSelector localUiSelector = new UiSelector().packageName("com.kingroot.kinguser");
    while (localUiSelector == null)
    {
      System.out.println(" try to start kinguser");
      UIHelper.StartApp("com.kingroot.kinguser/.activitys.SliderMainActivity");
    }
    for (int i = 0; i < 2; i++)
    {
      getUiDevice().swipe(this.width / 2, 4 * this.height / 5, this.width / 2, this.height / 5, this.height / 10 / 10);
      SystemClock.sleep(1000L);
    }
    UiObject localUiObject = UIHelper.FindByText("立即开启");
    PrintStream localPrintStream;
    StringBuilder localStringBuilder;
    if (localUiObject != null)
    {
      localUiObject.click();
      SystemClock.sleep(1000L);
      localPrintStream = System.out;
      localStringBuilder = new StringBuilder().append(" try to start kinguser");
      if (localUiSelector != null)
        break label293;
    }
    label293: for (boolean bool = true; ; bool = false)
    {
      localPrintStream.println(bool);
      strtRoot();
      return;
      System.out.println("can not find lijikaiqi");
      break;
    }
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     run.RunMeiZuRoot
 * JD-Core Version:    0.6.2
 */