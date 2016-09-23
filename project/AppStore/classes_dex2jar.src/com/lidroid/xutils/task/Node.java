package com.lidroid.xutils.task;

class Node<T>
{
  Node<T> next;
  private PriorityObject<?> value;
  private boolean valueAsT = false;

  Node(T paramT)
  {
    setValue(paramT);
  }

  public Priority getPriority()
  {
    return this.value.priority;
  }

  public T getValue()
  {
    if (this.value == null)
      return null;
    if (this.valueAsT)
      return this.value;
    return this.value.obj;
  }

  public void setValue(T paramT)
  {
    if (paramT == null)
    {
      this.value = null;
      return;
    }
    if ((paramT instanceof PriorityObject))
    {
      this.value = ((PriorityObject)paramT);
      this.valueAsT = true;
      return;
    }
    this.value = new PriorityObject(Priority.DEFAULT, paramT);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.task.Node
 * JD-Core Version:    0.6.2
 */