package com.jh.dialog;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.LinearLayout.LayoutParams;

public class SystemAlertDialog
{
  private Dialog dialog;

  public static Dialog createDialog(Context paramContext, String paramString1, String paramString2, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2, boolean paramBoolean)
  {
    return createDialogWidthLayout(paramContext, paramString1, paramString2, paramOnClickListener1, paramOnClickListener2, paramBoolean, "", "", null, -1);
  }

  @SuppressLint({"NewApi"})
  public static Dialog createDialogWidthLayout(Context paramContext, String paramString1, String paramString2, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2, boolean paramBoolean, String paramString3, String paramString4, View paramView, int paramInt)
  {
    if (paramView != null)
    {
      Dialog localDialog = new Dialog(paramContext, paramInt);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
      localLayoutParams.leftMargin = 20;
      localLayoutParams.rightMargin = 20;
      localLayoutParams.topMargin = 20;
      localLayoutParams.bottomMargin = 20;
      localDialog.addContentView(paramView, localLayoutParams);
      if ((paramBoolean) && (paramOnClickListener2 == null))
        new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            paramAnonymousDialogInterface.dismiss();
          }
        };
      localDialog.setCancelable(paramBoolean);
      localDialog.setCanceledOnTouchOutside(false);
      return localDialog;
    }
    if ((paramBoolean) && (paramOnClickListener2 == null))
      paramOnClickListener2 = new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
        }
      };
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    localBuilder.setTitle(paramString1);
    localBuilder.setCancelable(paramBoolean);
    localBuilder.setMessage(paramString2);
    if (paramBoolean)
    {
      if (TextUtils.isEmpty(paramString4))
        paramString4 = paramContext.getString(17039360);
      localBuilder.setNegativeButton(paramString4, paramOnClickListener2);
    }
    if (TextUtils.isEmpty(paramString3))
      paramString3 = paramContext.getString(17039370);
    localBuilder.setPositiveButton(paramString3, paramOnClickListener1);
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    return localAlertDialog;
  }

  private void setDialog(Dialog paramDialog)
  {
    this.dialog = paramDialog;
  }

  public static SystemAlertDialog showSystemDialog(Context paramContext, String paramString1, String paramString2, DialogInterface.OnClickListener paramOnClickListener)
  {
    return showSystemDialog(paramContext, paramString1, paramString2, paramOnClickListener, true);
  }

  public static SystemAlertDialog showSystemDialog(Context paramContext, String paramString1, String paramString2, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    return showSystemDialog(paramContext, paramString1, paramString2, paramOnClickListener1, paramOnClickListener2, true);
  }

  public static SystemAlertDialog showSystemDialog(Context paramContext, String paramString1, String paramString2, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2, boolean paramBoolean)
  {
    SystemAlertDialog localSystemAlertDialog = new SystemAlertDialog();
    Dialog localDialog = createDialog(paramContext, paramString1, paramString2, paramOnClickListener1, paramOnClickListener2, paramBoolean);
    localSystemAlertDialog.setDialog(localDialog);
    localDialog.getWindow().setType(2003);
    localDialog.setCanceledOnTouchOutside(false);
    localDialog.show();
    return localSystemAlertDialog;
  }

  public static SystemAlertDialog showSystemDialog(Context paramContext, String paramString1, String paramString2, DialogInterface.OnClickListener paramOnClickListener, boolean paramBoolean)
  {
    return showSystemDialog(paramContext, paramString1, paramString2, paramOnClickListener, null, paramBoolean);
  }

  public static SystemAlertDialog showSystemDialogWidthLayout(Context paramContext, String paramString1, String paramString2, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2, boolean paramBoolean, String paramString3, String paramString4, View paramView, int paramInt)
  {
    SystemAlertDialog localSystemAlertDialog = new SystemAlertDialog();
    Dialog localDialog = createDialogWidthLayout(paramContext, paramString1, paramString2, paramOnClickListener1, paramOnClickListener2, paramBoolean, paramString3, paramString4, paramView, paramInt);
    localSystemAlertDialog.setDialog(localDialog);
    localDialog.getWindow().setType(2003);
    localDialog.setCanceledOnTouchOutside(false);
    localDialog.show();
    Window localWindow = localDialog.getWindow();
    WindowManager.LayoutParams localLayoutParams = localWindow.getAttributes();
    localWindow.setGravity(17);
    localLayoutParams.width = ((int)(0.85D * paramContext.getResources().getDisplayMetrics().widthPixels));
    localLayoutParams.height = ((int)(0.7D * paramContext.getResources().getDisplayMetrics().heightPixels));
    localWindow.setAttributes(localLayoutParams);
    return localSystemAlertDialog;
  }

  public Dialog getDialog()
  {
    return this.dialog;
  }

  public boolean isShowing()
  {
    return (this.dialog != null) && (this.dialog.isShowing());
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.dialog.SystemAlertDialog
 * JD-Core Version:    0.6.2
 */