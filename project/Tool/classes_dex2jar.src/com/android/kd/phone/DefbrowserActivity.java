package com.android.kd.phone;

import android.app.Activity;
import android.app.KeyguardManager;
import android.app.KeyguardManager.KeyguardLock;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import com.android.kd.server.FWService;
import com.android.utils.AppManager;
import com.google.kd.utils.LogUtils;

public class DefbrowserActivity extends Activity
  implements View.OnClickListener
{
  public static final String BAIDU_PKG = "com.baidu.browser.apps";
  public static final int Msg_Show = 100;
  public static final String QQ_PKG = "com.tencent.mtt";
  public static DefbrowserActivity instance;
  boolean isRunServer = true;
  private Context mContext;
  Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default:
      case 100:
      }
      do
        return;
      while (DefbrowserActivity.this.tv_show == null);
      ((String)paramAnonymousMessage.obj);
      DefbrowserActivity.this.tv_show.setText("");
      DefbrowserActivity.this.tv_show.setText(DefbrowserActivity.this.tv_show.toString());
    }
  };
  private TextView tv_show;

  private void getPhoneInfo()
  {
    String str = PhoneHelper.getPhoneInfo(this.mContext);
    Message localMessage = new Message();
    localMessage.what = 100;
    if (str.equals(""))
      str = "null";
    localMessage.obj = str;
    this.mHandler.sendMessage(localMessage);
  }

  private void registerReceiver()
  {
  }

  private void startServer()
  {
    startService(new Intent(this, FWService.class));
  }

  public void finish()
  {
    super.finish();
    instance = null;
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131230721:
      Intent localIntent3 = new Intent("android.intent.action.VIEW");
      localIntent3.setData(Uri.parse("http://www.baidu.com"));
      startActivity(localIntent3);
      return;
    case 2131230723:
      Intent localIntent2 = new Intent(this, FWService.class);
      localIntent2.putExtra("operation", 600);
      startService(localIntent2);
      LogUtils.d("wyy", "----bt_open---");
      return;
    case 2131230724:
      Intent localIntent1 = new Intent(this, FWService.class);
      localIntent1.putExtra("operation", 101);
      startService(localIntent1);
      LogUtils.d("wyy", "----bt_remove---");
      return;
    case 2131230722:
      new Thread(new Runnable()
      {
        public void run()
        {
          DefbrowserActivity.this.startServer();
        }
      }).start();
      return;
    case 2131230720:
    }
    getPhoneInfo();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mContext = getApplicationContext();
    LogUtils.d("wyy", "-DefbrowserActivity-onCreate-");
    getWindow().addFlags(128);
    if (AppManager.isStop(this.mContext))
    {
      Log.e("wyy", "--isStopStart-!!");
      finish();
    }
    Display localDisplay = getWindowManager().getDefaultDisplay();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    localDisplay.getMetrics(localDisplayMetrics);
    float f1 = localDisplayMetrics.widthPixels;
    float f2 = localDisplayMetrics.heightPixels;
    com.android.utils.Commems.width = (int)f1;
    com.android.utils.Commems.height = (int)f2;
    if (instance == null)
      instance = this;
    ((KeyguardManager)getSystemService("keyguard")).newKeyguardLock("").disableKeyguard();
    getWindow().setFlags(128, 128);
    PowerManager localPowerManager = (PowerManager)getSystemService("power");
    localPowerManager.newWakeLock(268435482, "").acquire();
    localPowerManager.newWakeLock(6, "cn").acquire();
    setContentView(2130903040);
    findViewById(2131230721).setOnClickListener(this);
    findViewById(2131230723).setOnClickListener(this);
    findViewById(2131230724).setOnClickListener(this);
    findViewById(2131230720).setOnClickListener(this);
    findViewById(2131230721).setVisibility(0);
    findViewById(2131230722).setVisibility(0);
    findViewById(2131230723).setVisibility(0);
    findViewById(2131230724).setVisibility(0);
    findViewById(2131230720).setVisibility(0);
    PhoneHelper.getPhoneInfo(this.mContext);
    if (this.isRunServer)
    {
      registerReceiver();
      finish();
      startServer();
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131165184, paramMenu);
    return true;
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131230732)
      return true;
    return super.onOptionsItemSelected(paramMenuItem);
  }

  protected void onRestart()
  {
    super.onRestart();
    registerReceiver();
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\Tool\classes_dex2jar.jar
 * Qualified Name:     com.android.kd.phone.DefbrowserActivity
 * JD-Core Version:    0.6.2
 */