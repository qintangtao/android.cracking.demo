package com.youqicai.widget;

import android.support.v4.app.Fragment;
import android.widget.AbsListView;

public abstract class ScrollTabHolderFragment extends Fragment
  implements ScrollTabHolder
{
  protected ScrollTabHolder mScrollTabHolder;

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
  }

  public void setScrollTabHolder(ScrollTabHolder paramScrollTabHolder)
  {
    this.mScrollTabHolder = paramScrollTabHolder;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.widget.ScrollTabHolderFragment
 * JD-Core Version:    0.6.2
 */