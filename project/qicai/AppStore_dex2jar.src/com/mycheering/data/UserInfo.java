package com.mycheering.data;

import android.text.TextUtils;
import org.json.JSONObject;

public class UserInfo
{
  String accountId;
  String accountName;
  int age;
  int gender;
  String phone;

  public UserInfo()
  {
  }

  public UserInfo(String paramString1, String paramString2, int paramInt1, int paramInt2, String paramString3)
  {
    this.accountId = paramString1;
    this.accountName = paramString2;
    this.gender = paramInt1;
    this.age = paramInt2;
    this.phone = paramString3;
  }

  public String getAccountId()
  {
    return this.accountId;
  }

  public String getAccountName()
  {
    return this.accountName;
  }

  public int getAge()
  {
    return this.age;
  }

  public int getGender()
  {
    return this.gender;
  }

  public String getPhone()
  {
    return this.phone;
  }

  public void setAccountId(String paramString)
  {
    this.accountId = paramString;
  }

  public void setAccountName(String paramString)
  {
    this.accountName = paramString;
  }

  public void setAge(int paramInt)
  {
    this.age = paramInt;
  }

  public void setGender(int paramInt)
  {
    this.gender = paramInt;
  }

  public void setPhone(String paramString)
  {
    this.phone = paramString;
  }

  public String toString()
  {
    if ((TextUtils.isEmpty(getAccountId())) && (TextUtils.isEmpty(getAccountName())) && (getGender() == 0) && (getAge() == 0) && (TextUtils.isEmpty(getPhone())))
      return "";
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("acid", getAccountId());
      localJSONObject.put("acn", getAccountName());
      localJSONObject.put("gd", getGender());
      localJSONObject.put("age", getAge());
      localJSONObject.put("ph", getPhone());
      String str = localJSONObject.toString();
      return str;
    }
    catch (Exception localException)
    {
    }
    return "";
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.mycheering.data.UserInfo
 * JD-Core Version:    0.6.2
 */