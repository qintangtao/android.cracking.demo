package com.lidroid.xutils.view.annotation.event;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@EventBase(listenerSetter="setOnPreferenceChangeListener", listenerType="Landroid/preference/Preference$OnPreferenceChangeListener;", methodName="onPreferenceChange")
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OnPreferenceChange
{
  public abstract String[] value();
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.view.annotation.event.OnPreferenceChange
 * JD-Core Version:    0.6.2
 */