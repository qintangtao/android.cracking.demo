package com.mycheering.data;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class DoubleSimUtil
{
  private static final String SPLIT = "_";

  public static String getImei(Context paramContext, TelephonyManager paramTelephonyManager)
  {
    String str = getMtkFirstSim(paramContext, paramTelephonyManager);
    if (TextUtils.isEmpty(str))
    {
      str = getMtkSecondSim(paramContext, paramTelephonyManager);
      if (TextUtils.isEmpty(str))
      {
        str = getMtkThirdSim(paramContext, paramTelephonyManager);
        if (TextUtils.isEmpty(str))
        {
          str = getMtkFourthSim(paramContext, paramTelephonyManager);
          if (TextUtils.isEmpty(str))
          {
            str = getSpreadDoubleSim(paramContext, paramTelephonyManager);
            if (TextUtils.isEmpty(str))
            {
              str = getQualcommDoubleSim(paramContext, paramTelephonyManager);
              if (TextUtils.isEmpty(str))
                str = paramTelephonyManager.getDeviceId();
            }
          }
        }
      }
    }
    return str;
  }

  private static String getMtkFirstSim(Context paramContext, TelephonyManager paramTelephonyManager)
  {
    try
    {
      Class.forName("com.android.internal.telephony.Phone");
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Integer.TYPE;
      Method localMethod = TelephonyManager.class.getDeclaredMethod("getDeviceIdGemini", arrayOfClass);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(0);
      String str1 = (String)localMethod.invoke(paramTelephonyManager, arrayOfObject1);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(1);
      String str2 = (String)localMethod.invoke(paramTelephonyManager, arrayOfObject2);
      boolean bool1 = TextUtils.isEmpty(str1);
      Object localObject = null;
      if (!bool1)
      {
        boolean bool2 = TextUtils.isEmpty(str2);
        localObject = null;
        if (!bool2)
        {
          String str3 = str1 + "_" + str2;
          localObject = str3;
        }
      }
      return localObject;
    }
    catch (NullPointerException localNullPointerException)
    {
      return null;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      return null;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      return null;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      return null;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return null;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
    }
    return null;
  }

  private static String getMtkFourthSim(Context paramContext, TelephonyManager paramTelephonyManager)
  {
    try
    {
      Class localClass = Class.forName("com.android.internal.telephony.Phone");
      try
      {
        Field localField1 = localClass.getField("GEMINI_SIM_1");
        localField1.setAccessible(true);
        localInteger1 = (Integer)localField1.get(null);
        Field localField2 = localClass.getField("GEMINI_SIM_2");
        localField2.setAccessible(true);
        localObject = (Integer)localField2.get(null);
        Class[] arrayOfClass = new Class[1];
        arrayOfClass[0] = Integer.TYPE;
        Method localMethod = TelephonyManager.class.getMethod("getDefault", arrayOfClass);
        TelephonyManager localTelephonyManager1 = (TelephonyManager)localMethod.invoke(paramTelephonyManager, new Object[] { localInteger1 });
        TelephonyManager localTelephonyManager2 = (TelephonyManager)localMethod.invoke(paramTelephonyManager, new Object[] { localObject });
        String str1 = localTelephonyManager1.getDeviceId().trim();
        String str2 = localTelephonyManager2.getDeviceId().trim();
        if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2)))
          return str1 + "_" + str2;
      }
      catch (Exception localException)
      {
        while (true)
        {
          Integer localInteger1 = Integer.valueOf(0);
          Integer localInteger2 = Integer.valueOf(1);
          Object localObject = localInteger2;
        }
      }
      return null;
    }
    catch (NullPointerException localNullPointerException)
    {
      return null;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      break label210;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      break label210;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      break label210;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      break label210;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      label210: break label210;
    }
  }

  private static String getMtkSecondSim(Context paramContext, TelephonyManager paramTelephonyManager)
  {
    try
    {
      Class.forName("com.android.internal.telephony.Phone");
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Integer.TYPE;
      Method localMethod = TelephonyManager.class.getMethod("getDefault", arrayOfClass);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(0);
      TelephonyManager localTelephonyManager1 = (TelephonyManager)localMethod.invoke(paramTelephonyManager, arrayOfObject1);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(1);
      TelephonyManager localTelephonyManager2 = (TelephonyManager)localMethod.invoke(paramTelephonyManager, arrayOfObject2);
      String str1 = localTelephonyManager1.getDeviceId();
      String str2 = localTelephonyManager2.getDeviceId();
      boolean bool1 = TextUtils.isEmpty(str1);
      Object localObject = null;
      if (!bool1)
      {
        boolean bool2 = TextUtils.isEmpty(str2);
        localObject = null;
        if (!bool2)
        {
          String str3 = str1 + "_" + str2;
          localObject = str3;
        }
      }
      return localObject;
    }
    catch (NullPointerException localNullPointerException)
    {
      return null;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      return null;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      return null;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      return null;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return null;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      return null;
    }
    catch (ExceptionInInitializerError localExceptionInInitializerError)
    {
    }
    return null;
  }

  private static String getMtkThirdSim(Context paramContext, TelephonyManager paramTelephonyManager)
  {
    try
    {
      Class localClass = Class.forName("com.android.internal.telephony.Phone");
      try
      {
        Field localField1 = localClass.getField("GEMINI_SIM_1");
        localField1.setAccessible(true);
        localInteger1 = (Integer)localField1.get(null);
        Field localField2 = localClass.getField("GEMINI_SIM_2");
        localField2.setAccessible(true);
        localObject = (Integer)localField2.get(null);
        Class[] arrayOfClass = new Class[1];
        arrayOfClass[0] = Integer.TYPE;
        Method localMethod = TelephonyManager.class.getDeclaredMethod("getDeviceIdGemini", arrayOfClass);
        String str1 = ((String)localMethod.invoke(paramTelephonyManager, new Object[] { localInteger1 })).trim();
        String str2 = ((String)localMethod.invoke(paramTelephonyManager, new Object[] { localObject })).trim();
        if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2)))
          return str1 + "_" + str2;
      }
      catch (Exception localException)
      {
        while (true)
        {
          Integer localInteger1 = Integer.valueOf(0);
          Integer localInteger2 = Integer.valueOf(1);
          Object localObject = localInteger2;
        }
      }
      return null;
    }
    catch (NullPointerException localNullPointerException)
    {
      return null;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      break label196;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      break label196;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      break label196;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      break label196;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      label196: break label196;
    }
  }

  public static String getQualcommDoubleSim(Context paramContext, TelephonyManager paramTelephonyManager)
  {
    try
    {
      Class localClass = Class.forName("android.telephony.MSimTelephonyManager");
      Object localObject1 = paramContext.getSystemService("phone_msim");
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Integer.TYPE;
      Method localMethod = localClass.getMethod("getDeviceId", arrayOfClass);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(0);
      String str1 = (String)localMethod.invoke(localObject1, arrayOfObject1);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(1);
      String str2 = (String)localMethod.invoke(localObject1, arrayOfObject2);
      boolean bool1 = TextUtils.isEmpty(str1);
      Object localObject2 = null;
      if (!bool1)
      {
        boolean bool2 = TextUtils.isEmpty(str2);
        localObject2 = null;
        if (!bool2)
        {
          String str3 = str1 + "_" + str2;
          localObject2 = str3;
        }
      }
      return localObject2;
    }
    catch (NullPointerException localNullPointerException)
    {
      return null;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      return null;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      return null;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      return null;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return null;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      return null;
    }
    catch (ExceptionInInitializerError localExceptionInInitializerError)
    {
    }
    return null;
  }

  private static String getSpreadDoubleSim(Context paramContext, TelephonyManager paramTelephonyManager)
  {
    try
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
      String str2 = paramTelephonyManager.getDeviceId();
      String str3 = ((TelephonyManager)paramContext.getSystemService(str1)).getDeviceId();
      boolean bool1 = TextUtils.isEmpty(str2);
      Object localObject = null;
      if (!bool1)
      {
        boolean bool2 = TextUtils.isEmpty(str3);
        localObject = null;
        if (!bool2)
        {
          String str4 = str2 + "_" + str3;
          localObject = str4;
        }
      }
      return localObject;
    }
    catch (NullPointerException localNullPointerException)
    {
      return null;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      return null;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      return null;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return null;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      return null;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      return null;
    }
    catch (ExceptionInInitializerError localExceptionInInitializerError)
    {
    }
    return null;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.mycheering.data.DoubleSimUtil
 * JD-Core Version:    0.6.2
 */