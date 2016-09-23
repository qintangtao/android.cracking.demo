package com.youqicai.AppStore.utils;

import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.text.Html;
import android.text.TextUtils;

public class DialogHelp
{
  public static AlertDialog.Builder getConfirmDialog(Context paramContext, String paramString, DialogInterface.OnClickListener paramOnClickListener)
  {
    AlertDialog.Builder localBuilder = getDialog(paramContext);
    localBuilder.setMessage(Html.fromHtml(paramString));
    localBuilder.setPositiveButton("确定", paramOnClickListener);
    localBuilder.setNegativeButton("取消", null);
    return localBuilder;
  }

  public static AlertDialog.Builder getConfirmDialog(Context paramContext, String paramString, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    AlertDialog.Builder localBuilder = getDialog(paramContext);
    localBuilder.setMessage(paramString);
    localBuilder.setPositiveButton("确定", paramOnClickListener1);
    localBuilder.setNegativeButton("取消", paramOnClickListener2);
    return localBuilder;
  }

  public static AlertDialog.Builder getDialog(Context paramContext)
  {
    return new AlertDialog.Builder(paramContext);
  }

  public static AlertDialog.Builder getMessageDialog(Context paramContext, String paramString)
  {
    return getMessageDialog(paramContext, paramString, null);
  }

  public static AlertDialog.Builder getMessageDialog(Context paramContext, String paramString, DialogInterface.OnClickListener paramOnClickListener)
  {
    AlertDialog.Builder localBuilder = getDialog(paramContext);
    localBuilder.setMessage(paramString);
    localBuilder.setPositiveButton("确定", paramOnClickListener);
    return localBuilder;
  }

  public static AlertDialog.Builder getSelectDialog(Context paramContext, String paramString, String[] paramArrayOfString, DialogInterface.OnClickListener paramOnClickListener)
  {
    AlertDialog.Builder localBuilder = getDialog(paramContext);
    localBuilder.setItems(paramArrayOfString, paramOnClickListener);
    if (!TextUtils.isEmpty(paramString))
      localBuilder.setTitle(paramString);
    localBuilder.setPositiveButton("取消", null);
    return localBuilder;
  }

  public static AlertDialog.Builder getSelectDialog(Context paramContext, String[] paramArrayOfString, DialogInterface.OnClickListener paramOnClickListener)
  {
    return getSelectDialog(paramContext, "", paramArrayOfString, paramOnClickListener);
  }

  public static AlertDialog.Builder getSingleChoiceDialog(Context paramContext, String paramString, String[] paramArrayOfString, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    AlertDialog.Builder localBuilder = getDialog(paramContext);
    localBuilder.setSingleChoiceItems(paramArrayOfString, paramInt, paramOnClickListener);
    if (!TextUtils.isEmpty(paramString))
      localBuilder.setTitle(paramString);
    localBuilder.setNegativeButton("取消", null);
    return localBuilder;
  }

  public static AlertDialog.Builder getSingleChoiceDialog(Context paramContext, String[] paramArrayOfString, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    return getSingleChoiceDialog(paramContext, "", paramArrayOfString, paramInt, paramOnClickListener);
  }

  public static ProgressDialog getWaitDialog(Context paramContext, String paramString)
  {
    ProgressDialog localProgressDialog = new ProgressDialog(paramContext);
    if (!TextUtils.isEmpty(paramString))
      localProgressDialog.setMessage(paramString);
    return localProgressDialog;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.utils.DialogHelp
 * JD-Core Version:    0.6.2
 */