package com.nineoldandroids.animation;

public class FloatEvaluator
  implements TypeEvaluator<Number>
{
  public Float evaluate(float paramFloat, Number paramNumber1, Number paramNumber2)
  {
    float f = paramNumber1.floatValue();
    return Float.valueOf(f + paramFloat * (paramNumber2.floatValue() - f));
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.nineoldandroids.animation.FloatEvaluator
 * JD-Core Version:    0.6.2
 */