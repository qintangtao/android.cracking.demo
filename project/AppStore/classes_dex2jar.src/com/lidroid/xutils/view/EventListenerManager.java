package com.lidroid.xutils.view;

import android.view.View;
import com.lidroid.xutils.util.DoubleKeyValueMap;
import com.lidroid.xutils.util.LogUtils;
import com.lidroid.xutils.view.annotation.event.EventBase;
import java.lang.annotation.Annotation;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;

public class EventListenerManager
{
  private static final DoubleKeyValueMap<ViewInjectInfo, Class<?>, Object> listenerCache = new DoubleKeyValueMap();

  public static void addEventMethod(ViewFinder paramViewFinder, ViewInjectInfo paramViewInjectInfo, Annotation paramAnnotation, Object paramObject, Method paramMethod)
  {
    try
    {
      View localView = paramViewFinder.findViewByInfo(paramViewInjectInfo);
      if (localView != null)
      {
        EventBase localEventBase = (EventBase)paramAnnotation.annotationType().getAnnotation(EventBase.class);
        Class localClass = localEventBase.listenerType();
        String str1 = localEventBase.listenerSetter();
        String str2 = localEventBase.methodName();
        Object localObject = listenerCache.get(paramViewInjectInfo, localClass);
        boolean bool = false;
        if (localObject != null)
        {
          DynamicHandler localDynamicHandler1 = (DynamicHandler)Proxy.getInvocationHandler(localObject);
          bool = paramObject.equals(localDynamicHandler1.getHandler());
          if (bool)
            localDynamicHandler1.addMethod(str2, paramMethod);
        }
        if (!bool)
        {
          DynamicHandler localDynamicHandler2 = new DynamicHandler(paramObject);
          localDynamicHandler2.addMethod(str2, paramMethod);
          localObject = Proxy.newProxyInstance(localClass.getClassLoader(), new Class[] { localClass }, localDynamicHandler2);
          listenerCache.put(paramViewInjectInfo, localClass, localObject);
        }
        localView.getClass().getMethod(str1, new Class[] { localClass }).invoke(localView, new Object[] { localObject });
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      LogUtils.e(localThrowable.getMessage(), localThrowable);
    }
  }

  public static class DynamicHandler
    implements InvocationHandler
  {
    private WeakReference<Object> handlerRef;
    private final HashMap<String, Method> methodMap = new HashMap(1);

    public DynamicHandler(Object paramObject)
    {
      this.handlerRef = new WeakReference(paramObject);
    }

    public void addMethod(String paramString, Method paramMethod)
    {
      this.methodMap.put(paramString, paramMethod);
    }

    public Object getHandler()
    {
      return this.handlerRef.get();
    }

    public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
      throws Throwable
    {
      Object localObject = this.handlerRef.get();
      if (localObject != null)
      {
        String str = paramMethod.getName();
        Method localMethod = (Method)this.methodMap.get(str);
        if (localMethod != null)
          return localMethod.invoke(localObject, paramArrayOfObject);
      }
      return null;
    }

    public void setHandler(Object paramObject)
    {
      this.handlerRef = new WeakReference(paramObject);
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.view.EventListenerManager
 * JD-Core Version:    0.6.2
 */