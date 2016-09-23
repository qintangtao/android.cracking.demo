package com.hsg.sdk.common.util;

import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;

public class CustomAnimation
{
  public static final int ANIM_DURATION_ANSWER = 350;
  public static final int ANIM_DURATION_DEFAULT = 500;

  public static Animation in_from_bottom(long paramLong)
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, DeviceUtil.SCREEN_HEIGHT, 0.0F);
    localTranslateAnimation.setDuration(paramLong);
    return localTranslateAnimation;
  }

  public static Animation in_from_left(long paramLong)
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(-DeviceUtil.SCREEN_WIDTH, 0.0F, 0.0F, 0.0F);
    localTranslateAnimation.setDuration(paramLong);
    return localTranslateAnimation;
  }

  public static Animation in_from_left_and_bottom(long paramLong)
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(-DeviceUtil.SCREEN_WIDTH, 0.0F, DeviceUtil.SCREEN_HEIGHT, 0.0F);
    localTranslateAnimation.setDuration(paramLong);
    return localTranslateAnimation;
  }

  public static Animation in_from_left_and_up(long paramLong)
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(-DeviceUtil.SCREEN_WIDTH, 0.0F, -DeviceUtil.SCREEN_HEIGHT, 0.0F);
    localTranslateAnimation.setDuration(paramLong);
    return localTranslateAnimation;
  }

  public static Animation in_from_right(long paramLong)
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(DeviceUtil.SCREEN_WIDTH, 0.0F, 0.0F, 0.0F);
    localTranslateAnimation.setDuration(paramLong);
    return localTranslateAnimation;
  }

  public static Animation in_from_right(long paramLong, float paramFloat)
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(DeviceUtil.SCREEN_WIDTH - paramFloat, 0.0F, 0.0F, 0.0F);
    localTranslateAnimation.setDuration(paramLong);
    return localTranslateAnimation;
  }

  public static Animation in_from_right_and_bottom(long paramLong)
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(DeviceUtil.SCREEN_WIDTH, 0.0F, DeviceUtil.SCREEN_HEIGHT, 0.0F);
    localTranslateAnimation.setDuration(paramLong);
    return localTranslateAnimation;
  }

  public static Animation in_from_right_and_top(long paramLong)
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(DeviceUtil.SCREEN_WIDTH, 0.0F, -DeviceUtil.SCREEN_HEIGHT, 0.0F);
    localTranslateAnimation.setDuration(paramLong);
    return localTranslateAnimation;
  }

  public static Animation in_from_up(long paramLong)
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, -DeviceUtil.SCREEN_HEIGHT, 0.0F);
    localTranslateAnimation.setDuration(paramLong);
    return localTranslateAnimation;
  }

  public static Animation out_to_bottom(long paramLong)
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, 0.0F, DeviceUtil.SCREEN_HEIGHT);
    localTranslateAnimation.setDuration(paramLong);
    return localTranslateAnimation;
  }

  public static Animation out_to_left(long paramLong)
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, -DeviceUtil.SCREEN_WIDTH, 0.0F, 0.0F);
    localTranslateAnimation.setDuration(paramLong);
    return localTranslateAnimation;
  }

  public static Animation out_to_right(long paramLong)
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, DeviceUtil.SCREEN_WIDTH, 0.0F, 0.0F);
    localTranslateAnimation.setDuration(paramLong);
    return localTranslateAnimation;
  }

  public static Animation out_to_up(long paramLong)
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, 0.0F, -DeviceUtil.SCREEN_HEIGHT);
    localTranslateAnimation.setDuration(paramLong);
    return localTranslateAnimation;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.CustomAnimation
 * JD-Core Version:    0.6.2
 */