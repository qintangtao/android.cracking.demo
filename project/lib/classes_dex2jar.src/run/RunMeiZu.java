package run;

import android.os.Bundle;
import com.android.runner.phone.Meizu_MX3;
import com.android.runner.phone.Meizu_m1_note;
import com.android.runner.phone.Meizu_m2_note;
import com.android.uiautomator.core.UiObjectNotFoundException;
import com.android.uiautomator.testrunner.UiAutomatorTestCase;
import com.android.utils.PhoneUtils;
import java.io.PrintStream;

public class RunMeiZu extends UiAutomatorTestCase
{
  public void testDemo()
    throws UiObjectNotFoundException
  {
    String str1 = PhoneUtils.getInstance().Model;
    String str2 = PhoneUtils.getInstance().Brand;
    System.out.println("start....RunMeiZu");
    String str3 = (String)getParams().get("p");
    System.out.println("cmd:" + str3);
    System.out.println("" + str2 + " " + str1);
    if (str2.equals("Meizu"))
    {
      if (!str1.contains("m1 note"))
        break label125;
      new Meizu_m1_note().LogInLogOut(str3);
    }
    label125: 
    do
    {
      return;
      if (str1.contains("MX3"))
      {
        new Meizu_MX3().LogInLogOut(str3);
        return;
      }
    }
    while (!str1.contains("m2 note"));
    new Meizu_m2_note().LogInLogOut(str3);
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     run.RunMeiZu
 * JD-Core Version:    0.6.2
 */