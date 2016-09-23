package com.youqicai.speed;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.nineoldandroids.view.ViewHelper;
import com.youqicai.AppStore.service.HandleService;
import com.youqicai.AppStore.service.MonitorService;
import com.youqicai.PhoneHelper.PreferencesHelper;
import java.math.BigDecimal;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

public class FSafeShortcutActivity extends Activity
  implements View.OnClickListener
{
  private View animation;
  private ImageView bg;
  private ImageView circle;
  private Direction direct;
  private boolean direction = false;
  private int index = 0;
  private boolean isCanClean = false;
  private boolean isClean = false;
  private boolean isKilling = false;
  private boolean isNoclean = false;
  private View item;
  private View layout_progress;
  private ImageView light;
  private int mDelay = this.mDuration;
  private int mDuration = 100;
  private Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      case 12:
      default:
        return;
      case 0:
        FSafeShortcutActivity.this.startView.stop();
        FSafeShortcutActivity.this.startView.setVisibility(4);
        FSafeShortcutActivity.this.circle.setVisibility(4);
        FSafeShortcutActivity.this.startUI_CircleAnimation();
        return;
      case 1:
        if (FSafeShortcutActivity.this.index < 2)
          FSafeShortcutActivity.access$1302(FSafeShortcutActivity.this, 100);
        while (true)
        {
          FSafeShortcutActivity.access$1402(FSafeShortcutActivity.this, FSafeShortcutActivity.this.mDuration);
          if (FSafeShortcutActivity.this.index >= FSafeShortcutActivity.this.resCircle.length)
            FSafeShortcutActivity.access$802(FSafeShortcutActivity.this, -1 + FSafeShortcutActivity.this.resCircle.length);
          if (FSafeShortcutActivity.this.index == -1 + FSafeShortcutActivity.this.resCircle.length)
            FSafeShortcutActivity.this.killProcress();
          if (!FSafeShortcutActivity.this.direction)
            FSafeShortcutActivity.this.progress.setText((int)(1.0F * FSafeShortcutActivity.this.preSize * (1.0F * (-1 + (FSafeShortcutActivity.this.resCircle.length - FSafeShortcutActivity.this.index)) / FSafeShortcutActivity.this.resCircle.length)) + "%");
          FSafeShortcutActivity.this.start.setImageResource(FSafeShortcutActivity.this.resCircle[FSafeShortcutActivity.this.index]);
          return;
          FSafeShortcutActivity.access$1302(FSafeShortcutActivity.this, 50);
        }
      case 2:
        if (FSafeShortcutActivity.this.timer != null)
          FSafeShortcutActivity.this.timer.cancel();
        FSafeShortcutActivity.access$1902(FSafeShortcutActivity.this, null);
        FSafeShortcutActivity.access$2002(FSafeShortcutActivity.this, false);
        FSafeShortcutActivity.this.start.clearAnimation();
        FSafeShortcutActivity.this.start.setVisibility(4);
        FSafeShortcutActivity.this.startView.reSet();
        FSafeShortcutActivity.this.startView.setVisibility(0);
        FSafeShortcutActivity.this.circle.setVisibility(0);
        return;
      case 3:
        FSafeShortcutActivity.access$2102(FSafeShortcutActivity.this, true);
        FSafeShortcutActivity.access$2202(FSafeShortcutActivity.this, 0);
        FSafeShortcutActivity localFSafeShortcutActivity = FSafeShortcutActivity.this;
        if (paramAnonymousMessage.arg1 >= FSafeShortcutActivity.this.preSize);
        for (int i = -8 + FSafeShortcutActivity.this.preSize; ; i = paramAnonymousMessage.arg1)
        {
          FSafeShortcutActivity.access$2302(localFSafeShortcutActivity, i);
          int j = 550 / FSafeShortcutActivity.this.nowSize;
          if (FSafeShortcutActivity.this.timer2 == null)
            FSafeShortcutActivity.access$2402(FSafeShortcutActivity.this, new Timer());
          FSafeShortcutActivity.this.timer2.schedule(new TimerTask()
          {
            public void run()
            {
              if (FSafeShortcutActivity.this.tPreSize < FSafeShortcutActivity.this.nowSize)
              {
                FSafeShortcutActivity.access$2208(FSafeShortcutActivity.this);
                Message localMessage2 = new Message();
                localMessage2.what = 4;
                FSafeShortcutActivity.this.mHandler.sendMessage(localMessage2);
                return;
              }
              cancel();
              Message localMessage1 = new Message();
              localMessage1.what = 5;
              FSafeShortcutActivity.this.mHandler.sendMessage(localMessage1);
            }
          }
          , 0L, j);
          FSafeShortcutActivity.this.startUI_Water_KilledAnimation();
          return;
        }
      case 4:
        FSafeShortcutActivity.this.progress.setText(FSafeShortcutActivity.this.tPreSize + "%");
        return;
      case 5:
        if (FSafeShortcutActivity.this.timer2 != null)
        {
          FSafeShortcutActivity.this.timer2.cancel();
          FSafeShortcutActivity.access$2402(FSafeShortcutActivity.this, null);
        }
        FSafeShortcutActivity.this.progress.setText(FSafeShortcutActivity.this.nowSize + "%");
        FSafeShortcutActivity.this.mHandler.sendEmptyMessageDelayed(10, 1000L);
        return;
      case 6:
        FSafeShortcutActivity.this.light.setImageResource(2130837616);
        FSafeShortcutActivity.this.mHandler.sendEmptyMessageDelayed(7, 100L);
        return;
      case 7:
        FSafeShortcutActivity.this.light.setImageResource(2130837617);
        return;
      case 8:
        FSafeShortcutActivity.this.animation.setVisibility(8);
        FSafeShortcutActivity.this.bg.clearAnimation();
        FSafeShortcutActivity.this.mainview.removeView(FSafeShortcutActivity.this.animation);
        FSafeShortcutActivity.this.showMsg(FSafeShortcutActivity.this.nowAcSize - FSafeShortcutActivity.this.preAcSize);
        FSafeShortcutActivity.this.mHandler.sendEmptyMessageDelayed(9, 3000L);
        return;
      case 9:
        FSafeShortcutActivity.this.doFinish();
        return;
      case 10:
        FSafeShortcutActivity.this.startUI_TxtAnimation();
        return;
      case 11:
        FSafeShortcutActivity.this.startUI_Step_1Animation();
        return;
      case 13:
      }
      FSafeShortcutActivity.this.startUIStep_0_Animation();
    }
  };
  private View mRotateImageView;
  private RelativeLayout mShortcut;
  private RelativeLayout mainview;
  private float nowAcSize = 0.0F;
  private int nowSize = 0;
  private float preAcSize = 0.0F;
  private int preSize = 0;
  private TextView progress;
  private TextView progress_tip;
  private Rect rect;
  private int[] resCircle = { 2130837620, 2130837631, 2130837635, 2130837636, 2130837637, 2130837638, 2130837639, 2130837640, 2130837641, 2130837621, 2130837622, 2130837623, 2130837624, 2130837625, 2130837626, 2130837627, 2130837628, 2130837629, 2130837630, 2130837632, 2130837633, 2130837634 };
  private ImageView start;
  private DesktopSafeView startView;
  private View success;
  private ImageView success_tip;
  private int tPreSize = this.preSize;
  private Timer timer;
  private Timer timer2;
  private ImageView water;

  private void initViews()
  {
    this.mainview = ((RelativeLayout)findViewById(2131099697));
    this.mShortcut = ((RelativeLayout)findViewById(2131099698));
    this.mRotateImageView = findViewById(2131099700);
    this.animation = findViewById(2131099701);
    this.layout_progress = findViewById(2131099709);
    this.progress = ((TextView)findViewById(2131099710));
    this.progress_tip = ((TextView)findViewById(2131099711));
    this.bg = ((ImageView)findViewById(2131099702));
    this.water = ((ImageView)findViewById(2131099703));
    this.start = ((ImageView)findViewById(2131099708));
    this.circle = ((ImageView)findViewById(2131099706));
    this.light = ((ImageView)findViewById(2131099712));
    this.success = findViewById(2131099704);
    this.success_tip = ((ImageView)findViewById(2131099705));
    this.startView = ((DesktopSafeView)findViewById(2131099707));
    this.item = findViewById(2131099713);
    this.item.setOnClickListener(this);
    findViewById(2131099717).setOnClickListener(this);
    findViewById(2131099715).setOnClickListener(this);
    findViewById(2131099714).setOnClickListener(this);
    findViewById(2131099716).setOnClickListener(this);
    this.item.setVisibility(8);
    ((RelativeLayout.LayoutParams)this.item.getLayoutParams()).bottomMargin = (getResources().getDisplayMetrics().heightPixels / 5);
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    int i = getWindowManager().getDefaultDisplay().getWidth();
    int j = View.MeasureSpec.makeMeasureSpec(0, 0);
    int k = View.MeasureSpec.makeMeasureSpec(0, 0);
    this.mShortcut.measure(j, k);
    int m = (this.mShortcut.getMeasuredWidth() - this.rect.height() + UiUtil.getIntBy720(this, 40)) / 2;
    if (this.rect.height() == this.rect.width())
      m = (this.mShortcut.getMeasuredWidth() - this.rect.height()) / 2;
    int n = (this.mShortcut.getMeasuredWidth() - this.rect.width()) / 2;
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)this.mShortcut.getLayoutParams();
    localLayoutParams.topMargin = (this.rect.top - m - Util.getStatusBarHeight(this));
    if (this.rect.left < i / 2)
    {
      this.direct = Direction.RIGHT;
      localLayoutParams.leftMargin = (this.rect.left - n);
      return;
    }
    this.direct = Direction.LEFT;
    localLayoutParams.addRule(11);
    localLayoutParams.rightMargin = (i - this.rect.right - n);
  }

  private void killProcress()
  {
    if (this.isKilling)
      return;
    this.isKilling = true;
    new Thread()
    {
      public void run()
      {
        Iterator localIterator = CleanUtil.queryAllRunningAppInfo(FSafeShortcutActivity.this).iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          CleanUtil.killProcress(FSafeShortcutActivity.this, str);
        }
        float[] arrayOfFloat = CleanUtil.getSystemAvaialbeMemoryProgressSize(FSafeShortcutActivity.this);
        int i = (int)arrayOfFloat[0];
        FSafeShortcutActivity.access$2702(FSafeShortcutActivity.this, arrayOfFloat[1]);
        Message localMessage = new Message();
        localMessage.what = 3;
        localMessage.arg1 = i;
        FSafeShortcutActivity.this.mHandler.sendMessageDelayed(localMessage, 0L);
      }
    }
    .start();
  }

  public static void toMe(Context paramContext, DeskTopGameItem paramDeskTopGameItem)
  {
    Intent localIntent = new Intent(paramContext, FSafeShortcutActivity.class);
    localIntent.putExtra("item", paramDeskTopGameItem);
    paramContext.startActivity(localIntent);
    ((Activity)paramContext).overridePendingTransition(0, 0);
  }

  public void doFinish()
  {
    if (this.isClean)
      PreferencesHelper.getInstance(this).saveSpeedTime(System.currentTimeMillis());
    if ((!this.isClean) && (this.isCanClean))
      PreferencesHelper.getInstance(this).saveSpeedTime(0L);
    finish();
  }

  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.animation.setVisibility(8);
    this.mShortcut.setVisibility(0);
    this.mRotateImageView.setVisibility(0);
    this.mainview.setBackgroundResource(17170445);
    this.mHandler.sendEmptyMessageDelayed(13, 300L);
  }

  public void onBackPressed()
  {
    if (this.timer != null)
      this.timer.cancel();
    this.timer = null;
    this.isKilling = false;
    doFinish();
    super.onBackPressed();
  }

  public void onClick(View paramView)
  {
    if (this.isNoclean)
    {
      onToastClick();
      return;
    }
    doFinish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903049);
    Intent localIntent = getIntent();
    if (localIntent == null)
    {
      finish();
      return;
    }
    this.rect = localIntent.getSourceBounds();
    if (this.rect == null)
    {
      finish();
      return;
    }
    initViews();
  }

  protected void onDestroy()
  {
    if (this.timer != null)
      this.timer.cancel();
    this.timer = null;
    this.isKilling = false;
    try
    {
      HandleService.handleService(this, "j");
      startService(new Intent(getApplicationContext(), MonitorService.class));
      super.onDestroy();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public void onToastClick()
  {
    toMainActivity(0, 0);
    doFinish();
  }

  public void showMsg()
  {
    Toast localToast = new Toast(this);
    View localView = ((LayoutInflater)getSystemService("layout_inflater")).inflate(2130903098, null);
    localView.findViewById(2131099713).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        FSafeShortcutActivity.this.onToastClick();
      }
    });
    findViewById(2131099717).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        FSafeShortcutActivity.this.onToastClick();
      }
    });
    findViewById(2131099715).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        FSafeShortcutActivity.this.onToastClick();
      }
    });
    findViewById(2131099714).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        FSafeShortcutActivity.this.onToastClick();
      }
    });
    findViewById(2131099716).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        FSafeShortcutActivity.this.onToastClick();
      }
    });
    ((TextView)localView.findViewById(2131099715)).setText("手机已加速");
    localToast.setView(localView);
    localToast.setGravity(17, 0, getResources().getDisplayMetrics().heightPixels / 4);
    localToast.setDuration(0);
    localToast.show();
  }

  public void showMsg(float paramFloat)
  {
    this.item.setVisibility(0);
    TextView localTextView1 = (TextView)findViewById(2131099715);
    TextView localTextView2 = (TextView)findViewById(2131099716);
    if (paramFloat != 0.0F)
    {
      double d = new BigDecimal(1024.0F * paramFloat).setScale(1, 4).doubleValue();
      localTextView1.setText(Html.fromHtml("释放内存 <font color='#3fcf2f'>" + Math.abs(d) + "MB</font>"));
      localTextView2.setText("提速" + (100 - this.tPreSize) + "% 手机快如闪电");
      return;
    }
    localTextView1.setText("太棒了！");
    localTextView2.setText("您的手机已在最佳状态");
  }

  public void startUIAnimation()
  {
    this.mShortcut.setVisibility(8);
    this.animation.setVisibility(0);
    ScaleAnimation localScaleAnimation = new ScaleAnimation(0.0F, 1.0F, 0.0F, 1.0F, 1, 0.5F, 1, 0.5F);
    localScaleAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        FSafeShortcutActivity.this.startUI_BGAnimation(0);
      }

      public void onAnimationRepeat(Animation paramAnonymousAnimation)
      {
      }

      public void onAnimationStart(Animation paramAnonymousAnimation)
      {
      }
    });
    localScaleAnimation.setDuration(500L);
    localScaleAnimation.setFillAfter(true);
    this.animation.startAnimation(localScaleAnimation);
  }

  public void startUIStep_0_Animation()
  {
    Animation localAnimation = AnimationUtils.loadAnimation(this, 2130968584);
    this.mRotateImageView.startAnimation(localAnimation);
    localAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        long l = PreferencesHelper.getInstance(FSafeShortcutActivity.this).getSpeedTime();
        if (System.currentTimeMillis() - l < 60000L)
        {
          FSafeShortcutActivity.access$002(FSafeShortcutActivity.this, true);
          FSafeShortcutActivity.this.animation.setVisibility(8);
          FSafeShortcutActivity.this.mShortcut.setVisibility(8);
          FSafeShortcutActivity.this.mainview.setBackgroundResource(17170445);
          FSafeShortcutActivity.this.mRotateImageView.clearAnimation();
          FSafeShortcutActivity.this.showMsg(0.0F);
          FSafeShortcutActivity.this.mHandler.sendEmptyMessageDelayed(9, 3000L);
          return;
        }
        FSafeShortcutActivity.access$602(FSafeShortcutActivity.this, true);
        FSafeShortcutActivity.this.mainview.setBackgroundResource(2131165233);
        FSafeShortcutActivity.this.mRotateImageView.clearAnimation();
        FSafeShortcutActivity.this.startUIAnimation();
      }

      public void onAnimationRepeat(Animation paramAnonymousAnimation)
      {
      }

      public void onAnimationStart(Animation paramAnonymousAnimation)
      {
      }
    });
  }

  public void startUI_BGAnimation(final int paramInt)
  {
    if (paramInt == 0)
      this.bg.setVisibility(0);
    for (Animation localAnimation = AnimationUtils.loadAnimation(this, 2130968579); ; localAnimation = AnimationUtils.loadAnimation(this, 2130968578))
    {
      localAnimation.setAnimationListener(new Animation.AnimationListener()
      {
        public void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          if (paramInt == 0)
            FSafeShortcutActivity.this.mHandler.sendEmptyMessageDelayed(11, 1000L);
        }

        public void onAnimationRepeat(Animation paramAnonymousAnimation)
        {
        }

        public void onAnimationStart(Animation paramAnonymousAnimation)
        {
        }
      });
      localAnimation.setFillAfter(true);
      this.bg.startAnimation(localAnimation);
      return;
    }
  }

  public void startUI_CircleAnimation()
  {
    this.start.setVisibility(0);
    Animation localAnimation = AnimationUtils.loadAnimation(this, 2130968580);
    localAnimation.setDuration(this.mDuration);
    localAnimation.setFillAfter(true);
    this.start.startAnimation(localAnimation);
    if (this.timer == null)
      this.timer = new Timer();
    this.timer.schedule(new TimerTask()
    {
      public void run()
      {
        if (!FSafeShortcutActivity.this.direction)
        {
          FSafeShortcutActivity.access$808(FSafeShortcutActivity.this);
          if (FSafeShortcutActivity.this.index < FSafeShortcutActivity.this.resCircle.length)
            break label87;
          FSafeShortcutActivity.access$802(FSafeShortcutActivity.this, -1 + FSafeShortcutActivity.this.resCircle.length);
          FSafeShortcutActivity.access$702(FSafeShortcutActivity.this, true);
        }
        label87: 
        while (FSafeShortcutActivity.this.index > 0)
        {
          FSafeShortcutActivity.this.mHandler.sendEmptyMessage(1);
          return;
          FSafeShortcutActivity.access$810(FSafeShortcutActivity.this);
          break;
        }
        FSafeShortcutActivity.access$802(FSafeShortcutActivity.this, 1);
        FSafeShortcutActivity.this.mHandler.sendEmptyMessage(2);
      }
    }
    , -50 + this.mDuration, 50L);
    startUI_Water_ResetAnimation();
  }

  public void startUI_Step_1Animation()
  {
    this.progress_tip.setText("正在加速");
    float[] arrayOfFloat = CleanUtil.getSystemAvaialbeMemoryProgressSize(this);
    this.preSize = ((int)arrayOfFloat[0]);
    this.preAcSize = arrayOfFloat[1];
    this.progress.setText(this.preSize + "%");
    this.layout_progress.setVisibility(0);
    Animation localAnimation = AnimationUtils.loadAnimation(this, 2130968576);
    localAnimation.setDuration(500L);
    localAnimation.setFillAfter(true);
    this.layout_progress.startAnimation(localAnimation);
    startUI_WaterAnimation(this.preSize);
    startUI_BGAnimation(1);
    this.startView.start();
    this.mHandler.sendEmptyMessageDelayed(0, 1200L);
  }

  @SuppressLint({"NewApi"})
  public void startUI_TxtAnimation()
  {
    Animation localAnimation1 = AnimationUtils.loadAnimation(this, 2130968577);
    localAnimation1.setFillAfter(true);
    this.layout_progress.startAnimation(localAnimation1);
    Animation localAnimation2 = AnimationUtils.loadAnimation(this, 2130968576);
    localAnimation2.setFillAfter(true);
    this.light.startAnimation(localAnimation2);
    localAnimation2.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        FSafeShortcutActivity.this.mHandler.sendEmptyMessageDelayed(6, 100L);
      }

      public void onAnimationRepeat(Animation paramAnonymousAnimation)
      {
      }

      public void onAnimationStart(Animation paramAnonymousAnimation)
      {
      }
    });
    ViewHelper.setY(this.success, this.success.getHeight());
    this.success.setVisibility(0);
    View localView = this.success;
    float[] arrayOfFloat = new float[2];
    arrayOfFloat[0] = this.success.getHeight();
    arrayOfFloat[1] = 0.0F;
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(localView, "translationY", arrayOfFloat);
    localObjectAnimator.setDuration(500L);
    localObjectAnimator.start();
    localObjectAnimator.addListener(new Animator.AnimatorListener()
    {
      public void onAnimationCancel(Animator paramAnonymousAnimator)
      {
      }

      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        ViewHelper.setAlpha(FSafeShortcutActivity.this.success_tip, 0.0F);
        FSafeShortcutActivity.this.success_tip.setVisibility(0);
        ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(FSafeShortcutActivity.this.success_tip, "alpha", new float[] { 0.0F, 1.0F });
        localObjectAnimator.setDuration(300L);
        localObjectAnimator.start();
        FSafeShortcutActivity.this.mHandler.sendEmptyMessageDelayed(8, 1400L);
      }

      public void onAnimationRepeat(Animator paramAnonymousAnimator)
      {
      }

      public void onAnimationStart(Animator paramAnonymousAnimator)
      {
      }
    });
  }

  public void startUI_WaterAnimation(int paramInt)
  {
    RotateAnimation localRotateAnimation = new RotateAnimation(0.0F, (int)(60.0F * (1.0F * paramInt) / 100.0F), 1, 0.5F, 1, 0.5F);
    localRotateAnimation.setDuration(100L);
    localRotateAnimation.setFillAfter(true);
    this.water.startAnimation(localRotateAnimation);
  }

  public void startUI_Water_KilledAnimation()
  {
    RotateAnimation localRotateAnimation = new RotateAnimation(0.0F, (int)(60.0F * (1.0F * this.nowSize) / 100.0F), 1, 0.5F, 1, 0.5F);
    localRotateAnimation.setDuration(550L);
    localRotateAnimation.setFillAfter(true);
    this.water.startAnimation(localRotateAnimation);
  }

  public void startUI_Water_ResetAnimation()
  {
    RotateAnimation localRotateAnimation = new RotateAnimation((int)(60.0F * (1.0F * this.preSize) / 100.0F), 0.0F, 1, 0.5F, 1, 0.5F);
    localRotateAnimation.setDuration(1150L);
    localRotateAnimation.setFillAfter(true);
    this.water.startAnimation(localRotateAnimation);
  }

  public void toMainActivity(int paramInt1, int paramInt2)
  {
  }

  private static enum Direction
  {
    static
    {
      LEFT = new Direction("LEFT", 1);
      Direction[] arrayOfDirection = new Direction[2];
      arrayOfDirection[0] = RIGHT;
      arrayOfDirection[1] = LEFT;
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.speed.FSafeShortcutActivity
 * JD-Core Version:    0.6.2
 */