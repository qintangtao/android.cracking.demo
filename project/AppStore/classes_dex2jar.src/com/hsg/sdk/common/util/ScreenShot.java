package com.hsg.sdk.common.util;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;

public class ScreenShot
{
  // ERROR //
  public static java.io.File savePic(Bitmap paramBitmap, java.io.File paramFile, java.lang.String paramString)
  {
    // Byte code:
    //   0: new 16	java/io/File
    //   3: dup
    //   4: aload_1
    //   5: aload_2
    //   6: invokespecial 19	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   9: astore_3
    //   10: new 21	java/io/FileOutputStream
    //   13: dup
    //   14: aload_3
    //   15: invokespecial 24	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   18: astore 4
    //   20: aload 4
    //   22: ifnull +55 -> 77
    //   25: aload_0
    //   26: getstatic 30	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   29: bipush 90
    //   31: aload 4
    //   33: invokevirtual 36	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   36: pop
    //   37: aload 4
    //   39: invokevirtual 39	java/io/FileOutputStream:flush	()V
    //   42: aload 4
    //   44: invokevirtual 42	java/io/FileOutputStream:close	()V
    //   47: aload_3
    //   48: areturn
    //   49: astore 5
    //   51: aload 5
    //   53: invokevirtual 45	java/io/FileNotFoundException:printStackTrace	()V
    //   56: aload_3
    //   57: areturn
    //   58: astore 6
    //   60: aload 6
    //   62: invokevirtual 46	java/io/IOException:printStackTrace	()V
    //   65: aload_3
    //   66: areturn
    //   67: astore 6
    //   69: goto -9 -> 60
    //   72: astore 5
    //   74: goto -23 -> 51
    //   77: aload_3
    //   78: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   10	20	49	java/io/FileNotFoundException
    //   10	20	58	java/io/IOException
    //   25	47	67	java/io/IOException
    //   25	47	72	java/io/FileNotFoundException
  }

  public static Bitmap takeScreenShot(Activity paramActivity)
  {
    View localView = paramActivity.getWindow().getDecorView();
    localView.setDrawingCacheEnabled(true);
    localView.buildDrawingCache();
    Bitmap localBitmap1 = localView.getDrawingCache();
    Rect localRect = new Rect();
    paramActivity.getWindow().getDecorView().getWindowVisibleDisplayFrame(localRect);
    int i = localRect.top;
    Logg.i("TAG", i);
    Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1, 0, i, paramActivity.getWindowManager().getDefaultDisplay().getWidth(), paramActivity.getWindowManager().getDefaultDisplay().getHeight() - i);
    localView.destroyDrawingCache();
    return localBitmap2;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.ScreenShot
 * JD-Core Version:    0.6.2
 */