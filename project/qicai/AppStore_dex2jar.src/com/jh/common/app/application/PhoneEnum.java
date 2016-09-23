package com.jh.common.app.application;

public enum PhoneEnum
{
  static
  {
    HTC = new PhoneEnum("HTC", 1);
    SUMSING = new PhoneEnum("SUMSING", 2);
    HUAWEI = new PhoneEnum("HUAWEI", 3);
    PhoneEnum[] arrayOfPhoneEnum = new PhoneEnum[4];
    arrayOfPhoneEnum[0] = UNKNOWN;
    arrayOfPhoneEnum[1] = HTC;
    arrayOfPhoneEnum[2] = SUMSING;
    arrayOfPhoneEnum[3] = HUAWEI;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.common.app.application.PhoneEnum
 * JD-Core Version:    0.6.2
 */