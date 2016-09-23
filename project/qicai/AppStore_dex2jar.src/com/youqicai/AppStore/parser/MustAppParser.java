package com.youqicai.AppStore.parser;

import com.youqicai.AppStore.entity.AppInfoEntity;
import java.util.List;

public class MustAppParser extends JsonParser<List<AppInfoEntity>>
{
  // ERROR //
  public java.lang.Object parseInBackgroud(java.lang.Object paramObject)
  {
    // Byte code:
    //   0: new 15	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 16	java/util/ArrayList:<init>	()V
    //   7: astore_2
    //   8: new 18	org/json/JSONObject
    //   11: dup
    //   12: aload_1
    //   13: invokestatic 24	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   16: invokespecial 27	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   19: ldc 29
    //   21: invokevirtual 33	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   24: astore 4
    //   26: iconst_0
    //   27: istore 5
    //   29: iload 5
    //   31: aload 4
    //   33: invokevirtual 39	org/json/JSONArray:length	()I
    //   36: if_icmpge +64 -> 100
    //   39: aload 4
    //   41: iload 5
    //   43: invokevirtual 43	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   46: astore 6
    //   48: aload 6
    //   50: ldc 45
    //   52: invokestatic 49	com/youqicai/AppStore/parser/MustAppParser:getIntegerValue	(Lorg/json/JSONObject;Ljava/lang/String;)I
    //   55: istore 7
    //   57: getstatic 55	com/youqicai/AppStore/card/CardType:SINGLE_APP	Lcom/youqicai/AppStore/card/CardType;
    //   60: invokevirtual 58	com/youqicai/AppStore/card/CardType:getmIntValue	()I
    //   63: istore 8
    //   65: iload 7
    //   67: iload 8
    //   69: if_icmpne +20 -> 89
    //   72: aload_2
    //   73: aload 6
    //   75: ldc 60
    //   77: invokevirtual 63	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   80: invokestatic 67	com/youqicai/AppStore/parser/MustAppParser:getAppItem	(Lorg/json/JSONObject;)Lcom/youqicai/AppStore/entity/AppInfoEntity;
    //   83: invokeinterface 73 2 0
    //   88: pop
    //   89: iinc 5 1
    //   92: goto -63 -> 29
    //   95: astore_3
    //   96: aload_3
    //   97: invokevirtual 76	java/lang/Exception:printStackTrace	()V
    //   100: aload_2
    //   101: areturn
    //   102: astore 9
    //   104: goto -15 -> 89
    //
    // Exception table:
    //   from	to	target	type
    //   8	26	95	java/lang/Exception
    //   29	65	95	java/lang/Exception
    //   72	89	102	java/lang/Exception
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.parser.MustAppParser
 * JD-Core Version:    0.6.2
 */