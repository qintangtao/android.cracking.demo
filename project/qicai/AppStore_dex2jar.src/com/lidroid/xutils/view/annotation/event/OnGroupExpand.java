package com.lidroid.xutils.view.annotation.event;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@EventBase(listenerSetter="setOnGroupExpandListener", listenerType="Landroid/widget/ExpandableListView$OnGroupExpandListener;", methodName="onGroupExpand")
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OnGroupExpand
{
  public abstract int[] parentId();

  public abstract int[] value();
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.view.annotation.event.OnGroupExpand
 * JD-Core Version:    0.6.2
 */