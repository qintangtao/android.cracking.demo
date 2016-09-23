package com.google.kd.utils;

public class CrcUtils
{
  static
  {
    System.loadLibrary("crc");
  }

  public static native String GetFileCRC32(String paramString);
}

/* Location:           C:\Users\Tato\Desktop\android反编译\Tool\classes_dex2jar.jar
 * Qualified Name:     com.google.kd.utils.CrcUtils
 * JD-Core Version:    0.6.2
 */