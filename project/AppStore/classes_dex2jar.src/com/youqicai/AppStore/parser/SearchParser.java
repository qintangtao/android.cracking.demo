package com.youqicai.AppStore.parser;

import com.youqicai.AppStore.card.CardType;
import com.youqicai.AppStore.entity.CardEntity;
import com.youqicai.AppStore.entity.HotwordEntity;
import com.youqicai.AppStore.entity.ResultCardEntity;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class SearchParser extends JsonParser<ResultCardEntity>
{
  public Object parseInBackgroud(Object paramObject)
  {
    ResultCardEntity localResultCardEntity = new ResultCardEntity();
    while (true)
    {
      int i;
      try
      {
        JSONArray localJSONArray = new JSONObject(String.valueOf(paramObject)).getJSONArray("data");
        i = 0;
        if (i < localJSONArray.length())
        {
          JSONObject localJSONObject1 = localJSONArray.getJSONObject(i);
          if (localJSONObject1.has("app"))
          {
            JSONObject localJSONObject2 = localJSONObject1.getJSONObject("app");
            CardEntity localCardEntity2 = new CardEntity();
            localCardEntity2.setCardType(CardType.SINGLE_APP);
            localCardEntity2.setSingleAppItem(getAppItem(localJSONObject2));
            localResultCardEntity.cardEntityList.add(localCardEntity2);
          }
          else
          {
            CardEntity localCardEntity1 = new CardEntity();
            localCardEntity1.setCardType(CardType.HOT_WORDS);
            HotwordEntity localHotwordEntity = new HotwordEntity();
            localHotwordEntity.setHotword(localJSONObject1.getString("word"));
            localCardEntity1.setHotwordEntity(localHotwordEntity);
            localResultCardEntity.cardEntityList.add(localCardEntity1);
          }
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      return localResultCardEntity;
      i++;
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.parser.SearchParser
 * JD-Core Version:    0.6.2
 */