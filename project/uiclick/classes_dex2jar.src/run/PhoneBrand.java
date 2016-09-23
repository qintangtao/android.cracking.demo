package run;

public class PhoneBrand
{
  private static PhoneBrand single = null;
  String Brand = "";
  String Model = "";

  private PhoneBrand()
  {
    String str = shellhelper.ExecShell("cat /system/build.prop");
    this.Brand = str.substring(str.indexOf("ro.product.brand=") + "ro.product.brand=".length()).split("\n")[0].trim();
    this.Model = str.substring(str.indexOf("ro.product.model=") + "ro.product.model=".length()).split("\n")[0].trim();
  }

  public static PhoneBrand getInstance()
  {
    try
    {
      if (single == null)
        single = new PhoneBrand();
      PhoneBrand localPhoneBrand = single;
      return localPhoneBrand;
    }
    finally
    {
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\uiclick\classes_dex2jar.jar
 * Qualified Name:     run.PhoneBrand
 * JD-Core Version:    0.6.2
 */