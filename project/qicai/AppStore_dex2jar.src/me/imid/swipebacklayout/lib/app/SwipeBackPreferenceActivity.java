package me.imid.swipebacklayout.lib.app;

import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.view.View;
import me.imid.swipebacklayout.lib.SwipeBackLayout;

public class SwipeBackPreferenceActivity extends PreferenceActivity
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
    getSwipeBackLayout().scrollToFinishActivity();
  }

  public void setSwipeBackEnable(boolean paramBoolean)
  {
    getSwipeBackLayout().setEnableGesture(paramBoolean);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     me.imid.swipebacklayout.lib.app.SwipeBackPreferenceActivity
 * JD-Core Version:    0.6.2
 */