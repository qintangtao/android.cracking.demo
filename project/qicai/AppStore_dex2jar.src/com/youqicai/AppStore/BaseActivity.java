package com.youqicai.AppStore;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.mycheering.data.DTAgent;

public class BaseActivity extends FragmentActivity
{
  public static final int DO_OTHER = 3;
  protected static final int FAILLOUDING = 1;
  protected static final int LOADING = 0;
  protected static final int LOAD_MORE = 1;
  protected static final int LOAD_REFRESH = 0;
  public static final int SHOW_DATA_LIST = 0;
  public static final int SHOW_DATA_LIST_ALL = 1;
  public static final int SHOW_DATA_LIST_NULL = 2;
  protected static final int SUCCESS = 2;
  protected Context context;
  protected InputMethodManager mInput;

  public void back(View paramView)
  {
    finish();
  }

  public void finish()
  {
    super.finish();
  }

  public void hideSoftInput(EditText paramEditText)
  {
    if ((this.mInput != null) && (this.mInput.isActive()))
      this.mInput.hideSoftInputFromWindow(paramEditText.getWindowToken(), 2);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mInput = ((InputMethodManager)getApplication().getSystemService("input_method"));
    this.context = this;
  }

  protected void onPause()
  {
    super.onPause();
    DTAgent.onPause(this);
  }

  protected void onResume()
  {
    super.onResume();
    DTAgent.onResume(this);
  }

  public void showSoftInput(final EditText paramEditText)
  {
    new Handler().postDelayed(new Runnable()
    {
      public void run()
      {
        paramEditText.requestFocus();
        if (BaseActivity.this.mInput != null)
          BaseActivity.this.mInput.showSoftInput(paramEditText, 0);
      }
    }
    , 700L);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.BaseActivity
 * JD-Core Version:    0.6.2
 */