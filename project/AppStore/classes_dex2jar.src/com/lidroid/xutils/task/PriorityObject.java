package com.lidroid.xutils.task;

public class PriorityObject<E>
{
  public final E obj;
  public final Priority priority;

  public PriorityObject(Priority paramPriority, E paramE)
  {
    if (paramPriority == null)
      paramPriority = Priority.DEFAULT;
    this.priority = paramPriority;
    this.obj = paramE;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.task.PriorityObject
 * JD-Core Version:    0.6.2
 */