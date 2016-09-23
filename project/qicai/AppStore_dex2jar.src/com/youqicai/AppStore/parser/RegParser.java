package com.youqicai.AppStore.parser;

import com.youqicai.AppStore.entity.ResultRegEntity;
import org.json.JSONObject;

public class RegParser extends JsonParser<ResultRegEntity>
{
  public Object parseInBackgroud(Object paramObject)
  {
    ResultRegEntity localResultRegEntity = new ResultRegEntity();
    try
    {
      JSONObject localJSONObject1 = new JSONObject(String.valueOf(paramObject));
      localResultRegEntity.status = getIntegerValue(localJSONObject1, "status");
      localResultRegEntity.msg = getStringValue(localJSONObject1, "msg");
      JSONObject localJSONObject2 = localJSONObject1.getJSONObject("data");
      localResultRegEntity.phone = getStringValue(localJSONObject2, "phone");
      localResultRegEntity.token = getStringValue(localJSONObject2, "token");
      localResultRegEntity.headUrl = getStringValue(localJSONObject2, "headUrl");
      localResultRegEntity.nickName = getStringValue(localJSONObject2, "nickName");
      return localResultRegEntity;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return localResultRegEntity;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.parser.RegParser
 * JD-Core Version:    0.6.2
 */