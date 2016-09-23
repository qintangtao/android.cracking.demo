package com.lidroid.xutils.view;

public enum ResType
{
  static
  {
    IntArray = new ResType("IntArray", 9);
    Movie = new ResType("Movie", 10);
    String = new ResType("String", 11);
    StringArray = new ResType("StringArray", 12);
    Text = new ResType("Text", 13);
    TextArray = new ResType("TextArray", 14);
    Xml = new ResType("Xml", 15);
    ResType[] arrayOfResType = new ResType[16];
    arrayOfResType[0] = Animation;
    arrayOfResType[1] = Boolean;
    arrayOfResType[2] = Color;
    arrayOfResType[3] = ColorStateList;
    arrayOfResType[4] = Dimension;
    arrayOfResType[5] = DimensionPixelOffset;
    arrayOfResType[6] = DimensionPixelSize;
    arrayOfResType[7] = Drawable;
    arrayOfResType[8] = Integer;
    arrayOfResType[9] = IntArray;
    arrayOfResType[10] = Movie;
    arrayOfResType[11] = String;
    arrayOfResType[12] = StringArray;
    arrayOfResType[13] = Text;
    arrayOfResType[14] = TextArray;
    arrayOfResType[15] = Xml;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.view.ResType
 * JD-Core Version:    0.6.2
 */