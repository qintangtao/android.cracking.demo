package com.mycheering.data;

import android.text.TextUtils;
import org.json.JSONObject;

public class Location
{
  private String address;
  private String city;
  private String country;
  private String district;
  private double latitude;
  private double longitude;
  private String province;

  public Location()
  {
  }

  public Location(double paramDouble1, double paramDouble2, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    this.latitude = paramDouble1;
    this.longitude = paramDouble2;
    this.country = paramString1;
    this.province = paramString2;
    this.city = paramString3;
    this.district = paramString4;
    this.address = paramString5;
  }

  public String getAddress()
  {
    return this.address;
  }

  public String getCity()
  {
    return this.city;
  }

  public String getCountry()
  {
    return this.country;
  }

  public String getDistrict()
  {
    return this.district;
  }

  public double getLatitude()
  {
    return this.latitude;
  }

  public double getLongitude()
  {
    return this.longitude;
  }

  public String getProvince()
  {
    return this.province;
  }

  public void setAddress(String paramString)
  {
    this.address = paramString;
  }

  public void setCity(String paramString)
  {
    this.city = paramString;
  }

  public void setCountry(String paramString)
  {
    this.country = paramString;
  }

  public void setDistrict(String paramString)
  {
    this.district = paramString;
  }

  public void setLatitude(double paramDouble)
  {
    this.latitude = paramDouble;
  }

  public void setLongitude(double paramDouble)
  {
    this.longitude = paramDouble;
  }

  public void setProvince(String paramString)
  {
    this.province = paramString;
  }

  public String toString()
  {
    if ((TextUtils.isEmpty(getCountry())) && (TextUtils.isEmpty(getCity())) && (TextUtils.isEmpty(getAddress())) && (TextUtils.isEmpty(getDistrict())) && (getLatitude() == 0.0D) && (getLongitude() == 0.0D) && (TextUtils.isEmpty(getProvince())))
      return "";
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("lat", getLatitude());
      localJSONObject.put("lon", getLongitude());
      localJSONObject.put("cty", getCountry());
      localJSONObject.put("prv", getProvince());
      localJSONObject.put("city", getCity());
      localJSONObject.put("dst", getDistrict());
      localJSONObject.put("addr", getAddress());
      String str = localJSONObject.toString();
      return str;
    }
    catch (Exception localException)
    {
    }
    return "";
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.mycheering.data.Location
 * JD-Core Version:    0.6.2
 */