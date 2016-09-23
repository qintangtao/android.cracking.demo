package com.youqicai.AppStore.card;

public enum CardType
{
  private int mIntValue;

  static
  {
    BANNER = new CardType("BANNER", 2, 11);
    SPECIAL = new CardType("SPECIAL", 3, 13);
    SPECIAL_BANNER = new CardType("SPECIAL_BANNER", 4, 14);
    RECT_APPS = new CardType("RECT_APPS", 5, 12);
    HOT_WORDS = new CardType("HOT_WORDS", 6, 17);
    CATEGORY_NAVIGATION = new CardType("CATEGORY_NAVIGATION", 7, 16);
    SPECIAL_CATEGORY_NAVIGATION = new CardType("SPECIAL_CATEGORY_NAVIGATION", 8, 15);
    HAS_NO_MORE = new CardType("HAS_NO_MORE", 9, 101);
    CardType[] arrayOfCardType = new CardType[10];
    arrayOfCardType[0] = NAVIGATION;
    arrayOfCardType[1] = SINGLE_APP;
    arrayOfCardType[2] = BANNER;
    arrayOfCardType[3] = SPECIAL;
    arrayOfCardType[4] = SPECIAL_BANNER;
    arrayOfCardType[5] = RECT_APPS;
    arrayOfCardType[6] = HOT_WORDS;
    arrayOfCardType[7] = CATEGORY_NAVIGATION;
    arrayOfCardType[8] = SPECIAL_CATEGORY_NAVIGATION;
    arrayOfCardType[9] = HAS_NO_MORE;
  }

  private CardType(int paramInt)
  {
    this.mIntValue = paramInt;
  }

  public int getmIntValue()
  {
    return this.mIntValue;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.card.CardType
 * JD-Core Version:    0.6.2
 */