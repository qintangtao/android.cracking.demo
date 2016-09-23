package com.jh.common.app.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ListView;
import com.jh.common.app.application.AppSystem;
import java.io.File;

public class CommonUtils
{
  public static final int INIT_INDEX = -1;
  private static final int UNINIT_INDEX = -2;
  private static int themeIndex = -2;

  public static int dp2px(Context paramContext, float paramFloat)
  {
    return (int)(0.5D + paramFloat * paramContext.getResources().getDisplayMetrics().density);
  }

  public static String getDownlaodSize(Long paramLong)
  {
    if (paramLong == null)
      return "0人下载";
    if (paramLong.longValue() > 1000000L)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Double.valueOf(paramLong.longValue() / 1000000.0D);
      return String.format("%.2f", arrayOfObject2) + "百万人下载";
    }
    if (paramLong.longValue() >= 10000L)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Double.valueOf(paramLong.longValue() / 10000.0D);
      return String.format("%.2f", arrayOfObject1) + "万人下载";
    }
    return paramLong + "人下载";
  }

  public static String getFileSize(Long paramLong)
  {
    if (paramLong == null)
      return "0M";
    if (paramLong.longValue() > 1073741824L)
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Double.valueOf(paramLong.longValue() / 1073741824.0D);
      return String.format("%.2f", arrayOfObject3) + " GB";
    }
    if (paramLong.longValue() > 1048576L)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Double.valueOf(paramLong.longValue() / 1048576.0D);
      return String.format("%.2f", arrayOfObject2) + " MB";
    }
    if (paramLong.longValue() > 1024L)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Double.valueOf(paramLong.longValue() / 1024.0D);
      return String.format("%.2f", arrayOfObject1) + " KB";
    }
    return paramLong + " B";
  }

  public static File getSaveFile(String paramString, boolean paramBoolean)
  {
    return new File(getSaveFilePath(paramString, paramBoolean));
  }

  public static String getSaveFilePath(String paramString, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramString))
      return "";
    String[] arrayOfString = paramString.substring(1 + paramString.lastIndexOf("\\"), paramString.length()).replace("?", "_").replace("=", "_").split("/");
    String str = arrayOfString[(-1 + arrayOfString.length)];
    File localFile = new File(AppSystem.getInstance().getDownloadPath());
    if ((!localFile.exists()) && (paramBoolean))
      localFile.mkdirs();
    return AppSystem.getInstance().getDownloadPath() + str;
  }

  public static Screen getScreenPix(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    return new Screen(localDisplayMetrics.widthPixels, localDisplayMetrics.heightPixels);
  }

  public static String getSubString(String paramString, int paramInt)
  {
    if (paramString == null)
      paramString = "";
    while (paramString.length() <= paramInt)
      return paramString;
    return paramString.substring(0, paramInt - 1) + "...";
  }

  public static int getThemeIndex(Context paramContext)
  {
    if (themeIndex <= -2)
      themeIndex = paramContext.getApplicationContext().getSharedPreferences("jhNews", 2).getInt("themeIndex", -1);
    return themeIndex;
  }

  public static void hideSoftInputFromWindow(EditText paramEditText)
  {
    ((InputMethodManager)AppSystem.getInstance().getContext().getSystemService("input_method")).hideSoftInputFromWindow(paramEditText.getWindowToken(), 0);
  }

  public static int px2dp(Context paramContext, float paramFloat)
  {
    return (int)(0.5D + paramFloat / paramContext.getResources().getDisplayMetrics().density);
  }

  public static void recycleBitmap(Bitmap paramBitmap)
  {
    if ((paramBitmap != null) && (paramBitmap.isRecycled()))
      paramBitmap.recycle();
  }

  public static void releaseResources(View paramView)
  {
    if (paramView != null)
    {
      if ((paramView instanceof ListView))
        ((ListView)paramView).setAdapter(null);
      paramView.setVisibility(8);
      paramView.destroyDrawingCache();
    }
  }

  public static void saveThemeIndex(Context paramContext, int paramInt)
  {
    SharedPreferences.Editor localEditor = paramContext.getApplicationContext().getSharedPreferences("jhNews", 2).edit();
    localEditor.putInt("themeIndex", paramInt);
    localEditor.commit();
  }

  public static void setThemeIndex(int paramInt)
  {
    themeIndex = paramInt;
  }

  public static void startApplication(Context paramContext, String paramString)
    throws Exception
  {
    paramContext.startActivity(paramContext.getPackageManager().getLaunchIntentForPackage(paramString));
  }

  public static Bitmap toRoundCorner(Bitmap paramBitmap, int paramInt)
  {
    if (paramBitmap != null)
    {
      Bitmap localBitmap = Bitmap.createBitmap(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
      Canvas localCanvas = new Canvas(localBitmap);
      Paint localPaint = new Paint();
      Rect localRect = new Rect(0, 0, paramBitmap.getWidth(), paramBitmap.getHeight());
      RectF localRectF = new RectF(localRect);
      float f = paramInt;
      localPaint.setAntiAlias(true);
      localCanvas.drawARGB(0, 0, 0, 0);
      localPaint.setColor(-12434878);
      localCanvas.drawRoundRect(localRectF, f, f, localPaint);
      localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
      localCanvas.drawBitmap(paramBitmap, localRect, localRect, localPaint);
      return localBitmap;
    }
    return null;
  }

  public static class Screen
  {
    public int heightPixels;
    public int widthPixels;

    public Screen()
    {
    }

    public Screen(int paramInt1, int paramInt2)
    {
      this.widthPixels = paramInt1;
      this.heightPixels = paramInt2;
    }

    public String toString()
    {
      return "(" + this.widthPixels + "," + this.heightPixels + ")";
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.common.app.util.CommonUtils
 * JD-Core Version:    0.6.2
 */