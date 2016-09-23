package com.youqicai.download;

import com.jh.exception.JHException;

public class DownloadException extends JHException
{
  public static int TASK_EXIST_ERROR = 0;
  private static final long serialVersionUID = 6838687450065334268L;
  private int code;

  public DownloadException(int paramInt)
  {
    this.code = paramInt;
  }

  public DownloadException(int paramInt, Exception paramException)
  {
    super(paramException);
    this.code = paramInt;
  }

  public DownloadException(Exception paramException)
  {
    super(paramException);
  }

  public DownloadException(String paramString)
  {
    super(paramString);
  }

  public int getCode()
  {
    return this.code;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.download.DownloadException
 * JD-Core Version:    0.6.2
 */