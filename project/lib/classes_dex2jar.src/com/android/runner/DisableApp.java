package com.android.runner;

import com.android.uiautomator.core.UiDevice;
import com.android.uiautomator.core.UiObject;
import com.android.uiautomator.core.UiObjectNotFoundException;
import com.android.utils.PhoneUtils;
import com.android.utils.ShellHelper;
import com.android.utils.UIHelper;
import java.io.PrintStream;

public class DisableApp
{
  String[] blacklist = { "com.huawei.appmarket", "com.android.appmarket", "com.lenovo.magicplus", "com.tencen1.mm", "com.oppo.market", "com.qihoo360.mobilesafe", "com.qihoo.appstore" };
  boolean iscandisableapp = true;
  Boolean iscandisablesystem = Boolean.valueOf(true);
  String text_disable = "";
  String[] whitelist = { "com.mycheering.apps", "com.mycheering.launcher", "com.fengyou.games", "com.dapai178.chesshall", "com.huawei.gamebox", "com.aspire.mm", "com.eshore.ezone", "com.iflytek.inputmethod", "com.youqicai.AppStore" };

  void disableXiaomi()
  {
    if (UIHelper.FindClickButtonToNewWindow("自定义通知", 2))
    {
      UIHelper.CloseAllCheckBox(3);
      UiDevice.getInstance().pressBack();
    }
  }

  public void disableapp()
  {
    System.out.println("begin disable app");
    String[] arrayOfString1 = ShellHelper.ExecShell("pm list package -e -s").split("\n");
    int i = arrayOfString1.length;
    int j = 0;
    if (j < i)
    {
      String str1 = arrayOfString1[j];
      String str2;
      if (this.iscandisablesystem.booleanValue())
      {
        str2 = str1.replace("package:", "").trim();
        if (!isinwhitelist(str2))
          break label73;
      }
      while (true)
      {
        j++;
        break;
        label73: if (isinblacklist(str2))
        {
          disableapp(str2);
        }
        else
        {
          String[] arrayOfString2 = new String[3];
          arrayOfString2[0] = "sh";
          arrayOfString2[1] = "-c";
          arrayOfString2[2] = ("dumpsys package " + str2 + "  |grep 'Scheme: \"market\"'");
          if (ShellHelper.ExecShell(arrayOfString2).contains("Scheme: \"market\""))
            disableapp(str2);
        }
      }
    }
  }

  void disableapp(String paramString)
  {
    System.out.println("find APP:" + paramString);
    String[] arrayOfString1 = new String[3];
    arrayOfString1[0] = "sh";
    arrayOfString1[1] = "-c";
    arrayOfString1[2] = ("dumpsys package " + paramString + "  | grep 'versionName='");
    String str1 = ShellHelper.ExecShell(arrayOfString1);
    String[] arrayOfString2;
    if (str1.contains("versionName="))
    {
      arrayOfString2 = str1.replace("versionName=", "").trim().split("\n");
      if (arrayOfString2.length <= 1);
    }
    else
    {
      return;
    }
    String str2 = arrayOfString2[0].trim();
    ShellHelper.ExecShell("am start -a android.settings.APPLICATION_DETAILS_SETTINGS -d package:" + paramString);
    if (UIHelper.ExistText(str2))
      disableapp(paramString, false);
    while (true)
    {
      UiDevice.getInstance().pressBack();
      return;
      UIHelper.CloseTopWindow();
      try
      {
        Thread.sleep(1000L);
        if (!UIHelper.ExistText(str2))
          continue;
        disableapp(paramString, false);
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          localInterruptedException.printStackTrace();
      }
    }
  }

  void disableapp(String paramString, boolean paramBoolean)
  {
    if (PhoneUtils.getInstance().Brand.equals("Xiaomi"))
      if (!paramBoolean);
    while (true)
    {
      return;
      UiObject localUiObject2 = UIHelper.FindByTextClassName("停用", "android.widget.Button");
      if (localUiObject2 != null)
      {
        try
        {
          if (localUiObject2.isEnabled())
          {
            if (!localUiObject2.clickAndWaitForNewWindow())
              continue;
            UIHelper.FindClickButton("确定", 3);
            return;
          }
        }
        catch (UiObjectNotFoundException localUiObjectNotFoundException2)
        {
          localUiObjectNotFoundException2.printStackTrace();
          return;
        }
        disableXiaomi();
      }
      else
      {
        disableXiaomi();
        return;
        System.out.println("find shop:" + paramString + ", is updata app:" + paramBoolean);
        if (!paramBoolean)
        {
          if (((PhoneUtils.getInstance().Brand.equals("HUAWEI")) || (PhoneUtils.getInstance().Brand.equals("Honor")) || (PhoneUtils.getInstance().Brand.equals("Huawei"))) && (this.text_disable.equals("FK!")))
            this.text_disable = "";
          if (this.text_disable.equals(""))
          {
            if (UIHelper.FindByTextClassName("停用", "android.widget.Button") == null)
              break label256;
            this.text_disable = "停用";
            System.out.print("stop keyword is:" + this.text_disable);
          }
          while (true)
            if (this.iscandisableapp)
            {
              if (!UIHelper.FindClickRealButtonToNewWindow(this.text_disable, 2))
                break;
              UIHelper.FindClickButton("确定", 2);
              return;
              label256: if (UIHelper.FindByTextClassName("禁用", "android.widget.Button") != null)
              {
                this.text_disable = "禁用";
                System.out.print("stop keyword is:" + this.text_disable);
              }
              else
              {
                this.iscandisableapp = false;
                this.text_disable = "FK!";
                if (UIHelper.FindByText("显示通知") == null)
                {
                  this.iscandisablesystem = Boolean.valueOf(false);
                  return;
                }
              }
            }
          UiObject localUiObject1 = UIHelper.FindByText("显示通知");
          if (localUiObject1 != null)
            try
            {
              if (localUiObject1.isChecked())
              {
                localUiObject1.clickAndWaitForNewWindow();
                UIHelper.FindClickButton("确定", 3);
                return;
              }
            }
            catch (UiObjectNotFoundException localUiObjectNotFoundException1)
            {
              localUiObjectNotFoundException1.printStackTrace();
            }
        }
      }
    }
  }

  boolean isinblacklist(String paramString)
  {
    String[] arrayOfString = this.blacklist;
    int i = arrayOfString.length;
    for (int j = 0; j < i; j++)
      if (arrayOfString[j].equals(paramString))
        return true;
    return false;
  }

  boolean isinwhitelist(String paramString)
  {
    String[] arrayOfString = this.whitelist;
    int i = arrayOfString.length;
    for (int j = 0; j < i; j++)
      if (arrayOfString[j].equals(paramString))
        return true;
    return false;
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.DisableApp
 * JD-Core Version:    0.6.2
 */