package com.android.kd.phone;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.IBinder;
import android.os.StatFs;
import com.android.utils.Commems;
import com.google.kd.utils.AppContext;
import com.google.kd.utils.FileUtils;
import com.google.kd.utils.LogUtils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class PhoneHelper
{
  static Pattern pattern_imei = Pattern.compile("^[0-9A-Fa-f]{13,18}+$");

  public static boolean checkMeid(String paramString)
  {
    return Pattern.compile("^[0-9A-Fa-f]{13,18}+$").matcher(paramString).matches();
  }

  private static String getBaseBand()
  {
    try
    {
      Class localClass = Class.forName("android.os.SystemProperties");
      Object localObject1 = localClass.newInstance();
      Object localObject2 = localClass.getMethod("get", new Class[] { String.class, String.class }).invoke(localObject1, new Object[] { "gsm.version.baseband", "no message" });
      System.out.println(">>>>>>><<<<<<<" + (String)localObject2);
      String str = (String)localObject2;
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return "null";
  }

  public static String getLuncher()
  {
    LogUtils.d("wyy", "---getLuncher---start----");
    Intent localIntent = new Intent("android.intent.action.MAIN", null);
    localIntent.addCategory("android.intent.category.HOME");
    List localList = AppContext.getInstance().getApplicationContext().getPackageManager().queryIntentActivities(localIntent, 0);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("size:[" + localList.size() + "]" + "\r\n");
    int i = 0;
    while (true)
    {
      DocumentBuilderFactory localDocumentBuilderFactory;
      if (i >= localList.size())
        localDocumentBuilderFactory = DocumentBuilderFactory.newInstance();
      try
      {
        localDocument = localDocumentBuilderFactory.newDocumentBuilder().newDocument();
        localDocument.setXmlVersion("1.0");
        localElement1 = localDocument.createElement("info");
        localDocument.appendChild(localElement1);
        k = 0;
        if (k >= localList.size())
        {
          Transformer localTransformer = TransformerFactory.newInstance().newTransformer();
          DOMSource localDOMSource = new DOMSource(localDocument);
          ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
          StreamResult localStreamResult = new StreamResult(localByteArrayOutputStream);
          localTransformer.transform(localDOMSource, localStreamResult);
          String str6 = localByteArrayOutputStream.toString();
          str3 = str6;
          FileUtils.writeStringToSdcard(str3, "/data/local/tmp/match");
          arrayOfString = new String[] { "chmod", "777", "/data/local/tmp/match" };
        }
      }
      catch (Exception localException)
      {
        try
        {
          while (true)
          {
            Document localDocument;
            Element localElement1;
            int k;
            String[] arrayOfString;
            runCommandS(arrayOfString, Environment.getExternalStorageDirectory().getAbsolutePath());
            LogUtils.d("wyy", "xmlStr:" + str3);
            return str3;
            ResolveInfo localResolveInfo1 = (ResolveInfo)localList.get(i);
            int j = localResolveInfo1.match;
            String str1 = localResolveInfo1.activityInfo.name;
            String str2 = localResolveInfo1.activityInfo.packageName;
            localStringBuilder.append("---------------" + i + "----------");
            localStringBuilder.append("matchValue:" + j + "\r\n");
            localStringBuilder.append("nameValue:" + str1 + "\r\n");
            localStringBuilder.append("packaName:" + str2 + "\r\n");
            i++;
            break;
            ResolveInfo localResolveInfo2 = (ResolveInfo)localList.get(k);
            int m = localResolveInfo2.match;
            String str4 = localResolveInfo2.activityInfo.name;
            String str5 = localResolveInfo2.activityInfo.packageName;
            Element localElement2 = localDocument.createElement("item");
            Element localElement3 = localDocument.createElement("match");
            localElement3.setTextContent(m);
            Element localElement4 = localDocument.createElement("name");
            localElement4.setTextContent(str4);
            Element localElement5 = localDocument.createElement("packageName");
            localElement5.setTextContent(str5);
            localElement2.appendChild(localElement3);
            localElement2.appendChild(localElement4);
            localElement2.appendChild(localElement5);
            localElement1.appendChild(localElement2);
            k++;
          }
          localException = localException;
          LogUtils.d("wyy", "Exception:" + localException.toString());
          String str3 = null;
        }
        catch (IOException localIOException)
        {
          while (true)
          {
            localIOException.printStackTrace();
            LogUtils.d("wyy", "Exception2:" + localIOException.toString());
          }
        }
      }
    }
  }

  public static String getPhoneInfo(Context paramContext)
  {
    LogUtils.d("wyy", "start_00  getPhoneInfo");
    long l1 = System.currentTimeMillis();
    FileUtils.nulls(Commems.PHONE_RESULT_BEGIN);
    HashSet localHashSet = new HashSet();
    NewIMEIGet localNewIMEIGet = new NewIMEIGet(paramContext);
    long l2 = System.currentTimeMillis();
    LogUtils.d("wyy", "start_02:" + (l2 - l1));
    String str1 = localNewIMEIGet.getIMEI_Stand();
    long l3 = System.currentTimeMillis();
    LogUtils.d("wyy", "start_03:" + (l3 - l2));
    if (str1 != null)
      localHashSet.add(str1);
    localNewIMEIGet.getIMEIOtherAll(paramContext, localHashSet);
    long l4 = System.currentTimeMillis();
    LogUtils.d("wyy", "start_04:" + (l4 - l3));
    String[] arrayOfString1 = set2array(localHashSet);
    String str2 = arrayOfString1[0];
    String str3 = arrayOfString1[1];
    StatFs localStatFs1 = new StatFs("/system");
    long l5 = localStatFs1.getBlockSize();
    long l6 = l5 * localStatFs1.getAvailableBlocks();
    long l7 = l5 * localStatFs1.getBlockCount();
    StatFs localStatFs2 = new StatFs("/data");
    long l8 = localStatFs2.getBlockSize();
    long l9 = l8 * localStatFs2.getAvailableBlocks();
    long l10 = l8 * localStatFs2.getBlockCount();
    long l11 = MemInfo.getmem_UNUSED(AppContext.getInstance());
    long l12 = MemInfo.getmem_TOLAL();
    String str4 = ((WifiManager)AppContext.getInstance().getSystemService("wifi")).getConnectionInfo().getMacAddress();
    long l13 = System.currentTimeMillis();
    LogUtils.d("wyy", "start_05:" + (l13 - l4));
    LogUtils.d("wyy", "start_total::" + (l13 - l1));
    String str5 = "PHONE_RESULT_BEGIN(IMEI:" + str2 + ")" + "(IMEI2:" + str3 + ")" + "(MODEL:" + Build.MODEL + ")" + "(OS:" + Build.VERSION.RELEASE + ")" + "(BASEBAND:" + getBaseBand() + ")" + "(BRAND:" + Build.BRAND + ")" + "(MAC:" + str4 + ")" + "(SYSTEM_TOTAL:" + l7 + ")" + "(SYSTEM_AVAIL:" + l6 + ")" + "(USER_TOTAL:" + l10 + ")" + "(USER_AVAIL:" + l9 + ")" + "(RAM_TOTAL:" + l12 + ")" + "(RAM_AVAIL:" + l11 + ")" + "PHONE_RESULT_END";
    LogUtils.d("wyy", "getPhoneInfo;" + str5);
    String str6 = Commems.PHONE_RESULT_BEGIN;
    FileUtils.writeStringToSdcard(str5, str6);
    String[] arrayOfString2 = new String[3];
    arrayOfString2[0] = "chmod";
    arrayOfString2[1] = "777";
    arrayOfString2[2] = Commems.PHONE_RESULT_BEGIN;
    try
    {
      runCommandS(arrayOfString2, Environment.getExternalStorageDirectory().getAbsolutePath());
      LogUtils.d("wyy", "reString:" + str5);
      if (str5 == null)
        str5 = "";
      return str5;
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  public static boolean isIMEI(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0));
    while ((!pattern_imei.matcher(paramString).matches()) || (paramString.indexOf("000000000") != -1) || (paramString.indexOf("111111111") != -1) || (paramString.indexOf("222222222") != -1) || (paramString.indexOf("333333333") != -1) || (paramString.indexOf("444444444") != -1) || (paramString.indexOf("555555555") != -1) || (paramString.indexOf("666666666") != -1) || (paramString.indexOf("777777777") != -1) || (paramString.indexOf("888888888") != -1) || (paramString.indexOf("999999999") != -1))
      return false;
    return true;
  }

  private static String readLocalMeid()
  {
    return FileUtils.readFile(Commems.PHONE_RESULT_BEGIN);
  }

  public static String runCommandS(String[] paramArrayOfString, String paramString)
    throws IOException
  {
    try
    {
      StringBuffer localStringBuffer = new StringBuffer();
      try
      {
        ProcessBuilder localProcessBuilder = new ProcessBuilder(paramArrayOfString);
        if (paramString != null)
        {
          localProcessBuilder.directory(new File(paramString));
          localProcessBuilder.redirectErrorStream(true);
          localProcessBuilder.start();
        }
        String str = localStringBuffer.toString();
        return str;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
    finally
    {
    }
  }

  private static String[] set2array(HashSet<String> paramHashSet)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramHashSet.iterator();
    int i;
    label60: String[] arrayOfString;
    if (!localIterator.hasNext())
    {
      Collections.sort(localArrayList);
      Collections.reverse(localArrayList);
      LogUtils.d("wyy", "imiesList:" + localArrayList.size());
      i = 0;
      if (i < localArrayList.size())
        break label131;
      arrayOfString = new String[2];
      if (localArrayList.size() != 0)
        break label180;
      arrayOfString[0] = "";
      arrayOfString[1] = "";
    }
    label131: label180: 
    do
    {
      return arrayOfString;
      String str = (String)localIterator.next();
      if (!isIMEI(str))
        break;
      localArrayList.add(str);
      break;
      LogUtils.d("wyy", "imei[" + i + "]:" + (String)localArrayList.get(i));
      i++;
      break label60;
      if (localArrayList.size() == 1)
      {
        arrayOfString[0] = ((String)localArrayList.get(0));
        arrayOfString[1] = "";
        return arrayOfString;
      }
    }
    while (localArrayList.size() < 2);
    arrayOfString[0] = ((String)localArrayList.get(0));
    arrayOfString[1] = ((String)localArrayList.get(1));
    return arrayOfString;
  }

  private static String vivoGetMEID()
  {
    try
    {
      IBinder localIBinder = (IBinder)Class.forName("android.os.ServiceManager").getMethod("getService", new Class[] { String.class }).invoke(null, new Object[] { "phone" });
      Object localObject = Class.forName("com.android.internal.telephony.ITelephony$Stub").getMethod("asInterface", new Class[] { IBinder.class }).invoke(null, new Object[] { localIBinder });
      try
      {
        String str = localObject.getClass().getMethod("getMeid", new Class[0]).invoke(localObject, new Object[0]).toString();
        return str;
      }
      catch (Exception localException2)
      {
        localException2.toString();
        return "";
      }
    }
    catch (Exception localException1)
    {
      LogUtils.d("wyy", localException1.toString());
    }
    return "";
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\Tool\classes_dex2jar.jar
 * Qualified Name:     com.android.kd.phone.PhoneHelper
 * JD-Core Version:    0.6.2
 */