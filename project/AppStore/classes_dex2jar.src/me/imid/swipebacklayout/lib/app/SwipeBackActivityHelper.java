package me.imid.swipebacklayout.lib.app;

import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import me.imid.swipebacklayout.lib.SwipeBackLayout;
import me.imid.swipebacklayout.lib.SwipeBackLayout.SwipeListener;
import me.imid.swipebacklayout.lib.Utils;

public class SwipeBackActivityHelper
{
  private Activity mActivity;
  private SwipeBackLayout mSwipeBackLayout;

  public SwipeBackActivityHelper(Activity paramActivity)
  {
    this.mActivity = paramActivity;
  }

  public View findViewById(int paramInt)
  {
    if (this.mSwipeBackLayout != null)
      return this.mSwipeBackLayout.findViewById(paramInt);
    return null;
  }

  public SwipeBackLayout getSwipeBackLayout()
  {
    return this.mSwipeBackLayout;
  }

  public void onActivityCreate()
  {
    this.mActivity.getWindow().setBackgroundDrawable(new ColorDrawable(0));
    this.mActivity.getWindow().getDecorView().setBackgroundDrawable(null);
    this.mSwipeBackLayout = ((SwipeBackLayout)LayoutInflater.from(this.mActivity).inflate(2130903096, null));
    this.mSwipeBackLayout.addSwipeListener(new SwipeBackLayout.SwipeListener()
    {
      public void onEdgeTouch(int paramAnonymousInt)
      {
        Utils.convertActivityToTranslucent(SwipeBackActivityHelper.this.mActivity);
      }

      public void onScrollOverThreshold()
      {
      }

      public void onScrollStateChange(int paramAnonymousInt, float paramAnonymousFloat)
      {
      }
    });
  }

  public void onPostCreate()
  {
    this.mSwipeBackLayout.attachToActivity(this.mActivity);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     me.imid.swipebacklayout.lib.app.SwipeBackActivityHelper
 * JD-Core Version:    0.6.2
 */