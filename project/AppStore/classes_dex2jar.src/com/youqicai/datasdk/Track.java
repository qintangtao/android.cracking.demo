package com.youqicai.datasdk;

import com.lidroid.xutils.db.annotation.Column;
import com.lidroid.xutils.db.annotation.Table;
import java.io.Serializable;

@Table(name="Track")
public class Track
  implements Serializable
{
  private static final long serialVersionUID = -8377536731531495466L;

  @Column(column="dayOfYear")
  private int dayOfYear;

  @Column(column="id")
  protected long id;
  private String packageId;

  @Column(column="packageName")
  private String packageName;
  private long startTime;

  @Column(column="usageTime")
  private long usageTime;

  public int getDayOfYear()
  {
    return this.dayOfYear;
  }

  public long getId()
  {
    return this.id;
  }

  public String getPackageId()
  {
    return this.packageId;
  }

  public String getPackageName()
  {
    return this.packageName;
  }

  public long getStartTime()
  {
    return this.startTime;
  }

  public long getUsageTime()
  {
    return this.usageTime;
  }

  public void setDayOfYear(int paramInt)
  {
    this.dayOfYear = paramInt;
  }

  public void setId(long paramLong)
  {
    this.id = paramLong;
  }

  public void setPackageId(String paramString)
  {
    this.packageId = paramString;
  }

  public void setPackageName(String paramString)
  {
    this.packageName = paramString;
  }

  public void setStartTime(long paramLong)
  {
    this.startTime = paramLong;
  }

  public void setUsageTime(long paramLong)
  {
    this.usageTime = paramLong;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.datasdk.Track
 * JD-Core Version:    0.6.2
 */