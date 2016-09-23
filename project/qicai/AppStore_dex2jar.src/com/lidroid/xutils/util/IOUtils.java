package com.lidroid.xutils.util;

import android.database.Cursor;
import java.io.Closeable;

public class IOUtils
{
  public static void closeQuietly(Cursor paramCursor)
  {
    if (paramCursor != null);
    try
    {
      paramCursor.close();
      return;
    }
    catch (Throwable localThrowable)
    {
    }
  }

  public static void closeQuietly(Closeable paramCloseable)
  {
    if (paramCloseable != null);
    try
    {
      paramCloseable.close();
      return;
    }
    catch (Throwable localThrowable)
    {
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.util.IOUtils
 * JD-Core Version:    0.6.2
 */