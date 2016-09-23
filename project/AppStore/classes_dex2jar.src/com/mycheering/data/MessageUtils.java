package com.mycheering.data;

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Calendar;

public class MessageUtils
{
  public static long deleteManyMsg(Context paramContext, ArrayList<String> paramArrayList)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      for (int i = 0; i < paramArrayList.size(); i++)
      {
        localStringBuilder.append("'");
        localStringBuilder.append((String)paramArrayList.get(i));
        localStringBuilder.append("'");
        localStringBuilder.append(",");
      }
      String str = localStringBuilder.toString().substring(0, -1 + localStringBuilder.length());
      int j = DBProvider.getDBProvider(paramContext).delete("t_statistics", "_id in ( " + str + " )", null);
      long l = j;
      return l;
    }
    finally
    {
    }
  }

  public static long deleteMsgByID(Context paramContext, String paramString)
  {
    try
    {
      int i = DBProvider.getDBProvider(paramContext).delete("t_statistics", "_id= ?", new String[] { paramString });
      long l = i;
      return l;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static long deleteMsgByTime(Context paramContext, String paramString)
  {
    return DBProvider.getDBProvider(paramContext).delete("t_statistics", "time= ?", new String[] { paramString });
  }

  public static ArrayList<MessageModel> getEventMsg(Context paramContext)
  {
    try
    {
      ArrayList localArrayList2;
      if (DBProvider.getDBProvider(paramContext).getCount("t_statistics") > 0)
        localArrayList2 = getEventMsg(paramContext, null, null);
      for (ArrayList localArrayList1 = localArrayList2; ; localArrayList1 = new ArrayList())
        return localArrayList1;
    }
    finally
    {
    }
  }

  // ERROR //
  private static ArrayList<MessageModel> getEventMsg(Context paramContext, String paramString, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: new 15	java/util/ArrayList
    //   6: dup
    //   7: invokespecial 77	java/util/ArrayList:<init>	()V
    //   10: astore_3
    //   11: new 81	com/mycheering/data/MessageModel
    //   14: dup
    //   15: invokespecial 82	com/mycheering/data/MessageModel:<init>	()V
    //   18: astore 4
    //   20: new 84	org/json/JSONObject
    //   23: dup
    //   24: invokespecial 85	org/json/JSONObject:<init>	()V
    //   27: astore 5
    //   29: ldc 87
    //   31: astore 6
    //   33: aload_0
    //   34: invokestatic 50	com/mycheering/data/DBProvider:getDBProvider	(Landroid/content/Context;)Lcom/mycheering/data/DBProvider;
    //   37: ldc 52
    //   39: iconst_3
    //   40: anewarray 31	java/lang/String
    //   43: dup
    //   44: iconst_0
    //   45: ldc 89
    //   47: aastore
    //   48: dup
    //   49: iconst_1
    //   50: ldc 91
    //   52: aastore
    //   53: dup
    //   54: iconst_2
    //   55: ldc 93
    //   57: aastore
    //   58: aload_1
    //   59: aload_2
    //   60: aconst_null
    //   61: invokevirtual 97	com/mycheering/data/DBProvider:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   64: astore 8
    //   66: aload 4
    //   68: astore 9
    //   70: aload 8
    //   72: ifnull +196 -> 268
    //   75: aload 8
    //   77: invokeinterface 103 1 0
    //   82: ifeq +186 -> 268
    //   85: aload 8
    //   87: iconst_0
    //   88: invokeinterface 107 2 0
    //   93: astore 15
    //   95: aload 8
    //   97: iconst_1
    //   98: invokeinterface 107 2 0
    //   103: astore 6
    //   105: new 84	org/json/JSONObject
    //   108: dup
    //   109: aload 8
    //   111: iconst_2
    //   112: invokeinterface 107 2 0
    //   117: invokevirtual 108	java/lang/String:toString	()Ljava/lang/String;
    //   120: invokespecial 111	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   123: astore 16
    //   125: aload 9
    //   127: getfield 115	com/mycheering/data/MessageModel:idList	Ljava/util/ArrayList;
    //   130: aload 15
    //   132: invokevirtual 119	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   135: pop
    //   136: aload 5
    //   138: aload 6
    //   140: invokevirtual 123	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   143: ifeq +80 -> 223
    //   146: aload 5
    //   148: aload 6
    //   150: invokevirtual 127	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   153: aload 16
    //   155: invokevirtual 133	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   158: pop
    //   159: aload 9
    //   161: getfield 115	com/mycheering/data/MessageModel:idList	Ljava/util/ArrayList;
    //   164: invokevirtual 19	java/util/ArrayList:size	()I
    //   167: bipush 20
    //   169: if_icmpne -99 -> 70
    //   172: aload 5
    //   174: aload 6
    //   176: invokevirtual 136	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   179: invokevirtual 137	java/lang/Object:toString	()Ljava/lang/String;
    //   182: astore 21
    //   184: aload 9
    //   186: aload 21
    //   188: putfield 140	com/mycheering/data/MessageModel:data	Ljava/lang/String;
    //   191: aload_3
    //   192: aload 9
    //   194: invokevirtual 119	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   197: pop
    //   198: new 81	com/mycheering/data/MessageModel
    //   201: dup
    //   202: invokespecial 82	com/mycheering/data/MessageModel:<init>	()V
    //   205: astore 23
    //   207: new 84	org/json/JSONObject
    //   210: dup
    //   211: invokespecial 85	org/json/JSONObject:<init>	()V
    //   214: astore 5
    //   216: aload 23
    //   218: astore 9
    //   220: goto -150 -> 70
    //   223: new 129	org/json/JSONArray
    //   226: dup
    //   227: invokespecial 141	org/json/JSONArray:<init>	()V
    //   230: astore 18
    //   232: aload 18
    //   234: aload 16
    //   236: invokevirtual 133	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   239: pop
    //   240: aload 5
    //   242: aload 6
    //   244: aload 18
    //   246: invokevirtual 144	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   249: pop
    //   250: goto -91 -> 159
    //   253: astore 13
    //   255: aload 9
    //   257: pop
    //   258: aload 13
    //   260: invokevirtual 147	java/lang/Exception:printStackTrace	()V
    //   263: ldc 2
    //   265: monitorexit
    //   266: aload_3
    //   267: areturn
    //   268: aload 8
    //   270: ifnull +10 -> 280
    //   273: aload 8
    //   275: invokeinterface 150 1 0
    //   280: aload 9
    //   282: getfield 115	com/mycheering/data/MessageModel:idList	Ljava/util/ArrayList;
    //   285: invokevirtual 19	java/util/ArrayList:size	()I
    //   288: ifeq +29 -> 317
    //   291: aload 5
    //   293: aload 6
    //   295: invokevirtual 136	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   298: invokevirtual 137	java/lang/Object:toString	()Ljava/lang/String;
    //   301: astore 11
    //   303: aload 9
    //   305: aload 11
    //   307: putfield 140	com/mycheering/data/MessageModel:data	Ljava/lang/String;
    //   310: aload_3
    //   311: aload 9
    //   313: invokevirtual 119	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   316: pop
    //   317: aload 9
    //   319: pop
    //   320: goto -57 -> 263
    //   323: astore 7
    //   325: ldc 2
    //   327: monitorexit
    //   328: aload 7
    //   330: athrow
    //   331: astore 13
    //   333: goto -75 -> 258
    //
    // Exception table:
    //   from	to	target	type
    //   75	159	253	java/lang/Exception
    //   159	207	253	java/lang/Exception
    //   223	250	253	java/lang/Exception
    //   273	280	253	java/lang/Exception
    //   280	317	253	java/lang/Exception
    //   3	29	323	finally
    //   33	66	323	finally
    //   75	159	323	finally
    //   159	207	323	finally
    //   207	216	323	finally
    //   223	250	323	finally
    //   258	263	323	finally
    //   273	280	323	finally
    //   280	317	323	finally
    //   207	216	331	java/lang/Exception
  }

  public static void insertCrashMsg(Context paramContext, String paramString)
  {
    try
    {
      boolean bool = TextUtils.isEmpty(paramString);
      if (bool);
      while (true)
      {
        return;
        int i = Calendar.getInstance().get(6);
        DBProvider localDBProvider = DBProvider.getDBProvider(paramContext);
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("time", Integer.valueOf(i));
        localContentValues.put("data", paramString);
        localDBProvider.insert("t_statistics", localContentValues);
      }
    }
    finally
    {
    }
  }

  public static void insertMsg(Context paramContext, String paramString)
  {
    while (true)
    {
      try
      {
        boolean bool = TextUtils.isEmpty(paramString);
        if (bool)
          return;
        int i = PreferencesHelper.getInstance(paramContext).getReportMode();
        if ((i == 3) || ((i == 0) && (DeviceInfo.isWifiConnected(paramContext))))
        {
          HttpController.getInstance().sendData(paramContext, paramString);
          continue;
        }
      }
      finally
      {
      }
      int j = Calendar.getInstance().get(6);
      DBProvider localDBProvider = DBProvider.getDBProvider(paramContext);
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("time", Integer.valueOf(j));
      localContentValues.put("data", paramString);
      localDBProvider.insert("t_statistics", localContentValues);
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.mycheering.data.MessageUtils
 * JD-Core Version:    0.6.2
 */