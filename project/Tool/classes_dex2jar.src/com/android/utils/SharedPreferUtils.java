package com.android.utils;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.kd.utils.AppContext;

public class SharedPreferUtils
{
  public static boolean readStateToSp()
  {
    return AppContext.getInstance().getSharedPreferences("window_show", 0).getBoolean("window_show", true);
  }

  public static void saveStateToSp(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = AppContext.getInstance().getSharedPreferences("window_show", 0).edit();
    localEditor.putBoolean("window_hide", paramBoolean);
    localEditor.commit();
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\Tool\classes_dex2jar.jar
 * Qualified Name:     com.android.utils.SharedPreferUtils
 * JD-Core Version:    0.6.2
 */