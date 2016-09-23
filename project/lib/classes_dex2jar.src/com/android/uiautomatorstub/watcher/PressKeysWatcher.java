package com.android.uiautomatorstub.watcher;

import android.os.RemoteException;
import com.android.uiautomator.core.UiDevice;
import com.android.uiautomator.core.UiSelector;
import com.android.uiautomatorstub.Log;

public class PressKeysWatcher extends SelectorWatcher
{
  private String[] keys = new String[0];

  public PressKeysWatcher(UiSelector[] paramArrayOfUiSelector, String[] paramArrayOfString)
  {
    super(paramArrayOfUiSelector);
    this.keys = paramArrayOfString;
  }

  public void action()
  {
    Log.d("PressKeysWatcher triggered!");
    String[] arrayOfString = this.keys;
    int i = arrayOfString.length;
    int j = 0;
    if (j < i)
    {
      String str = arrayOfString[j].toLowerCase();
      if ("home".equals(str))
        UiDevice.getInstance().pressHome();
      while (true)
      {
        j++;
        break;
        if ("back".equals(str))
          UiDevice.getInstance().pressBack();
        else if ("left".equals(str))
          UiDevice.getInstance().pressDPadLeft();
        else if ("right".equals(str))
          UiDevice.getInstance().pressDPadRight();
        else if ("up".equals(str))
          UiDevice.getInstance().pressDPadUp();
        else if ("down".equals(str))
          UiDevice.getInstance().pressDPadDown();
        else if ("center".equals(str))
          UiDevice.getInstance().pressDPadCenter();
        else if ("menu".equals(str))
          UiDevice.getInstance().pressMenu();
        else if ("search".equals(str))
          UiDevice.getInstance().pressSearch();
        else if ("enter".equals(str))
          UiDevice.getInstance().pressEnter();
        else if (("delete".equals(str)) || ("del".equals(str)))
          UiDevice.getInstance().pressDelete();
        else if ("recent".equals(str))
          try
          {
            UiDevice.getInstance().pressRecentApps();
          }
          catch (RemoteException localRemoteException)
          {
            Log.d(localRemoteException.getMessage());
          }
        else if ("volume_up".equals(str))
          UiDevice.getInstance().pressKeyCode(24);
        else if ("volume_down".equals(str))
          UiDevice.getInstance().pressKeyCode(25);
        else if ("volume_mute".equals(str))
          UiDevice.getInstance().pressKeyCode(164);
        else if ("camera".equals(str))
          UiDevice.getInstance().pressKeyCode(27);
        else if ("power".equals(str))
          UiDevice.getInstance().pressKeyCode(26);
      }
    }
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.uiautomatorstub.watcher.PressKeysWatcher
 * JD-Core Version:    0.6.2
 */