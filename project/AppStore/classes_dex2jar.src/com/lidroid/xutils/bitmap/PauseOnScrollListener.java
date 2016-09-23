package com.lidroid.xutils.bitmap;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import com.lidroid.xutils.task.TaskHandler;

public class PauseOnScrollListener
  implements AbsListView.OnScrollListener
{
  private final AbsListView.OnScrollListener externalListener;
  private final boolean pauseOnFling;
  private final boolean pauseOnScroll;
  private TaskHandler taskHandler;

  public PauseOnScrollListener(TaskHandler paramTaskHandler, boolean paramBoolean1, boolean paramBoolean2)
  {
    this(paramTaskHandler, paramBoolean1, paramBoolean2, null);
  }

  public PauseOnScrollListener(TaskHandler paramTaskHandler, boolean paramBoolean1, boolean paramBoolean2, AbsListView.OnScrollListener paramOnScrollListener)
  {
    this.taskHandler = paramTaskHandler;
    this.pauseOnScroll = paramBoolean1;
    this.pauseOnFling = paramBoolean2;
    this.externalListener = paramOnScrollListener;
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.externalListener != null)
      this.externalListener.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      if (this.externalListener != null)
        this.externalListener.onScrollStateChanged(paramAbsListView, paramInt);
      return;
      this.taskHandler.resume();
      continue;
      if (this.pauseOnScroll)
      {
        this.taskHandler.pause();
        continue;
        if (this.pauseOnFling)
          this.taskHandler.pause();
      }
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.bitmap.PauseOnScrollListener
 * JD-Core Version:    0.6.2
 */