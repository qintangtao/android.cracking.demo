package com.jh.dialog;

import android.content.DialogInterface.OnClickListener;

public abstract interface IDialog
{
  public abstract void dismissDialog1(int paramInt);

  public abstract void hideLoading();

  public abstract void showDialog(int paramInt, String paramString1, String paramString2, DialogInterface.OnClickListener paramOnClickListener);

  public abstract void showLoading();

  public abstract void showLoading(int paramInt);

  public abstract void showLoading(String paramString);

  public abstract void showLoading(String paramString1, String paramString2);

  public abstract void showLoading(String paramString1, String paramString2, boolean paramBoolean);

  public abstract void showLoading(String paramString, boolean paramBoolean);
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.dialog.IDialog
 * JD-Core Version:    0.6.2
 */