package com.youqicai.AppStore.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.WallpaperManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.ThumbnailUtils;
import android.renderscript.Allocation;
import android.renderscript.Allocation.MipmapControl;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.youqicai.AppStore.AppStoreApplication;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Array;

public class BitmapUtil
{
  public static final int RADIOUS = 12;

  public static Drawable convertBitmap2Drawable(Bitmap paramBitmap)
  {
    return new BitmapDrawable(paramBitmap);
  }

  public static Bitmap convertFileToBitmap(String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    localOptions.inPreferredConfig = Bitmap.Config.ARGB_8888;
    BitmapFactory.decodeFile(paramString, localOptions);
    int i = localOptions.outWidth;
    int j = localOptions.outHeight;
    float f1;
    float f2;
    if (i <= paramInt1)
    {
      f1 = 0.0F;
      f2 = 0.0F;
      if (j <= paramInt2);
    }
    else
    {
      f2 = i / paramInt1;
      f1 = j / paramInt2;
    }
    localOptions.inJustDecodeBounds = false;
    localOptions.inSampleSize = ((int)Math.max(f2, f1));
    if (paramBoolean)
      return ThumbnailUtils.createVideoThumbnail(paramString, 1);
    return BitmapFactory.decodeFile(paramString, localOptions);
  }

