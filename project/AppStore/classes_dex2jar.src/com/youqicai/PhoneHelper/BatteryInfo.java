package com.youqicai.PhoneHelper;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.BatteryStats.Timer;
import android.os.BatteryStats.Uid;
import android.os.BatteryStats.Uid.Proc;
import android.os.BatteryStats.Uid.Sensor;
import android.os.BatteryStats.Uid.Wakelock;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseArray;
import com.android.internal.app.IBatteryStats;
import com.android.internal.app.IBatteryStats.Stub;
import com.android.internal.os.BatteryStatsImpl;
import com.android.internal.os.PowerProfile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class BatteryInfo
{
  private static final boolean DEBUG = true;
  private static final int MIN_POWER_THRESHOLD = 5;
  public static final int MSG_UPDATE_NAME_ICON = 1;
  private static final String TAG = "BatteryInfo";
  private static BatteryStatsImpl mStats;
  private long mAppWifiRunning;
  private IBatteryStats mBatteryInfo;
  private double mBluetoothPower;
  private final List<BatterySipper> mBluetoothSippers = new ArrayList();
  private Context mContext;
  public double mMaxPower = 1.0D;
  private double mMinPercentOfTotal = 0.005D;
  private PowerProfile mPowerProfile;
  private long mStatsPeriod = 0L;
  private int mStatsType = 3;
  private double mTotalPower;
  private final List<BatterySipper> mUsageList = new ArrayList();
  private double mWifiPower;
  private final List<BatterySipper> mWifiSippers = new ArrayList();
  public int testType = 1;

  public BatteryInfo(Context paramContext)
  {
    this.mContext = paramContext;
    this.mBatteryInfo = IBatteryStats.Stub.asInterface(ServiceManager.getService("batteryinfo"));
    this.mPowerProfile = new PowerProfile(paramContext);
  }

  private void addBluetoothUsage(long paramLong)
  {
    long l = mStats.getBluetoothOnTime(paramLong, this.mStatsType) / 1000L;
    double d = l * this.mPowerProfile.getAveragePower("bluetooth.on") / 1000.0D + mStats.getBluetoothPingCount() * this.mPowerProfile.getAveragePower("bluetooth.at") / 1000.0D;
    aggregateSippers(addEntry(DrainType.BLUETOOTH, l, d + this.mBluetoothPower), this.mBluetoothSippers, "Bluetooth");
  }

  private BatterySipper addEntry(DrainType paramDrainType, long paramLong, double paramDouble)
  {
    if (paramDouble > this.mMaxPower)
      this.mMaxPower = paramDouble;
    this.mTotalPower = (paramDouble + this.mTotalPower);
    BatterySipper localBatterySipper = new BatterySipper(this.mContext, paramDrainType, null, new double[] { paramDouble });
    localBatterySipper.usageTime = paramLong;
    this.mUsageList.add(localBatterySipper);
    return localBatterySipper;
  }

  private void addIdleUsage(long paramLong)
  {
    long l = (paramLong - mStats.getScreenOnTime(paramLong, this.mStatsType)) / 1000L;
    double d = l * this.mPowerProfile.getAveragePower("cpu.idle") / 1000.0D;
    addEntry(DrainType.IDLE, l, d);
  }

  private void addPhoneUsage(long paramLong)
  {
    long l = mStats.getPhoneOnTime(paramLong, this.mStatsType) / 1000L;
    double d = this.mPowerProfile.getAveragePower("radio.active") * l / 1000.0D;
    addEntry(DrainType.PHONE, l, d);
  }

  private void addRadioUsage(long paramLong)
  {
    double d1 = 0.0D;
    long l1 = 0L;
    for (int i = 0; i < 5; i++)
    {
      long l2 = mStats.getPhoneSignalStrengthTime(i, paramLong, this.mStatsType) / 1000L;
      d1 += l2 / 1000L * this.mPowerProfile.getAveragePower("radio.on", i);
      l1 += l2;
    }
    double d2 = d1 + mStats.getPhoneSignalScanningTime(paramLong, this.mStatsType) / 1000L / 1000L * this.mPowerProfile.getAveragePower("radio.scanning");
    BatterySipper localBatterySipper = addEntry(DrainType.CELL, l1, d2);
    if (l1 != 0L)
      localBatterySipper.noCoveragePercent = (100.0D * (mStats.getPhoneSignalStrengthTime(0, paramLong, this.mStatsType) / 1000L) / l1);
  }

  private void addScreenUsage(long paramLong)
  {
    long l1 = mStats.getScreenOnTime(paramLong, this.mStatsType) / 1000L;
    double d1 = 0.0D + l1 * this.mPowerProfile.getAveragePower("screen.on");
    double d2 = this.mPowerProfile.getAveragePower("screen.full");
    for (int i = 0; i < 5; i++)
    {
      double d4 = d2 * (0.5F + i) / 5.0D;
      long l2 = mStats.getScreenBrightnessTime(i, paramLong, this.mStatsType) / 1000L;
      d1 += d4 * l2;
      Log.i("BatteryInfo", "Screen bin power = " + (int)d4 + ", time = " + l2);
    }
    double d3 = d1 / 1000.0D;
    addEntry(DrainType.SCREEN, l1, d3);
  }

  private void addWiFiUsage(long paramLong)
  {
    if (!versionValid())
      return;
    long l1 = mStats.getWifiOnTime(paramLong, this.mStatsType) / 1000L;
    long l2 = mStats.getGlobalWifiRunningTime(paramLong, this.mStatsType) / 1000L;
    Log.i("BatteryInfo", "WIFI runningTime=" + l2 + " app runningTime=" + this.mAppWifiRunning);
    long l3 = l2 - this.mAppWifiRunning;
    if (l3 < 0L)
      l3 = 0L;
    double d = (l1 * 0L * this.mPowerProfile.getAveragePower("wifi.on") + l3 * this.mPowerProfile.getAveragePower("wifi.on")) / 1000.0D;
    Log.i("BatteryInfo", "WIFI power=" + d + " from procs=" + this.mWifiPower);
    aggregateSippers(addEntry(DrainType.WIFI, l3, d + this.mWifiPower), this.mWifiSippers, "WIFI");
  }

  private void aggregateSippers(BatterySipper paramBatterySipper, List<BatterySipper> paramList, String paramString)
  {
    for (int i = 0; i < paramList.size(); i++)
    {
      BatterySipper localBatterySipper = (BatterySipper)paramList.get(i);
      Log.i("BatteryInfo", paramString + " adding sipper " + localBatterySipper + ": cpu=" + localBatterySipper.cpuTime);
      paramBatterySipper.cpuTime += localBatterySipper.cpuTime;
      paramBatterySipper.gpsTime += localBatterySipper.gpsTime;
      paramBatterySipper.wifiRunningTime += localBatterySipper.wifiRunningTime;
      paramBatterySipper.cpuFgTime += localBatterySipper.cpuFgTime;
      paramBatterySipper.wakeLockTime += localBatterySipper.wakeLockTime;
      paramBatterySipper.tcpBytesReceived += localBatterySipper.tcpBytesReceived;
      paramBatterySipper.tcpBytesSent += localBatterySipper.tcpBytesSent;
    }
  }

  private List<BatterySipper> getAppListCpuTime()
  {
    this.testType = 2;
    ArrayList localArrayList = new ArrayList();
    long l1 = 0L;
    List localList = ((ActivityManager)this.mContext.getSystemService("activity")).getRunningAppProcesses();
    HashMap localHashMap = new HashMap();
    Iterator localIterator = localList.iterator();
    if (localIterator.hasNext())
    {
      ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
      long l2 = getAppProcessTime(localRunningAppProcessInfo.pid);
      String[] arrayOfString = localRunningAppProcessInfo.pkgList;
      if (arrayOfString == null)
      {
        if (localHashMap.containsKey(localRunningAppProcessInfo.processName))
        {
          BatterySipper localBatterySipper4 = (BatterySipper)localHashMap.get(localRunningAppProcessInfo.processName);
          localBatterySipper4.setValue(localBatterySipper4.getValue() + l2);
        }
        while (true)
        {
          l1 += l2;
          break;
          localHashMap.put(localRunningAppProcessInfo.processName, new BatterySipper(this.mContext, localRunningAppProcessInfo.processName, l2));
        }
      }
      int j = arrayOfString.length;
      int k = 0;
      label187: String str;
      if (k < j)
      {
        str = arrayOfString[k];
        if (!localHashMap.containsKey(str))
          break label248;
        BatterySipper localBatterySipper3 = (BatterySipper)localHashMap.get(str);
        localBatterySipper3.setValue(localBatterySipper3.getValue() + l2);
      }
      while (true)
      {
        l1 += l2;
        k++;
        break label187;
        break;
        label248: BatterySipper localBatterySipper2 = new BatterySipper(this.mContext, str, l2);
        localHashMap.put(str, localBatterySipper2);
      }
    }
    if (l1 == 0L)
      l1 = 1L;
    localArrayList.addAll(localHashMap.values());
    int i = -1 + localArrayList.size();
    if (i >= 0)
    {
      BatterySipper localBatterySipper1 = (BatterySipper)localArrayList.get(i);
      double d = 100.0D * localBatterySipper1.getValue() / l1;
      if (d < this.mMinPercentOfTotal)
        localArrayList.remove(i);
      while (true)
      {
        i--;
        break;
        localBatterySipper1.setPercent(d);
      }
    }
    Comparator local1 = new Comparator()
    {
      public int compare(BatterySipper paramAnonymousBatterySipper1, BatterySipper paramAnonymousBatterySipper2)
      {
        double d1 = paramAnonymousBatterySipper1.getPercentOfTotal();
        double d2 = paramAnonymousBatterySipper2.getPercentOfTotal();
        if (d1 - d2 < 0.0D)
          return 1;
        if (d1 - d2 > 0.0D)
          return -1;
        return 0;
      }
    };
    Collections.sort(localArrayList, local1);
    return localArrayList;
  }

  // ERROR //
  private long getAppProcessTime(int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: new 397	java/io/FileInputStream
    //   7: dup
    //   8: new 203	java/lang/StringBuilder
    //   11: dup
    //   12: invokespecial 204	java/lang/StringBuilder:<init>	()V
    //   15: ldc_w 399
    //   18: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   21: iload_1
    //   22: invokevirtual 213	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   25: ldc_w 401
    //   28: invokevirtual 210	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   34: invokespecial 404	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   37: astore 4
    //   39: sipush 1024
    //   42: newarray byte
    //   44: astore 18
    //   46: new 406	java/io/ByteArrayOutputStream
    //   49: dup
    //   50: invokespecial 407	java/io/ByteArrayOutputStream:<init>	()V
    //   53: astore 19
    //   55: aload 4
    //   57: aload 18
    //   59: invokevirtual 411	java/io/FileInputStream:read	([B)I
    //   62: istore 20
    //   64: iload 20
    //   66: iconst_m1
    //   67: if_icmpeq +40 -> 107
    //   70: aload 19
    //   72: aload 18
    //   74: iconst_0
    //   75: iload 20
    //   77: invokevirtual 415	java/io/ByteArrayOutputStream:write	([BII)V
    //   80: goto -25 -> 55
    //   83: astore 16
    //   85: aload 4
    //   87: astore_2
    //   88: aload 16
    //   90: invokevirtual 418	java/io/FileNotFoundException:printStackTrace	()V
    //   93: aload_2
    //   94: ifnull +7 -> 101
    //   97: aload_2
    //   98: invokevirtual 421	java/io/FileInputStream:close	()V
    //   101: aload_3
    //   102: ifnonnull +100 -> 202
    //   105: lconst_0
    //   106: lreturn
    //   107: aload 19
    //   109: invokevirtual 422	java/io/ByteArrayOutputStream:toString	()Ljava/lang/String;
    //   112: astore_3
    //   113: aload 19
    //   115: invokevirtual 423	java/io/ByteArrayOutputStream:close	()V
    //   118: aload 4
    //   120: ifnull +183 -> 303
    //   123: aload 4
    //   125: invokevirtual 421	java/io/FileInputStream:close	()V
    //   128: goto -27 -> 101
    //   131: astore 21
    //   133: aload 21
    //   135: invokevirtual 424	java/io/IOException:printStackTrace	()V
    //   138: goto -37 -> 101
    //   141: astore 17
    //   143: aload 17
    //   145: invokevirtual 424	java/io/IOException:printStackTrace	()V
    //   148: goto -47 -> 101
    //   151: astore 5
    //   153: aload 5
    //   155: invokevirtual 424	java/io/IOException:printStackTrace	()V
    //   158: aload_2
    //   159: ifnull -58 -> 101
    //   162: aload_2
    //   163: invokevirtual 421	java/io/FileInputStream:close	()V
    //   166: goto -65 -> 101
    //   169: astore 8
    //   171: aload 8
    //   173: invokevirtual 424	java/io/IOException:printStackTrace	()V
    //   176: goto -75 -> 101
    //   179: astore 6
    //   181: aload_2
    //   182: ifnull +7 -> 189
    //   185: aload_2
    //   186: invokevirtual 421	java/io/FileInputStream:close	()V
    //   189: aload 6
    //   191: athrow
    //   192: astore 7
    //   194: aload 7
    //   196: invokevirtual 424	java/io/IOException:printStackTrace	()V
    //   199: goto -10 -> 189
    //   202: aload_3
    //   203: ldc_w 426
    //   206: invokevirtual 432	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   209: astore 9
    //   211: aload 9
    //   213: ifnull +11 -> 224
    //   216: aload 9
    //   218: arraylength
    //   219: bipush 17
    //   221: if_icmpge +5 -> 226
    //   224: lconst_0
    //   225: lreturn
    //   226: aload_0
    //   227: aload 9
    //   229: bipush 13
    //   231: aaload
    //   232: invokespecial 436	com/youqicai/PhoneHelper/BatteryInfo:string2Long	(Ljava/lang/String;)J
    //   235: lstore 10
    //   237: aload_0
    //   238: aload 9
    //   240: bipush 14
    //   242: aaload
    //   243: invokespecial 436	com/youqicai/PhoneHelper/BatteryInfo:string2Long	(Ljava/lang/String;)J
    //   246: lstore 12
    //   248: aload_0
    //   249: aload 9
    //   251: bipush 15
    //   253: aaload
    //   254: invokespecial 436	com/youqicai/PhoneHelper/BatteryInfo:string2Long	(Ljava/lang/String;)J
    //   257: lstore 14
    //   259: aload_0
    //   260: aload 9
    //   262: bipush 16
    //   264: aaload
    //   265: invokespecial 436	com/youqicai/PhoneHelper/BatteryInfo:string2Long	(Ljava/lang/String;)J
    //   268: lload 14
    //   270: lload 10
    //   272: lload 12
    //   274: ladd
    //   275: ladd
    //   276: ladd
    //   277: lreturn
    //   278: astore 6
    //   280: aload 4
    //   282: astore_2
    //   283: goto -102 -> 181
    //   286: astore 5
    //   288: aload 4
    //   290: astore_2
    //   291: goto -138 -> 153
    //   294: astore 16
    //   296: aconst_null
    //   297: astore_2
    //   298: aconst_null
    //   299: astore_3
    //   300: goto -212 -> 88
    //   303: goto -202 -> 101
    //
    // Exception table:
    //   from	to	target	type
    //   39	55	83	java/io/FileNotFoundException
    //   55	64	83	java/io/FileNotFoundException
    //   70	80	83	java/io/FileNotFoundException
    //   107	118	83	java/io/FileNotFoundException
    //   123	128	131	java/io/IOException
    //   97	101	141	java/io/IOException
    //   4	39	151	java/io/IOException
    //   162	166	169	java/io/IOException
    //   4	39	179	finally
    //   88	93	179	finally
    //   153	158	179	finally
    //   185	189	192	java/io/IOException
    //   39	55	278	finally
    //   55	64	278	finally
    //   70	80	278	finally
    //   107	118	278	finally
    //   39	55	286	java/io/IOException
    //   55	64	286	java/io/IOException
    //   70	80	286	java/io/IOException
    //   107	118	286	java/io/IOException
    //   4	39	294	java/io/FileNotFoundException
  }

  private double getAverageDataCost()
  {
    double d1 = this.mPowerProfile.getAveragePower("wifi.active") / 3600.0D;
    double d2 = this.mPowerProfile.getAveragePower("radio.active") / 3600.0D;
    long l1 = mStats.getMobileTcpBytesReceived(this.mStatsType) + mStats.getMobileTcpBytesSent(this.mStatsType);
    long l2 = mStats.getTotalTcpBytesReceived(this.mStatsType) + mStats.getTotalTcpBytesSent(this.mStatsType) - l1;
    long l3 = mStats.getRadioDataUptime() / 1000L;
    if (l3 != 0L);
    for (long l4 = 1000L * (8L * l1) / l3; ; l4 = 200000L)
    {
      double d3 = d2 / (l4 / 8L);
      double d4 = d1 / 125000.0D;
      if (l2 + l1 == 0L)
        break;
      return (d3 * l1 + d4 * l2) / (l1 + l2);
    }
    return 0.0D;
  }

  private BatteryStatsImpl load()
  {
    BatteryStatsImpl localBatteryStatsImpl = null;
    try
    {
      byte[] arrayOfByte = this.mBatteryInfo.getStatistics();
      Parcel localParcel = Parcel.obtain();
      localParcel.unmarshall(arrayOfByte, 0, arrayOfByte.length);
      localParcel.setDataPosition(0);
      localBatteryStatsImpl = (BatteryStatsImpl)BatteryStatsImpl.CREATOR.createFromParcel(localParcel);
      if (versionValid())
        localBatteryStatsImpl.distributeWorkLocked(0);
      return localBatteryStatsImpl;
    }
    catch (Exception localException)
    {
      Log.e("BatteryInfo", "RemoteException:", localException);
      return localBatteryStatsImpl;
    }
    catch (Error localError)
    {
      Log.e("BatteryInfo", "Error:", localError);
    }
    return localBatteryStatsImpl;
  }

  private void processAppUsage()
  {
    SensorManager localSensorManager = (SensorManager)this.mContext.getSystemService("sensor");
    int i = this.mStatsType;
    int j = this.mPowerProfile.getNumSpeedSteps();
    double[] arrayOfDouble = new double[j];
    long[] arrayOfLong = new long[j];
    for (int k = 0; k < j; k++)
      arrayOfDouble[k] = this.mPowerProfile.getAveragePower("cpu.active", k);
    double d1 = getAverageDataCost();
    long l1 = mStats.computeBatteryRealtime(1000L * SystemClock.elapsedRealtime(), i);
    this.mStatsPeriod = l1;
    SparseArray localSparseArray = mStats.getUidStats();
    int m = localSparseArray.size();
    int n = 0;
    if (n < m)
    {
      BatteryStats.Uid localUid = (BatteryStats.Uid)localSparseArray.valueAt(n);
      double d2 = 0.0D;
      double d3 = 0.0D;
      String str = null;
      Map localMap = localUid.getProcessStats();
      long l2 = 0L;
      long l3 = 0L;
      long l4 = 0L;
      long l5 = 0L;
      if (localMap.size() > 0)
      {
        Iterator localIterator3 = localMap.entrySet().iterator();
        while (localIterator3.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator3.next();
          Log.i("BatteryInfo", "Process name = " + (String)localEntry.getKey());
          BatteryStats.Uid.Proc localProc = (BatteryStats.Uid.Proc)localEntry.getValue();
          long l11 = localProc.getUserTime(i);
          long l12 = localProc.getSystemTime(i);
          l3 += 10L * localProc.getForegroundTime(i);
          long l13 = 10L * (l11 + l12);
          int i2 = 0;
          for (int i3 = 0; i3 < j; i3++)
          {
            arrayOfLong[i3] = localProc.getTimeAtCpuSpeedStep(i3, i);
            i2 = (int)(i2 + arrayOfLong[i3]);
          }
          if (i2 == 0)
            i2 = 1;
          double d8 = 0.0D;
          for (int i4 = 0; i4 < j; i4++)
            d8 += arrayOfLong[i4] / i2 * l13 * arrayOfDouble[i4];
          l2 += l13;
          d2 += d8;
          if ((str == null) || (str.startsWith("*")))
          {
            d3 = d8;
            str = (String)localEntry.getKey();
          }
          else if ((d3 < d8) && (!((String)localEntry.getKey()).startsWith("*")))
          {
            d3 = d8;
            str = (String)localEntry.getKey();
          }
        }
      }
      if (l3 > l2)
      {
        if (l3 > 10000L + l2)
          Log.i("BatteryInfo", "WARNING! Cputime is more than 10 seconds behind Foreground time");
        l2 = l3;
      }
      double d4 = d2 / 1000.0D;
      Iterator localIterator1 = localUid.getWakelockStats().entrySet().iterator();
      while (localIterator1.hasNext())
      {
        BatteryStats.Timer localTimer = ((BatteryStats.Uid.Wakelock)((Map.Entry)localIterator1.next()).getValue()).getWakeTime(0);
        if (localTimer != null)
          l4 += localTimer.getTotalTimeLocked(l1, i);
      }
      long l6 = l4 / 1000L;
      double d5 = d4 + l6 * this.mPowerProfile.getAveragePower("cpu.awake") / 1000.0D;
      long l7 = localUid.getTcpBytesReceived(this.mStatsType);
      long l8 = localUid.getTcpBytesSent(this.mStatsType);
      double d6 = d5 + d1 * (l7 + l8);
      if (versionValid())
      {
        long l10 = localUid.getWifiRunningTime(l1, i) / 1000L;
        this.mAppWifiRunning = (l10 + this.mAppWifiRunning);
        d6 += l10 * this.mPowerProfile.getAveragePower("wifi.on") / 1000.0D;
      }
      Iterator localIterator2 = localUid.getSensorStats().entrySet().iterator();
      if (localIterator2.hasNext())
      {
        BatteryStats.Uid.Sensor localSensor = (BatteryStats.Uid.Sensor)((Map.Entry)localIterator2.next()).getValue();
        int i1 = localSensor.getHandle();
        long l9 = localSensor.getSensorTime().getTotalTimeLocked(l1, i) / 1000L;
        double d7 = 0.0D;
        switch (i1)
        {
        default:
          Sensor localSensor1 = localSensorManager.getDefaultSensor(i1);
          if (localSensor1 != null)
          {
            d7 = localSensor1.getPower();
            Log.i("BatteryInfo", "Got sensor " + localSensor1.getName() + " with power = " + d7);
          }
          break;
        case 55536:
        }
        while (true)
        {
          d6 += d7 * l9 / 1000.0D;
          break;
          d7 = this.mPowerProfile.getAveragePower("gps.on");
          l5 = l9;
        }
      }
      Log.i("BatteryInfo", "UID " + localUid.getUid() + ": power=" + d6);
      BatterySipper localBatterySipper;
      if (d6 != 0.0D)
      {
        localBatterySipper = new BatterySipper(this.mContext, DrainType.APP, localUid, new double[] { d6 });
        localBatterySipper.cpuTime = l2;
        localBatterySipper.gpsTime = l5;
        localBatterySipper.cpuFgTime = l3;
        localBatterySipper.wakeLockTime = l6;
        localBatterySipper.tcpBytesReceived = l7;
        localBatterySipper.tcpBytesSent = l8;
        if (localUid.getUid() == 1010)
          this.mWifiSippers.add(localBatterySipper);
      }
      else
      {
        label1054: if (localUid.getUid() != 1010)
          break label1150;
        this.mWifiPower = (d6 + this.mWifiPower);
      }
      while (true)
      {
        Log.i("BatteryInfo", "Added power = " + d6);
        n++;
        break;
        if (localUid.getUid() == 1002)
        {
          this.mBluetoothSippers.add(localBatterySipper);
          break label1054;
        }
        this.mUsageList.add(localBatterySipper);
        break label1054;
        label1150: if (localUid.getUid() == 1002)
        {
          this.mBluetoothPower = (d6 + this.mBluetoothPower);
        }
        else
        {
          if (d6 > this.mMaxPower)
            this.mMaxPower = d6;
          this.mTotalPower = (d6 + this.mTotalPower);
        }
      }
    }
  }

  private void processMiscUsage()
  {
    int i = this.mStatsType;
    long l1 = 1000L * SystemClock.elapsedRealtime();
    long l2 = mStats.computeBatteryRealtime(l1, i);
    Log.i("BatteryInfo", "Uptime since last unplugged = " + l2 / 1000L);
    addPhoneUsage(l2);
    addScreenUsage(l2);
    addWiFiUsage(l2);
    addBluetoothUsage(l2);
    addIdleUsage(l2);
    addRadioUsage(l2);
  }

  private long string2Long(String paramString)
  {
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    return 0L;
  }

  private boolean versionValid()
  {
    return Build.VERSION.SDK_INT >= 10;
  }

  public List<BatterySipper> getBatteryStats()
  {
    if (mStats == null)
      mStats = load();
    if (mStats == null)
      return getAppListCpuTime();
    this.mMaxPower = 0.0D;
    this.mTotalPower = 0.0D;
    this.mWifiPower = 0.0D;
    this.mBluetoothPower = 0.0D;
    this.mAppWifiRunning = 0L;
    this.mUsageList.clear();
    this.mWifiSippers.clear();
    this.mBluetoothSippers.clear();
    processAppUsage();
    processMiscUsage();
    ArrayList localArrayList = new ArrayList();
    Collections.sort(this.mUsageList);
    Iterator localIterator = this.mUsageList.iterator();
    while (localIterator.hasNext())
    {
      BatterySipper localBatterySipper = (BatterySipper)localIterator.next();
      if ((localBatterySipper.getValue() >= 5.0D) && (localBatterySipper.getName() != null))
      {
        double d = 100.0D * (localBatterySipper.getValue() / this.mTotalPower);
        localBatterySipper.setPercent(d);
        if (d >= this.mMinPercentOfTotal)
          localArrayList.add(localBatterySipper);
      }
    }
    if (localArrayList.size() <= 1)
      return getAppListCpuTime();
    StringBuilder localStringBuilder = new StringBuilder().append("获取方式");
    if (this.testType == 1);
    for (String str = "(根据记录文件)"; ; str = "(根据CPU使用时间)")
    {
      Log.i("", str);
      return localArrayList;
    }
  }

  public double getTotalPower()
  {
    return this.mTotalPower;
  }

  public void setMinPercentOfTotal(double paramDouble)
  {
    this.mMinPercentOfTotal = paramDouble;
  }

  public static enum DrainType
  {
    static
    {
      CELL = new DrainType("CELL", 1);
      PHONE = new DrainType("PHONE", 2);
      WIFI = new DrainType("WIFI", 3);
      BLUETOOTH = new DrainType("BLUETOOTH", 4);
      SCREEN = new DrainType("SCREEN", 5);
      APP = new DrainType("APP", 6);
      KERNEL = new DrainType("KERNEL", 7);
      MEDIASERVER = new DrainType("MEDIASERVER", 8);
      DrainType[] arrayOfDrainType = new DrainType[9];
      arrayOfDrainType[0] = IDLE;
      arrayOfDrainType[1] = CELL;
      arrayOfDrainType[2] = PHONE;
      arrayOfDrainType[3] = WIFI;
      arrayOfDrainType[4] = BLUETOOTH;
      arrayOfDrainType[5] = SCREEN;
      arrayOfDrainType[6] = APP;
      arrayOfDrainType[7] = KERNEL;
      arrayOfDrainType[8] = MEDIASERVER;
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.PhoneHelper.BatteryInfo
 * JD-Core Version:    0.6.2
 */