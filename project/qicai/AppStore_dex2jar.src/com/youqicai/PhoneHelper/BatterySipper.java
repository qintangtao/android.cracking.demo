package com.youqicai.PhoneHelper;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.drawable.Drawable;
import android.os.BatteryStats.Uid;
import java.util.HashMap;

public class BatterySipper
  implements Comparable<BatterySipper>
{
  long cpuFgTime;
  long cpuTime;
  private String defaultPackageName;
  private BatteryInfo.DrainType drainType;
  long gpsTime;
  private Drawable icon;
  private final Context mContext;
  private final HashMap<String, UidToDetail> mUidCache = new HashMap();
  private String name;
  double noCoveragePercent;
  private double percent;
  long tcpBytesReceived;
  long tcpBytesSent;
  private BatteryStats.Uid uidObj;
  long usageTime;
  private double value;
  private double[] values;
  long wakeLockTime;
  long wifiRunningTime;

  public BatterySipper(Context paramContext, BatteryInfo.DrainType paramDrainType, BatteryStats.Uid paramUid, double[] paramArrayOfDouble)
  {
    this.mContext = paramContext;
    this.values = paramArrayOfDouble;
    this.drainType = paramDrainType;
    if (paramArrayOfDouble != null)
      this.value = paramArrayOfDouble[0];
    this.uidObj = paramUid;
    if (paramUid != null)
      getQuickNameIconForUid(paramUid);
  }

  public BatterySipper(Context paramContext, String paramString, double paramDouble)
  {
    this.mContext = paramContext;
    this.value = paramDouble;
    this.drainType = BatteryInfo.DrainType.APP;
    getQuickNameIcon(paramString);
  }

  private void getNameIcon()
  {
    PackageManager localPackageManager = this.mContext.getPackageManager();
    int i = this.uidObj.getUid();
    Drawable localDrawable = localPackageManager.getDefaultActivityIcon();
    String[] arrayOfString1 = localPackageManager.getPackagesForUid(i);
    if (arrayOfString1 == null)
    {
      this.name = Integer.toString(i);
      return;
    }
    String[] arrayOfString2 = new String[arrayOfString1.length];
    System.arraycopy(arrayOfString1, 0, arrayOfString2, 0, arrayOfString1.length);
    int j = 0;
    if (j < arrayOfString2.length);
    label345: 
    while (true)
    {
      try
      {
        ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(arrayOfString2[j], 0);
        CharSequence localCharSequence2 = localApplicationInfo.loadLabel(localPackageManager);
        if (localCharSequence2 != null)
          arrayOfString2[j] = localCharSequence2.toString();
        if (localApplicationInfo.icon != 0)
        {
          this.defaultPackageName = arrayOfString1[j];
          this.icon = localApplicationInfo.loadIcon(localPackageManager);
          if (this.icon == null)
            this.icon = localDrawable;
          if (arrayOfString2.length != 1)
            break label233;
          this.name = arrayOfString2[0];
          String str2 = Integer.toString(this.uidObj.getUid());
          UidToDetail localUidToDetail = new UidToDetail();
          localUidToDetail.name = this.name;
          localUidToDetail.icon = this.icon;
          localUidToDetail.packageName = this.defaultPackageName;
          this.mUidCache.put(str2, localUidToDetail);
          return;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException2)
      {
        j++;
      }
      break;
      label233: int k = arrayOfString1.length;
      int m = 0;
      while (true)
        while (true)
        {
          if (m >= k)
            break label345;
          String str1 = arrayOfString1[m];
          try
          {
            PackageInfo localPackageInfo = localPackageManager.getPackageInfo(str1, 0);
            if (localPackageInfo.sharedUserLabel != 0)
            {
              CharSequence localCharSequence1 = localPackageManager.getText(str1, localPackageInfo.sharedUserLabel, localPackageInfo.applicationInfo);
              if (localCharSequence1 != null)
              {
                this.name = localCharSequence1.toString();
                if (localPackageInfo.applicationInfo.icon == 0)
                  break;
                this.defaultPackageName = str1;
                this.icon = localPackageInfo.applicationInfo.loadIcon(localPackageManager);
              }
            }
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException1)
          {
            m++;
          }
        }
    }
  }

  private void getQuickNameIcon(String paramString)
  {
    PackageManager localPackageManager = this.mContext.getPackageManager();
    try
    {
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(paramString, 0);
      this.icon = localApplicationInfo.loadIcon(localPackageManager);
      this.name = localApplicationInfo.loadLabel(localPackageManager).toString();
      this.defaultPackageName = paramString;
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
  }

  private void getQuickNameIconForUid(BatteryStats.Uid paramUid)
  {
    int i = paramUid.getUid();
    String str = Integer.toString(i);
    if (this.mUidCache.containsKey(str))
    {
      UidToDetail localUidToDetail = (UidToDetail)this.mUidCache.get(str);
      this.defaultPackageName = localUidToDetail.packageName;
      this.name = localUidToDetail.name;
      this.icon = localUidToDetail.icon;
    }
    do
    {
      return;
      if (this.mContext.getPackageManager().getPackagesForUid(i) != null)
        break;
      if (i == 0)
      {
        this.drainType = BatteryInfo.DrainType.KERNEL;
        return;
      }
    }
    while (!"mediaserver".equals(this.name));
    this.drainType = BatteryInfo.DrainType.MEDIASERVER;
    return;
    getNameIcon();
  }

  public int compareTo(BatterySipper paramBatterySipper)
  {
    return (int)(paramBatterySipper.getValue() - getValue());
  }

  public String getDefaultPackageName()
  {
    return this.defaultPackageName;
  }

  public BatteryInfo.DrainType getDrainType()
  {
    return this.drainType;
  }

  public Drawable getIcon()
  {
    return this.icon;
  }

  public String getName()
  {
    return this.name;
  }

  public double getPercentOfTotal()
  {
    return this.percent;
  }

  public double getValue()
  {
    return this.value;
  }

  public double[] getValues()
  {
    return this.values;
  }

  public void setIcon(Drawable paramDrawable)
  {
    this.icon = paramDrawable;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void setPercent(double paramDouble)
  {
    this.percent = paramDouble;
  }

  public void setValue(double paramDouble)
  {
    this.value = paramDouble;
  }

  public String toString()
  {
    return "BatterySipper [name=" + this.name + ", value=" + this.value + ", usageTime=" + this.usageTime + ", cpuTime=" + this.cpuTime + ", gpsTime=" + this.gpsTime + ", percent=" + this.percent + ", defaultPackageName=" + this.defaultPackageName + ", drainType=" + this.drainType + "]";
  }

  static class UidToDetail
  {
    Drawable icon;
    String name;
    String packageName;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.PhoneHelper.BatterySipper
 * JD-Core Version:    0.6.2
 */