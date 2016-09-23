package com.lidroid.xutils.task;

public class PriorityRunnable extends PriorityObject<Runnable>
  implements Runnable
{
  public PriorityRunnable(Priority paramPriority, Runnable paramRunnable)
  {
    super(paramPriority, paramRunnable);
  }

  public void run()
  {
    ((Runnable)this.obj).run();
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.task.PriorityRunnable
 * JD-Core Version:    0.6.2
 */