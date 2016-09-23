package com.hsg.sdk.common.util;

import android.content.Context;
import android.media.SoundPool;
import java.util.HashMap;

public class SoundUtil
{
  public static final int SOUND_ID_RECORD_ONE = 1;
  public static final int SOUND_ID_RECORD_TWO = 2;
  private static SoundUtil instance = null;
  private static final int maxStreams = 2;
  private HashMap<Integer, Integer> soundMap = null;
  private SoundPool soundPool = null;

  private SoundUtil(Context paramContext)
  {
  }

  public static SoundUtil newInstance(Context paramContext)
  {
    if (instance == null)
      instance = new SoundUtil(paramContext);
    return instance;
  }

  public void playSound(int paramInt)
  {
    Logg.d("SoundUtil - playSound");
    if (this.soundPool != null)
      this.soundPool.play(((Integer)this.soundMap.get(Integer.valueOf(paramInt))).intValue(), 1.0F, 1.0F, 0, 0, 1.0F);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.SoundUtil
 * JD-Core Version:    0.6.2
 */