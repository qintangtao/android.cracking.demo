package com.youqicai.AppStore.parser;

import com.youqicai.AppStore.card.CardType;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.entity.BannerItem;
import com.youqicai.AppStore.entity.CardEntity;
import com.youqicai.AppStore.entity.NavigationItem;
import com.youqicai.http.ParseInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class JsonParser<T>
  implements ParseInfo
{
  public static final String TAG = "JsonParser";

  public static AppInfoEntity getAppItem(JSONObject paramJSONObject)
  {
    int i = 1;
    AppInfoEntity localAppInfoEntity = new AppInfoEntity();
    localAppInfoEntity.setAppId(getStringValue(paramJSONObject, "appId"));
    localAppInfoEntity.setAppName(getStringValue(paramJSONObject, "appName"));
    localAppInfoEntity.setPackageName(getStringValue(paramJSONObject, "packageName"));
    localAppInfoEntity.setCategoryId(getStringValue(paramJSONObject, "categoryId"));
    localAppInfoEntity.setCategoryName(getStringValue(paramJSONObject, "categoryName"));
    localAppInfoEntity.setApkMd5(getStringValue(paramJSONObject, "apkMd5"));
    localAppInfoEntity.setSignatureMd5(getStringValue(paramJSONObject, "signatureMd5"));
    localAppInfoEntity.setFileSize(getStringValue(paramJSONObject, "fileSize"));
    localAppInfoEntity.setApkUrl(getStringValue(paramJSONObject, "apkUrl"));
    localAppInfoEntity.setIconUrl(getStringValue(paramJSONObject, "iconUrl"));
    localAppInfoEntity.setVersionName(getStringValue(paramJSONObject, "versionName"));
    localAppInfoEntity.setVersionCode(getIntegerValue(paramJSONObject, "versionCode"));
    localAppInfoEntity.setMinSdkVersion(getIntegerValue(paramJSONObject, "minSdkVersion"));
    localAppInfoEntity.setScore(getStringValue(paramJSONObject, "score"));
    localAppInfoEntity.setDownCount(getStringValue(paramJSONObject, "downCount"));
    localAppInfoEntity.setAuthor(getStringValue(paramJSONObject, "author"));
    localAppInfoEntity.setBrief(getStringValue(paramJSONObject, "brief"));
    localAppInfoEntity.setDescription(getStringValue(paramJSONObject, "description"));
    localAppInfoEntity.setSnapshotsUrlList(splitUrl(getStringValue(paramJSONObject, "snapshotsUrl")));
    localAppInfoEntity.setNewFeature(getStringValue(paramJSONObject, "newFeature"));
    localAppInfoEntity.setFlag(getIntegerValue(paramJSONObject, "flag"));
    localAppInfoEntity.setTags(getStringValue(paramJSONObject, "tags"));
    localAppInfoEntity.setApkId(getStringValue(paramJSONObject, "apkId"));
    if (getIntegerValue(paramJSONObject, "isChecked") == i);
    while (true)
    {
      localAppInfoEntity.setChecked(i);
      return localAppInfoEntity;
      int j = 0;
    }
  }

  public static boolean getBooleanValue(JSONObject paramJSONObject, String paramString)
  {
    try
    {
      boolean bool1 = paramJSONObject.has(paramString);
      boolean bool2 = false;
      if (bool1)
      {
        boolean bool3 = paramJSONObject.getBoolean(paramString);
        bool2 = bool3;
      }
      return bool2;
    }
    catch (JSONException localJSONException)
    {
    }
    return false;
  }

  public static int getIntegerValue(JSONObject paramJSONObject, String paramString)
  {
    int i = -1;
    try
    {
      if (paramJSONObject.has(paramString))
      {
        int j = paramJSONObject.getInt(paramString);
        i = j;
      }
      return i;
    }
    catch (JSONException localJSONException)
    {
    }
    return i;
  }

  public static long getLongValue(JSONObject paramJSONObject, String paramString)
  {
    long l1 = -1L;
    try
    {
      if (paramJSONObject.has(paramString))
      {
        long l2 = paramJSONObject.getLong(paramString);
        l1 = l2;
      }
      return l1;
    }
    catch (JSONException localJSONException)
    {
    }
    return l1;
  }

  public static CardEntity getNavigationCard(CardType paramCardType, JSONArray paramJSONArray)
    throws JSONException
  {
    CardEntity localCardEntity = new CardEntity();
    localCardEntity.setCardType(paramCardType);
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < paramJSONArray.length(); i++)
    {
      NavigationItem localNavigationItem = new NavigationItem();
      JSONObject localJSONObject = paramJSONArray.getJSONObject(i);
      localNavigationItem.setTarget(getStringValue(localJSONObject, "target"));
      localNavigationItem.setTitle(getStringValue(localJSONObject, "title"));
      localNavigationItem.setDescription(getStringValue(localJSONObject, "description"));
      localNavigationItem.setBannerUrl(getStringValue(localJSONObject, "bannerUrl"));
      localNavigationItem.setIconUrl(getStringValue(localJSONObject, "iconUrl"));
      localNavigationItem.setTagUrl(getStringValue(localJSONObject, "tagUrl"));
      localNavigationItem.setDataUrl(getStringValue(localJSONObject, "dataUrl"));
      localArrayList.add(localNavigationItem);
    }
    localCardEntity.setNavigationItemList(localArrayList);
    return localCardEntity;
  }

  public static CardEntity getSpecialBannerCard(CardType paramCardType, JSONObject paramJSONObject)
  {
    CardEntity localCardEntity = new CardEntity();
    localCardEntity.setCardType(paramCardType);
    BannerItem localBannerItem = new BannerItem();
    localBannerItem.setTarget(getStringValue(paramJSONObject, "target"));
    localBannerItem.setTitle(getStringValue(paramJSONObject, "title"));
    localBannerItem.setDescription(getStringValue(paramJSONObject, "description"));
    localBannerItem.setBannerUrl(getStringValue(paramJSONObject, "bannerUrl"));
    localBannerItem.setIconUrl(getStringValue(paramJSONObject, "iconUrl"));
    localBannerItem.setTagUrl(getStringValue(paramJSONObject, "tagUrl"));
    localBannerItem.setDataUrl(getStringValue(paramJSONObject, "dataUrl"));
    localCardEntity.setBannerItem(localBannerItem);
    return localCardEntity;
  }

  public static String getStringValue(JSONObject paramJSONObject, String paramString)
  {
    Object localObject = "";
    try
    {
      if (paramJSONObject.has(paramString))
      {
        String str = paramJSONObject.getString(paramString).trim();
        localObject = str;
      }
      return localObject;
    }
    catch (JSONException localJSONException)
    {
    }
    return localObject;
  }

  public static ArrayList<String> splitUrl(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString, ",");
    while (localStringTokenizer.hasMoreTokens())
    {
      String str = localStringTokenizer.nextToken();
      if (str.startsWith("http"))
        localArrayList.add(str);
    }
    return localArrayList;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.parser.JsonParser
 * JD-Core Version:    0.6.2
 */