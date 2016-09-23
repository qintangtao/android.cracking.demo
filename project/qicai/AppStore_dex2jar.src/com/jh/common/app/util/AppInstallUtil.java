package com.jh.common.app.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import com.jh.app.util.BaseToast;
import com.jh.common.app.application.AppSystem;
import java.io.File;

public class AppInstallUtil
{
  public static void installApp(Context paramContext, String paramString)
  {
    if (paramContext == null)
    {
      paramContext = AppSystem.getInstance().getContext();
      if (paramContext != null);
    }
    while (paramString == null)
      return;
    try
    {
      String str = Uri.parse(paramString).getSchemeSpecificPart();
      paramString = str;
      File localFile = new File(paramString);
      if ((localFile != null) && (localFile.exists()))
      {
        Intent localIntent = new Intent();
        localIntent.setAction("android.intent.action.VIEW");
        localIntent.addFlags(268435456);
        localIntent.setDataAndType(Uri.fromFile(localFile), "application/vnd.android.package-archive");
        paramContext.startActivity(localIntent);
        return;
      }
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
      BaseToast.getInstance(paramContext, "文件不存在").show();
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.common.app.util.AppInstallUtil
 * JD-Core Version:    0.6.2
 */