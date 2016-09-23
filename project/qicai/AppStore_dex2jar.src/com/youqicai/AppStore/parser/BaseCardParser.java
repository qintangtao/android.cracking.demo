package com.youqicai.AppStore.parser;

import com.youqicai.AppStore.entity.ResultCardEntity;

public class BaseCardParser extends JsonParser<ResultCardEntity>
{
  // ERROR //
  public java.lang.Object parseInBackgroud(java.lang.Object paramObject)
  {
    // Byte code:
    //   0: new 17	com/youqicai/AppStore/entity/ResultCardEntity
    //   3: dup
    //   4: invokespecial 18	com/youqicai/AppStore/entity/ResultCardEntity:<init>	()V
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
    //   24: invokestatic 35	com/youqicai/AppStore/parser/BaseCardParser:getStringValue	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   27: putfield 38	com/youqicai/AppStore/entity/ResultCardEntity:status	Ljava/lang/String;
    //   30: aload_2
    //   31: aload_3
    //   32: ldc 40
    //   34: invokestatic 35	com/youqicai/AppStore/parser/BaseCardParser:getStringValue	(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    //   37: putfield 42	com/youqicai/AppStore/entity/ResultCardEntity:msg	Ljava/lang/String;
    //   40: aload_3
    //   41: ldc 44
    //   43: invokevirtual 48	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   46: astore 5
    //   48: iconst_0
    //   49: istore 6
    //   51: iload 6
    //   53: aload 5
    //   55: invokevirtual 54	org/json/JSONArray:length	()I
    //   58: if_icmpge +104 -> 162
    //   61: aload 5
    //   63: iload 6
    //   65: invokevirtual 58	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   68: astore 10
    //   70: aload 10
    //   72: ldc 60
    //   74: invokestatic 64	com/youqicai/AppStore/parser/BaseCardParser:getIntegerValue	(Lorg/json/JSONObject;Ljava/lang/String;)I
    //   77: istore 11
    //   79: getstatic 70	com/youqicai/AppStore/card/CardType:SINGLE_APP	Lcom/youqicai/AppStore/card/CardType;
    //   82: invokevirtual 73	com/youqicai/AppStore/card/CardType:getmIntValue	()I
    //   85: istore 12
    //   87: iload 11
    //   89: iload 12
    //   91: if_icmpne +65 -> 156
    //   94: aload 10
    //   96: ldc 75
    //   98: invokevirtual 78	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   101: astore 14
    //   103: new 80	com/youqicai/AppStore/entity/CardEntity
    //   106: dup
    //   107: invokespecial 81	com/youqicai/AppStore/entity/CardEntity:<init>	()V
    //   110: astore 15
    //   112: aload 15
    //   114: getstatic 70	com/youqicai/AppStore/card/CardType:SINGLE_APP	Lcom/youqicai/AppStore/card/CardType;
    //   117: invokevirtual 85	com/youqicai/AppStore/entity/CardEntity:setCardType	(Lcom/youqicai/AppStore/card/CardType;)V
    //   120: aload 14
    //   122: invokestatic 89	com/youqicai/AppStore/parser/BaseCardParser:getAppItem	(Lorg/json/JSONObject;)Lcom/youqicai/AppStore/entity/AppInfoEntity;
    //   125: invokevirtual 95	com/youqicai/AppStore/entity/AppInfoEntity:getPackageName	()Ljava/lang/String;
    //   128: invokestatic 101	com/youqicai/PhoneHelper/AppUtils:isPkgInstall	(Ljava/lang/String;)Z
    //   131: ifne +25 -> 156
    //   134: aload 15
    //   136: aload 14
    //   138: invokestatic 89	com/youqicai/AppStore/parser/BaseCardParser:getAppItem	(Lorg/json/JSONObject;)Lcom/youqicai/AppStore/entity/AppInfoEntity;
    //   141: invokevirtual 105	com/youqicai/AppStore/entity/CardEntity:setSingleAppItem	(Lcom/youqicai/AppStore/entity/AppInfoEntity;)V
    //   144: aload_2
    //   145: getfield 109	com/youqicai/AppStore/entity/ResultCardEntity:cardEntityList	Ljava/util/List;
    //   148: aload 15
    //   150: invokeinterface 115 2 0
    //   155: pop
    //   156: iinc 6 1
    //   159: goto -108 -> 51
    //   162: aload_3
    //   163: ldc 117
    //   165: invokevirtual 120	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   168: ifeq +51 -> 219
    //   171: aload_3
    //   172: ldc 117
    //   174: invokestatic 124	com/youqicai/AppStore/parser/BaseCardParser:getBooleanValue	(Lorg/json/JSONObject;Ljava/lang/String;)Z
    //   177: istore 7
    //   179: aload_2
    //   180: iload 7
    //   182: putfield 127	com/youqicai/AppStore/entity/ResultCardEntity:hasNext	Z
    //   185: iload 7
    //   187: ifne +32 -> 219
    //   190: new 80	com/youqicai/AppStore/entity/CardEntity
    //   193: dup
    //   194: invokespecial 81	com/youqicai/AppStore/entity/CardEntity:<init>	()V
    //   197: astore 8
    //   199: aload 8
    //   201: getstatic 130	com/youqicai/AppStore/card/CardType:HAS_NO_MORE	Lcom/youqicai/AppStore/card/CardType;
    //   204: invokevirtual 85	com/youqicai/AppStore/entity/CardEntity:setCardType	(Lcom/youqicai/AppStore/card/CardType;)V
    //   207: aload_2
    //   208: getfield 109	com/youqicai/AppStore/entity/ResultCardEntity:cardEntityList	Ljava/util/List;
    //   211: aload 8
    //   213: invokeinterface 115 2 0
    //   218: pop
    //   219: aload_2
    //   220: areturn
    //   221: astore 4
    //   223: aload 4
    //   225: invokevirtual 133	java/lang/Exception:printStackTrace	()V
    //   228: aload_2
    //   229: areturn
    //   230: astore 13
    //   232: goto -76 -> 156
    //
    // Exception table:
    //   from	to	target	type
    //   8	48	221	java/lang/Exception
    //   51	87	221	java/lang/Exception
    //   94	156	221	java/lang/Exception
    //   162	185	221	java/lang/Exception
    //   190	219	221	java/lang/Exception
    //   94	156	230	org/json/JSONException
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.parser.BaseCardParser
 * JD-Core Version:    0.6.2
 */