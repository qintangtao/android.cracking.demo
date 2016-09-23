package com.nineoldandroids.animation;

public class IntEvaluator
  implements TypeEvaluator<Integer>
{
  public Integer evaluate(float paramFloat, Integer paramInteger1, Integer paramInteger2)
  {
    int i = paramInteger1.intValue();
    return Integer.valueOf((int)(i + paramFloat * (paramInteger2.intValue() - i)));
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.nineoldandroids.animation.IntEvaluator
 * JD-Core Version:    0.6.2
 */