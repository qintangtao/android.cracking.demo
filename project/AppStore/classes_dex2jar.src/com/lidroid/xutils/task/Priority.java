package com.lidroid.xutils.task;

public enum Priority
{
  static
  {
    UI_NORMAL = new Priority("UI_NORMAL", 1);
    UI_LOW = new Priority("UI_LOW", 2);
    DEFAULT = new Priority("DEFAULT", 3);
    BG_TOP = new Priority("BG_TOP", 4);
    BG_NORMAL = new Priority("BG_NORMAL", 5);
    BG_LOW = new Priority("BG_LOW", 6);
    Priority[] arrayOfPriority = new Priority[7];
    arrayOfPriority[0] = UI_TOP;
    arrayOfPriority[1] = UI_NORMAL;
    arrayOfPriority[2] = UI_LOW;
    arrayOfPriority[3] = DEFAULT;
    arrayOfPriority[4] = BG_TOP;
    arrayOfPriority[5] = BG_NORMAL;
    arrayOfPriority[6] = BG_LOW;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.task.Priority
 * JD-Core Version:    0.6.2
 */