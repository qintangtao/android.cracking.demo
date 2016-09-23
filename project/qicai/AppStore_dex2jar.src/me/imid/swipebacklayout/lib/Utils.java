package me.imid.swipebacklayout.lib;

import android.app.Activity;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.NumberFormat;

public class Utils
{
  public static void convertActivityFromTranslucent(Activity paramActivity)
  {
    try
    {
      Method localMethod = Activity.class.getDeclaredMethod("convertFromTranslucent", new Class[0]);
      localMethod.setAccessible(true);
      localMethod.invoke(paramActivity, new Object[0]);
      return;
    }
    catch (Throwable localThrowable)
    {
    }
  }

  public static void convertActivityToTranslucent(Activity paramActivity)
  {
    for (int i = 0; ; i++)
      try
      {
        Class[] arrayOfClass = Activity.class.getDeclaredClasses();
        Object localObject = null;
        int j = arrayOfClass.length;
        if (i < j)
        {
          Class localClass = arrayOfClass[i];
          if (localClass.getSimpleName().contains("TranslucentConversionListener"))
            localObject = localClass;
        }
        else
        {
          Method localMethod = Activity.class.getDeclaredMethod("convertToTranslucent", new Class[] { localObject });
          localMethod.setAccessible(true);
          localMethod.invoke(paramActivity, new Object[] { null });
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        return;
      }
  }

  public static String formatSize(int paramInt, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    new BigDecimal(".0");
    DecimalFormat localDecimalFormat = (DecimalFormat)NumberFormat.getInstance();
    localDecimalFormat.setMaximumFractionDigits(1);
    if ((paramInt >= 0) && (paramInt < 10000))
      localStringBuilder.append(paramInt).append(paramString);
    while (true)
    {
      return localStringBuilder.toString();
      if ((paramInt >= 10000) && (paramInt < 100000000))
        localStringBuilder.append(localDecimalFormat.format(1.0D * paramInt / 10000.0D) + "万").append(paramString);
      else if (paramInt >= 100000000)
        localStringBuilder.append(localDecimalFormat.format(1.0D * paramInt / 100000000.0D) + "亿").append(paramString);
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     me.imid.swipebacklayout.lib.Utils
 * JD-Core Version:    0.6.2
 */