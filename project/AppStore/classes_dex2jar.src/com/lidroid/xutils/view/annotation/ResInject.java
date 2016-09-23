package com.lidroid.xutils.view.annotation;

import com.lidroid.xutils.view.ResType;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.FIELD})
public @interface ResInject
{
  public abstract int id();

  public abstract ResType type();
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.view.annotation.ResInject
 * JD-Core Version:    0.6.2
 */