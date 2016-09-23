package com.youqicai.AppStore.parser;

import com.youqicai.AppStore.card.CardType;
import com.youqicai.AppStore.entity.AppInfoEntity;
import org.json.JSONArray;
import org.json.JSONObject;

public class DetailParser extends JsonParser<AppInfoEntity>
{
  public Object parseInBackgroud(Object paramObject)
  {
    try
    {
      JSONArray localJSONArray = new JSONObject(String.valueOf(paramObject)).getJSONArray("data");
      for (int i = 0; i < localJSONArray.length(); i++)
      {
        JSONObject localJSONObject = localJSONArray.getJSONObject(i);
        int j = getIntegerValue(localJSONObject, "type");
        int k = CardType.SINGLE_APP.getmIntValue();
        if (j == k)
          try
          {
            AppInfoEntity localAppInfoEntity = getAppItem(localJSONObject.getJSONObject("item"));
            return localAppInfoEntity;
          }
          catch (Exception localException2)
          {
          }
      }
    }
    catch (Exception localException1)
    {
      localException1.printStackTrace();
    }
    return null;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.parser.DetailParser
 * JD-Core Version:    0.6.2
 */