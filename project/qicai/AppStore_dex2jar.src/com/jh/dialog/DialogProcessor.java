package com.jh.dialog;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import java.util.HashMap;

@SuppressLint({"NewApi"})
public class DialogProcessor
  implements IDialog
{
  private static final String CANCEL_TAG = "CANCELABLE";
  private static final String DEFAULT_DIALOG = "DEFAULT";
  private static final String MESSAGE_TAG = "MESSAGE";
  private static final String TITLE_TAG = "Title";
  private static final int progress = 11112;
  private final String LOADING = "装载中";
  private Activity activity;
  private boolean isDestory = false;
  private String message;
  private HashMap<Integer, DialogInterface.OnClickListener> onOkListeners = new HashMap();
  private ProgressDialog progressDialog;
  private String title = "";

  public DialogProcessor(Activity paramActivity)
  {
    this.activity = paramActivity;
  }

  public void destory()
  {
    hideLoading();
    this.isDestory = true;
  }

  public void dismissDialog1(int paramInt)
  {
    try
    {
      this.activity.dismissDialog(paramInt);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void hideLoading()
  {
    if ((this.progressDialog != null) && (this.progressDialog.isShowing()) && (this.activity != null))
      this.activity.dismissDialog(11112);
  }

  public Dialog onCreateDialog(int paramInt, Bundle paramBundle)
  {
    boolean bool1 = this.isDestory;
    ProgressDialog localProgressDialog = null;
    if (!bool1)
    {
      if (paramInt != 11112)
        break label43;
      this.progressDialog = new ProgressDialog(this.activity);
      localProgressDialog = this.progressDialog;
    }
    label43: boolean bool2;
    do
    {
      do
      {
        return localProgressDialog;
        localProgressDialog = null;
      }
      while (paramBundle == null);
      bool2 = paramBundle.getBoolean("DEFAULT", false);
      localProgressDialog = null;
    }
    while (!bool2);
    return SystemAlertDialog.createDialog(this.activity, "", "", (DialogInterface.OnClickListener)this.onOkListeners.get(Integer.valueOf(paramInt)), null, true);
  }

  public void onPrepareDialog(int paramInt, Dialog paramDialog, Bundle paramBundle)
  {
    if ((paramInt == 11112) && (this.progressDialog != null))
    {
      if (paramBundle != null)
      {
        this.progressDialog.setCancelable(paramBundle.getBoolean("CANCELABLE", true));
        this.progressDialog.setCanceledOnTouchOutside(paramBundle.getBoolean("CANCELABLE", true));
      }
      this.progressDialog.setTitle(this.title);
      this.progressDialog.setMessage(this.message);
    }
    while ((paramBundle == null) || (!paramBundle.getBoolean("DEFAULT", false)))
      return;
    paramDialog.setTitle(paramBundle.getString("Title"));
    ((AlertDialog)paramDialog).setMessage(paramBundle.getString("MESSAGE"));
    ((AlertDialog)paramDialog).setButton(-1, "确定", (DialogInterface.OnClickListener)this.onOkListeners.get(Integer.valueOf(paramInt)));
  }

  @SuppressLint({"NewApi"})
  public void showDialog(int paramInt, String paramString1, String paramString2, DialogInterface.OnClickListener paramOnClickListener)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("Title", paramString1);
    localBundle.putString("MESSAGE", paramString2);
    localBundle.putBoolean("DEFAULT", true);
    this.onOkListeners.put(Integer.valueOf(paramInt), paramOnClickListener);
    this.activity.showDialog(paramInt, localBundle);
  }

  public void showLoading()
  {
    showLoading("装载中", true);
  }

  public void showLoading(int paramInt)
  {
    showLoading(this.activity.getString(paramInt), true);
  }

  public void showLoading(String paramString)
  {
    showLoading(paramString, true);
  }

  public void showLoading(String paramString1, String paramString2)
  {
    showLoading("请稍候", this.message, true);
  }

  public void showLoading(String paramString1, String paramString2, boolean paramBoolean)
  {
    this.title = paramString1;
    this.message = paramString2;
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("CANCELABLE", paramBoolean);
    this.activity.showDialog(11112, localBundle);
  }

  public void showLoading(String paramString, boolean paramBoolean)
  {
    showLoading("请稍候", paramString, paramBoolean);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.dialog.DialogProcessor
 * JD-Core Version:    0.6.2
 */