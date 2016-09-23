package com.youqicai.PhoneHelper;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.StringTokenizer;

public class PreferencesHelper
{
  private static final String ALREADY_CLICKED = "ALREADY_CLICKED";
  private static final String AUTO_INSTALL = "AUTO_INSTALL";
  private static final String INSTALL_TIME = "install_time";
  private static final String NICK_NAME = "nickName";
  private static final String PHONE_HELPER = "Phone_Helper";
  private static final String REPORT_URLS = "REPORT_URLS";
  private static final String TODAY_UPLOAD = "today_upload_active";
  private static final String TODAY_UPLOAD_DEVICE = "today_upload_device";
  private static final String TODAY_UPLOAD_STAT = "today_upload_stat";
  private static final String TOTAL_UPLOAD_COUNT = "total_upload_count";
  private static final String UPDATE_CHECK = "UPDATE_CHECK";
  private static Context context;
  private static PreferencesHelper dbHelper;
  private static final String headUrl = "headUrl";
  private static final String token = "token";

  private PreferencesHelper(Context paramContext)
  {
    context = paramContext.getApplicationContext();
  }

  public static PreferencesHelper getInstance(Context paramContext)
  {
    try
    {
      if ((dbHelper == null) && (paramContext != null))
        dbHelper = new PreferencesHelper(paramContext);
      PreferencesHelper localPreferencesHelper = dbHelper;
      return localPreferencesHelper;
    }
    finally
    {
    }
  }

  public static String getSdcardPath()
  {
    return Environment.getExternalStorageDirectory().getAbsolutePath();
  }

  public String getCid()
  {
    return context.getSharedPreferences("Phone_Helper", 0).getString("cid", null);
  }

  public String getDid()
  {
    return context.getSharedPreferences("Phone_Helper", 0).getString("did", null);
  }

  public String getHeadUrl()
  {
    return context.getSharedPreferences("Phone_Helper", 0).getString("headUrl", null);
  }

  public int getInstallDayOfYear()
  {
    return context.getSharedPreferences("Phone_Helper", 0).getInt("install_time", 0);
  }

  public long getKid()
  {
    return context.getSharedPreferences("Phone_Helper", 0).getLong("kid", 0L);
  }

  public String getNickName()
  {
    return context.getSharedPreferences("Phone_Helper", 0).getString("nickName", null);
  }

  public List<String> getReportUrls()
  {
    String str1 = context.getSharedPreferences("Phone_Helper", 4).getString("REPORT_URLS", "");
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("http://103.26.1.210:8999/");
    StringTokenizer localStringTokenizer = new StringTokenizer(str1, ",");
    while (localStringTokenizer.hasMoreTokens())
    {
      String str2 = localStringTokenizer.nextToken();
      if (!TextUtils.isEmpty(str2))
        localArrayList.add(str2);
    }
    return localArrayList;
  }

  public long getSpeedTime()
  {
    return context.getSharedPreferences("Phone_Helper", 0).getLong("speedupTime", 0L);
  }

  public String getToken()
  {
    return context.getSharedPreferences("Phone_Helper", 0).getString("token", null);
  }

  public boolean isAddShortCut()
  {
    return context.getSharedPreferences("Phone_Helper", 0).getBoolean("shortCut", false);
  }

  public boolean isAlreadyClicked()
  {
    return context.getSharedPreferences("Phone_Helper", 0).getBoolean("ALREADY_CLICKED", false);
  }

  public boolean isAssisAutoInstallSwitch()
  {
    return context.getSharedPreferences("Phone_Helper", 0).getBoolean("AUTO_INSTALL", false);
  }

  public boolean isDeviceTodayStat()
  {
    int i = context.getSharedPreferences("Phone_Helper", 0).getInt("today_upload_stat", 0);
    int j = Calendar.getInstance().get(6);
    boolean bool = false;
    if (i == j)
      bool = true;
    return bool;
  }

  public boolean isDeviceTodayUpload()
  {
    int i = context.getSharedPreferences("Phone_Helper", 0).getInt("today_upload_device", 0);
    int j = Calendar.getInstance().get(6);
    boolean bool = false;
    if (i == j)
      bool = true;
    return bool;
  }

