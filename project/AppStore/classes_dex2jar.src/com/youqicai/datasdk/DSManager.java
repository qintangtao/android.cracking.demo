package com.youqicai.datasdk;

import android.content.Context;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.util.Log;
import com.youqicai.AppStore.AppStoreApplication;
import com.youqicai.PhoneHelper.DeviceInfo;
import com.youqicai.PhoneHelper.PreferencesHelper;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

public class DSManager
{
  public static final String CID = "cid";

  public static String getCid(Context paramContext)
  {
    Object localObject = "";
    String str1;
    if (TextUtils.isEmpty((CharSequence)localObject))
    {
      localObject = Settings.System.getString(paramContext.getContentResolver(), "cid");
      if (TextUtils.isEmpty((CharSequence)localObject))
        str1 = DeviceInfo.readStringFromFile(new File(PreferencesHelper.getSdcardPath() + "/Android/data/.cid"));
    }
    try
    {
      String str2 = str1.substring(0, str1.indexOf(","));
      localObject = str2;
      if (TextUtils.isEmpty((CharSequence)localObject))
        localObject = "100000000";
      return localObject;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  // ERROR //
  public static String getCustomChannelInfo(Context paramContext)
  {
    // Byte code:
    //   0: ldc 18
    //   2: astore_1
    //   3: aconst_null
    //   4: astore_2
    //   5: aconst_null
    //   6: astore_3
    //   7: aconst_null
    //   8: astore 4
    //   10: aload_0
    //   11: invokevirtual 87	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   14: getfield 92	android/content/pm/ApplicationInfo:sourceDir	Ljava/lang/String;
    //   17: astore 13
    //   19: new 94	java/util/zip/ZipFile
    //   22: dup
    //   23: aload 13
    //   25: invokespecial 95	java/util/zip/ZipFile:<init>	(Ljava/lang/String;)V
    //   28: astore 14
    //   30: new 97	java/io/BufferedInputStream
    //   33: dup
    //   34: new 99	java/io/FileInputStream
    //   37: dup
    //   38: aload 13
    //   40: invokespecial 100	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   43: invokespecial 103	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   46: astore 15
    //   48: new 105	java/util/zip/ZipInputStream
    //   51: dup
    //   52: aload 15
    //   54: invokespecial 106	java/util/zip/ZipInputStream:<init>	(Ljava/io/InputStream;)V
    //   57: astore 16
    //   59: aload 14
    //   61: invokevirtual 110	java/util/zip/ZipFile:entries	()Ljava/util/Enumeration;
    //   64: astore 17
    //   66: aload 17
    //   68: invokeinterface 116 1 0
    //   73: ifeq +60 -> 133
    //   76: aload 17
    //   78: invokeinterface 120 1 0
    //   83: checkcast 122	java/util/zip/ZipEntry
    //   86: astore 21
    //   88: aload 21
    //   90: invokevirtual 125	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   93: ldc 127
    //   95: invokevirtual 131	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   98: ifeq -32 -> 66
    //   101: aload 21
    //   103: invokevirtual 125	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   106: astore 22
    //   108: aload 22
    //   110: ldc 133
    //   112: invokevirtual 137	java/lang/String:length	()I
    //   115: aload 22
    //   117: ldc 139
    //   119: invokevirtual 142	java/lang/String:lastIndexOf	(Ljava/lang/String;)I
    //   122: invokevirtual 77	java/lang/String:substring	(II)Ljava/lang/String;
    //   125: astore 23
    //   127: aload 23
    //   129: astore_1
    //   130: goto -64 -> 66
    //   133: aload 15
    //   135: ifnull +8 -> 143
    //   138: aload 15
    //   140: invokevirtual 147	java/io/InputStream:close	()V
    //   143: aload 16
    //   145: ifnull +8 -> 153
    //   148: aload 16
    //   150: invokevirtual 150	java/util/zip/ZipInputStream:closeEntry	()V
    //   153: aload 14
    //   155: ifnull +205 -> 360
    //   158: aload 16
    //   160: invokevirtual 150	java/util/zip/ZipInputStream:closeEntry	()V
    //   163: aload_1
    //   164: areturn
    //   165: astore 18
    //   167: aload_1
    //   168: areturn
    //   169: astore 9
    //   171: aload 9
    //   173: invokevirtual 82	java/lang/Exception:printStackTrace	()V
    //   176: aload_3
    //   177: ifnull +7 -> 184
    //   180: aload_3
    //   181: invokevirtual 147	java/io/InputStream:close	()V
    //   184: aload 4
    //   186: ifnull +8 -> 194
    //   189: aload 4
    //   191: invokevirtual 150	java/util/zip/ZipInputStream:closeEntry	()V
    //   194: aload_2
    //   195: ifnull -32 -> 163
    //   198: aload 4
    //   200: invokevirtual 150	java/util/zip/ZipInputStream:closeEntry	()V
    //   203: aload_1
    //   204: areturn
    //   205: astore 10
    //   207: aload_1
    //   208: areturn
    //   209: astore 5
    //   211: aload_3
    //   212: ifnull +7 -> 219
    //   215: aload_3
    //   216: invokevirtual 147	java/io/InputStream:close	()V
    //   219: aload 4
    //   221: ifnull +8 -> 229
    //   224: aload 4
    //   226: invokevirtual 150	java/util/zip/ZipInputStream:closeEntry	()V
    //   229: aload_2
    //   230: ifnull +8 -> 238
    //   233: aload 4
    //   235: invokevirtual 150	java/util/zip/ZipInputStream:closeEntry	()V
    //   238: aload 5
    //   240: athrow
    //   241: astore 20
    //   243: goto -100 -> 143
    //   246: astore 19
    //   248: goto -95 -> 153
    //   251: astore 12
    //   253: goto -69 -> 184
    //   256: astore 11
    //   258: goto -64 -> 194
    //   261: astore 8
    //   263: goto -44 -> 219
    //   266: astore 7
    //   268: goto -39 -> 229
    //   271: astore 6
    //   273: goto -35 -> 238
    //   276: astore 5
    //   278: aload 14
    //   280: astore_2
    //   281: aconst_null
    //   282: astore_3
    //   283: aconst_null
    //   284: astore 4
    //   286: goto -75 -> 211
    //   289: astore 5
    //   291: aload 15
    //   293: astore_3
    //   294: aload 14
    //   296: astore_2
    //   297: aconst_null
    //   298: astore 4
    //   300: goto -89 -> 211
    //   303: astore 5
    //   305: aload 16
    //   307: astore 4
    //   309: aload 15
    //   311: astore_3
    //   312: aload 14
    //   314: astore_2
    //   315: goto -104 -> 211
    //   318: astore 9
    //   320: aload 14
    //   322: astore_2
    //   323: aconst_null
    //   324: astore_3
    //   325: aconst_null
    //   326: astore 4
    //   328: goto -157 -> 171
    //   331: astore 9
    //   333: aload 15
    //   335: astore_3
    //   336: aload 14
    //   338: astore_2
    //   339: aconst_null
    //   340: astore 4
    //   342: goto -171 -> 171
    //   345: astore 9
    //   347: aload 16
    //   349: astore 4
    //   351: aload 15
    //   353: astore_3
    //   354: aload 14
    //   356: astore_2
    //   357: goto -186 -> 171
    //   360: aload_1
    //   361: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   158	163	165	java/lang/Exception
    //   10	30	169	java/lang/Exception
    //   198	203	205	java/lang/Exception
    //   10	30	209	finally
    //   171	176	209	finally
    //   138	143	241	java/lang/Exception
    //   148	153	246	java/lang/Exception
    //   180	184	251	java/lang/Exception
    //   189	194	256	java/lang/Exception
    //   215	219	261	java/lang/Exception
    //   224	229	266	java/lang/Exception
    //   233	238	271	java/lang/Exception
    //   30	48	276	finally
    //   48	59	289	finally
    //   59	66	303	finally
    //   66	127	303	finally
    //   30	48	318	java/lang/Exception
    //   48	59	331	java/lang/Exception
    //   59	66	345	java/lang/Exception
    //   66	127	345	java/lang/Exception
  }

  public static void init()
  {
    try
    {
      DeviceInfo.initDeviceInfo(AppStoreApplication.getInstance().getApplicationContext());
      ArrayList localArrayList = MessageUtils.getEventMsg(AppStoreApplication.getInstance().getApplicationContext());
      Log.e("DSManager ---------------------------> ", localArrayList.size() + " ------------------------ ");
      Iterator localIterator = localArrayList.iterator();
      while (localIterator.hasNext())
      {
        MessageModel localMessageModel = (MessageModel)localIterator.next();
        HttpController.getInstance().sendManyData(AppStoreApplication.getInstance().getApplicationContext(), localMessageModel);
      }
    }
    finally
    {
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.datasdk.DSManager
 * JD-Core Version:    0.6.2
 */