package com.android.runner.phone;

import android.graphics.Rect;
import com.android.uiautomator.core.UiDevice;
import com.android.uiautomator.core.UiObject;
import com.android.uiautomator.core.UiObjectNotFoundException;
import com.android.uiautomator.core.UiSelector;
import com.android.utils.UIHelper;
import java.io.PrintStream;

public class GiONEE
{
  public void run()
  {
    UiObject localUiObject1;
    UiObject localUiObject2;
    if (UIHelper.GetAppVcode("com.gionee.softmanager") != 0)
    {
      UIHelper.StartApp("com.gionee.softmanager/com.gionee.softmanager.MainActivity");
      UIHelper.StartApp("com.gionee.softmanager/.softmanager.SoftManagerActivity");
      UIHelper.FindClickButtonToNewWindow("继续", 2);
      if (UIHelper.FindClickButtonToNewWindow("应用权限", 2))
      {
        localUiObject1 = UIHelper.GetUiObjectByResourceid("com.gionee.softmanager:id/img_actionbar_custom");
        if (localUiObject1 == null)
        {
          System.out.println("a11");
          localUiObject1 = new UiObject(new UiSelector().className("android.widget.ImageView").instance(1));
          if (localUiObject1.exists())
            break label177;
          System.out.println("a12");
          localUiObject1 = null;
        }
        if (localUiObject1 != null)
          break label196;
        localUiObject2 = new UiObject(new UiSelector().instance(0));
      }
    }
    while (true)
    {
      try
      {
        Rect localRect = localUiObject2.getBounds();
        if ((localRect.left == 0) && (localRect.top == 0))
        {
          UiDevice.getInstance().click(-50 + localRect.right, 80);
          UIHelper.FindClickButton("全部信任", 1);
          UIHelper.Press_BACK(1);
        }
        return;
        label177: System.out.println("a13");
      }
      catch (UiObjectNotFoundException localUiObjectNotFoundException1)
      {
        localUiObjectNotFoundException1.printStackTrace();
        return;
      }
      label196: System.out.println("a14");
      try
      {
        if (localUiObject1.clickAndWaitForNewWindow())
        {
          UIHelper.FindClickButton("全部信任", 2);
          UIHelper.Press_BACK(1);
          return;
        }
      }
      catch (UiObjectNotFoundException localUiObjectNotFoundException2)
      {
        localUiObjectNotFoundException2.printStackTrace();
      }
    }
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.phone.GiONEE
 * JD-Core Version:    0.6.2
 */