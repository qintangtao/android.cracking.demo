package com.android.kd.phone;

import android.content.Context;
import android.telephony.TelephonyManager;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

public class GetImei
{
  Context context = null;

  public GetImei(Context paramContext)
  {
    this.context = paramContext;
  }

  private List<String> IMEI_initMtkDoubleSim()
  {
    ArrayList localArrayList;
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)this.context.getSystemService("phone");
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
        String str1 = ((String)localMethod.invoke(localTelephonyManager, new Object[] { localInteger1 })).trim();
        String str2 = ((String)localMethod.invoke(localTelephonyManager, new Object[] { localObject })).trim();
        localArrayList = new ArrayList();
        if (checkimei(str1).booleanValue())
          localArrayList.add(str1);
        if (checkimei(str2).booleanValue())
        {
          localArrayList.add(str2);
          return localArrayList;
        }
      }
      catch (Exception localException2)
      {
        while (true)
        {
          Integer localInteger1 = Integer.valueOf(0);
          Integer localInteger2 = Integer.valueOf(1);
          Object localObject = localInteger2;
        }
      }
    }
    catch (Exception localException1)
    {
      localArrayList = null;
    }
    return localArrayList;
  }

  private List<String> IMEI_initMtkSecondDoubleSim()
  {
    ArrayList localArrayList;
    try
    {
      TelephonyManager localTelephonyManager1 = (TelephonyManager)this.context.getSystemService("phone");
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
        TelephonyManager localTelephonyManager2 = (TelephonyManager)localMethod.invoke(localTelephonyManager1, new Object[] { localInteger1 });
        TelephonyManager localTelephonyManager3 = (TelephonyManager)localMethod.invoke(localTelephonyManager1, new Object[] { localObject });
        String str1 = localTelephonyManager2.getDeviceId().trim();
        String str2 = localTelephonyManager3.getDeviceId().trim();
        localArrayList = new ArrayList();
        if (checkimei(str1).booleanValue())
          localArrayList.add(str1);
        if (checkimei(str2).booleanValue())
        {
          localArrayList.add(str2);
          return localArrayList;
        }
      }
      catch (Exception localException2)
      {
        while (true)
        {
          Integer localInteger1 = Integer.valueOf(0);
          Integer localInteger2 = Integer.valueOf(1);
          Object localObject = localInteger2;
        }
      }
    }
    catch (Exception localException1)
    {
      localArrayList = null;
    }
    return localArrayList;
  }

  private List<String> IMEI_initSpreadDoubleSim()
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
      String str2 = ((TelephonyManager)this.context.getSystemService("phone")).getDeviceId().trim();
      String str3 = ((TelephonyManager)this.context.getSystemService(str1)).getDeviceId().trim();
      ArrayList localArrayList = new ArrayList();
      if (checkimei(str2).booleanValue())
        localArrayList.add(str2);
      if (checkimei(str3).booleanValue())
        localArrayList.add(str3);
      return localArrayList;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  private Boolean checkimei(String paramString)
  {
    Integer localInteger = Integer.valueOf(paramString.length());
    if ((localInteger.intValue() > 10) && (localInteger.intValue() < 20) && (!checkimeisame(paramString.trim()).booleanValue()))
      return Boolean.valueOf(true);
    return Boolean.valueOf(false);
  }

  private Boolean checkimeisame(String paramString)
  {
    int i = 48;
    if (paramString.length() > 0)
      i = paramString.charAt(0);
    Boolean localBoolean = Boolean.valueOf(true);
    for (int j = 0; ; j++)
    {
      if (j >= paramString.length())
        return localBoolean;
      if (i != paramString.charAt(j))
        return Boolean.valueOf(false);
    }
  }

  public List<String> IMEI_initQualcommDoubleSim()
  {
    try
    {
      ((TelephonyManager)this.context.getSystemService("phone"));
      Class localClass = Class.forName("android.telephony.MSimTelephonyManager");
      Object localObject = this.context.getSystemService("phone_msim");
      Integer localInteger1 = Integer.valueOf(0);
      Integer localInteger2 = Integer.valueOf(1);
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Integer.TYPE;
      Method localMethod = localClass.getMethod("getDeviceId", arrayOfClass);
      String str1 = ((String)localMethod.invoke(localObject, new Object[] { localInteger1 })).trim();
      String str2 = ((String)localMethod.invoke(localObject, new Object[] { localInteger2 })).trim();
      ArrayList localArrayList = new ArrayList();
      if (checkimei(str1).booleanValue())
        localArrayList.add(str1);
      if (checkimei(str2).booleanValue())
        localArrayList.add(str2);
      return localArrayList;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  // ERROR //
  public String getimei()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 13	com/android/kd/phone/GetImei:context	Landroid/content/Context;
    //   4: ldc 19
    //   6: invokevirtual 25	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   9: checkcast 27	android/telephony/TelephonyManager
    //   12: invokevirtual 109	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   15: astore_2
    //   16: new 79	java/util/ArrayList
    //   19: dup
    //   20: invokespecial 80	java/util/ArrayList:<init>	()V
    //   23: astore_3
    //   24: aload_0
    //   25: aload_2
    //   26: invokevirtual 77	java/lang/String:trim	()Ljava/lang/String;
    //   29: invokespecial 84	com/android/kd/phone/GetImei:checkimei	(Ljava/lang/String;)Ljava/lang/Boolean;
    //   32: invokevirtual 90	java/lang/Boolean:booleanValue	()Z
    //   35: ifeq +14 -> 49
    //   38: aload_3
    //   39: aload_2
    //   40: invokevirtual 77	java/lang/String:trim	()Ljava/lang/String;
    //   43: invokeinterface 96 2 0
    //   48: pop
    //   49: aload_0
    //   50: getfield 13	com/android/kd/phone/GetImei:context	Landroid/content/Context;
    //   53: ldc 140
    //   55: invokevirtual 25	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   58: checkcast 27	android/telephony/TelephonyManager
    //   61: invokevirtual 109	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   64: astore 32
    //   66: aload 32
    //   68: ifnull +35 -> 103
    //   71: aload_0
    //   72: aload 32
    //   74: invokespecial 84	com/android/kd/phone/GetImei:checkimei	(Ljava/lang/String;)Ljava/lang/Boolean;
    //   77: invokevirtual 90	java/lang/Boolean:booleanValue	()Z
    //   80: ifeq +23 -> 103
    //   83: aload_3
    //   84: aload 32
    //   86: invokeinterface 143 2 0
    //   91: ifne +12 -> 103
    //   94: aload_3
    //   95: aload 32
    //   97: invokeinterface 96 2 0
    //   102: pop
    //   103: aload_0
    //   104: getfield 13	com/android/kd/phone/GetImei:context	Landroid/content/Context;
    //   107: ldc 145
    //   109: invokevirtual 25	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   112: checkcast 27	android/telephony/TelephonyManager
    //   115: invokevirtual 109	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   118: astore 30
    //   120: aload 30
    //   122: ifnull +35 -> 157
    //   125: aload_0
    //   126: aload 30
    //   128: invokespecial 84	com/android/kd/phone/GetImei:checkimei	(Ljava/lang/String;)Ljava/lang/Boolean;
    //   131: invokevirtual 90	java/lang/Boolean:booleanValue	()Z
    //   134: ifeq +23 -> 157
    //   137: aload_3
    //   138: aload 30
    //   140: invokeinterface 143 2 0
    //   145: ifne +12 -> 157
    //   148: aload_3
    //   149: aload 30
    //   151: invokeinterface 96 2 0
    //   156: pop
    //   157: aload_0
    //   158: invokevirtual 147	com/android/kd/phone/GetImei:IMEI_initQualcommDoubleSim	()Ljava/util/List;
    //   161: astore 6
    //   163: aload 6
    //   165: ifnull +32 -> 197
    //   168: aload 6
    //   170: invokeinterface 150 1 0
    //   175: ifle +22 -> 197
    //   178: aload 6
    //   180: invokeinterface 154 1 0
    //   185: astore 27
    //   187: aload 27
    //   189: invokeinterface 159 1 0
    //   194: ifne +179 -> 373
    //   197: aload_0
    //   198: invokespecial 161	com/android/kd/phone/GetImei:IMEI_initMtkSecondDoubleSim	()Ljava/util/List;
    //   201: astore 7
    //   203: aload 7
    //   205: ifnull +32 -> 237
    //   208: aload 7
    //   210: invokeinterface 150 1 0
    //   215: ifle +22 -> 237
    //   218: aload 7
    //   220: invokeinterface 154 1 0
    //   225: astore 24
    //   227: aload 24
    //   229: invokeinterface 159 1 0
    //   234: ifne +200 -> 434
    //   237: aload_0
    //   238: invokespecial 163	com/android/kd/phone/GetImei:IMEI_initMtkDoubleSim	()Ljava/util/List;
    //   241: astore 8
    //   243: aload 8
    //   245: ifnull +32 -> 277
    //   248: aload 8
    //   250: invokeinterface 150 1 0
    //   255: ifle +22 -> 277
    //   258: aload 8
    //   260: invokeinterface 154 1 0
    //   265: astore 21
    //   267: aload 21
    //   269: invokeinterface 159 1 0
    //   274: ifne +195 -> 469
    //   277: aload_0
    //   278: invokespecial 165	com/android/kd/phone/GetImei:IMEI_initSpreadDoubleSim	()Ljava/util/List;
    //   281: astore 9
    //   283: aload 9
    //   285: ifnull +32 -> 317
    //   288: aload 9
    //   290: invokeinterface 150 1 0
    //   295: ifle +22 -> 317
    //   298: aload 9
    //   300: invokeinterface 154 1 0
    //   305: astore 18
    //   307: aload 18
    //   309: invokeinterface 159 1 0
    //   314: ifne +190 -> 504
    //   317: new 167	java/lang/StringBuffer
    //   320: dup
    //   321: invokespecial 168	java/lang/StringBuffer:<init>	()V
    //   324: astore 10
    //   326: iconst_1
    //   327: invokestatic 100	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   330: astore 11
    //   332: aload_3
    //   333: invokeinterface 154 1 0
    //   338: astore 12
    //   340: aload 12
    //   342: invokeinterface 159 1 0
    //   347: ifne +192 -> 539
    //   350: aload 10
    //   352: invokevirtual 171	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   355: invokevirtual 77	java/lang/String:trim	()Ljava/lang/String;
    //   358: astore 17
    //   360: ldc 173
    //   362: aload 17
    //   364: invokevirtual 176	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   367: ifeq +238 -> 605
    //   370: ldc 178
    //   372: areturn
    //   373: aload 27
    //   375: invokeinterface 182 1 0
    //   380: checkcast 73	java/lang/String
    //   383: astore 28
    //   385: aload_3
    //   386: aload 28
    //   388: invokeinterface 143 2 0
    //   393: ifne -206 -> 187
    //   396: aload_3
    //   397: aload 28
    //   399: invokeinterface 96 2 0
    //   404: pop
    //   405: goto -218 -> 187
    //   408: astore_1
    //   409: ldc 184
    //   411: new 186	java/lang/StringBuilder
    //   414: dup
    //   415: invokespecial 187	java/lang/StringBuilder:<init>	()V
    //   418: aload_1
    //   419: invokevirtual 188	java/lang/Exception:toString	()Ljava/lang/String;
    //   422: invokevirtual 192	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   425: invokevirtual 193	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   428: invokestatic 199	com/google/kd/utils/LogUtils:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   431: ldc 178
    //   433: areturn
    //   434: aload 24
    //   436: invokeinterface 182 1 0
    //   441: checkcast 73	java/lang/String
    //   444: astore 25
    //   446: aload_3
    //   447: aload 25
    //   449: invokeinterface 143 2 0
    //   454: ifne -227 -> 227
    //   457: aload_3
    //   458: aload 25
    //   460: invokeinterface 96 2 0
    //   465: pop
    //   466: goto -239 -> 227
    //   469: aload 21
    //   471: invokeinterface 182 1 0
    //   476: checkcast 73	java/lang/String
    //   479: astore 22
    //   481: aload_3
    //   482: aload 22
    //   484: invokeinterface 143 2 0
    //   489: ifne -222 -> 267
    //   492: aload_3
    //   493: aload 22
    //   495: invokeinterface 96 2 0
    //   500: pop
    //   501: goto -234 -> 267
    //   504: aload 18
    //   506: invokeinterface 182 1 0
    //   511: checkcast 73	java/lang/String
    //   514: astore 19
    //   516: aload_3
    //   517: aload 19
    //   519: invokeinterface 143 2 0
    //   524: ifne -217 -> 307
    //   527: aload_3
    //   528: aload 19
    //   530: invokeinterface 96 2 0
    //   535: pop
    //   536: goto -229 -> 307
    //   539: aload 12
    //   541: invokeinterface 182 1 0
    //   546: checkcast 73	java/lang/String
    //   549: astore 13
    //   551: aload 11
    //   553: invokevirtual 121	java/lang/Integer:intValue	()I
    //   556: iconst_1
    //   557: if_icmple +11 -> 568
    //   560: aload 10
    //   562: bipush 10
    //   564: invokevirtual 202	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   567: pop
    //   568: aload 10
    //   570: aload 13
    //   572: invokevirtual 205	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   575: pop
    //   576: iconst_1
    //   577: aload 11
    //   579: invokevirtual 121	java/lang/Integer:intValue	()I
    //   582: iadd
    //   583: invokestatic 100	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   586: astore 15
    //   588: aload 15
    //   590: astore 11
    //   592: goto -252 -> 340
    //   595: astore 5
    //   597: goto -440 -> 157
    //   600: astore 4
    //   602: goto -499 -> 103
    //   605: aload 17
    //   607: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   0	49	408	java/lang/Exception
    //   157	163	408	java/lang/Exception
    //   168	187	408	java/lang/Exception
    //   187	197	408	java/lang/Exception
    //   197	203	408	java/lang/Exception
    //   208	227	408	java/lang/Exception
    //   227	237	408	java/lang/Exception
    //   237	243	408	java/lang/Exception
    //   248	267	408	java/lang/Exception
    //   267	277	408	java/lang/Exception
    //   277	283	408	java/lang/Exception
    //   288	307	408	java/lang/Exception
    //   307	317	408	java/lang/Exception
    //   317	340	408	java/lang/Exception
    //   340	370	408	java/lang/Exception
    //   373	405	408	java/lang/Exception
    //   434	466	408	java/lang/Exception
    //   469	501	408	java/lang/Exception
    //   504	536	408	java/lang/Exception
    //   539	568	408	java/lang/Exception
    //   568	588	408	java/lang/Exception
    //   103	120	595	java/lang/Exception
    //   125	157	595	java/lang/Exception
    //   49	66	600	java/lang/Exception
    //   71	103	600	java/lang/Exception
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\Tool\classes_dex2jar.jar
 * Qualified Name:     com.android.kd.phone.GetImei
 * JD-Core Version:    0.6.2
 */