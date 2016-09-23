package com.android.uiautomatorstub.watcher;

import com.android.uiautomator.core.UiObject;
import com.android.uiautomator.core.UiSelector;
import com.android.uiautomator.core.UiWatcher;

public abstract class SelectorWatcher
  implements UiWatcher
{
  private UiSelector[] conditions = null;

  public SelectorWatcher(UiSelector[] paramArrayOfUiSelector)
  {
    this.conditions = paramArrayOfUiSelector;
  }

  public abstract void action();

  public boolean checkForCondition()
  {
    UiSelector[] arrayOfUiSelector = this.conditions;
    int i = arrayOfUiSelector.length;
    for (int j = 0; j < i; j++)
      if (!new UiObject(arrayOfUiSelector[j]).exists())
        return false;
    action();
    return true;
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.uiautomatorstub.watcher.SelectorWatcher
 * JD-Core Version:    0.6.2
 */