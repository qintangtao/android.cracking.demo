package com.android.kd.phone;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.lang.reflect.Method;

public class CTelephoneInfo
{
  private static CTelephoneInfo CTelephoneInfo;
  private static Context mContext;
  private String iDataConnected1 = "0";
  private String iDataConnected2 = "0";
  private String iNumeric1;
  private String iNumeric2;
  private String imeiSIM1;
  private String imeiSIM2;
  private boolean isSIM1Ready;
  private boolean isSIM2Ready;

  public static CTelephoneInfo getInstance(Context paramContext)
  {
    try
    {
      if (CTelephoneInfo == null)
        CTelephoneInfo = new CTelephoneInfo();
      mContext = paramContext;
      CTelephoneInfo localCTelephoneInfo = CTelephoneInfo;
      return localCTelephoneInfo;
    }
    finally
    {
    }
  }

  private static String getOperatorBySlot(Context paramContext, String paramString, int paramInt)
    throws CTelephoneInfo.GeminiMethodNotFoundException
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    try
    {
      Class localClass = Class.forName(localTelephonyManager.getClass().getName());
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Integer.TYPE;
      Method localMethod = localClass.getMethod(paramString, arrayOfClass);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      Object localObject1 = localMethod.invoke(localTelephonyManager, arrayOfObject);
      Object localObject2 = null;
      if (localObject1 != null)
      {
        String str = localObject1.toString();
        localObject2 = str;
      }
      return localObject2;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    throw new GeminiMethodNotFoundException(paramString);
  }

  private static boolean getSIMStateBySlot(Context paramContext, String paramString, int paramInt)
    throws CTelephoneInfo.GeminiMethodNotFoundException
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    try
    {
      Class localClass = Class.forName(localTelephonyManager.getClass().getName());
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Integer.TYPE;
      Method localMethod = localClass.getMethod(paramString, arrayOfClass);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      Object localObject = localMethod.invoke(localTelephonyManager, arrayOfObject);
      boolean bool = false;
      if (localObject != null)
      {
        int i = Integer.parseInt(localObject.toString());
        bool = false;
        if (i == 5)
          bool = true;
      }
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    throw new GeminiMethodNotFoundException(paramString);
  }

  public String getINumeric()
  {
    if (this.imeiSIM2 != null)
    {
      if ((this.iNumeric1 != null) && (this.iNumeric1.length() > 1))
        return this.iNumeric1;
      if ((this.iNumeric2 != null) && (this.iNumeric2.length() > 1))
        return this.iNumeric2;
    }
    return this.iNumeric1;
  }

  public String getINumeric1()
  {
    return this.iNumeric1;
  }

  public String getINumeric2()
  {
    return this.iNumeric2;
  }

  public String getImeiSIM1()
  {
    return this.imeiSIM1;
  }

  public String getImeiSIM2()
  {
    return this.imeiSIM2;
  }

  public boolean isDataConnected1()
  {
    return (TextUtils.equals(this.iDataConnected1, "2")) || (TextUtils.equals(this.iDataConnected1, "1"));
  }

  public boolean isDataConnected2()
  {
    return (TextUtils.equals(this.iDataConnected2, "2")) || (TextUtils.equals(this.iDataConnected2, "1"));
  }

  public boolean isDualSim()
  {
    return this.imeiSIM2 != null;
  }

  public boolean isSIM1Ready()
  {
    return this.isSIM1Ready;
  }

  public boolean isSIM2Ready()
  {
    return this.isSIM2Ready;
  }

  public void setCTelephoneInfo()
  {
    boolean bool = true;
    TelephonyManager localTelephonyManager = (TelephonyManager)mContext.getSystemService("phone");
    CTelephoneInfo.imeiSIM1 = localTelephonyManager.getDeviceId();
    CTelephoneInfo.imeiSIM2 = null;
    try
    {
      CTelephoneInfo.imeiSIM1 = getOperatorBySlot(mContext, "getDeviceIdGemini", 0);
      CTelephoneInfo.imeiSIM2 = getOperatorBySlot(mContext, "getDeviceIdGemini", 1);
      CTelephoneInfo.iNumeric1 = getOperatorBySlot(mContext, "getSimOperatorGemini", 0);
      CTelephoneInfo.iNumeric2 = getOperatorBySlot(mContext, "getSimOperatorGemini", 1);
      CTelephoneInfo.iDataConnected1 = getOperatorBySlot(mContext, "getDataStateGemini", 0);
      CTelephoneInfo.iDataConnected2 = getOperatorBySlot(mContext, "getDataStateGemini", 1);
      CTelephoneInfo localCTelephoneInfo = CTelephoneInfo;
      if (localTelephonyManager.getSimState() == 5)
      {
        localCTelephoneInfo.isSIM1Ready = bool;
        CTelephoneInfo.isSIM2Ready = false;
      }
    }
    catch (GeminiMethodNotFoundException localGeminiMethodNotFoundException1)
    {
      try
      {
        while (true)
        {
          CTelephoneInfo.isSIM1Ready = getSIMStateBySlot(mContext, "getSimStateGemini", 0);
          CTelephoneInfo.isSIM2Ready = getSIMStateBySlot(mContext, "getSimStateGemini", 1);
          return;
          localGeminiMethodNotFoundException1 = localGeminiMethodNotFoundException1;
          localGeminiMethodNotFoundException1.printStackTrace();
          try
          {
            CTelephoneInfo.imeiSIM1 = getOperatorBySlot(mContext, "getDeviceId", 0);
            CTelephoneInfo.imeiSIM2 = getOperatorBySlot(mContext, "getDeviceId", 1);
            CTelephoneInfo.iNumeric1 = getOperatorBySlot(mContext, "getSimOperator", 0);
            CTelephoneInfo.iNumeric2 = getOperatorBySlot(mContext, "getSimOperator", 1);
            CTelephoneInfo.iDataConnected1 = getOperatorBySlot(mContext, "getDataState", 0);
            CTelephoneInfo.iDataConnected2 = getOperatorBySlot(mContext, "getDataState", 1);
          }
          catch (GeminiMethodNotFoundException localGeminiMethodNotFoundException2)
          {
            localGeminiMethodNotFoundException2.printStackTrace();
          }
        }
        bool = false;
      }
      catch (GeminiMethodNotFoundException localGeminiMethodNotFoundException3)
      {
        localGeminiMethodNotFoundException3.printStackTrace();
        try
        {
          CTelephoneInfo.isSIM1Ready = getSIMStateBySlot(mContext, "getSimState", 0);
          CTelephoneInfo.isSIM2Ready = getSIMStateBySlot(mContext, "getSimState", 1);
          return;
        }
        catch (GeminiMethodNotFoundException localGeminiMethodNotFoundException4)
        {
          localGeminiMethodNotFoundException4.printStackTrace();
        }
      }
    }
  }

  private static class GeminiMethodNotFoundException extends Exception
  {
    private static final long serialVersionUID = -3241033488141442594L;

    public GeminiMethodNotFoundException(String paramString)
    {
      super();
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\Tool\classes_dex2jar.jar
 * Qualified Name:     com.android.kd.phone.CTelephoneInfo
 * JD-Core Version:    0.6.2
 */