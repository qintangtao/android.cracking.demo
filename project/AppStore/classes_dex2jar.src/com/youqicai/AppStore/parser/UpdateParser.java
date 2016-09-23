package com.youqicai.AppStore.parser;

import com.youqicai.AppStore.entity.ResultAppInfoEntity;

public class UpdateParser extends JsonParser<ResultAppInfoEntity>
{
  // ERROR //
  public java.lang.Object parseInBackgroud(java.lang.Object paramObject)
  {
    // Byte code:
    //   0: new 17	com/youqicai/AppStore/entity/ResultAppInfoEntity
    //   3: dup
    //   4: invokespecial 18	com/youqicai/AppStore/entity/ResultAppInfoEntity:<init>	()V
    //   7: astore_2
    //   8: new 20	org/json/JSONObject
    //   11: dup
    //   12: aload_1
    //   13: invokestatic 26	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   16: invokespecial 29	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   19: astore_3
    //   20: aload_2
    //   21: aload_3
    //   22: ldc 31
    //   24: invokestatic 35	com/youqicai/AppStore/parser/UpdateParser:getStringValue	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   27: putfield 38	com/youqicai/AppStore/entity/ResultAppInfoEntity:status	Ljava/lang/String;
    //   30: aload_2
    //   31: aload_3
    //   32: ldc 40
    //   34: invokestatic 35	com/youqicai/AppStore/parser/UpdateParser:getStringValue	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   37: putfield 42	com/youqicai/AppStore/entity/ResultAppInfoEntity:errMsgs	Ljava/lang/String;
    //   40: aload_2
    //   41: aload_3
    //   42: ldc 44
    //   44: invokestatic 35	com/youqicai/AppStore/parser/UpdateParser:getStringValue	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   47: putfield 46	com/youqicai/AppStore/entity/ResultAppInfoEntity:msg	Ljava/lang/String;
    //   50: aload_3
    //   51: ldc 48
    //   53: invokevirtual 52	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   56: astore 5
    //   58: iconst_0
    //   59: istore 6
    //   61: iload 6
    //   63: aload 5
    //   65: invokevirtual 58	org/json/JSONArray:length	()I
    //   68: if_icmpge +64 -> 132
    //   71: aload 5
    //   73: iload 6
    //   75: invokevirtual 62	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   78: astore 7
    //   80: aload 7
    //   82: ldc 64
    //   84: invokestatic 68	com/youqicai/AppStore/parser/UpdateParser:getIntegerValue	(Lorg/json/JSONObject;Ljava/lang/String;)I
    //   87: istore 8
    //   89: getstatic 74	com/youqicai/AppStore/card/CardType:SINGLE_APP	Lcom/youqicai/AppStore/card/CardType;
    //   92: invokevirtual 77	com/youqicai/AppStore/card/CardType:getmIntValue	()I
    //   95: istore 9
    //   97: iload 8
    //   99: iload 9
    //   101: if_icmpne +25 -> 126
    //   104: aload 7
    //   106: ldc 79
    //   108: invokevirtual 82	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   111: invokestatic 86	com/youqicai/AppStore/parser/UpdateParser:getAppItem	(Lorg/json/JSONObject;)Lcom/youqicai/AppStore/entity/AppInfoEntity;
    //   114: astore 11
    //   116: aload_2
    //   117: getfield 90	com/youqicai/AppStore/entity/ResultAppInfoEntity:appInfoEntityList	Ljava/util/ArrayList;
    //   120: aload 11
    //   122: invokevirtual 96	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   125: pop
    //   126: iinc 6 1
    //   129: goto -68 -> 61
    //   132: aload_3
    //   133: ldc 98
    //   135: invokevirtual 102	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   138: ifeq +13 -> 151
    //   141: aload_2
    //   142: aload_3
    //   143: ldc 98
    //   145: invokestatic 106	com/youqicai/AppStore/parser/UpdateParser:getBooleanValue	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   148: putfield 109	com/youqicai/AppStore/entity/ResultAppInfoEntity:hasNext	Z
    //   151: aload_2
    //   152: areturn
    //   153: astore 4
    //   155: aload 4
    //   157: invokevirtual 112	java/lang/Exception:printStackTrace	()V
    //   160: aload_2
    //   161: areturn
    //   162: astore 10
    //   164: goto -38 -> 126
    //
    // Exception table:
    //   from	to	target	type
    //   8	58	153	java/lang/Exception
    //   61	97	153	java/lang/Exception
    //   104	126	153	java/lang/Exception
    //   132	151	153	java/lang/Exception
    //   104	126	162	org/json/JSONException
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.parser.UpdateParser
 * JD-Core Version:    0.6.2
 */