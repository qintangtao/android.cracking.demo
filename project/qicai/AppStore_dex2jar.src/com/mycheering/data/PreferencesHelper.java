package com.mycheering.data;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.StringTokenizer;

class PreferencesHelper
{
  protected static final int DELAY_SEND_POLICY = 2;
  private static final String DT_AGENT = "DTAgent";
  protected static final int LAUNCH_SEND_POLICY = 1;
  protected static final int REAL_TIME_SEND_POLICY = 3;
  protected static final int WIFI_SEND_POLICY;
  private static Context context;
  private static PreferencesHelper dbHelper;

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

  public boolean getAppExit()
  {
    return context.getSharedPreferences("DTAgent", 4).getBoolean("app_exit", false);
  }

  public long getAppExitTime()
  {
    return context.getSharedPreferences("DTAgent", 4).getLong("app_exit_time", System.currentTimeMillis() / 1000L);
  }

  public String getAppId()
  {
    return context.getSharedPreferences("DTAgent", 4).getString(DTConfig.APPID, "");
  }

  public long getAppStartTime()
  {
    return context.getSharedPreferences("DTAgent", 4).getLong("app_start_time", getSessionTime() / 1000L);
  }

  public boolean getAutoPageEnable()
  {
    return context.getSharedPreferences("DTAgent", 4).getBoolean(DTConfig.AUTO_PAGE_ENABLE, true);
  }

  public String getChannelId()
  {
    return context.getSharedPreferences("DTAgent", 4).getString(DTConfig.CHANNELID, "");
  }

  public int getConfigVersion()
  {
    return context.getSharedPreferences("DTAgent", 4).getInt(DTConfig.CONFIG_VERSION, 1);
  }

  public String getDid()
  {
    return context.getSharedPreferences("DTAgent", 4).getString(DTConfig.DID, null);
  }

  public Set<String> getDisableEvents()
  {
    String str = context.getSharedPreferences("DTAgent", 4).getString(DTConfig.DISABLE_EVENTS, "");
    HashSet localHashSet = new HashSet();
    StringTokenizer localStringTokenizer = new StringTokenizer(str, ",");
    while (localStringTokenizer.hasMoreTokens())
      localHashSet.add(localStringTokenizer.nextToken());
    return localHashSet;
  }

  public int getIncrementId()
  {
    SharedPreferences localSharedPreferences = context.getSharedPreferences("DTAgent", 4);
    int i = 1 + localSharedPreferences.getInt("incrementId", 0);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    localEditor.putInt("incrementId", i);
    localEditor.commit();
    return i;
  }

  public long getKid()
  {
    return context.getSharedPreferences("DTAgent", 4).getLong(DTConfig.KID, 0L);
  }

  public String getLocation()
  {
    Object localObject = context.getSharedPreferences("DTAgent", 4).getString("location", null);
    if (localObject != null);
    try
    {
      String str = DES.decryptDES((String)localObject, "74185296");
      localObject = str;
      return localObject;
    }
    catch (Exception localException)
    {
    }
    return localObject;
  }

  public int getReportInterval()
  {
    return context.getSharedPreferences("DTAgent", 4).getInt(DTConfig.REPORT_INTERVAL, 10000);
  }

  public int getReportMode()
  {
    return context.getSharedPreferences("DTAgent", 4).getInt(DTConfig.REPORT_MODE, 3);
  }

  public List<String> getReportUrls()
  {
    String str1 = context.getSharedPreferences("DTAgent", 4).getString(DTConfig.REPORT_URLS, "");
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("http://dt.mycheer.cn");
    StringTokenizer localStringTokenizer = new StringTokenizer(str1, ",");
    while (localStringTokenizer.hasMoreTokens())
    {
      String str2 = localStringTokenizer.nextToken();
      if (!TextUtils.isEmpty(str2))
        localArrayList.add(str2);
    }
    return localArrayList;
  }

  public String getSessionID()
  {
    return context.getSharedPreferences("DTAgent", 4).getString("session_id", null);
  }

  public long getSessionTime()
  {
    return context.getSharedPreferences("DTAgent", 4).getLong("session_save_time", 0L);
  }

  public long getTimeoutMillis()
  {
    return context.getSharedPreferences("DTAgent", 4).getLong(DTConfig.TIMEOUT_MILLIS, 30000L);
  }

  public String getUserInfo()
  {
    Object localObject = context.getSharedPreferences("DTAgent", 4).getString("user_info", null);
    if (localObject != null);
    try
    {
      String str = DES.decryptDES((String)localObject, "74185296");
      localObject = str;
      return localObject;
    }
    catch (Exception localException)
    {
    }
    return localObject;
  }

  public boolean isError()
  {
    return context.getSharedPreferences("DTAgent", 4).getBoolean(DTConfig.IS_ERROR, true);
  }

  public boolean isEvent()
  {
    return context.getSharedPreferences("DTAgent", 4).getBoolean(DTConfig.IS_EVENT, true);
  }

  public boolean isLocation()
  {
    return context.getSharedPreferences("DTAgent", 4).getBoolean(DTConfig.IS_LOCATION, true);
  }

  public boolean isObtainConfig()
  {
    return Calendar.getInstance().get(6) != context.getSharedPreferences("DTAgent", 4).getInt("config_day_of_year", 0);
  }

  public boolean isUser()
  {
    return context.getSharedPreferences("DTAgent", 4).getBoolean(DTConfig.IS_USER, true);
  }

  public boolean reportEnable()
  {
    return context.getSharedPreferences("DTAgent", 4).getBoolean(DTConfig.REPORT_ENABLE, true);
  }