  public boolean isOverUpload()
  {
    int i = context.getSharedPreferences("Phone_Helper", 0).getInt("total_upload_count", 0);
    boolean bool = false;
    if (i > 15)
      bool = true;
    return bool;
  }

  public boolean isTodayUpload()
  {
    int i = context.getSharedPreferences("Phone_Helper", 0).getInt("today_upload_active", 0);
    int j = Calendar.getInstance().get(6);
    boolean bool = false;
    if (i == j)
      bool = true;
    return bool;
  }

  public boolean isUpdateCheck()
  {
    int i = context.getSharedPreferences("Phone_Helper", 0).getInt("UPDATE_CHECK", 0);
    int j = Calendar.getInstance().get(6);
    boolean bool = false;
    if (i == j)
      bool = true;
    return bool;
  }

  public void saveCid(String paramString)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("Phone_Helper", 0).edit();
    localEditor.putString("cid", paramString);
    localEditor.commit();
  }

  public void saveDeviceTodayStat()
  {
    SharedPreferences localSharedPreferences = context.getSharedPreferences("Phone_Helper", 0);
    int i = Calendar.getInstance().get(6);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    localEditor.putInt("today_upload_stat", i);
    localEditor.commit();
  }

  public void saveDeviceTodayUpload()
  {
    SharedPreferences localSharedPreferences = context.getSharedPreferences("Phone_Helper", 0);
    int i = Calendar.getInstance().get(6);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    localEditor.putInt("today_upload_device", i);
    localEditor.commit();
  }

  public void saveDid(String paramString)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("Phone_Helper", 0).edit();
    localEditor.putString("did", paramString);
    localEditor.commit();
  }

  public void saveFirstInstallTime(long paramLong)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong);
    SharedPreferences.Editor localEditor = context.getSharedPreferences("Phone_Helper", 0).edit();
    localEditor.putInt("install_time", localCalendar.get(6));
    localEditor.commit();
  }

  public void saveHeadUrl(String paramString)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("Phone_Helper", 0).edit();
    localEditor.putString("headUrl", paramString);
    localEditor.commit();
  }

  public void saveKid(long paramLong)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("Phone_Helper", 0).edit();
    localEditor.putLong("kid", paramLong);
    localEditor.commit();
  }

  public void saveNickName(String paramString)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("Phone_Helper", 0).edit();
    localEditor.putString("nickName", paramString);
    localEditor.commit();
  }

  public void saveShortCut(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("Phone_Helper", 0).edit();
    localEditor.putBoolean("shortCut", paramBoolean);
    localEditor.commit();
  }

  public void saveSpeedTime(long paramLong)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("Phone_Helper", 0).edit();
    localEditor.putLong("speedupTime", paramLong);
    localEditor.commit();
  }

  public void saveTodayUpload()
  {
    SharedPreferences localSharedPreferences = context.getSharedPreferences("Phone_Helper", 0);
    int i = Calendar.getInstance().get(6);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    localEditor.putInt("today_upload_active", i);
    localEditor.commit();
  }

  public void saveToken(String paramString)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("Phone_Helper", 0).edit();
    localEditor.putString("token", paramString);
    localEditor.commit();
  }

  public void saveUpdateCheck()
  {
    SharedPreferences localSharedPreferences = context.getSharedPreferences("Phone_Helper", 0);
    int i = Calendar.getInstance().get(6);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    localEditor.putInt("UPDATE_CHECK", i);
    localEditor.commit();
  }

  public void saveUploadCount()
  {
    SharedPreferences localSharedPreferences = context.getSharedPreferences("Phone_Helper", 0);
    int i = localSharedPreferences.getInt("total_upload_count", 0);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    localEditor.putInt("total_upload_count", i + 1);
    localEditor.commit();
  }

  public void setAlreadyClicked(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("Phone_Helper", 0).edit();
    localEditor.putBoolean("ALREADY_CLICKED", paramBoolean);
    localEditor.commit();
  }

  public void setAssisAutoInstallSwitch(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("Phone_Helper", 0).edit();
    localEditor.putBoolean("AUTO_INSTALL", paramBoolean);
    localEditor.commit();
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.PhoneHelper.PreferencesHelper
 * JD-Core Version:    0.6.2
 */