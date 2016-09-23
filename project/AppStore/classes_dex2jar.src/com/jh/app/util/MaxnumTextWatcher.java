package com.jh.app.util;

import android.content.Context;
import android.text.Editable;
import android.text.Selection;
import android.text.TextWatcher;
import android.widget.Toast;

public class MaxnumTextWatcher
  implements TextWatcher
{
  private Context context;
  public int end;
  private int maxnum;
  public int start;

  public MaxnumTextWatcher(int paramInt, Context paramContext)
  {
    this.maxnum = paramInt;
    this.context = paramContext;
  }

  public void afterTextChanged(Editable paramEditable)
  {
    if (paramEditable.length() > this.maxnum);
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
      {
        BaseToast.getInstance(this.context, "最大只能输入" + this.maxnum + "字").show();
        paramEditable.delete(this.start, Math.min(this.start + this.end, paramEditable.length()));
      }
      return;
    }
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    this.start = Math.max(Selection.getSelectionStart(paramCharSequence), 0);
    this.end = paramInt3;
  }

  public int getMaxnum()
  {
    return this.maxnum;
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void setMaxnum(int paramInt)
  {
    this.maxnum = paramInt;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.app.util.MaxnumTextWatcher
 * JD-Core Version:    0.6.2
 */