package com.mycheering.data;

import android.content.Context;
import android.os.Process;
import java.io.PrintWriter;
import java.io.StringWriter;
import org.json.JSONObject;

public class CrashHandler
  implements Thread.UncaughtExceptionHandler
{
  private static CrashHandler myCrashHandler;
  private Context context;
  private PreferencesHelper dbHelper;

  private String getErrorInfo(Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
    paramThrowable.printStackTrace(localPrintWriter);
    localPrintWriter.close();
    return localStringWriter.toString();
  }

  public static CrashHandler getInstance()
  {
    try
    {
      if (myCrashHandler != null);
      for (CrashHandler localCrashHandler = myCrashHandler; ; localCrashHandler = myCrashHandler)
      {
        return localCrashHandler;
        myCrashHandler = new CrashHandler();
      }
    }
    finally
    {
    }
  }

  public boolean filterError()
  {
    if (this.dbHelper.sessionCountOverFlow(false));
    while (!this.dbHelper.reportEnable())
      return false;
    return this.dbHelper.isError();
  }

  public void init(Context paramContext)
  {
    this.context = paramContext;
    this.dbHelper = PreferencesHelper.getInstance(this.context);
  }

  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    this.dbHelper.setAppExitTime(System.currentTimeMillis() / 1000L);
    paramThrowable.printStackTrace();
    String str1 = "";
    String str2 = getErrorInfo(paramThrowable);
    if (str2.contains("Caused by:"))
    {
      String[] arrayOfString = str2.substring(str2.indexOf("Caused by:")).split("\n\t");
      if (arrayOfString.length >= 1)
        str1 = arrayOfString[0];
    }
    try
    {
      if (filterError())
      {
        JSONObject localJSONObject = DTManager.getHeaderJSON(DTConfig.MT_ERROR);
        localJSONObject.put("err", str1 + str2);
        localJSONObject.put("ert", 2);
        MessageUtils.insertCrashMsg(this.context, localJSONObject.toString());
      }
      label132: Process.killProcess(Process.myPid());
      return;
    }
    catch (Exception localException)
    {
      break label132;
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.mycheering.data.CrashHandler
 * JD-Core Version:    0.6.2
 */