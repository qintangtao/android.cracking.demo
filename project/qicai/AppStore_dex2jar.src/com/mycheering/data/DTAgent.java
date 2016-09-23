package com.mycheering.data;

import android.content.Context;
import android.content.pm.PackageManager;
import android.provider.Settings.System;
import android.text.TextUtils;
import java.io.File;
import java.util.Map;

public class DTAgent
{
  private static DataHandler dataHandler;
  private static DTAgent dtAgent = new DTAgent();

  private DTAgent()
  {
    dataHandler = DataHandler.getInstance();
  }

  public static String getDID()
  {
    return DeviceInfo.did;
  }

  public static String getDID(Context paramContext)
  {
    Object localObject = PreferencesHelper.getInstance(paramContext).getDid();
    String str1;
    if (TextUtils.isEmpty((CharSequence)localObject))
    {
      localObject = Settings.System.getString(paramContext.getContentResolver(), DTConfig.DID);
      if (TextUtils.isEmpty((CharSequence)localObject))
        str1 = DeviceInfo.readStringFromFile(new File(PreferencesHelper.getSdcardPath() + "/Android/data/.sys"));
    }
    try
    {
      String str2 = str1.substring(0, str1.indexOf(","));
      localObject = str2;
      return localObject;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return localObject;
  }

  public static void init(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    init(paramContext, DeviceInfo.getAppKey(paramContext, localPackageManager), DeviceInfo.getChannelId(paramContext, localPackageManager));
  }

  public static void init(Context paramContext, String paramString1, String paramString2)
  {
    dataHandler.init(paramContext, paramString1, paramString2);
  }

  public static void onError(Context paramContext, String paramString)
  {
    dataHandler.onError(paramContext, paramString);
  }

  public static void onError(Context paramContext, Throwable paramThrowable)
  {
    dataHandler.onError(paramContext, paramThrowable);
  }

  public static void onKillProcessOrExit()
  {
    dataHandler.onKillProcessOrExit();
  }

  public static void onPageEnd(String paramString)
  {
    dataHandler.onPageEnd(paramString);
  }

  public static void onPageStart(String paramString)
  {
    dataHandler.onPageStart(paramString);
  }

  public static void onPause(Context paramContext)
  {
    dataHandler.onPause(paramContext);
  }

  public static void onResume(Context paramContext)
  {
    dataHandler.onResume(paramContext);
  }

  public static void recordEvent(String paramString)
  {
    EventObject localEventObject = new EventObject();
    localEventObject.setEventId(paramString);
    dataHandler.recordEvent(localEventObject);
  }

  public static void recordEvent(String paramString, int paramInt)
  {
    EventObject localEventObject = new EventObject();
    localEventObject.setEventId(paramString);
    localEventObject.setCount(paramInt);
    dataHandler.recordEvent(localEventObject);
  }

  public static void recordEvent(String paramString, int paramInt, double paramDouble)
  {
    EventObject localEventObject = new EventObject();
    localEventObject.setEventId(paramString);
    localEventObject.setCount(paramInt);
    localEventObject.setSum(paramDouble);
    dataHandler.recordEvent(localEventObject);
  }

  public static void recordEvent(String paramString, Map<String, String> paramMap)
  {
    EventObject localEventObject = new EventObject();
    localEventObject.setEventId(paramString);
    localEventObject.setParameters(paramMap);
    dataHandler.recordEvent(localEventObject);
  }

  public static void recordEvent(String paramString, Map<String, String> paramMap, int paramInt)
  {
    EventObject localEventObject = new EventObject();
    localEventObject.setEventId(paramString);
    localEventObject.setCount(paramInt);
    localEventObject.setParameters(paramMap);
    dataHandler.recordEvent(localEventObject);
  }

  public static void recordEvent(String paramString, Map<String, String> paramMap, int paramInt, double paramDouble)
  {
    EventObject localEventObject = new EventObject();
    localEventObject.setEventId(paramString);
    localEventObject.setCount(paramInt);
    localEventObject.setSum(paramDouble);
    localEventObject.setParameters(paramMap);
    dataHandler.recordEvent(localEventObject);
  }

  public static void recordEvent(String paramString, boolean paramBoolean)
  {
    dataHandler.recordEvent(paramString, paramBoolean);
  }

  public static void setUncaughtExceptionHandler(Context paramContext)
  {
    dataHandler.setUncaughtExceptionHandler(paramContext);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.mycheering.data.DTAgent
 * JD-Core Version:    0.6.2
 */