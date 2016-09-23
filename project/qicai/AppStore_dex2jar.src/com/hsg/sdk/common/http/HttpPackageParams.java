package com.hsg.sdk.common.http;

import java.io.UnsupportedEncodingException;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicNameValuePair;

public class HttpPackageParams
{
  private static HttpPackageParams httpPackageParams = null;
  private List<NameValuePair> mParamList = null;

  public static HttpPackageParams newInstance()
  {
    if (httpPackageParams == null)
      httpPackageParams = new HttpPackageParams();
    return httpPackageParams;
  }

  public void addParams(String paramString1, String paramString2)
  {
    this.mParamList.add(new BasicNameValuePair(paramString1, paramString2));
  }

  public void clear()
  {
    if (this.mParamList != null)
      this.mParamList.clear();
  }

  public StringEntity getParamPackage()
  {
    try
    {
      UrlEncodedFormEntity localUrlEncodedFormEntity = new UrlEncodedFormEntity(this.mParamList, "UTF-8");
      return localUrlEncodedFormEntity;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
    }
    return null;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.http.HttpPackageParams
 * JD-Core Version:    0.6.2
 */