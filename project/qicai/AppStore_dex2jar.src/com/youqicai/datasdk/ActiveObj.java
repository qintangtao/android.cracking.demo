package com.youqicai.datasdk;

import com.lidroid.xutils.db.annotation.Column;
import com.lidroid.xutils.db.annotation.Table;
import com.lidroid.xutils.db.annotation.Unique;

@Table(name="ActiveObj")
public class ActiveObj
{

  @Column(column="battery")
  private double battery;

  @Column(column="id")
  @Unique
  private int id;

  @Column(column="pkgName")
  private String pkgName;

  @Column(column="traffic")
  private int traffic;

  public double getBattery()
  {
    return this.battery;
  }

  public int getId()
  {
    return this.id;
  }

  public String getPkgName()
  {
    return this.pkgName;
  }

  public int getTraffic()
  {
    return this.traffic;
  }

  public void setBattery(double paramDouble)
  {
    this.battery = paramDouble;
  }

  public void setId(int paramInt)
  {
    this.id = paramInt;
  }

  public void setPkgName(String paramString)
  {
    this.pkgName = paramString;
  }

  public void setTraffic(int paramInt)
  {
    this.traffic = paramInt;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.datasdk.ActiveObj
 * JD-Core Version:    0.6.2
 */