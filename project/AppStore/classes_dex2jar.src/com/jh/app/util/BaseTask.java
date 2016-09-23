package com.jh.app.util;

import android.content.Context;
import com.jh.exception.JHException;

public abstract class BaseTask
{
  private static final int FINISH = 3;
  private static final int PROCESS = 1;
  private static final int WAIT;
  private boolean cancelFlag = false;
  private ITaskCancel cancelListener;
  private String errorMessage;
  private JHException exception;
  private int status = 0;
  private boolean successFlag = false;

  private void setFinishStatus()
  {
    this.status = 3;
  }

  public void cancel()
  {
    if (this.cancelListener != null)
      this.cancelListener.cancel(this);
  }

  public void cancelTask()
  {
    this.cancelFlag = true;
  }

  public abstract void doTask()
    throws JHException;

  public void fail(JHException paramJHException)
  {
    if (paramJHException != null)
    {
      fail(paramJHException.getMessage());
      return;
    }
    fail("");
  }

  public void fail(String paramString)
  {
    setFinishStatus();
  }

  ITaskCancel getCancelListener()
  {
    return this.cancelListener;
  }

  public Context getContext()
  {
    return null;
  }

  public String getErrorMessage()
  {
    return this.errorMessage;
  }

  public JHException getException()
  {
    return this.exception;
  }

  public boolean hasFinish()
  {
    return this.status == 3;
  }

  public boolean isCancel()
  {
    return this.cancelFlag;
  }

  public boolean isCancelAtDialogDismiss()
  {
    return false;
  }

  public boolean isSuccess()
  {
    return this.successFlag;
  }

  public void prepareTask(Void[] paramArrayOfVoid)
  {
    this.status = 1;
  }

  public void resetTask()
  {
    this.status = 0;
  }

  void setCancelListener(ITaskCancel paramITaskCancel)
  {
    this.cancelListener = paramITaskCancel;
  }

  public void setErrorMessage(String paramString)
  {
    this.errorMessage = paramString;
  }

  public void setException(JHException paramJHException)
  {
    this.exception = paramJHException;
  }

  public void setSuccessFlag(boolean paramBoolean)
  {
    setFinishStatus();
    this.successFlag = paramBoolean;
  }

  public void success()
  {
    setFinishStatus();
  }

  public static abstract interface ITaskCancel
  {
    public abstract void cancel(BaseTask paramBaseTask);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.app.util.BaseTask
 * JD-Core Version:    0.6.2
 */