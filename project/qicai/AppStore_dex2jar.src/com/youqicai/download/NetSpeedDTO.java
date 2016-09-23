package com.youqicai.download;

public class NetSpeedDTO
{
  private long interval;
  private long time;

  public long getInterval()
  {
    return this.interval;
  }

  public long getTime()
  {
    return this.time;
  }

  public void setInterval(long paramLong)
  {
    this.interval = paramLong;
  }

  public void setTime(long paramLong)
  {
    this.time = paramLong;
  }

  public String toString()
  {
    return "NetSpeedDTO [time=" + this.time + ", interval=" + this.interval + "]";
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.download.NetSpeedDTO
 * JD-Core Version:    0.6.2
 */