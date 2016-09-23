package com.hsg.sdk.common.util;

import android.app.Activity;
import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.bluetooth.BluetoothAdapter;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Vibrator;
import android.provider.Contacts.People;
import android.provider.Settings.System;
import android.telephony.SmsManager;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class Utils
{
  private static String strIP = null;

  public static void callTel(Context paramContext, String paramString)
  {
    if ((paramString != null) && (!paramString.trim().equalsIgnoreCase("")))
      paramContext.startActivity(new Intent("android.intent.action.CALL", Uri.parse("tel:" + paramString)));
  }

  public static void closeBlueTooth(Context paramContext)
  {
    BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    if (localBluetoothAdapter.getState() == 12)
      localBluetoothAdapter.disable();
  }

  public static void closeScreenRotated(Context paramContext)
  {
    setScreenRotated(paramContext, 0);
  }

  public static void closeWifi(Context paramContext)
  {
    WifiManager localWifiManager = (WifiManager)paramContext.getSystemService("wifi");
    if (localWifiManager.isWifiEnabled())
      localWifiManager.setWifiEnabled(false);
  }

  public static void downloadByBrowser(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return;
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    localIntent.setFlags(268435456);
    paramContext.startActivity(localIntent);
  }

  public static boolean existApp(Context paramContext, String paramString)
  {
    return paramContext.getPackageManager().getLaunchIntentForPackage(paramString) != null;
  }

  public static Drawable getAppIcon(Context paramContext, String paramString)
  {
    try
    {
      Drawable localDrawable = paramContext.getPackageManager().getApplicationIcon(paramString);
      return localDrawable;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
    return null;
  }

  public static String getAppVersion(Context paramContext)
  {
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0);
      str = null;
      if (localPackageInfo != null)
        str = localPackageInfo.versionName;
      if (str != null)
        str = str.trim();
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        localNameNotFoundException.printStackTrace();
        String str = null;
      }
    }
  }

  private static long getContactSmsConversionThreadId(Context paramContext, String paramString)
  {
    long l = -1L;
    Cursor localCursor = paramContext.getContentResolver().query(Uri.parse("content://sms/inbox"), null, "address=?", new String[] { paramString }, null);
    if ((localCursor != null) && (localCursor.moveToFirst()))
      l = localCursor.getLong(localCursor.getColumnIndex("thread_id"));
    return l;
  }

  private static int getFlagHardWareAccelerated()
  {
    try
    {
      int i = WindowManager.LayoutParams.class.getField("FLAG_HARDWARE_ACCELERATED").getInt(WindowManager.LayoutParams.class);
      return i;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      return -1;
    }
    catch (SecurityException localSecurityException)
    {
      break label18;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      break label18;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      label18: break label18;
    }
  }

  public static String getLocalIpAddress()
  {
    if (strIP != null)
      return strIP;
    try
    {
      InetAddress localInetAddress;
      do
      {
        Enumeration localEnumeration1 = NetworkInterface.getNetworkInterfaces();
        Enumeration localEnumeration2;
        while (!localEnumeration2.hasMoreElements())
        {
          if (!localEnumeration1.hasMoreElements())
            break;
          localEnumeration2 = ((NetworkInterface)localEnumeration1.nextElement()).getInetAddresses();
        }
        localInetAddress = (InetAddress)localEnumeration2.nextElement();
      }
      while (localInetAddress.isLoopbackAddress());
      strIP = localInetAddress.getHostAddress().toString();
      String str = strIP;
      return str;
    }
    catch (SocketException localSocketException)
    {
      localSocketException.printStackTrace();
    }
    return null;
  }

  public static void getVibrator(Context paramContext, int paramInt)
  {
    ((Vibrator)paramContext.getSystemService("vibrator")).vibrate(paramInt);
  }

  public static void installApk(Context paramContext, String paramString)
  {
    paramContext.startActivity(new Intent("android.intent.action.PACKAGE_ADDED", Uri.fromParts("package", paramString, null)));
  }

  public static boolean isGPSOpen(Context paramContext)
  {
    return ((LocationManager)paramContext.getSystemService("location")).isProviderEnabled("gps");
  }

  public static boolean isHardwareAccelerated(View paramView)
  {
    try
    {
      boolean bool = ((Boolean)View.class.getMethod("isHardwareAccelerated", null).invoke(paramView, null)).booleanValue();
      return bool;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public static boolean isMobileNumber(String paramString)
  {
    if (TextUtils.isEmpty(paramString));
    int i;
    do
    {
      return false;
      i = paramString.length();
    }
    while (i < 11);
    if (i > 11)
      paramString = paramString.substring(i - 11);
    return Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0-9]))\\d{8}$").matcher(paramString).matches();
  }

  public static void open3GSettings(Context paramContext)
  {
    paramContext.startActivity(new Intent("android.settings.WIRELESS_SETTINGS"));
  }

  public static void openAirPlane(Context paramContext)
  {
    int i;
    int j;
    label28: Intent localIntent;
    boolean bool;
    if (Settings.System.getInt(paramContext.getContentResolver(), "airplane_mode_on", 0) == 1)
    {
      i = 1;
      ContentResolver localContentResolver = paramContext.getContentResolver();
      if (i == 0)
        break label79;
      j = 0;
      Settings.System.putInt(localContentResolver, "airplane_mode_on", j);
      localIntent = new Intent("android.intent.action.AIRPLANE_MODE");
      bool = false;
      if (i == 0)
        break label84;
    }
    while (true)
    {
      localIntent.putExtra("state", bool);
      paramContext.sendBroadcast(localIntent);
      return;
      i = 0;
      break;
      label79: j = 1;
      break label28;
      label84: bool = true;
    }
  }

  public static void openAirPlaneSettings(Context paramContext)
  {
    paramContext.startActivity(new Intent("android.settings.AIRPLANE_MODE_SETTINGS"));
  }

  public static void openBlueTooth(Context paramContext)
  {
    BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
    if (localBluetoothAdapter.getState() == 10)
      localBluetoothAdapter.enable();
  }

  public static void openBlueToothSettings(Context paramContext)
  {
    paramContext.startActivity(new Intent("android.settings.BLUETOOTH_SETTINGS"));
  }

  public static void openCamera(Context paramContext)
  {
    paramContext.startActivity(new Intent("android.media.action.VIDEO_CAPTURE"));
  }

  public static void openContact(Context paramContext, String paramString)
  {
    paramContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("content://com.android.contacts/contacts/" + paramString)));
  }

  public static void openContactBook(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.setData(Contacts.People.CONTENT_URI);
    paramContext.startActivity(localIntent);
  }

  public static boolean openContactSmsConversionList(Context paramContext, String paramString)
  {
    long l = getContactSmsConversionThreadId(paramContext, paramString);
    if (l == -1L)
      return false;
    paramContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("content://mms-sms/conversations/" + l)));
    return true;
  }

  public static void openDialUI(Context paramContext)
  {
    paramContext.startActivity(new Intent("android.intent.action.DIAL"));
  }

  public static void openDisplaySettings(Context paramContext)
  {
    paramContext.startActivity(new Intent("android.settings.DISPLAY_SETTINGS"));
  }

  public static void openGPSSetting(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("android.settings.LOCATION_SOURCE_SETTINGS");
    localIntent.setFlags(268435456);
    try
    {
      paramContext.startActivity(localIntent);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      localIntent.setAction("android.settings.SETTINGS");
      try
      {
        paramContext.startActivity(localIntent);
        return;
      }
      catch (Exception localException)
      {
      }
    }
  }

  public static void openRecordAudio(Context paramContext)
  {
    paramContext.startActivity(new Intent("android.provider.MediaStore.RECORD_SOUND"));
  }

  public static void openScreenRotated(Context paramContext)
  {
    setScreenRotated(paramContext, 1);
  }

  public static void openSendSmsUI(Context paramContext)
  {
    sendSms(paramContext, null, null);
  }

  public static void openSmsList(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.addCategory("android.intent.category.DEFAULT");
    localIntent.setType("vnd.android-dir/mms-sms");
    paramContext.startActivity(localIntent);
  }

  public static void openTakePhoto(Context paramContext)
  {
    Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
    localIntent.putExtra("camerasensortype", 2);
    paramContext.startActivity(localIntent);
  }

  public static void openVolumeAndVibrateSettings(Context paramContext)
  {
    paramContext.startActivity(new Intent("android.settings.SOUND_SETTINGS"));
  }

  public static void openWifi(Context paramContext)
  {
    WifiManager localWifiManager = (WifiManager)paramContext.getSystemService("wifi");
    if (!localWifiManager.isWifiEnabled())
      localWifiManager.setWifiEnabled(true);
  }

  public static void openWifiSettings(Context paramContext)
  {
    paramContext.startActivity(new Intent("android.settings.WIFI_SETTINGS"));
  }

  public static String removeEMTag(String paramString)
  {
    return removeStr(removeStr(paramString, "<em>"), "</em>");
  }

  public static String removeStr(String paramString1, String paramString2)
  {
    if (paramString1.contains(paramString2))
      paramString1 = paramString1.replace(paramString2, "");
    return paramString1;
  }

  public static void removeViewHardWareAccelerated(View paramView)
  {
    try
    {
      Reflection localReflection = new Reflection();
      int i = ((Integer)localReflection.getStaticProperty("android.view.View", "LAYER_TYPE_SOFTWARE")).intValue();
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = Integer.TYPE;
      arrayOfClass[1] = Paint.class;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(i);
      localReflection.invokeMethod(paramView, "setLayerType", arrayOfClass, arrayOfObject);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void sendEmail(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    if (paramString1 == null);
    for (String str = "mailto:"; ; str = "mailto:" + paramString1)
    {
      Intent localIntent = new Intent("android.intent.action.SENDTO", Uri.parse(str));
      localIntent.putExtra("android.intent.extra.SUBJECT", paramString2);
      localIntent.putExtra("android.intent.extra.TEXT", paramString3);
      paramContext.startActivity(Intent.createChooser(localIntent, "����"));
      return;
    }
  }

  public static void sendSms(Context paramContext, String paramString1, String paramString2)
  {
    if (paramString1 == null);
    for (String str = "smsto:"; ; str = "smsto:" + paramString1)
    {
      Intent localIntent = new Intent("android.intent.action.SENDTO", Uri.parse(str));
      if (paramString2 != null)
        localIntent.putExtra("sms_body", paramString2);
      paramContext.startActivity(localIntent);
      return;
    }
  }

  public static void sendSms(Context paramContext, String paramString1, String paramString2, BroadcastReceiver paramBroadcastReceiver1, BroadcastReceiver paramBroadcastReceiver2)
  {
    PendingIntent localPendingIntent1 = PendingIntent.getActivity(paramContext, 0, new Intent("SENT_SMS_ACTION"), 0);
    PendingIntent localPendingIntent2 = PendingIntent.getActivity(paramContext, 0, new Intent("DELIVERED_SMS_ACTION"), 0);
    if (paramBroadcastReceiver1 != null)
      paramContext.registerReceiver(paramBroadcastReceiver1, new IntentFilter("SENT_SMS_ACTION"));
    if (paramBroadcastReceiver2 != null)
      paramContext.registerReceiver(paramBroadcastReceiver2, new IntentFilter("DELIVERED_SMS_ACTION"));
    SmsManager.getDefault().sendTextMessage(paramString1, null, paramString2, localPendingIntent1, localPendingIntent2);
    writeSmsToOutbox(paramContext, paramString1, paramString2);
  }

  public static void setNetState(Context paramContext)
  {
    if (AndroidSdkVersionUtil.hasHoneycomb())
    {
      paramContext.startActivity(new Intent("android.settings.SETTINGS"));
      return;
    }
    paramContext.startActivity(new Intent("android.settings.WIRELESS_SETTINGS"));
  }

  public static void setScreenRotated(Context paramContext, int paramInt)
  {
    Uri localUri = Settings.System.getUriFor("accelerometer_rotation");
    Settings.System.putInt(paramContext.getContentResolver(), "accelerometer_rotation", paramInt);
    paramContext.getContentResolver().notifyChange(localUri, null);
  }

  public static void setWindowHardWareAccelerated(Activity paramActivity)
  {
    int i = getFlagHardWareAccelerated();
    if (i != -1)
      paramActivity.getWindow().setFlags(i, i);
  }

  public static void startApps(Context paramContext, String paramString)
  {
    Intent localIntent = paramContext.getPackageManager().getLaunchIntentForPackage(paramString);
    if (localIntent != null)
      paramContext.startActivity(localIntent);
  }

  public static void toggleGPS(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setClassName("com.android.settings", "com.android.settings.widget.SettingsAppWidgetProvider");
    localIntent.addCategory("android.intent.category.ALTERNATIVE");
    localIntent.setData(Uri.parse("custom:3"));
    try
    {
      PendingIntent.getBroadcast(paramContext, 0, localIntent, 0).send();
      return;
    }
    catch (PendingIntent.CanceledException localCanceledException)
    {
      localCanceledException.printStackTrace();
    }
  }

  public static void toggleMobileData(Context paramContext, boolean paramBoolean)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    try
    {
      Field localField = Class.forName(localConnectivityManager.getClass().getName()).getDeclaredField("mService");
      localField.setAccessible(true);
      Object localObject = localField.get(localConnectivityManager);
      Class localClass = Class.forName(localObject.getClass().getName());
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Boolean.TYPE;
      Method localMethod = localClass.getDeclaredMethod("setMobileDataEnabled", arrayOfClass);
      localMethod.setAccessible(true);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Boolean.valueOf(paramBoolean);
      localMethod.invoke(localObject, arrayOfObject);
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      localClassNotFoundException.printStackTrace();
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      localNoSuchFieldException.printStackTrace();
      return;
    }
    catch (SecurityException localSecurityException)
    {
      localSecurityException.printStackTrace();
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      localNoSuchMethodException.printStackTrace();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      localInvocationTargetException.printStackTrace();
    }
  }

  public static void uninstallApk(Context paramContext, String paramString)
  {
    paramContext.startActivity(new Intent("android.intent.action.DELETE", Uri.fromParts("package", paramString, null)));
  }

  public static void writeSmsToOutbox(Context paramContext, String paramString1, String paramString2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("date", Long.valueOf(System.currentTimeMillis()));
    localContentValues.put("read", Integer.valueOf(0));
    localContentValues.put("type", Integer.valueOf(2));
    localContentValues.put("address", paramString1);
    localContentValues.put("body", paramString2);
    try
    {
      paramContext.getContentResolver().insert(Uri.parse("content://sms"), localContentValues);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.Utils
 * JD-Core Version:    0.6.2
 */