  public static String convertIconToString(Bitmap paramBitmap)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 80, localByteArrayOutputStream);
    return Base64.encodeToString(localByteArrayOutputStream.toByteArray(), 0);
  }

  public static Bitmap convertStringToIcon(String paramString)
  {
    try
    {
      byte[] arrayOfByte = Base64.decode(paramString, 0);
      Bitmap localBitmap = BitmapFactory.decodeByteArray(arrayOfByte, 0, arrayOfByte.length);
      return localBitmap;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static Bitmap convertViewToBitmap(Context paramContext, View paramView)
  {
    try
    {
      Bitmap localBitmap2 = Bitmap.createBitmap(paramView.getWidth(), paramView.getHeight(), Bitmap.Config.ARGB_4444);
      localBitmap1 = localBitmap2;
      paramView.draw(new Canvas(localBitmap1));
      return localBitmap1;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      while (true)
        Bitmap localBitmap1 = Bitmap.createBitmap(paramView.getWidth(), paramView.getHeight(), Bitmap.Config.ARGB_4444);
    }
  }

  public static Bitmap convertViewToBitmap(Context paramContext, View paramView, int paramInt1, int paramInt2)
  {
    try
    {
      Bitmap localBitmap2 = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_4444);
      localBitmap1 = localBitmap2;
      Canvas localCanvas = new Canvas(localBitmap1);
      localCanvas.scale(paramInt1 / paramView.getWidth(), paramInt2 / paramView.getHeight());
      paramView.draw(localCanvas);
      return localBitmap1;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      while (true)
        Bitmap localBitmap1 = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_4444);
    }
  }

  @SuppressLint({"NewApi"})
  public static Bitmap doBlur(Context paramContext, Bitmap paramBitmap, float paramFloat, int paramInt)
  {
    if (paramBitmap == null)
      return null;
    if (paramFloat <= 0.0F)
      paramFloat = 0.0625F;
    if ((paramInt <= 0) || (paramInt > 25))
      paramInt = 5;
    try
    {
      int i = Math.round(paramFloat * paramBitmap.getWidth());
      int j = Math.round(paramFloat * paramBitmap.getHeight());
      Bitmap.Config localConfig = Bitmap.Config.ARGB_4444;
      Bitmap localBitmap1 = Bitmap.createBitmap(i, j, localConfig);
      Canvas localCanvas = new Canvas(localBitmap1);
      localCanvas.scale(paramFloat, paramFloat);
      localCanvas.drawBitmap(paramBitmap, 0.0F, 0.0F, new Paint());
      RenderScript localRenderScript = RenderScript.create(paramContext);
      Allocation localAllocation1 = Allocation.createFromBitmap(localRenderScript, localBitmap1, Allocation.MipmapControl.MIPMAP_NONE, 1);
      Allocation localAllocation2 = Allocation.createTyped(localRenderScript, localAllocation1.getType());
      ScriptIntrinsicBlur localScriptIntrinsicBlur = ScriptIntrinsicBlur.create(localRenderScript, localAllocation1.getElement());
      localScriptIntrinsicBlur.setInput(localAllocation1);
      localScriptIntrinsicBlur.setRadius(paramInt);
      localScriptIntrinsicBlur.forEach(localAllocation2);
      Bitmap localBitmap2 = Bitmap.createBitmap(i, j, localConfig);
      localAllocation2.copyTo(localBitmap2);
      return localBitmap2;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      return null;
    }
    catch (Exception localException)
    {
      label187: break label187;
    }
  }

  public static Bitmap doBlur(Bitmap paramBitmap, int paramInt, boolean paramBoolean)
  {
    Bitmap localBitmap;
    if (paramBoolean)
    {
      localBitmap = paramBitmap;
      if (paramInt >= 1)
        break label28;
      return null;
    }
    label28: label1189: label1329: label1342: label1346: 
    while (true)
    {
      int i;
      int j;
      int m;
      int i7;
      int i9;
      int i37;
      int i46;
      int i43;
      int i40;
      int i44;
      int i41;
      int i38;
      int i45;
      int i42;
      int i39;
      int i50;
      int i49;
      int i12;
      int i11;
      int i21;
      int i18;
      int i15;
      int i19;
      int i16;
      int i13;
      int i20;
      int i17;
      int i14;
      label869: int i26;
      int i24;
      int i25;
      try
      {
        localBitmap = paramBitmap.copy(paramBitmap.getConfig(), true);
        break;
        i = localBitmap.getWidth();
        j = localBitmap.getHeight();
        int[] arrayOfInt1 = new int[i * j];
        localBitmap.getPixels(arrayOfInt1, 0, i, 0, 0, i, j);
        int k = i - 1;
        m = j - 1;
        int n = i * j;
        int i1 = 1 + (paramInt + paramInt);
        int[] arrayOfInt2 = new int[n];
        int[] arrayOfInt3 = new int[n];
        int[] arrayOfInt4 = new int[n];
        int[] arrayOfInt5 = new int[Math.max(i, j)];
        int i2 = i1 + 1 >> 1;
        int i3 = i2 * i2;
        int[] arrayOfInt6 = new int[i3 * 256];
        int i4 = 0;
        int i5 = i3 * 256;
        if (i4 < i5)
        {
          arrayOfInt6[i4] = (i4 / i3);
          i4++;
          continue;
        }
        int[] arrayOfInt7 = { i1, 3 };
        int[][] arrayOfInt = (int[][])Array.newInstance(Integer.TYPE, arrayOfInt7);
        int i6 = paramInt + 1;
        i7 = 0;
        int i8 = 0;
        i9 = 0;
        break label1189;
        if (i37 <= paramInt)
        {
          int i47 = arrayOfInt1[(i8 + Math.min(k, Math.max(i37, 0)))];
          int[] arrayOfInt11 = arrayOfInt[(i37 + paramInt)];
          arrayOfInt11[0] = ((0xFF0000 & i47) >> 16);
          arrayOfInt11[1] = ((0xFF00 & i47) >> 8);
          arrayOfInt11[2] = (i47 & 0xFF);
          int i48 = i6 - Math.abs(i37);
          i46 += i48 * arrayOfInt11[0];
          i43 += i48 * arrayOfInt11[1];
          i40 += i48 * arrayOfInt11[2];
          if (i37 > 0)
          {
            i44 += arrayOfInt11[0];
            i41 += arrayOfInt11[1];
            i38 += arrayOfInt11[2];
          }
          else
          {
            i45 += arrayOfInt11[0];
            i42 += arrayOfInt11[1];
            i39 += arrayOfInt11[2];
            break label1230;
            if (i50 >= i)
              break label1245;
            arrayOfInt2[i8] = arrayOfInt6[i46];
            arrayOfInt3[i8] = arrayOfInt6[i43];
            arrayOfInt4[i8] = arrayOfInt6[i40];
            int i51 = i46 - i45;
            int i52 = i43 - i42;
            int i53 = i40 - i39;
            int[] arrayOfInt12 = arrayOfInt[((i1 + (i49 - paramInt)) % i1)];
            int i54 = i45 - arrayOfInt12[0];
            int i55 = i42 - arrayOfInt12[1];
            int i56 = i39 - arrayOfInt12[2];
            if (i7 == 0)
              arrayOfInt5[i50] = Math.min(1 + (i50 + paramInt), k);
            int i57 = arrayOfInt1[(i9 + arrayOfInt5[i50])];
            arrayOfInt12[0] = ((0xFF0000 & i57) >> 16);
            arrayOfInt12[1] = ((0xFF00 & i57) >> 8);
            arrayOfInt12[2] = (i57 & 0xFF);
            int i58 = i44 + arrayOfInt12[0];
            int i59 = i41 + arrayOfInt12[1];
            int i60 = i38 + arrayOfInt12[2];
            i46 = i51 + i58;
            i43 = i52 + i59;
            i40 = i53 + i60;
            i49 = (i49 + 1) % i1;
            int[] arrayOfInt13 = arrayOfInt[(i49 % i1)];
            i45 = i54 + arrayOfInt13[0];
            i42 = i55 + arrayOfInt13[1];
            i39 = i56 + arrayOfInt13[2];
            i44 = i58 - arrayOfInt13[0];
            i41 = i59 - arrayOfInt13[1];
            i38 = i60 - arrayOfInt13[2];
            i8++;
            i50++;
            continue;
            if (i12 > paramInt)
              break label1329;
            int i22 = i10 + Math.max(0, i11);
            int[] arrayOfInt8 = arrayOfInt[(i12 + paramInt)];
            arrayOfInt8[0] = arrayOfInt2[i22];
            arrayOfInt8[1] = arrayOfInt3[i22];
            arrayOfInt8[2] = arrayOfInt4[i22];
            int i23 = i6 - Math.abs(i12);
            i21 += i23 * arrayOfInt2[i22];
            i18 += i23 * arrayOfInt3[i22];
            i15 += i23 * arrayOfInt4[i22];
            if (i12 > 0)
            {
              i19 += arrayOfInt8[0];
              i16 += arrayOfInt8[1];
              i13 += arrayOfInt8[2];
              break label1309;
            }
            i20 += arrayOfInt8[0];
            i17 += arrayOfInt8[1];
            i14 += arrayOfInt8[2];
            break label1309;
            if (i26 >= j)
              break label1342;
            arrayOfInt1[i24] = (0xFF000000 & arrayOfInt1[i24] | arrayOfInt6[i21] << 16 | arrayOfInt6[i18] << 8 | arrayOfInt6[i15]);
            int i27 = i21 - i20;
            int i28 = i18 - i17;
            int i29 = i15 - i14;
            int[] arrayOfInt9 = arrayOfInt[((i1 + (i25 - paramInt)) % i1)];
            int i30 = i20 - arrayOfInt9[0];
            int i31 = i17 - arrayOfInt9[1];
            int i32 = i14 - arrayOfInt9[2];
            if (i10 == 0)
              arrayOfInt5[i26] = (i * Math.min(i26 + i6, m));
            int i33 = i10 + arrayOfInt5[i26];
            arrayOfInt9[0] = arrayOfInt2[i33];
            arrayOfInt9[1] = arrayOfInt3[i33];
            arrayOfInt9[2] = arrayOfInt4[i33];
            int i34 = i19 + arrayOfInt9[0];
            int i35 = i16 + arrayOfInt9[1];
            int i36 = i13 + arrayOfInt9[2];
            i21 = i27 + i34;
            i18 = i28 + i35;
            i15 = i29 + i36;
            i25 = (i25 + 1) % i1;
            int[] arrayOfInt10 = arrayOfInt[i25];
            i20 = i30 + arrayOfInt10[0];
            i17 = i31 + arrayOfInt10[1];
            i14 = i32 + arrayOfInt10[2];
            i19 = i34 - arrayOfInt10[0];
            i16 = i35 - arrayOfInt10[1];
            i13 = i36 - arrayOfInt10[2];
            i24 += i;
            i26++;
            continue;
            localBitmap.setPixels(arrayOfInt1, 0, i, 0, 0, i, j);
            return localBitmap;
          }
        }
      }
      catch (Exception localException)
      {
        return paramBitmap;
      }
      while (true)
      {
        if (i7 >= j)
          break label1258;
        i37 = -paramInt;
        i38 = 0;
        i39 = 0;
        i40 = 0;
        i41 = 0;
        i42 = 0;
        i43 = 0;
        i44 = 0;
        i45 = 0;
        i46 = 0;
        break;
        label1230: i37++;
        break;
        i49 = paramInt;
        i50 = 0;
        break label404;
        label1245: i9 += i;
        i7++;
      }
      label1258: for (int i10 = 0; ; i10++)
      {
        if (i10 >= i)
          break label1346;
        i11 = i * -paramInt;
        i12 = -paramInt;
        i13 = 0;
        i14 = 0;
        i15 = 0;
        i16 = 0;
        i17 = 0;
        i18 = 0;
        i19 = 0;
        i20 = 0;
        i21 = 0;
        break;
        if (i12 < m)
          i11 += i;
        i12++;
        break;
        i24 = i10;
        i25 = paramInt;
        i26 = 0;
        break label869;
      }
    }
  }

  public static Bitmap drawableToBitmap(Drawable paramDrawable)
  {
    int i = paramDrawable.getIntrinsicWidth();
    int j = paramDrawable.getIntrinsicHeight();
    if (paramDrawable.getOpacity() != -1);
    for (Bitmap.Config localConfig = Bitmap.Config.ARGB_8888; ; localConfig = Bitmap.Config.RGB_565)
    {
      Bitmap localBitmap = Bitmap.createBitmap(i, j, localConfig);
      Canvas localCanvas = new Canvas(localBitmap);
      paramDrawable.setBounds(0, 0, i, j);
      paramDrawable.draw(localCanvas);
      return localBitmap;
    }
  }

  public static Bitmap drawableToBitmap(Drawable paramDrawable, int paramInt1, int paramInt2)
  {
    try
    {
      Bitmap localBitmap = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_4444);
      Canvas localCanvas = new Canvas(localBitmap);
      paramDrawable.setBounds(0, 0, paramDrawable.getIntrinsicWidth(), paramDrawable.getIntrinsicHeight());
      localCanvas.scale(paramInt1 / paramDrawable.getIntrinsicWidth(), paramInt2 / paramDrawable.getIntrinsicHeight());
      paramDrawable.draw(localCanvas);
      return localBitmap;
    }
    catch (Exception localException)
    {
      return null;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      label67: break label67;
    }
  }

  public static Bitmap getBluredBackgroundImage(Activity paramActivity)
  {
    try
    {
      int i = paramActivity.getResources().getDisplayMetrics().widthPixels;
      int j = paramActivity.getResources().getDisplayMetrics().heightPixels;
      WallpaperManager localWallpaperManager = WallpaperManager.getInstance(paramActivity);
      int k = localWallpaperManager.getDesiredMinimumWidth();
      int m = localWallpaperManager.getDesiredMinimumHeight();
      Bitmap localBitmap1 = mergerBitmap(Bitmap.createBitmap(drawableToBitmap(localWallpaperManager.getDrawable(), k / 4, m / 4), (k - i) / 2 / 4, 0, i / 4, j / 4), convertViewToBitmap(paramActivity, paramActivity.getWindow().getDecorView(), i / 4, j / 4), true, i / 4, j / 4);
      Object localObject = doBlur(paramActivity, localBitmap1, 1.0F, 25);
      if (localObject == null)
      {
        Bitmap localBitmap2 = doBlur(localBitmap1, 16, true);
        localObject = localBitmap2;
      }
      return localObject;
    }
    catch (Exception localException)
    {
      return null;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      label143: break label143;
    }
  }

  public static Bitmap getRoundedCornerBitmap(Bitmap paramBitmap)
  {
    try
    {
      Bitmap localBitmap = Bitmap.createBitmap(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
      Canvas localCanvas = new Canvas(localBitmap);
      Paint localPaint = new Paint();
      Rect localRect = new Rect(0, 0, paramBitmap.getWidth(), paramBitmap.getHeight());
      RectF localRectF = new RectF(new Rect(0, 0, paramBitmap.getWidth(), paramBitmap.getHeight()));
      localPaint.setAntiAlias(true);
      localCanvas.drawARGB(0, 0, 0, 0);
      localPaint.setColor(-16777216);
      localCanvas.drawRoundRect(localRectF, 15.0F, 15.0F, localPaint);
      localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
      localCanvas.drawBitmap(paramBitmap, new Rect(0, 0, paramBitmap.getWidth(), paramBitmap.getHeight()), localRect, localPaint);
      return localBitmap;
    }
    catch (Exception localException)
    {
    }
    return paramBitmap;
  }

  public static boolean isSmallScreen()
  {
    return ((WindowManager)AppStoreApplication.getInstance().getSystemService("window")).getDefaultDisplay().getWidth() <= 720;
  }

  public static Bitmap mergerBitmap(Bitmap paramBitmap1, Bitmap paramBitmap2, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    try
    {
      Object localObject = Bitmap.createBitmap(paramBitmap1.getWidth(), paramBitmap1.getHeight(), paramBitmap1.getConfig());
      Canvas localCanvas = new Canvas((Bitmap)localObject);
      localCanvas.drawBitmap(paramBitmap1, 0.0F, 0.0F, null);
      localCanvas.drawBitmap(paramBitmap2, 0.0F, paramBitmap1.getHeight() - paramBitmap2.getHeight(), null);
      if (paramBoolean)
      {
        Bitmap localBitmap = Bitmap.createBitmap((Bitmap)localObject, ((Bitmap)localObject).getWidth() - paramInt1, ((Bitmap)localObject).getHeight() - paramInt2, paramInt1, paramInt2);
        localObject = localBitmap;
      }
      return localObject;
    }
    catch (Exception localException)
    {
      return null;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      label93: break label93;
    }
  }

  public static Bitmap zoomDrawable(Drawable paramDrawable, int paramInt)
  {
    int i = paramDrawable.getIntrinsicWidth();
    int j = paramDrawable.getIntrinsicHeight();
    Bitmap localBitmap = drawableToBitmap(paramDrawable);
    Matrix localMatrix = new Matrix();
    localMatrix.postScale(paramInt / i, paramInt / j);
    return Bitmap.createBitmap(localBitmap, 0, 0, i, j, localMatrix, true);
  }

  public static Drawable zoomDrawable(Drawable paramDrawable, int paramInt1, int paramInt2)
  {
    int i = paramDrawable.getIntrinsicWidth();
    int j = paramDrawable.getIntrinsicHeight();
    Bitmap localBitmap = drawableToBitmap(paramDrawable);
    Matrix localMatrix = new Matrix();
    localMatrix.postScale(paramInt1 / i, paramInt2 / j);
    return new BitmapDrawable(Bitmap.createBitmap(localBitmap, 0, 0, i, j, localMatrix, true));
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.utils.BitmapUtil
 * JD-Core Version:    0.6.2
 */