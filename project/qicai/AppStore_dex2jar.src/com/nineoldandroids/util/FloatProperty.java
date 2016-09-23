package com.nineoldandroids.util;

public abstract class FloatProperty<T> extends Property<T, Float>
{
  public FloatProperty(String paramString)
  {
    super(Float.class, paramString);
  }

  public final void set(T paramT, Float paramFloat)
  {
    setValue(paramT, paramFloat.floatValue());
  }

  public abstract void setValue(T paramT, float paramFloat);
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.nineoldandroids.util.FloatProperty
 * JD-Core Version:    0.6.2
 */