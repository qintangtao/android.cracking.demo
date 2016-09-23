package com.youqicai.AppStore.config;

import com.youqicai.PhoneHelper.DeviceInfo;

public class BuildUrl
{
  private static final String AND = "&";

  public static String buildBillBoard(String paramString, int paramInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("http://mapp.youqicai.com/api?action=ranklist&").append(buildKeyValuePair("ranktype", paramString)).append("&").append(buildKeyValuePair("pageNo", String.valueOf(paramInt)));
    return localStringBuffer.toString();
  }

  public static String buildComment(String paramString, int paramInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("http://mapp.youqicai.com/api?action=commentlist&").append(buildKeyValuePair("appId", paramString)).append("&").append(buildKeyValuePair("pageNo", String.valueOf(paramInt)));
    return localStringBuffer.toString();
  }

  public static String buildDataUrlPageNo(String paramString, int paramInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(paramString).append("&").append(buildKeyValuePair("pageNo", String.valueOf(paramInt)));
    return localStringBuffer.toString();
  }

  public static String buildDetail(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("http://mapp.youqicai.com/api?action=detail&").append(buildKeyValuePair("appId", paramString));
    return localStringBuffer.toString();
  }

  public static String buildDiscovery(int paramInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("http://mapp.youqicai.com/api?action=discovery&").append(buildKeyValuePair("pageNo", String.valueOf(paramInt)));
    return localStringBuffer.toString();
  }

  public static String buildFindPwd(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("http://mapp.youqicai.com/api?action=findpwd&").append(buildKeyValuePair("ph", paramString));
    return localStringBuffer.toString();
  }

  public static String buildGameList(int paramInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("http://mapp.youqicai.com/api?action=gamelist&").append(buildKeyValuePair("pageNo", String.valueOf(paramInt)));
    return localStringBuffer.toString();
  }

  private static String buildKeyValuePair(String paramString1, String paramString2)
  {
    return paramString1 + "=" + paramString2;
  }

  public static String buildLoginUrl(String paramString1, String paramString2)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("http://mapp.youqicai.com/api?action=login&").append(buildKeyValuePair("ph", paramString1)).append("&").append(buildKeyValuePair("pwd", paramString2));
    return localStringBuffer.toString();
  }

  public static String buildRegUrl(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("http://mapp.youqicai.com/api?action=register&").append(buildKeyValuePair("ph", paramString));
    return localStringBuffer.toString();
  }

  public static String buildSearchKeyword(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("http://mapp.youqicai.com/api?action=suggest&").append(buildKeyValuePair("wd", paramString));
    return localStringBuffer.toString();
  }

  public static String buildSearchResult(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("http://mapp.youqicai.com/api?action=search&").append(buildKeyValuePair("wd", paramString));
    return localStringBuffer.toString();
  }

  public static String buildSmartRecommend(int paramInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("http://mapp.youqicai.com/api?action=smartrecommend&").append(buildKeyValuePair("pageNo", String.valueOf(paramInt)));
    return localStringBuffer.toString();
  }

  public static String buildSoftList(int paramInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("http://mapp.youqicai.com/api?action=softlist&").append(buildKeyValuePair("pageNo", String.valueOf(paramInt)));
    return localStringBuffer.toString();
  }

  public static String buildUpdateSelf(String paramString1, String paramString2, String paramString3)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("http://mapp.youqicai.com/api?action=update&").append(buildKeyValuePair("versionCode", paramString1)).append("&").append(buildKeyValuePair("packageName", paramString2)).append("&").append(buildKeyValuePair("channelId", paramString3)).append("&").append(buildKeyValuePair("did", DeviceInfo.did));
    return localStringBuffer.toString();
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.config.BuildUrl
 * JD-Core Version:    0.6.2
 */