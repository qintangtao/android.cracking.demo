package com.youqicai.manager;

import com.youqicai.AppStore.entity.AppInfoEntity;
import java.util.Comparator;

public class ApkEditComparator
  implements Comparator<AppInfoEntity>
{
  public int compare(AppInfoEntity paramAppInfoEntity1, AppInfoEntity paramAppInfoEntity2)
  {
    try
    {
      if (paramAppInfoEntity1.getDownloadTime() == null)
        return 0;
      if ((paramAppInfoEntity2.getDownloadTime() != null) && (Float.valueOf(paramAppInfoEntity1.getDownloadTime()) != Float.valueOf(paramAppInfoEntity2.getDownloadTime())))
      {
        float f1 = Float.valueOf(paramAppInfoEntity1.getDownloadTime()).floatValue();
        float f2 = Float.valueOf(paramAppInfoEntity2.getDownloadTime()).floatValue();
        if (f1 < f2)
          return 1;
        return -1;
      }
    }
    catch (Exception localException)
    {
    }
    return 0;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.manager.ApkEditComparator
 * JD-Core Version:    0.6.2
 */