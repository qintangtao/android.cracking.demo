package com.jh.app.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.view.WindowManager.BadTokenException;
import android.widget.Toast;
import com.jh.dialog.DialogProcessor;
import com.jh.dialog.IDialog;
import com.jh.net.RemoteTask;
import com.jh.util.LogUtil;
import java.util.HashMap;
import java.util.List;

public abstract class BaseActivity extends Activity
  implements IRemoteRequest, IDialog
{
  private static final String CancelDialog = "cancelDialog";
  private static final int RETAIN_NUM = 100;
  private static final int SHOW_MULTIPLESELECT = 2;
  private static final int SHOW_SINGLESELECT = 1;
  private BackPressListener backPress;
  private boolean cancelTask = true;
  private BaseTask currentTask;
  private DialogProcessor dialogProcessor;
  private ConcurrenceExcutor excutor;
  private boolean isDestory = false;
  private String[] items;
  private LogUtil log;
  private int maxThread = 10;
  private String message;
  private ProgressDialog progressDialog;
  private ShowDialog showDialog;
  private DialogInterface.OnClickListener singleSelect;
  private String title;
  private Toast toast;

  private void initLog()
  {
    try
    {
      if (this.log == null)
        this.log = LogUtil.newInstance(this, getClass().getName());
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void superBackPressed()
  {
    super.onBackPressed();
  }

  public void dismissDialog1(int paramInt)
  {
    this.dialogProcessor.dismissDialog1(paramInt);
  }

  public void excuteTask(BaseTask paramBaseTask)
  {
    if (this.excutor == null)
      this.excutor = new ConcurrenceExcutor(this.maxThread);
    this.excutor.addTaskFirst(paramBaseTask);
  }

  public boolean executeExclude(BaseTask paramBaseTask)
  {
    try
    {
      if (this.excutor != null)
      {
        boolean bool2 = this.excutor.hasTask(paramBaseTask);
        if (!bool2);
      }
      for (boolean bool1 = false; ; bool1 = true)
      {
        return bool1;
        excuteTask(paramBaseTask);
      }
    }
    finally
    {
    }
  }

  public void executeTaskIfNotExist(BaseTask paramBaseTask)
  {
    this.excutor.executeTaskIfNotExist(paramBaseTask);
  }

  public void finish()
  {
    this.isDestory = true;
    this.dialogProcessor.destory();
    super.finish();
  }

  public BaseTask getCurrentTask()
  {
    return this.currentTask;
  }

  public ProgressDialog getProgressDialog()
  {
    return this.progressDialog;
  }

  public void hideLoading()
  {
    this.dialogProcessor.hideLoading();
  }

  public void hideToast()
  {
    if (this.toast != null)
      this.toast.cancel();
  }

  public void init()
  {
  }

  public boolean isCancelTask()
  {
    return this.cancelTask;
  }

  public boolean isDestory()
  {
    return this.isDestory;
  }

  public void logError(String paramString)
  {
    initLog();
    this.log.error(paramString);
  }

  public void logInfo(String paramString)
  {
    initLog();
    this.log.info(paramString);
  }

  public void logWarn(String paramString)
  {
    initLog();
    this.log.warn(paramString);
  }

  public void onBackPressed()
  {
    if (this.backPress != null)
    {
      this.backPress.press(this);
      return;
    }
    superBackPressed();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.dialogProcessor = new DialogProcessor(this);
  }

  protected Dialog onCreateDialog(int paramInt, Bundle paramBundle)
  {
    if (!this.isDestory)
    {
      Dialog localDialog = this.dialogProcessor.onCreateDialog(paramInt, paramBundle);
      if (localDialog != null)
        return localDialog;
      if (paramInt == 1)
        return new AlertDialog.Builder(this).setTitle(this.title).setItems(this.items, this.singleSelect).create();
      BaseToast.getInstance(this, "不能建立Id小于100的对话框");
    }
    return super.onCreateDialog(paramInt);
  }

  protected void onDestroy()
  {
    this.isDestory = true;
    this.dialogProcessor.destory();
    if (this.excutor != null)
      this.excutor.exit(this);
    super.onDestroy();
  }

  @SuppressLint({"NewApi"})
  protected void onPrepareDialog(int paramInt, Dialog paramDialog, Bundle paramBundle)
  {
    super.onPrepareDialog(paramInt, paramDialog, paramBundle);
    this.dialogProcessor.onPrepareDialog(paramInt, paramDialog, paramBundle);
  }

  public void removeTask(BaseTask paramBaseTask)
  {
    if (this.excutor == null)
      return;
    this.excutor.removeTask(paramBaseTask);
  }

  public <T> void request(String paramString, Object paramObject, IResultCallBack<T> paramIResultCallBack, Class<T> paramClass)
  {
    request(paramString, null, paramObject, paramIResultCallBack, paramClass);
  }

  public <T> void request(String paramString, HashMap<String, String> paramHashMap, Object paramObject, IResultCallBack<T> paramIResultCallBack, Class<T> paramClass)
  {
    excuteTask(new RemoteTask(paramString, paramHashMap, paramObject, paramIResultCallBack, paramClass));
  }

  public void setBackPressListener(BackPressListener paramBackPressListener)
  {
    this.backPress = paramBackPressListener;
  }

  public void setCancelTask(boolean paramBoolean)
  {
    this.cancelTask = paramBoolean;
  }

  public void setCurrentTask(BaseTask paramBaseTask)
  {
    this.currentTask = paramBaseTask;
  }

  public void setDestory(boolean paramBoolean)
  {
    this.isDestory = paramBoolean;
  }

  public void setMaxThread(int paramInt)
  {
    this.maxThread = paramInt;
  }

  public void setShowDialog(ShowDialog paramShowDialog)
  {
    this.showDialog = paramShowDialog;
  }

  public void showDialog(int paramInt, String paramString1, String paramString2, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.dialogProcessor.showDialog(paramInt, paramString1, paramString2, paramOnClickListener);
  }

  public void showDialog1(int paramInt)
  {
    if (!isDestory());
    try
    {
      showDialog(paramInt);
      return;
    }
    catch (WindowManager.BadTokenException localBadTokenException)
    {
    }
  }

  @SuppressLint({"NewApi"})
  public boolean showDialog1(int paramInt, Bundle paramBundle)
  {
    if (!isDestory())
      try
      {
        boolean bool = showDialog(paramInt, paramBundle);
        return bool;
      }
      catch (WindowManager.BadTokenException localBadTokenException)
      {
      }
    return false;
  }

  public void showLoading()
  {
    this.dialogProcessor.showLoading();
  }

  public void showLoading(int paramInt)
  {
    this.dialogProcessor.showLoading(paramInt);
  }

  public void showLoading(String paramString)
  {
    this.dialogProcessor.showLoading(paramString);
  }

  public void showLoading(String paramString1, String paramString2)
  {
    this.dialogProcessor.showLoading(paramString1, paramString2);
  }

  @SuppressLint({"NewApi"})
  public void showLoading(String paramString1, String paramString2, boolean paramBoolean)
  {
    this.dialogProcessor.showLoading(paramString1, paramString2, paramBoolean);
  }

  public void showLoading(String paramString, boolean paramBoolean)
  {
    this.dialogProcessor.showLoading(paramString, paramBoolean);
  }

  public void showSingleSelectDialog(String paramString, List<String> paramList, DialogInterface.OnClickListener paramOnClickListener)
  {
    showDialog(1);
    if (paramList != null)
      this.items = ((String[])paramList.toArray());
    this.singleSelect = paramOnClickListener;
    this.title = paramString;
  }

  public void showToast(int paramInt)
  {
    showToast(getString(paramInt));
  }

  public void showToast(String paramString)
  {
    this.toast = BaseToast.getInstance(this, paramString);
    this.toast.show();
  }

  public void startActivity(Class paramClass)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this, paramClass);
    startActivity(localIntent);
  }

  public static abstract interface BackPressListener
  {
    public abstract void press(Activity paramActivity);
  }

  public static abstract interface ShowDialog
  {
    public abstract Dialog onCreateDialog(int paramInt);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.app.util.BaseActivity
 * JD-Core Version:    0.6.2
 */