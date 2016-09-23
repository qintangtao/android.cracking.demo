package com.lidroid.xutils.view.annotation.event;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@EventBase(listenerSetter="setOnItemLongClickListener", listenerType="Landroid/widget/AdapterView$OnItemLongClickListener;", methodName="onItemLongClick")
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OnItemLongClick
{
  public abstract int[] parentId();

  public abstract int[] value();
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.view.annotation.event.OnItemLongClick
 * JD-Core Version:    0.6.2
 */