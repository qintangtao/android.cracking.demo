package com.android.kd.phone;

import android.content.Context;
import android.os.Build;
import android.os.IBinder;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.android.utils.Commems;
import com.google.kd.utils.FileUtils;
import com.google.kd.utils.LogUtils;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class NewIMEIGet
{
  static Pattern pattern_imei = Pattern.compile("^[0-9A-Fa-f]{13,18}+$");
  Context context;

  public NewIMEIGet(Context paramContext)
  {
    this.context = paramContext;
  }

  private String getCDMAIMEI()
  {
    String str1 = "";
    try
    {
      Class localClass = Class.forName("android.os.SystemProperties");
      Method localMethod1 = localClass.getMethod("get", new Class[] { String.class });
      if (localMethod1 != null)
      {
        String str2 = (String)localMethod1.invoke(localClass.newInstance(), new Object[] { "telephony.lteOnCdmaDevice" });
        Log.d("wyy", "lteOnCdmaDevice:" + str2);
        if (str2.equals("1"))
        {
          Method localMethod2 = Class.forName("com.huawei.android.hwnv.HWNVFuncation").getMethod("getNVIMEI", null);
          if (localMethod2 == null)
            return str1;
          localMethod2.setAccessible(true);
          str1 = (String)localMethod2.invoke(null, null);
          Log.d("wyy", "Imei:" + str1);
        }
      }
      return str1;
    }
    catch (Exception localException)
    {
      while (true)
        Log.e("wyy", "getCDMAIMEI:" + localException.toString());
    }
  }

  private void getIMEI2_LenovoA3580(Context paramContext, HashSet<String> paramHashSet)
  {
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      if (localTelephonyManager.getPhoneType() == 1);
      while (true)
      {
        Class localClass = localTelephonyManager.getClass();
        Class[] arrayOfClass = new Class[1];
        arrayOfClass[0] = Integer.TYPE;
        Method localMethod = localClass.getMethod("getDeviceId", arrayOfClass);
        if (localMethod != null)
        {
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = Integer.valueOf(0);
          paramHashSet.add((String)localMethod.invoke(localTelephonyManager, arrayOfObject1));
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = Integer.valueOf(1);
          paramHashSet.add((String)localMethod.invoke(localTelephonyManager, arrayOfObject2));
          Object[] arrayOfObject3 = new Object[1];
          arrayOfObject3[0] = Integer.valueOf(2);
          paramHashSet.add((String)localMethod.invoke(localTelephonyManager, arrayOfObject3));
        }
        return;
      }
    }
    catch (Exception localException)
    {
      LogUtils.d("wyy", localException.toString());
    }
  }

  private void getIMEI2_SM7000(Context paramContext, HashSet<String> paramHashSet)
  {
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone2");
      Method localMethod = paramContext.getSystemService("phone2").getClass().getMethod("getImeiInCDMAGSMPhone", null);
      if (localMethod != null)
      {
        String str = localMethod.invoke(localTelephonyManager, null).toString();
        LogUtils.d("wyy", "IMEI2:" + str);
        if (isIMEI(str))
          paramHashSet.add(str);
      }
      return;
    }
    catch (Exception localException)
    {
      LogUtils.d("wyy", localException.toString());
    }
  }

  private void getIMEI2_SMG3812(Context paramContext, HashSet<String> paramHashSet)
  {
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      Class localClass = Class.forName("android.telephony.TelephonyManager");
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Integer.TYPE;
      Method localMethod = localClass.getMethod("getDeviceIdDs", arrayOfClass);
      if (localMethod != null)
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Integer.valueOf(0);
        String str1 = (String)localMethod.invoke(localTelephonyManager, arrayOfObject1);
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(1);
        String str2 = (String)localMethod.invoke(localTelephonyManager, arrayOfObject2);
        LogUtils.d("wyy", "SM_G3812_IMEI1:" + str1);
        LogUtils.d("wyy", "SM_G3812_IMEI2:" + str2);
        if (isIMEI(str1))
          paramHashSet.add(str1);
        if (isIMEI(str2))
          paramHashSet.add(str2);
      }
      return;
    }
    catch (Exception localException)
    {
      LogUtils.e("wyy", "SM_G3812:" + localException.toString());
    }
  }

  private void getIMEI_Huawei(Context paramContext, HashSet<String> paramHashSet)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    Class localClass = paramContext.getSystemService("phone").getClass();
    try
    {
      Method localMethod = localClass.getMethod("getCurrentPhoneType", null);
      if (localMethod != null)
      {
        int i = ((Integer)localMethod.invoke(localTelephonyManager, null)).intValue();
        Log.d("wyy", "CurrentPhoneType:" + i);
        if ((i != 1) && (i == 2))
        {
          String str = getCDMAIMEI();
          if ((str != null) && (str.length() > 0))
            paramHashSet.add(str);
        }
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  private void getMeid_ByLocal(Context paramContext, HashSet<String> paramHashSet)
  {
    String str = FileUtils.readFileByReader(Commems.PHONE_MEID);
    String[] arrayOfString;
    if ((str != null) && (str.length() > 0) && (paramHashSet != null) && (!paramHashSet.contains(str)) && (str != null) && (str.length() > 0) && (str.indexOf("0000000000") == -1))
      arrayOfString = str.split(",");
    for (int i = 0; ; i++)
    {
      if (i >= arrayOfString.length)
      {
        LogUtils.d("wyy", "getMeid_ByLocal:" + str);
        return;
      }
      if ((arrayOfString[i] != null) && (arrayOfString[i].length() > 0))
      {
        LogUtils.d("wyy", "getMeid_split:" + arrayOfString[i]);
        paramHashSet.add(arrayOfString[i]);
      }
    }
  }

  private void getMeid_Huawei(Context paramContext, HashSet<String> paramHashSet)
  {
    String str = "";
    try
    {
      str = (String)Class.forName("com.huawei.android.hwnv.HWNVFuncation").getMethod("getNVMEID", new Class[0]).invoke(null, null);
      if ((paramHashSet != null) && (!paramHashSet.contains(str)) && (str != null) && (str.length() > 0) && (str.indexOf("0000000000") == -1))
        paramHashSet.add(str);
      LogUtils.d("wyy", "getMeid_Huawei:" + str);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        LogUtils.d("wyy", "hwMEID:" + localException.toString());
    }
  }

  private void getMeid_Vivod(Context paramContext, HashSet<String> paramHashSet)
  {
    Object localObject1 = "";
    try
    {
      IBinder localIBinder = (IBinder)Class.forName("android.os.ServiceManager").getMethod("getService", new Class[] { String.class }).invoke(null, new Object[] { "phone" });
      Object localObject2 = Class.forName("com.android.internal.telephony.ITelephony$Stub").getMethod("asInterface", new Class[] { IBinder.class }).invoke(null, new Object[] { localIBinder });
      try
      {
        String str = localObject2.getClass().getMethod("getMeid", new Class[0]).invoke(localObject2, new Object[0]).toString();
        localObject1 = str;
        if ((paramHashSet != null) && (!paramHashSet.contains(localObject1)) && (localObject1 != null) && (((String)localObject1).length() > 0) && (((String)localObject1).indexOf("0000000000") == -1))
          paramHashSet.add(localObject1);
        LogUtils.d("wyy", "getMeid_Vivod:" + (String)localObject1);
        return;
      }
      catch (Exception localException2)
      {
        while (true)
          localException2.toString();
      }
    }
    catch (Exception localException1)
    {
      while (true)
        LogUtils.d("wyy", localException1.toString());
    }
  }

  public static boolean isIMEI(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0));
    while ((!pattern_imei.matcher(paramString).matches()) || (paramString.indexOf("000000000") != -1) || (paramString.indexOf("111111111") != -1) || (paramString.indexOf("222222222") != -1) || (paramString.indexOf("333333333") != -1) || (paramString.indexOf("444444444") != -1) || (paramString.indexOf("555555555") != -1) || (paramString.indexOf("666666666") != -1) || (paramString.indexOf("777777777") != -1) || (paramString.indexOf("888888888") != -1) || (paramString.indexOf("999999999") != -1))
      return false;
    return true;
  }

  public void getIMEIOtherAll(Context paramContext, HashSet<String> paramHashSet)
  {
    String str = Build.MODEL;
    if ((str != null) && ((str.contains("SCL-AL00") | str.contains("SCL-TL00H"))))
    {
      getIMEI2_LenovoA3580(paramContext, paramHashSet);
      if (paramHashSet.size() > 0)
        return;
    }
    try
    {
      getIMEI_MtkDoubleSim(paramContext, paramHashSet);
    }
    catch (Exception localException4)
    {
      try
      {
        getIMEI_MtkSecondDoubleSim(paramContext, paramHashSet);
      }
      catch (Exception localException4)
      {
        try
        {
          getIMEI_QualcommDoubleSim(paramContext, paramHashSet);
        }
        catch (Exception localException4)
        {
          try
          {
            getIMEI_SpreadDoubleSim(paramContext, paramHashSet);
          }
          catch (Exception localException4)
          {
            try
            {
              while (true)
              {
                getMeid_Huawei(paramContext, paramHashSet);
                try
                {
                  label70: getIMEI_Huawei(paramContext, paramHashSet);
                }
                catch (Exception localException8)
                {
                  try
                  {
                    getMeid_Vivod(paramContext, paramHashSet);
                  }
                  catch (Exception localException8)
                  {
                    try
                    {
                      getIMEI2_SM7000(paramContext, paramHashSet);
                    }
                    catch (Exception localException8)
                    {
                      try
                      {
                        while (true)
                        {
                          getIMEI2_LenovoA3580(paramContext, paramHashSet);
                          try
                          {
                            getIMEI2_SMG3812(paramContext, paramHashSet);
                            return;
                          }
                          catch (Exception localException10)
                          {
                            LogUtils.d("wyy", localException10.toString());
                            return;
                          }
                          localException6 = localException6;
                          LogUtils.d("wtyy", localException6.toString());
                          continue;
                          localException7 = localException7;
                          LogUtils.d("wtyy", localException7.toString());
                          continue;
                          localException8 = localException8;
                          LogUtils.d("wyy", localException8.toString());
                        }
                      }
                      catch (Exception localException9)
                      {
                        while (true)
                          LogUtils.d("wyy", localException9.toString());
                      }
                    }
                  }
                }
                localException1 = localException1;
                continue;
                localException2 = localException2;
                continue;
                localException3 = localException3;
                continue;
                localException4 = localException4;
              }
            }
            catch (Exception localException5)
            {
              break label70;
            }
          }
        }
      }
    }
  }

  public void getIMEI_MtkDoubleSim(Context paramContext, HashSet<String> paramHashSet)
    throws ClassNotFoundException, NoSuchFieldException, NumberFormatException, IllegalAccessException, IllegalArgumentException, NoSuchMethodException, InvocationTargetException
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    Class localClass = Class.forName("com.android.internal.telephony.Phone");
    try
    {
      Field localField1 = localClass.getField("GEMINI_SIM_1");
      localField1.setAccessible(true);
      j = Integer.parseInt(localField1.get(null).toString());
      Field localField2 = localClass.getField("GEMINI_SIM_2");
      localField2.setAccessible(true);
      int k = Integer.parseInt(localField2.get(null).toString());
      i = k;
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Integer.TYPE;
      Method localMethod = TelephonyManager.class.getDeclaredMethod("getDeviceIdGemini", arrayOfClass);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(j);
      String str1 = ((String)localMethod.invoke(localTelephonyManager, arrayOfObject1)).trim();
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(i);
      String str2 = ((String)localMethod.invoke(localTelephonyManager, arrayOfObject2)).trim();
      if (!paramHashSet.contains(str1))
      {
        if ((str1 != null) && (str1.indexOf("0000000000") == -1))
          paramHashSet.add(str1);
        if ((str1 != null) && (str1.indexOf("111111111") == -1))
          paramHashSet.add(str1);
      }
      if (!paramHashSet.contains(str2))
      {
        if ((str2 != null) && (str2.indexOf("0000000000") == -1))
          paramHashSet.add(str2);
        if ((str2 != null) && (str2.indexOf("111111111") == -1))
          paramHashSet.add(str2);
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        int i = 1;
        int j = 0;
      }
    }
  }

  public void getIMEI_MtkSecondDoubleSim(Context paramContext, HashSet<String> paramHashSet)
    throws ClassNotFoundException, NoSuchFieldException, NumberFormatException, IllegalAccessException, IllegalArgumentException, NoSuchMethodException, InvocationTargetException
  {
    TelephonyManager localTelephonyManager1 = (TelephonyManager)paramContext.getSystemService("phone");
    Class localClass = Class.forName("com.android.internal.telephony.Phone");
    try
    {
      Field localField1 = localClass.getField("GEMINI_SIM_1");
      localField1.setAccessible(true);
      j = Integer.parseInt(localField1.get(null).toString());
      Field localField2 = localClass.getField("GEMINI_SIM_2");
      localField2.setAccessible(true);
      int k = Integer.parseInt(localField2.get(null).toString());
      i = k;
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Integer.TYPE;
      Method localMethod = TelephonyManager.class.getMethod("getDefault", arrayOfClass);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(j);
      TelephonyManager localTelephonyManager2 = (TelephonyManager)localMethod.invoke(localTelephonyManager1, arrayOfObject1);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(i);
      TelephonyManager localTelephonyManager3 = (TelephonyManager)localMethod.invoke(localTelephonyManager1, arrayOfObject2);
      String str1 = localTelephonyManager2.getDeviceId().trim();
      String str2 = localTelephonyManager3.getDeviceId().trim();
      if ((!paramHashSet.contains(str1)) && (str1 != null) && (str1.indexOf("0000000000") == -1))
        paramHashSet.add(str1);
      if ((!paramHashSet.contains(str2)) && (str2 != null) && (str2.indexOf("0000000000") == -1))
        paramHashSet.add(str2);
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        int i = 1;
        int j = 0;
      }
    }
  }

  public void getIMEI_QualcommDoubleSim(Context paramContext, HashSet<String> paramHashSet)
    throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, IllegalArgumentException, InvocationTargetException
  {
    Class localClass = Class.forName("android.telephony.MSimTelephonyManager");
    Object localObject = paramContext.getSystemService("phone_msim");
    Class[] arrayOfClass = new Class[1];
    arrayOfClass[0] = Integer.TYPE;
    Method localMethod = localClass.getMethod("getDeviceId", arrayOfClass);
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(0);
    String str1 = ((String)localMethod.invoke(localObject, arrayOfObject1)).trim();
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Integer.valueOf(1);
    String str2 = ((String)localMethod.invoke(localObject, arrayOfObject2)).trim();
    if ((!paramHashSet.contains(str1)) && (str1 != null) && (str1.indexOf("0000000000") == -1))
      paramHashSet.add(str1);
    if ((!paramHashSet.contains(str2)) && (str2 != null) && (str2.indexOf("0000000000") == -1))
      paramHashSet.add(str2);
  }

  public void getIMEI_SpreadDoubleSim(Context paramContext, HashSet<String> paramHashSet)
    throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, IllegalArgumentException, InvocationTargetException
  {
    Class localClass = Class.forName("com.android.internal.telephony.PhoneFactory");
    Class[] arrayOfClass = new Class[2];
    arrayOfClass[0] = String.class;
    arrayOfClass[1] = Integer.TYPE;
    Method localMethod = localClass.getMethod("getServiceName", arrayOfClass);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = "phone";
    arrayOfObject[1] = Integer.valueOf(1);
    String str1 = (String)localMethod.invoke(localClass, arrayOfObject);
    String str2 = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId().trim();
    String str3 = ((TelephonyManager)paramContext.getSystemService(str1)).getDeviceId().trim();
    if ((!paramHashSet.contains(str2)) && (str2 != null) && (str2.indexOf("0000000000") == -1))
      paramHashSet.add(str2);
    if ((!paramHashSet.contains(str3)) && (str3 != null) && (str3.indexOf("0000000000") == -1))
      paramHashSet.add(str3);
  }

  public String getIMEI_Stand()
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)this.context.getSystemService("phone");
    String str = null;
    if (localTelephonyManager != null)
    {
      this.context.getApplicationContext().getPackageName();
      str = null;
      if (1 != 0)
      {
        localTelephonyManager.getDeviceId();
        str = localTelephonyManager.getDeviceId();
      }
    }
    return str;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\Tool\classes_dex2jar.jar
 * Qualified Name:     com.android.kd.phone.NewIMEIGet
 * JD-Core Version:    0.6.2
 */