package com.hsg.sdk.common.util;

import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

public class CommonUtils
{
  public static void hideKeyboard(Context paramContext, View paramView)
  {
    ((InputMethodManager)paramContext.getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
  }

  public static void showKeyboard(Context paramContext, View paramView)
  {
    ((InputMethodManager)paramContext.getSystemService("input_method")).showSoftInput(paramView, 2);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.CommonUtils
 * JD-Core Version:    0.6.2
 */