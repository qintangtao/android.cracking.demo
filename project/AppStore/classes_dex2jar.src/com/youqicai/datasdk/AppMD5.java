package com.youqicai.datasdk;

import com.lidroid.xutils.db.annotation.Column;
import com.lidroid.xutils.db.annotation.Table;
import com.lidroid.xutils.db.annotation.Unique;

@Table(name="AppMD5")
public class AppMD5
{

  @Column(column="id")
  @Unique
  private int id;

  @Column(column="md5")
  private String md5;

  @Column(column="pkgName")
  private String pkgName;

  public int getId()
  {
    return this.id;
  }

  public String getMd5()
  {
    return this.md5;
  }

  public String getPkgName()
  {
    return this.pkgName;
  }

  public void setId(int paramInt)
  {
    this.id = paramInt;
  }

  public void setMd5(String paramString)
  {
    this.md5 = paramString;
  }

  public void setPkgName(String paramString)
  {
    this.pkgName = paramString;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.datasdk.AppMD5
 * JD-Core Version:    0.6.2
 */