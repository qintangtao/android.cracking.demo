package me.imid.swipebacklayout.lib.app;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import me.imid.swipebacklayout.lib.SwipeBackLayout;
import me.imid.swipebacklayout.lib.Utils;

public class SwipeBackActivity extends FragmentActivity
  implements SwipeBackActivityBase
{
  private SwipeBackActivityHelper mHelper;

  public View findViewById(int paramInt)
  {
    View localView = super.findViewById(paramInt);
    if ((localView == null) && (this.mHelper != null))
      localView = this.mHelper.findViewById(paramInt);
    return localView;
  }

  public SwipeBackLayout getSwipeBackLayout()
  {
    return this.mHelper.getSwipeBackLayout();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mHelper = new SwipeBackActivityHelper(this);
    this.mHelper.onActivityCreate();
  }

  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    this.mHelper.onPostCreate();
  }

  public void scrollToFinishActivity()
  {
    Utils.convertActivityToTranslucent(this);
    getSwipeBackLayout().scrollToFinishActivity();
  }

  public void setSwipeBackEnable(boolean paramBoolean)
  {
    getSwipeBackLayout().setEnableGesture(paramBoolean);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     me.imid.swipebacklayout.lib.app.SwipeBackActivity
 * JD-Core Version:    0.6.2
 */