package com.lidroid.xutils.view.annotation.event;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@EventBase(listenerSetter="setOnTouchListener", listenerType="Landroid/view/View$OnTouchListener;", methodName="onTouch")
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OnTouch
{
  public abstract int[] parentId();

  public abstract int[] value();
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.view.annotation.event.OnTouch
 * JD-Core Version:    0.6.2
 */