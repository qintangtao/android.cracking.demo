package com.jh.net;

import com.jh.exception.JHException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public abstract class IRetryService
{
  private int retryInterval = 5000;
  private int retryTimes = 3;

  protected Object doTaskRetry(Method paramMethod, Object[] paramArrayOfObject)
    throws JHException
  {
    int i = this.retryTimes;
    while (true)
    {
      if (i <= 0)
        return null;
      try
      {
        Object localObject = paramMethod.invoke(this, paramArrayOfObject);
        return localObject;
      }
      catch (JHException localJHException)
      {
        if (i == 1)
          throw localJHException;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        localIllegalArgumentException.printStackTrace();
        i--;
        try
        {
          Thread.sleep(this.retryInterval);
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        while (true)
          localIllegalAccessException.printStackTrace();
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        while (true)
          localInvocationTargetException.printStackTrace();
      }
    }
  }

  protected Method getMethod(Object paramObject, String paramString, Object[] paramArrayOfObject)
  {
    Class localClass = paramObject.getClass();
    Class[] arrayOfClass = new Class[paramArrayOfObject.length];
    int i = 0;
    int j = paramArrayOfObject.length;
    while (true)
    {
      if (i >= j);
      try
      {
        Method localMethod = localClass.getMethod(paramString, arrayOfClass);
        return localMethod;
        arrayOfClass[i] = paramArrayOfObject[i].getClass();
        i++;
      }
      catch (SecurityException localSecurityException)
      {
        localSecurityException.printStackTrace();
        return null;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        localNoSuchMethodException.printStackTrace();
        return null;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        localIllegalArgumentException.printStackTrace();
      }
    }
    return null;
  }

  protected Method getMethod(String paramString, Object[] paramArrayOfObject)
  {
    return getMethod(this, paramString, paramArrayOfObject);
  }

  public int getRetryInterval()
  {
    return this.retryInterval;
  }

  public int getRetryTimes()
  {
    return this.retryTimes;
  }

  protected Object invokeMethod(Object paramObject, String paramString, Object[] paramArrayOfObject)
  {
    paramObject.getClass();
    Class[] arrayOfClass = new Class[paramArrayOfObject.length];
    int i = 0;
    int j = paramArrayOfObject.length;
    while (true)
    {
      if (i >= j);
      try
      {
        Object localObject = getMethod(paramObject, paramString, paramArrayOfObject).invoke(paramObject, paramArrayOfObject);
        return localObject;
        arrayOfClass[i] = paramArrayOfObject[i].getClass();
        i++;
      }
      catch (SecurityException localSecurityException)
      {
        localSecurityException.printStackTrace();
        return null;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        while (true)
          localIllegalArgumentException.printStackTrace();
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        while (true)
          localIllegalAccessException.printStackTrace();
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        while (true)
          localInvocationTargetException.printStackTrace();
      }
    }
  }

  protected Object invokeMethod(String paramString, Object[] paramArrayOfObject)
  {
    return invokeMethod(this, paramString, paramArrayOfObject);
  }

  public void setRetryInterval(int paramInt)
  {
    this.retryInterval = paramInt;
  }

  public void setRetryTimes(int paramInt)
  {
    this.retryTimes = paramInt;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.net.IRetryService
 * JD-Core Version:    0.6.2
 */