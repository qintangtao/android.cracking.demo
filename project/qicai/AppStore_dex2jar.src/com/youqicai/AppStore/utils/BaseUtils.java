package com.youqicai.AppStore.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Environment;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.PopupWindow;
import android.widget.Toast;

public class BaseUtils
{
  private static Toast mToast;
  public static int width = 0;

  public static String byteToString(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null)
      return new String(paramArrayOfByte);
    return "";
  }

  public static void cancelToast()
  {
    try
    {
      if (mToast != null)
        mToast.cancel();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static int dip2px(Context paramContext, float paramFloat)
  {
    if (paramContext == null)
      return 1;
    return (int)(0.5F + paramFloat * paramContext.getResources().getDisplayMetrics().density);
  }

  public static boolean hasSdcard()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }

  public static void hideKeyboard(Context paramContext, View paramView)
  {
    if ((paramView == null) || (paramContext == null))
      return;
    ((InputMethodManager)paramContext.getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 2);
  }

  public static void hidePopupWindow(PopupWindow paramPopupWindow)
  {
    if ((paramPopupWindow != null) && (paramPopupWindow.isShowing()))
      paramPopupWindow.dismiss();
  }

  public static void openActivity(Activity paramActivity, Class<?> paramClass)
  {
    openActivity(paramActivity, paramClass, null);
  }

  public static void openActivity(Activity paramActivity, Class<?> paramClass, Bundle paramBundle)
  {
    if (paramActivity == null)
      return;
    Intent localIntent = new Intent(paramActivity, paramClass);
    if (paramBundle != null)
      localIntent.putExtras(paramBundle);
    localIntent.setFlags(67108864);
    paramActivity.startActivity(localIntent);
  }

  public static void openActivityByNew(Activity paramActivity, Class<?> paramClass, Bundle paramBundle)
  {
    if (paramActivity == null)
      return;
    Intent localIntent = new Intent(paramActivity, paramClass);
    if (paramBundle != null)
      localIntent.putExtras(paramBundle);
    paramActivity.startActivity(localIntent);
  }

  public static void openActivityUp(Activity paramActivity, Class<?> paramClass, Bundle paramBundle)
  {
    if (paramActivity == null)
      return;
    Intent localIntent = new Intent(paramActivity, paramClass);
    if (paramBundle != null)
      localIntent.putExtras(paramBundle);
    localIntent.setFlags(67108864);
    paramActivity.startActivity(localIntent);
  }

  public static void openResultActivity(Activity paramActivity, Class<?> paramClass, Bundle paramBundle, int paramInt)
  {
    if (paramActivity == null)
      return;
    Intent localIntent = new Intent(paramActivity, paramClass);
    if (paramBundle != null)
      localIntent.putExtras(paramBundle);
    localIntent.setFlags(67108864);
    paramActivity.startActivityForResult(localIntent, paramInt);
  }

  public static int px2dip(Context paramContext, float paramFloat)
  {
    if (paramContext == null)
      return 1;
    return (int)(0.5F + paramFloat / paramContext.getResources().getDisplayMetrics().density);
  }

  public static int px2sp(Context paramContext, float paramFloat)
  {
    return (int)(0.5F + paramFloat / paramContext.getResources().getDisplayMetrics().scaledDensity);
  }

  public static void showTost(Context paramContext, int paramInt)
  {
    showTost(paramContext, paramContext.getString(paramInt));
  }

  // ERROR //
  public static void showTost(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +4 -> 5
    //   4: return
    //   5: getstatic 29	com/youqicai/AppStore/utils/BaseUtils:mToast	Landroid/widget/Toast;
    //   8: ifnonnull +70 -> 78
    //   11: ldc 2
    //   13: monitorenter
    //   14: getstatic 29	com/youqicai/AppStore/utils/BaseUtils:mToast	Landroid/widget/Toast;
    //   17: ifnonnull +38 -> 55
    //   20: aload_0
    //   21: aload_1
    //   22: iconst_0
    //   23: invokestatic 153	android/widget/Toast:makeText	(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    //   26: putstatic 29	com/youqicai/AppStore/utils/BaseUtils:mToast	Landroid/widget/Toast;
    //   29: ldc 2
    //   31: monitorexit
    //   32: getstatic 29	com/youqicai/AppStore/utils/BaseUtils:mToast	Landroid/widget/Toast;
    //   35: bipush 17
    //   37: iconst_0
    //   38: iconst_0
    //   39: invokevirtual 157	android/widget/Toast:setGravity	(III)V
    //   42: getstatic 29	com/youqicai/AppStore/utils/BaseUtils:mToast	Landroid/widget/Toast;
    //   45: invokevirtual 160	android/widget/Toast:show	()V
    //   48: return
    //   49: astore_2
    //   50: aload_2
    //   51: invokevirtual 37	java/lang/Exception:printStackTrace	()V
    //   54: return
    //   55: getstatic 29	com/youqicai/AppStore/utils/BaseUtils:mToast	Landroid/widget/Toast;
    //   58: aload_1
    //   59: invokevirtual 164	android/widget/Toast:setText	(Ljava/lang/CharSequence;)V
    //   62: getstatic 29	com/youqicai/AppStore/utils/BaseUtils:mToast	Landroid/widget/Toast;
    //   65: iconst_0
    //   66: invokevirtual 168	android/widget/Toast:setDuration	(I)V
    //   69: goto -40 -> 29
    //   72: astore_3
    //   73: ldc 2
    //   75: monitorexit
    //   76: aload_3
    //   77: athrow
    //   78: getstatic 29	com/youqicai/AppStore/utils/BaseUtils:mToast	Landroid/widget/Toast;
    //   81: aload_1
    //   82: invokevirtual 164	android/widget/Toast:setText	(Ljava/lang/CharSequence;)V
    //   85: getstatic 29	com/youqicai/AppStore/utils/BaseUtils:mToast	Landroid/widget/Toast;
    //   88: iconst_0
    //   89: invokevirtual 168	android/widget/Toast:setDuration	(I)V
    //   92: goto -60 -> 32
    //
    // Exception table:
    //   from	to	target	type
    //   5	14	49	java/lang/Exception
    //   32	48	49	java/lang/Exception
    //   76	78	49	java/lang/Exception
    //   78	92	49	java/lang/Exception
    //   14	29	72	finally
    //   29	32	72	finally
    //   55	69	72	finally
    //   73	76	72	finally
  }

  public static int sp2px(Context paramContext, float paramFloat)
  {
    if (paramContext == null)
      return 1;
    return (int)(0.5F + paramFloat * paramContext.getResources().getDisplayMetrics().density);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.utils.BaseUtils
 * JD-Core Version:    0.6.2
 */