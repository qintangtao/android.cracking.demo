package com.youqicai.AppStore.entity;

import java.io.Serializable;

public class Comment
  implements Serializable
{
  private int appId;
  private String comment;
  private String createTime;
  private String headUrl;
  private String nickName;
  private String score;

  public int getAppId()
  {
    return this.appId;
  }

  public String getComment()
  {
    return this.comment;
  }

  public String getCreateTime()
  {
    return this.createTime;
  }

  public String getHeadUrl()
  {
    return this.headUrl;
  }

  public String getNickName()
  {
    return this.nickName;
  }

  public String getScore()
  {
    return this.score;
  }

  public void setAppId(int paramInt)
  {
    this.appId = paramInt;
  }

  public void setComment(String paramString)
  {
    this.comment = paramString;
  }

  public void setCreateTime(String paramString)
  {
    this.createTime = paramString;
  }

  public void setHeadUrl(String paramString)
  {
    this.headUrl = paramString;
  }

  public void setNickName(String paramString)
  {
    this.nickName = paramString;
  }

  public void setScore(String paramString)
  {
    this.score = paramString;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.entity.Comment
 * JD-Core Version:    0.6.2
 */