package com.youqicai.AppStore.parser;

import com.youqicai.AppStore.entity.HotwordEntity;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class HotwordParser extends JsonParser<List<HotwordEntity>>
{
  public Object parseInBackgroud(Object paramObject)
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      JSONArray localJSONArray1 = new JSONObject(String.valueOf(paramObject)).getJSONArray("data");
      for (int i = 0; i < localJSONArray1.length(); i++)
      {
        JSONArray localJSONArray2 = localJSONArray1.getJSONObject(i).getJSONArray("item");
        for (int j = 0; j < localJSONArray2.length(); j++)
        {
          JSONObject localJSONObject = localJSONArray2.getJSONObject(j);
          HotwordEntity localHotwordEntity = new HotwordEntity();
          localHotwordEntity.setHotword(localJSONObject.getString("word"));
          localArrayList.add(localHotwordEntity);
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return localArrayList;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.parser.HotwordParser
 * JD-Core Version:    0.6.2
 */