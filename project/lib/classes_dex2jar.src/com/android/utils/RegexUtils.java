package com.android.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegexUtils
{
  public static boolean exists(String paramString1, String paramString2)
  {
    return Pattern.compile(paramString2).matcher(paramString1).find();
  }

  public static String getMatch(String paramString1, String paramString2, int paramInt)
  {
    Matcher localMatcher = Pattern.compile(paramString2).matcher(paramString1);
    if (localMatcher.find())
      return localMatcher.group(paramInt);
    return null;
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.utils.RegexUtils
 * JD-Core Version:    0.6.2
 */