package com.lidroid.xutils.bitmap.callback;

public enum BitmapLoadFrom
{
  static
  {
    DISK_CACHE = new BitmapLoadFrom("DISK_CACHE", 1);
    URI = new BitmapLoadFrom("URI", 2);
    BitmapLoadFrom[] arrayOfBitmapLoadFrom = new BitmapLoadFrom[3];
    arrayOfBitmapLoadFrom[0] = MEMORY_CACHE;
    arrayOfBitmapLoadFrom[1] = DISK_CACHE;
    arrayOfBitmapLoadFrom[2] = URI;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.bitmap.callback.BitmapLoadFrom
 * JD-Core Version:    0.6.2
 */