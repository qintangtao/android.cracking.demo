package run;

import com.android.uiautomator.core.UiObject;
import com.android.uiautomator.core.UiObjectNotFoundException;
import com.android.uiautomator.core.UiSelector;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ReadOppoImei
{
  public HashSet<String> ReadIMEI()
  {
    Pattern localPattern = Pattern.compile("^[0-9A-Fa-f]{13,18}+$");
    HashSet localHashSet = new HashSet();
    if ((UIHelper.GetAppVcode("com.android.engineeringmode") != 0) && (UIHelper.StartApp("com.android.engineeringmode/.IMeiAndPcbCheck")))
    {
      int i = 0;
      while (true)
        if (i < 10)
        {
          UiObject localUiObject = new UiObject(new UiSelector().className("android.widget.TextView").instance(i));
          if (localUiObject.exists())
            try
            {
              String str = localUiObject.getText().trim().toUpperCase();
              if ((str != null) && (localPattern.matcher(str).matches()) && (!localHashSet.contains(str)))
                localHashSet.add(str);
              i++;
            }
            catch (UiObjectNotFoundException localUiObjectNotFoundException)
            {
              while (true)
                localUiObjectNotFoundException.printStackTrace();
            }
        }
    }
    return localHashSet;
  }
}

/* Location:           C:\Users\Tato\Desktop\uiclick\classes_dex2jar.jar
 * Qualified Name:     run.ReadOppoImei
 * JD-Core Version:    0.6.2
 */