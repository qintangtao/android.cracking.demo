package com.youqicai.AppStore.utils;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.lang.ref.WeakReference;

public class UpdateDialog
  implements View.OnClickListener
{
  private static WeakReference<Dialog> lastDialogRef;
  private Dialog alertDialog;
  private DialogCallBack callBack;
  private Button cancel;
  private Button confirm;
  private View contentView;
  private ImageView icon;
  private LinearLayout ll_content;
  private TextView title;

  public UpdateDialog(Context paramContext)
  {
    View localView = LayoutInflater.from(paramContext).inflate(2130903099, null);
    this.alertDialog = new Dialog(paramContext, 2131427348);
    this.alertDialog.setCanceledOnTouchOutside(true);
    this.alertDialog.setContentView(localView);
    this.confirm = ((Button)localView.findViewById(2131099873));
    this.cancel = ((Button)localView.findViewById(2131099872));
    this.confirm.setOnClickListener(this);
    this.cancel.setOnClickListener(this);
    this.icon = ((ImageView)localView.findViewById(2131099869));
    this.title = ((TextView)localView.findViewById(2131099870));
    this.ll_content = ((LinearLayout)localView.findViewById(2131099871));
    lastDialogRef = new WeakReference(this.alertDialog);
  }

  public static boolean hasDialogShow()
  {
    if (lastDialogRef != null)
    {
      Dialog localDialog = (Dialog)lastDialogRef.get();
      if (localDialog != null)
        return localDialog.isShowing();
    }
    return false;
  }

  public void close()
  {
    this.alertDialog.dismiss();
  }

  public View getContentView()
  {
    return this.contentView;
  }

  public void init(int paramInt, String paramString, View paramView, DialogCallBack paramDialogCallBack)
  {
    if (paramInt == 0)
      this.icon.setVisibility(8);
    while (true)
    {
      this.title.setText(paramString);
      setContentTextView(paramView);
      this.callBack = paramDialogCallBack;
      return;
      this.icon.setImageResource(paramInt);
    }
  }

  public boolean isShowing()
  {
    return this.alertDialog.isShowing();
  }

  public void onClick(View paramView)
  {
    int i = paramView.getId();
    if (i == 2131099873)
      if (this.callBack != null)
        this.callBack.confirm(this);
    while ((i != 2131099872) || (this.callBack == null))
      return;
    this.callBack.cancel(this);
  }

  public void setCallBack(DialogCallBack paramDialogCallBack)
  {
    this.callBack = paramDialogCallBack;
  }

  public void setCancelEnabled(boolean paramBoolean)
  {
    this.cancel.setEnabled(paramBoolean);
    if (!paramBoolean)
    {
      this.cancel.setVisibility(8);
      return;
    }
    this.cancel.setVisibility(0);
  }

  public void setCancelLabel(String paramString)
  {
    this.cancel.setText(paramString);
  }

  public void setCancelable(boolean paramBoolean)
  {
    try
    {
      this.alertDialog.setCancelable(paramBoolean);
      return;
    }
    catch (Throwable localThrowable)
    {
    }
  }

  public void setConfirmEnabled(boolean paramBoolean)
  {
    this.confirm.setEnabled(paramBoolean);
    if (!paramBoolean)
    {
      this.confirm.setVisibility(8);
      return;
    }
    this.confirm.setVisibility(0);
  }

  public void setConfirmLabel(String paramString)
  {
    this.confirm.setText(paramString);
  }

  public void setContentTextView(View paramView)
  {
    this.ll_content.removeAllViews();
    this.ll_content.addView(paramView);
    this.contentView = paramView;
  }

  public void setIcon(int paramInt)
  {
    this.icon.setImageResource(paramInt);
  }

  public void setTitle(String paramString)
  {
    this.title.setText(paramString);
  }

  public void show()
  {
    try
    {
      this.alertDialog.show();
      return;
    }
    catch (Throwable localThrowable)
    {
    }
  }

  public static abstract interface DialogCallBack
  {
    public abstract void cancel(UpdateDialog paramUpdateDialog);

    public abstract void confirm(UpdateDialog paramUpdateDialog);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.utils.UpdateDialog
 * JD-Core Version:    0.6.2
 */