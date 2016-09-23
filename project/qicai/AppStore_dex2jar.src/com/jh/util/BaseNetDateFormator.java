package com.jh.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class BaseNetDateFormator
{
  private static SimpleDateFormat format = new SimpleDateFormat("yyyy/m/d hh:MM:ss");

  public static String getCurrentTime()
  {
    return format.format(new Date());
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.util.BaseNetDateFormator
 * JD-Core Version:    0.6.2
 */