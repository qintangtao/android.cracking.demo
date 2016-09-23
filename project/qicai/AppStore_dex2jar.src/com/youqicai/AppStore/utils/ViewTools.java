package com.youqicai.AppStore.utils;

import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;

public class ViewTools
{
  public static void increaseClickRegion(View paramView, final int paramInt1, final int paramInt2, final int paramInt3, final int paramInt4)
  {
    if (paramView == null);
    final View localView;
    do
    {
      return;
      localView = (View)paramView.getParent();
    }
    while (localView == null);
    localView.post(new Runnable()
    {
      public void run()
      {
        Rect localRect = new Rect();
        this.val$view.getHitRect(localRect);
        localRect.left -= paramInt1;
        localRect.top -= paramInt2;
        localRect.right += paramInt3;
        localRect.bottom += paramInt4;
        TouchDelegate localTouchDelegate = new TouchDelegate(localRect, this.val$view);
        localView.setTouchDelegate(localTouchDelegate);
      }
    });
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.utils.ViewTools
 * JD-Core Version:    0.6.2
 */