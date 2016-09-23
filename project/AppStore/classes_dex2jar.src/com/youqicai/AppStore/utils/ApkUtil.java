package com.youqicai.AppStore.utils;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.util.DisplayMetrics;
import android.util.Log;
import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class ApkUtil
{
  public static String fetchPkgName(Context paramContext, String paramString)
  {
    try
    {
      Class localClass = Class.forName("android.content.pm.PackageParser");
      Object localObject1 = localClass.getConstructor(new Class[] { String.class }).newInstance(new Object[] { paramString });
      Log.d("ANDROID_LAB", "pkgParser:" + localObject1.toString());
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      localDisplayMetrics.setToDefaults();
      Class[] arrayOfClass = new Class[4];
      arrayOfClass[0] = File.class;
      arrayOfClass[1] = String.class;
      arrayOfClass[2] = DisplayMetrics.class;
      arrayOfClass[3] = Integer.TYPE;
      Method localMethod = localClass.getDeclaredMethod("parsePackage", arrayOfClass);
      Object[] arrayOfObject = new Object[4];
      arrayOfObject[0] = new File(paramString);
      arrayOfObject[1] = paramString;
      arrayOfObject[2] = localDisplayMetrics;
      arrayOfObject[3] = Integer.valueOf(0);
      Object localObject2 = localMethod.invoke(localObject1, arrayOfObject);
      ApplicationInfo localApplicationInfo = (ApplicationInfo)localObject2.getClass().getDeclaredField("applicationInfo").get(localObject2);
      Log.d("ANDROID_LAB", "pkg:" + localApplicationInfo.packageName + " uid=" + localApplicationInfo.uid);
      String str = localApplicationInfo.packageName;
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.utils.ApkUtil
 * JD-Core Version:    0.6.2
 */