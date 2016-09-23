package com.android.utils;

public class PhoneUtils
{
  private static PhoneUtils single = null;
  public String Brand = "";
  public String Model = "";
  public int SDKVer = 0;

  private PhoneUtils()
  {
    String str1 = ShellHelper.ExecShell("cat /system/build.prop");
    this.Brand = str1.substring(str1.indexOf("ro.product.brand=") + "ro.product.brand=".length()).split("\n")[0].trim();
    this.Model = str1.substring(str1.indexOf("ro.product.model=") + "ro.product.model=".length()).split("\n")[0].trim();
    String str2 = ShellHelper.ExecShell(new String[] { "sh", "-c", "cat /system/build.prop | grep 'ro.build.version.sdk='" }).replace("ro.build.version.sdk=", "").replace("\n", "").trim();
    try
    {
      this.SDKVer = Integer.parseInt(str2);
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
  }

  public static PhoneUtils getInstance()
  {
    try
    {
      if (single == null)
        single = new PhoneUtils();
      PhoneUtils localPhoneUtils = single;
      return localPhoneUtils;
    }
    finally
    {
    }
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.utils.PhoneUtils
 * JD-Core Version:    0.6.2
 */