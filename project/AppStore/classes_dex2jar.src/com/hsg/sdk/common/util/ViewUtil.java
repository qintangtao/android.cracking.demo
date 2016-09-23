package com.hsg.sdk.common.util;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

public class ViewUtil
{
  // ERROR //
  public static android.graphics.drawable.Drawable getAssetDrawable(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: invokevirtual 18	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   6: aload_1
    //   7: invokevirtual 24	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   10: astore_2
    //   11: new 26	android/graphics/drawable/BitmapDrawable
    //   14: dup
    //   15: aload_0
    //   16: invokevirtual 30	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   19: aload_2
    //   20: invokespecial 33	android/graphics/drawable/BitmapDrawable:<init>	(Landroid/content/res/Resources;Ljava/io/InputStream;)V
    //   23: astore 8
    //   25: aload_2
    //   26: ifnull +75 -> 101
    //   29: aload_2
    //   30: invokevirtual 38	java/io/InputStream:close	()V
    //   33: aload 8
    //   35: astore 6
    //   37: aload 6
    //   39: areturn
    //   40: astore 5
    //   42: aload 5
    //   44: invokevirtual 41	java/io/IOException:printStackTrace	()V
    //   47: aconst_null
    //   48: astore 6
    //   50: aload_2
    //   51: ifnull -14 -> 37
    //   54: aload_2
    //   55: invokevirtual 38	java/io/InputStream:close	()V
    //   58: aconst_null
    //   59: areturn
    //   60: astore 7
    //   62: aload 7
    //   64: invokevirtual 41	java/io/IOException:printStackTrace	()V
    //   67: goto -9 -> 58
    //   70: astore_3
    //   71: aload_2
    //   72: ifnull +7 -> 79
    //   75: aload_2
    //   76: invokevirtual 38	java/io/InputStream:close	()V
    //   79: aload_3
    //   80: athrow
    //   81: astore 4
    //   83: aload 4
    //   85: invokevirtual 41	java/io/IOException:printStackTrace	()V
    //   88: goto -9 -> 79
    //   91: astore 9
    //   93: aload 9
    //   95: invokevirtual 41	java/io/IOException:printStackTrace	()V
    //   98: goto -65 -> 33
    //   101: aload 8
    //   103: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   2	25	40	java/io/IOException
    //   54	58	60	java/io/IOException
    //   2	25	70	finally
    //   42	47	70	finally
    //   75	79	81	java/io/IOException
    //   29	33	91	java/io/IOException
  }

  public static int getViewIdByName(Context paramContext, String paramString)
  {
    return paramContext.getResources().getIdentifier(paramString, "id", paramContext.getPackageName());
  }

  public static void hideSoftKeyboard(Context paramContext, View paramView)
  {
    ((InputMethodManager)paramContext.getSystemService("input_method")).hideSoftInputFromWindow(paramView.getApplicationWindowToken(), 0);
  }

  public static void setViewBackground(View paramView, int paramInt)
  {
    int i = paramView.getPaddingLeft();
    int j = paramView.getPaddingRight();
    int k = paramView.getPaddingTop();
    int m = paramView.getPaddingBottom();
    paramView.setBackgroundResource(paramInt);
    paramView.setPadding(i, k, j, m);
  }

  public static void showSoftInputKeyboard(Context paramContext, View paramView)
  {
    ((InputMethodManager)paramContext.getSystemService("input_method")).showSoftInput(paramView, 2);
  }

  public static void toggleSoftKeyboard(Context paramContext)
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)paramContext.getSystemService("input_method");
    if (localInputMethodManager.isActive())
      localInputMethodManager.toggleSoftInput(0, 2);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.ViewUtil
 * JD-Core Version:    0.6.2
 */