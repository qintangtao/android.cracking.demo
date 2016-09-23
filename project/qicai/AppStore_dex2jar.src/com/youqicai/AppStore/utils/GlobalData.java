package com.youqicai.AppStore.utils;

import java.util.HashSet;
import java.util.Set;

public class GlobalData
{
  private static GlobalData globalData;
  private static Set<String> installPackage = new HashSet();
  public static boolean mAssistAutoInstallSwitchOn = false;

  public static GlobalData getInstance()
  {
    try
    {
      if (globalData == null)
        globalData = new GlobalData();
      GlobalData localGlobalData = globalData;
      return localGlobalData;
    }
    finally
    {
    }
  }

  public void addInstallPackage(String paramString)
  {
    installPackage.add(paramString);
  }

  public void clearInstallPackageData()
  {
    installPackage.clear();
  }

  public boolean hasInstallingPackageFromMySelf()
  {
    return installPackage.size() != 0;
  }

  public void removeInstallPackage(String paramString)
  {
    if (installPackage.contains(paramString))
      installPackage.remove(paramString);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.utils.GlobalData
 * JD-Core Version:    0.6.2
 */