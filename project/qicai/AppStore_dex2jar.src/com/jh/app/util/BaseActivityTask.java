package com.jh.app.util;

import android.content.Context;

public abstract class BaseActivityTask extends BaseTask
{
  private BaseActivity activity;
  private boolean cancelAtDialogDismiss = true;
  private boolean cancelDialog = false;
  private String loadMes;

  public BaseActivityTask(BaseActivity paramBaseActivity, int paramInt)
  {
    this.activity = paramBaseActivity;
    this.loadMes = paramBaseActivity.getString(paramInt);
  }

  public BaseActivityTask(BaseActivity paramBaseActivity, int paramInt, boolean paramBoolean)
  {
    this(paramBaseActivity, paramInt);
    this.cancelDialog = paramBoolean;
  }

  public BaseActivityTask(BaseActivity paramBaseActivity, String paramString)
  {
    this.activity = paramBaseActivity;
    this.loadMes = paramString;
  }

  public BaseActivityTask(BaseActivity paramBaseActivity, String paramString, boolean paramBoolean)
  {
    this(paramBaseActivity, paramString);
    this.cancelDialog = paramBoolean;
  }

  public void cancel()
  {
    super.cancel();
    this.activity.hideLoading();
  }

  public void fail(String paramString)
  {
    super.fail(paramString);
    this.activity.hideLoading();
    this.activity.showToast(paramString);
  }

  public BaseActivity getActivity()
  {
    return this.activity;
  }

  public Context getContext()
  {
    return this.activity;
  }

  public boolean isCancelAtDialogDismiss()
  {
    return this.cancelAtDialogDismiss;
  }

  public void prepareTask(Void[] paramArrayOfVoid)
  {
    super.prepareTask(paramArrayOfVoid);
    this.activity.setCurrentTask(this);
    if (this.loadMes != null)
      this.activity.showLoading(this.loadMes, this.cancelDialog);
  }

  public void setCancelAtDialogDismiss(boolean paramBoolean)
  {
    this.cancelAtDialogDismiss = paramBoolean;
  }

  public void success()
  {
    super.success();
    this.activity.hideLoading();
  }

  public String toString()
  {
    return this.loadMes;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.app.util.BaseActivityTask
 * JD-Core Version:    0.6.2
 */