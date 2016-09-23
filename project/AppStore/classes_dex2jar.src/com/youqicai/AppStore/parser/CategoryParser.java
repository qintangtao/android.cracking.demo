package com.youqicai.AppStore.parser;

import com.youqicai.AppStore.card.CardType;
import com.youqicai.AppStore.entity.BannerItem;
import com.youqicai.AppStore.entity.Category;
import com.youqicai.AppStore.entity.ChildCategory;
import com.youqicai.AppStore.entity.ResultCategoryEntity;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class CategoryParser extends JsonParser<ResultCategoryEntity>
{
  public Object parseInBackgroud(Object paramObject)
  {
    ResultCategoryEntity localResultCategoryEntity = new ResultCategoryEntity();
    try
    {
      JSONObject localJSONObject1 = new JSONObject(String.valueOf(paramObject));
      localResultCategoryEntity.status = getStringValue(localJSONObject1, "status");
      localResultCategoryEntity.errMsgs = getStringValue(localJSONObject1, "errMsgs");
      localResultCategoryEntity.msg = getStringValue(localJSONObject1, "msg");
      JSONArray localJSONArray1 = localJSONObject1.getJSONArray("data");
      for (int i = 0; i < localJSONArray1.length(); i++)
      {
        JSONObject localJSONObject2 = localJSONArray1.getJSONObject(i);
        if (localJSONObject2.has("type"))
        {
          if (getIntegerValue(localJSONObject2, "type") == CardType.SPECIAL_CATEGORY_NAVIGATION.getmIntValue())
          {
            JSONArray localJSONArray3 = localJSONObject2.getJSONArray("item");
            for (int k = 0; k < localJSONArray3.length(); k++)
            {
              JSONObject localJSONObject4 = localJSONArray3.getJSONObject(k);
              BannerItem localBannerItem = new BannerItem();
              localBannerItem.setTitle(getStringValue(localJSONObject4, "title"));
              localBannerItem.setDescription(getStringValue(localJSONObject4, "description"));
              localBannerItem.setBannerUrl(getStringValue(localJSONObject4, "bannerUrl"));
              localBannerItem.setIconUrl(getStringValue(localJSONObject4, "iconUrl"));
              localBannerItem.setTagUrl(getStringValue(localJSONObject4, "tagUrl"));
              localBannerItem.setDataUrl(getStringValue(localJSONObject4, "dataUrl"));
              localResultCategoryEntity.bannerItemList.add(localBannerItem);
            }
          }
        }
        else
        {
          Category localCategory = new Category();
          localCategory.setCategoryId(getStringValue(localJSONObject2, "categoryId"));
          localCategory.setCategoryName(getStringValue(localJSONObject2, "categoryName"));
          localCategory.setIconUrl(getStringValue(localJSONObject2, "iconUrl"));
          JSONArray localJSONArray2 = localJSONObject2.getJSONArray("item");
          ArrayList localArrayList = new ArrayList();
          for (int j = 0; j < localJSONArray2.length(); j++)
          {
            JSONObject localJSONObject3 = localJSONArray2.getJSONObject(j);
            ChildCategory localChildCategory = new ChildCategory();
            localChildCategory.setTagId(getStringValue(localJSONObject3, "tagId"));
            localChildCategory.setTagName(getStringValue(localJSONObject3, "tagName"));
            localChildCategory.setDataUrl(getStringValue(localJSONObject3, "dataUrl"));
            localArrayList.add(localChildCategory);
          }
          localCategory.setChildList(localArrayList);
          localResultCategoryEntity.cardEntityList.add(localCategory);
        }
      }
    }
    catch (Exception localException)
    {
    }
    return localResultCategoryEntity;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.parser.CategoryParser
 * JD-Core Version:    0.6.2
 */