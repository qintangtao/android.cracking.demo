package com.jh.net.bean;

public enum BizCodeEnum
{
  int value;

  static
  {
    ADM = new BizCodeEnum("ADM", 1, 2);
    CBC = new BizCodeEnum("CBC", 2, 3);
    BRC = new BizCodeEnum("BRC", 3, 4);
    Finance = new BizCodeEnum("Finance", 4, 5);
    Notify = new BizCodeEnum("Notify", 5, 6);
    UFM = new BizCodeEnum("UFM", 6, 7);
    DSS = new BizCodeEnum("DSS", 7, 8);
    News = new BizCodeEnum("News", 8, 9);
    EBC = new BizCodeEnum("EBC", 9, 10);
    FSP = new BizCodeEnum("FSP", 10, 11);
    Pay = new BizCodeEnum("Pay", 11, 12);
    Game = new BizCodeEnum("Game", 12, 13);
    CSS = new BizCodeEnum("CSS", 13, 14);
    PIP = new BizCodeEnum("PIP", 14, 15);
    JQYXADM = new BizCodeEnum("JQYXADM", 15, 16);
    FileServer = new BizCodeEnum("FileServer", 16, 17);
    BizCodeEnum[] arrayOfBizCodeEnum = new BizCodeEnum[17];
    arrayOfBizCodeEnum[0] = APP;
    arrayOfBizCodeEnum[1] = ADM;
    arrayOfBizCodeEnum[2] = CBC;
    arrayOfBizCodeEnum[3] = BRC;
    arrayOfBizCodeEnum[4] = Finance;
    arrayOfBizCodeEnum[5] = Notify;
    arrayOfBizCodeEnum[6] = UFM;
    arrayOfBizCodeEnum[7] = DSS;
    arrayOfBizCodeEnum[8] = News;
    arrayOfBizCodeEnum[9] = EBC;
    arrayOfBizCodeEnum[10] = FSP;
    arrayOfBizCodeEnum[11] = Pay;
    arrayOfBizCodeEnum[12] = Game;
    arrayOfBizCodeEnum[13] = CSS;
    arrayOfBizCodeEnum[14] = PIP;
    arrayOfBizCodeEnum[15] = JQYXADM;
    arrayOfBizCodeEnum[16] = FileServer;
  }

  private BizCodeEnum(int arg3)
  {
    int j;
    this.value = j;
  }

  public int getValue()
  {
    return this.value;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.net.bean.BizCodeEnum
 * JD-Core Version:    0.6.2
 */