  public void saveAppId(String paramString)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    localEditor.putString(DTConfig.APPID, paramString);
    localEditor.commit();
  }

  public void saveAutoPageEnable(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    localEditor.putBoolean(DTConfig.AUTO_PAGE_ENABLE, paramBoolean);
    localEditor.commit();
  }

  public void saveChannelId(String paramString)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    localEditor.putString(DTConfig.CHANNELID, paramString);
    localEditor.commit();
  }

  public void saveConfigDate()
  {
    int i = Calendar.getInstance().get(6);
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    localEditor.putInt("config_day_of_year", i);
    localEditor.commit();
  }

  public void saveDid(String paramString)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    localEditor.putString(DTConfig.DID, paramString);
    localEditor.commit();
  }

  public void saveDisableEvents(String paramString)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    localEditor.putString(DTConfig.DISABLE_EVENTS, paramString);
    localEditor.commit();
  }

  public void saveIsError(int paramInt)
  {
    int i = 1;
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    String str = DTConfig.IS_ERROR;
    if (paramInt == i);
    while (true)
    {
      localEditor.putBoolean(str, i);
      localEditor.commit();
      return;
      i = 0;
    }
  }

  public void saveIsEvent(int paramInt)
  {
    int i = 1;
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    String str = DTConfig.IS_EVENT;
    if (paramInt == i);
    while (true)
    {
      localEditor.putBoolean(str, i);
      localEditor.commit();
      return;
      i = 0;
    }
  }

  public void saveIsLocation(int paramInt)
  {
    int i = 1;
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    String str = DTConfig.IS_LOCATION;
    if (paramInt == i);
    while (true)
    {
      localEditor.putBoolean(str, i);
      localEditor.commit();
      return;
      i = 0;
    }
  }

  public void saveIsUser(int paramInt)
  {
    int i = 1;
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    String str = DTConfig.IS_USER;
    if (paramInt == i);
    while (true)
    {
      localEditor.putBoolean(str, i);
      localEditor.commit();
      return;
      i = 0;
    }
  }

  public void saveKid(long paramLong)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    localEditor.putLong(DTConfig.KID, paramLong);
    localEditor.commit();
  }

  public void saveLocation(String paramString)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    try
    {
      localEditor.putString("location", DES.encryptDES(paramString, "74185296"));
      localEditor.commit();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public void saveReportEnable(int paramInt)
  {
    int i = 1;
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    String str = DTConfig.REPORT_ENABLE;
    if (paramInt == i);
    while (true)
    {
      localEditor.putBoolean(str, i);
      localEditor.commit();
      return;
      i = 0;
    }
  }

  public void saveReportInterval(int paramInt)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    localEditor.putInt(DTConfig.REPORT_INTERVAL, paramInt * 1000);
    localEditor.commit();
  }

  public void saveSessionMsgCount(int paramInt)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    localEditor.putInt(DTConfig.SESSION_MSG_COUNT, paramInt);
    localEditor.commit();
  }

  public void saveTimeoutMillis(long paramLong)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    localEditor.putLong(DTConfig.TIMEOUT_MILLIS, 1000L * paramLong);
    localEditor.commit();
  }

  public void saveUserInfo(String paramString)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    try
    {
      localEditor.putString("user_info", DES.encryptDES(paramString, "74185296"));
      localEditor.commit();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public boolean sessionCountOverFlow(boolean paramBoolean)
  {
    SharedPreferences localSharedPreferences = context.getSharedPreferences("DTAgent", 4);
    int i = 1 + localSharedPreferences.getInt("sessionCount", 0);
    if (paramBoolean)
    {
      SharedPreferences.Editor localEditor2 = localSharedPreferences.edit();
      localEditor2.putInt("sessionCount", 0);
      localEditor2.commit();
      return false;
    }
    if (i > sessionMsgCount())
      return true;
    SharedPreferences.Editor localEditor1 = localSharedPreferences.edit();
    localEditor1.putInt("sessionCount", i);
    localEditor1.commit();
    return false;
  }

  public int sessionMsgCount()
  {
    return context.getSharedPreferences("DTAgent", 4).getInt(DTConfig.SESSION_MSG_COUNT, 500);
  }

  public void setAppExit(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    localEditor.putBoolean("app_exit", paramBoolean);
    localEditor.commit();
  }

  public void setAppExitTime(long paramLong)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    localEditor.putLong("app_exit_time", paramLong);
    localEditor.commit();
  }

  public void setAppStartTime()
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    localEditor.putLong("app_start_time", System.currentTimeMillis() / 1000L);
    localEditor.commit();
  }

  public void setConfigVersion(int paramInt)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    localEditor.putInt(DTConfig.CONFIG_VERSION, paramInt);
    localEditor.commit();
  }

  public void setReportMode(int paramInt)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    localEditor.putInt(DTConfig.REPORT_MODE, paramInt);
    localEditor.commit();
  }

  public void setReportUrls(String paramString)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    localEditor.putString(DTConfig.REPORT_URLS, paramString);
    localEditor.commit();
  }

  public void setSessionID(String paramString)
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    localEditor.putString("session_id", paramString);
    localEditor.commit();
  }

  public void setSessionTime()
  {
    SharedPreferences.Editor localEditor = context.getSharedPreferences("DTAgent", 4).edit();
    localEditor.putLong("session_save_time", System.currentTimeMillis());
    localEditor.commit();
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.mycheering.data.PreferencesHelper
 * JD-Core Version:    0.6.2
 */