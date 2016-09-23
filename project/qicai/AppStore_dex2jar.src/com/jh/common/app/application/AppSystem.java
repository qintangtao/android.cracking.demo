package com.jh.common.app.application;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.jh.common.cache.JHExternalStorage;
import com.jh.net.JHHttpClient;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedHashMap;
import java.util.Locale;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.apache.http.util.EncodingUtils;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class AppSystem
{
  private static AppSystem instance;
  private String accessToken;
  private String appId;
  private String appPackageId;
  private Context context;
  private String packageName;
  private PhoneEnum phoneType;
  private String refreshToken;
  private String sdCardRootPath = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator;

  private String getAppDirPath(boolean paramBoolean)
  {
    return getAppDirPath(paramBoolean, true);
  }

  private String getAppDirPath(boolean paramBoolean1, boolean paramBoolean2)
  {
    String str1 = "";
    if (JHExternalStorage.canRead())
    {
      str2 = this.sdCardRootPath;
      if (!paramBoolean2)
        str2 = str2 + ".";
      str1 = creatDirIfNotExists(str2 + getPackageName() + File.separator);
      if (TextUtils.isEmpty(str1))
        str1 = this.context.getFilesDir().getAbsolutePath();
    }
    while (paramBoolean1)
    {
      String str2;
      return str1;
    }
    return this.context.getFilesDir().getAbsolutePath();
  }

  public static AppSystem getInstance()
  {
    if (instance == null)
      instance = new AppSystem();
    return instance;
  }

  public String creatDirIfNotExists(String paramString)
  {
    File localFile = new File(paramString);
    boolean bool = true;
    if (!localFile.exists())
      bool = localFile.mkdirs();
    if (!bool)
      paramString = "";
    return paramString;
  }

  public String createFileIfNotExists(String paramString)
  {
    File localFile = new File(paramString);
    if (!localFile.exists());
    try
    {
      localFile.createNewFile();
      return paramString;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return "";
  }

  public String getAPPName()
  {
    try
    {
      PackageManager localPackageManager = this.context.getApplicationContext().getPackageManager();
      String str = (String)localPackageManager.getApplicationLabel(localPackageManager.getApplicationInfo(getPackageName(), 0));
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return "";
  }

  public String getAccessToken()
  {
    try
    {
      String str2;
      if (this.accessToken != null)
        str2 = this.accessToken.toLowerCase();
      for (String str1 = str2; ; str1 = this.accessToken)
      {
        return str1;
        this.accessToken = readXMLFromAssets("appId.xml", "accessToken");
      }
    }
    finally
    {
    }
  }

  public String getAppDirPath()
  {
    return getAppDirPath(false);
  }

  public String getAppId()
  {
    while (true)
    {
      Object localObject2;
      try
      {
        if (this.appId != null)
        {
          String str2 = this.appId.toLowerCase();
          localObject2 = str2;
          return localObject2;
        }
        this.appId = readXMLFromAssets("appId.xml", "appId");
        if (TextUtils.isEmpty(this.appId))
          throw new IllegalArgumentException("App id does not exist in appid.txt error!");
      }
      finally
      {
      }
      if (this.appId == null)
      {
        localObject2 = null;
      }
      else
      {
        String str1 = this.appId.toLowerCase();
        localObject2 = str1;
      }
    }
  }

  public String getAppPackageId()
  {
    try
    {
      String str2;
      if (this.appPackageId != null)
        str2 = this.appPackageId.toLowerCase();
      for (String str1 = str2; ; str1 = this.appPackageId)
      {
        return str1;
        this.appPackageId = readXMLFromAssets("appId.xml", "appPackageId");
      }
    }
    finally
    {
    }
  }

  public String getAppSource()
  {
    try
    {
      ApplicationInfo localApplicationInfo = this.context.getPackageManager().getApplicationInfo(getPackageName(), 128);
      String str = localApplicationInfo.metaData.get("app_key");
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
    return "";
  }

  public String getAudioPath()
  {
    String str = getAppDirPath() + File.separator + "localAudio/";
    File localFile = new File(str);
    if (!localFile.exists())
      localFile.mkdirs();
    return str;
  }

  public String getContentFromAssects(Context paramContext, String paramString)
  {
    String str1 = Locale.getDefault().getLanguage();
    String str2 = Locale.getDefault().getCountry();
    String str3;
    if (((str1.equals("en")) && (str2.equals("US"))) || ((str1.equals("zh")) && (str2.equals("CN"))) || ((str1.equals("zh")) && (str2.equals("TW"))))
      str3 = Locale.getDefault().getLanguage() + "/" + Locale.getDefault().getCountry() + "/" + paramString;
    try
    {
      while (true)
      {
        InputStream localInputStream = paramContext.getResources().getAssets().open(str3);
        byte[] arrayOfByte = new byte[localInputStream.available()];
        localInputStream.read(arrayOfByte);
        String str4 = EncodingUtils.getString(arrayOfByte, "utf-8");
        return str4;
        str3 = "en/US/" + paramString;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return "";
  }

  public Context getContext()
  {
    return this.context;
  }

  public String getDownloadPath()
  {
    return creatDirIfNotExists(getAppDirPath() + File.separator + "download/");
  }

  public String getExternalPath()
  {
    return getExternalPath(true);
  }

  public String getExternalPath(boolean paramBoolean)
  {
    return getAppDirPath(true, paramBoolean);
  }

  public String getPackageName()
  {
    if (TextUtils.isEmpty(this.packageName))
      this.packageName = this.context.getPackageName();
    return this.packageName;
  }

  public PhoneEnum getPhoneType()
  {
    String str = Build.MANUFACTURER;
    if (str.toLowerCase().contains("htc"))
      this.phoneType = PhoneEnum.HTC;
    while (true)
    {
      return this.phoneType;
      if (str.toLowerCase().contains("samsung"))
        this.phoneType = PhoneEnum.SUMSING;
      else if (str.toLowerCase().contains("huawei"))
        this.phoneType = PhoneEnum.HUAWEI;
      else
        this.phoneType = PhoneEnum.UNKNOWN;
    }
  }

  public String getRefreshToken()
  {
    try
    {
      String str2;
      if (this.refreshToken != null)
        str2 = this.refreshToken.toLowerCase();
      for (String str1 = str2; ; str1 = this.refreshToken)
      {
        return str1;
        this.refreshToken = readXMLFromAssets("appId.xml", "refreshToken");
      }
    }
    finally
    {
    }
  }

  public String getVersionCode()
  {
    PackageManager localPackageManager = this.context.getPackageManager();
    try
    {
      String str = localPackageManager.getPackageInfo(this.context.getPackageName(), 0).versionCode;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
    return "";
  }

  public String getVersionName()
  {
    PackageManager localPackageManager = this.context.getPackageManager();
    try
    {
      String str = localPackageManager.getPackageInfo(this.context.getPackageName(), 0).versionName;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
    return "";
  }

  public boolean isCanUseSim(Context paramContext)
  {
    try
    {
      int i = ((TelephonyManager)paramContext.getSystemService("phone")).getSimState();
      boolean bool = false;
      if (5 == i)
        bool = true;
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }

  public String readXMLFromAssets(String paramString1, String paramString2)
  {
    Object localObject1 = "";
    try
    {
      NodeList localNodeList = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(getInstance().getContext().getResources().getAssets().open(paramString1)).getDocumentElement().getElementsByTagName("note");
      if (localNodeList.getLength() > 0)
        for (int i = 0; i < localNodeList.getLength(); i++)
        {
          Element localElement = (Element)localNodeList.item(i);
          if (localElement.getAttribute("id").equals(paramString2))
          {
            localObject1 = localElement.getNodeValue();
            String str = localElement.getAttribute("value");
            localObject1 = str;
            break;
          }
        }
    }
    catch (IOException localIOException)
    {
      localIOException = localIOException;
      return localObject1;
    }
    catch (SAXException localSAXException)
    {
      localSAXException = localSAXException;
      return localObject1;
    }
    catch (ParserConfigurationException localParserConfigurationException)
    {
      localParserConfigurationException = localParserConfigurationException;
      return localObject1;
    }
    finally
    {
    }
    return localObject1;
  }

  public LinkedHashMap<String, String> readXMLListFromAssets(String paramString1, String paramString2)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    try
    {
      NodeList localNodeList = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(getInstance().getContext().getResources().getAssets().open(paramString1)).getDocumentElement().getElementsByTagName(paramString2);
      if (localNodeList.getLength() > 0)
        for (int i = 0; i < localNodeList.getLength(); i++)
        {
          Element localElement = (Element)localNodeList.item(i);
          localLinkedHashMap.put(localElement.getAttribute("id"), localElement.getAttribute("value"));
        }
    }
    catch (IOException localIOException)
    {
      localIOException = localIOException;
      return localLinkedHashMap;
    }
    catch (SAXException localSAXException)
    {
      localSAXException = localSAXException;
      return localLinkedHashMap;
    }
    catch (ParserConfigurationException localParserConfigurationException)
    {
      localParserConfigurationException = localParserConfigurationException;
      return localLinkedHashMap;
    }
    catch (NoClassDefFoundError localNoClassDefFoundError)
    {
      localNoClassDefFoundError = localNoClassDefFoundError;
      return localLinkedHashMap;
    }
    finally
    {
    }
    return localLinkedHashMap;
  }

  public void setContext(Context paramContext)
  {
    this.context = paramContext;
    JHHttpClient.setContext(paramContext);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.common.app.application.AppSystem
 * JD-Core Version:    0.6.2
 */