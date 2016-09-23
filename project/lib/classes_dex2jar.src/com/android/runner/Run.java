package com.android.runner;

import android.os.Bundle;
import android.os.RemoteException;
import com.android.runner.phone.Coolpad;
import com.android.runner.phone.GiONEE;
import com.android.runner.phone.Honor;
import com.android.runner.phone.Huawei;
import com.android.runner.phone.Meizu_MX3;
import com.android.runner.phone.Meizu_m1_note;
import com.android.runner.phone.OPPO;
import com.android.runner.phone.Samsung;
import com.android.runner.phone.Vivo;
import com.android.runner.phone.Xiaomi;
import com.android.uiautomator.core.UiDevice;
import com.android.uiautomator.core.UiObject;
import com.android.uiautomator.core.UiObjectNotFoundException;
import com.android.uiautomator.core.UiSelector;
import com.android.uiautomator.core.UiWatcher;
import com.android.uiautomator.testrunner.UiAutomatorTestCase;
import com.android.utils.PhoneUtils;
import com.android.utils.ShellHelper;
import com.android.utils.UIHelper;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class Run extends UiAutomatorTestCase
{
  static HashSet<String> AllowAppList = new HashSet();
  static boolean IsAllAllow = false;
  String[] Ignorepackagename = { "com.yulong.android.security", "com.oppo.purebackground", "com.oppo.safe", "com.iqoo.secure" };
  UiWatcher closeAlertWatcher = new UiWatcher()
  {
    public boolean checkForCondition()
    {
      UIHelper.CloseTopWindow();
      return true;
    }
  };
  UiDevice uiDevice;

  public static boolean AppIsNeedAutoStart(String paramString)
  {
    String str = paramString.trim();
    if (IsAllAllow);
    while (AllowAppList.contains(str))
      return true;
    return false;
  }

  void AddAllAllow()
  {
    for (String str : new String[] { "应用市场" })
      if (!AllowAppList.contains(str))
        AllowAppList.add(str);
  }

  void CloseRightModal()
  {
    int i = 0;
    int j = 0;
    int k = 0;
    ArrayList localArrayList = new ArrayList();
    List localList1 = GetModalInfo();
    int m = 0;
    if (m < localList1.size())
    {
      uiinfo localuiinfo = (uiinfo)localList1.get(m);
      if (localuiinfo.num > 0)
        localArrayList.add(Integer.valueOf(m));
      if (localuiinfo.text.contains("允许"))
        i = 1;
      if (localuiinfo.class_.equals("android.widget.Button"))
        k++;
      while (true)
      {
        m++;
        break;
        if (localuiinfo.class_.equals("android.widget.TextView"))
          j++;
      }
    }
    if ((i == 0) || (j < 2) || (k < 2) || (localArrayList.size() < 1));
    while (true)
    {
      return;
      try
      {
        Thread.sleep(1000L);
        List localList2 = GetModalInfo();
        Iterator localIterator = localArrayList.iterator();
        Integer localInteger;
        int i2;
        do
        {
          boolean bool = localIterator.hasNext();
          n = 0;
          if (!bool)
            break;
          localInteger = (Integer)localIterator.next();
          i2 = ((uiinfo)localList1.get(localInteger.intValue())).num;
        }
        while (((uiinfo)localList2.get(localInteger.intValue())).num <= i2);
        int n = 1;
        if (n == 0)
          continue;
        System.out.println("找到倒计时模态框，我要点掉他");
        int i1 = 0;
        while (i1 < 5)
        {
          UiObject localUiObject = new UiObject(new UiSelector().className("android.widget.Button").enabled(true).clickable(true).instance(i1));
          if (!localUiObject.exists())
            break;
          try
          {
            if ((localUiObject.getText().contains("允许")) || (localUiObject.getText().contains("确定")))
            {
              localUiObject.clickAndWaitForNewWindow();
              return;
            }
          }
          catch (UiObjectNotFoundException localUiObjectNotFoundException)
          {
            localUiObjectNotFoundException.printStackTrace();
            i1++;
          }
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          localInterruptedException.printStackTrace();
      }
    }
  }

  List<uiinfo> GetModalInfo()
  {
    // Byte code:
    //   0: new 69	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 70	java/util/ArrayList:<init>	()V
    //   7: astore_1
    //   8: iconst_0
    //   9: istore_2
    //   10: iload_2
    //   11: bipush 99
    //   13: if_icmpge +29 -> 42
    //   16: new 157	com/android/uiautomator/core/UiObject
    //   19: dup
    //   20: new 159	com/android/uiautomator/core/UiSelector
    //   23: dup
    //   24: invokespecial 160	com/android/uiautomator/core/UiSelector:<init>	()V
    //   27: iload_2
    //   28: invokevirtual 175	com/android/uiautomator/core/UiSelector:instance	(I)Lcom/android/uiautomator/core/UiSelector;
    //   31: invokespecial 178	com/android/uiautomator/core/UiObject:<init>	(Lcom/android/uiautomator/core/UiSelector;)V
    //   34: astore_3
    //   35: aload_3
    //   36: invokevirtual 181	com/android/uiautomator/core/UiObject:exists	()Z
    //   39: ifne +5 -> 44
    //   42: aload_1
    //   43: areturn
    //   44: new 195	com/android/runner/Run$2
    //   47: dup
    //   48: aload_0
    //   49: invokespecial 196	com/android/runner/Run$2:<init>	(Lcom/android/runner/Run;)V
    //   52: astore 4
    //   54: aload 4
    //   56: aload_3
    //   57: invokevirtual 184	com/android/uiautomator/core/UiObject:getText	()Ljava/lang/String;
    //   60: putfield 101	com/android/runner/Run$uiinfo:text	Ljava/lang/String;
    //   63: aload 4
    //   65: getfield 101	com/android/runner/Run$uiinfo:text	Ljava/lang/String;
    //   68: ldc 198
    //   70: invokevirtual 114	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   73: ifeq +6 -> 79
    //   76: goto +128 -> 204
    //   79: aload 4
    //   81: aload_3
    //   82: invokevirtual 201	com/android/uiautomator/core/UiObject:getClassName	()Ljava/lang/String;
    //   85: putfield 109	com/android/runner/Run$uiinfo:class_	Ljava/lang/String;
    //   88: aload 4
    //   90: iload_2
    //   91: putfield 203	com/android/runner/Run$uiinfo:instance	I
    //   94: new 205	java/lang/StringBuilder
    //   97: dup
    //   98: invokespecial 206	java/lang/StringBuilder:<init>	()V
    //   101: astore 6
    //   103: aload 4
    //   105: getfield 101	com/android/runner/Run$uiinfo:text	Ljava/lang/String;
    //   108: invokevirtual 210	java/lang/String:toCharArray	()[C
    //   111: astore 7
    //   113: iconst_0
    //   114: istore 8
    //   116: iload 8
    //   118: aload 7
    //   120: arraylength
    //   121: if_icmpge +37 -> 158
    //   124: aload 7
    //   126: iload 8
    //   128: caload
    //   129: bipush 48
    //   131: if_icmplt +79 -> 210
    //   134: aload 7
    //   136: iload 8
    //   138: caload
    //   139: bipush 57
    //   141: if_icmpgt +69 -> 210
    //   144: aload 6
    //   146: aload 7
    //   148: iload 8
    //   150: caload
    //   151: invokevirtual 214	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   154: pop
    //   155: goto +55 -> 210
    //   158: aload 6
    //   160: invokevirtual 217	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   163: astore 9
    //   165: aload 9
    //   167: ldc 198
    //   169: invokevirtual 114	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   172: ifne +13 -> 185
    //   175: aload 4
    //   177: aload 9
    //   179: invokestatic 221	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   182: putfield 90	com/android/runner/Run$uiinfo:num	I
    //   185: aload_1
    //   186: aload 4
    //   188: invokeinterface 97 2 0
    //   193: pop
    //   194: goto +10 -> 204
    //   197: astore 5
    //   199: aload 5
    //   201: invokevirtual 192	com/android/uiautomator/core/UiObjectNotFoundException:printStackTrace	()V
    //   204: iinc 2 1
    //   207: goto -197 -> 10
    //   210: iinc 8 1
    //   213: goto -97 -> 116
    //
    // Exception table:
    //   from	to	target	type
    //   54	76	197	com/android/uiautomator/core/UiObjectNotFoundException
    //   79	113	197	com/android/uiautomator/core/UiObjectNotFoundException
    //   116	155	197	com/android/uiautomator/core/UiObjectNotFoundException
    //   158	185	197	com/android/uiautomator/core/UiObjectNotFoundException
    //   185	194	197	com/android/uiautomator/core/UiObjectNotFoundException
  }

  boolean IsNeedOpen(String paramString)
  {
    return true;
  }

  public void MAIN()
  {
    System.out.print('\001');
    System.out.println("start....");
    Thread local3 = new Thread()
    {
      public void run()
      {
        try
        {
          while (true)
          {
            UiDevice.getInstance().wakeUp();
            try
            {
              Thread.sleep(1000L);
            }
            catch (InterruptedException localInterruptedException)
            {
              localInterruptedException.printStackTrace();
            }
          }
        }
        catch (RemoteException localRemoteException)
        {
          while (true)
            localRemoteException.printStackTrace();
        }
      }
    };
    local3.setDaemon(true);
    local3.setPriority(10);
    local3.start();
    String str1 = PhoneUtils.getInstance().Brand;
    String str2 = PhoneUtils.getInstance().Model;
    System.out.print("brand:" + str1 + ",model:" + str2 + "\n");
    String str3 = getParams().getString("applist");
    int i = 1;
    int j = 0;
    if (str3 != null)
    {
      System.out.print("applist:" + str3 + "\n");
      String[] arrayOfString = str3.split(",");
      int n = arrayOfString.length;
      int i1 = 0;
      if (i1 < n)
      {
        String str5 = arrayOfString[i1].trim();
        if (str5.equals("all"))
          AddAllAllow();
        while (true)
        {
          i1++;
          break;
          if (str5.equals("donotdisableapp"))
          {
            AddAllAllow();
            i = 0;
          }
          else if (str5.equals("justdisableapp"))
          {
            j = 1;
          }
          else if (!AllowAppList.contains(str5))
          {
            AllowAppList.add(str5);
          }
        }
      }
    }
    getUiDevice();
    this.uiDevice = UiDevice.getInstance();
    String str4 = ShellHelper.ExecShell(new String[] { "sh", "-c", "cat /system/build.prop | grep 'ro.build.version.sdk='" }).replace("ro.build.version.sdk=", "").replace("\n", "").trim();
    try
    {
      int m = Integer.parseInt(str4);
      k = m;
      System.out.println("android SDK:" + k);
      if (k > 17)
        this.uiDevice.setCompressedLayoutHeirarchy(true);
      try
      {
        this.uiDevice.setOrientationNatural();
        UiDevice.getInstance().registerWatcher("CLOSE_ALERT_WATCHER", this.closeAlertWatcher);
        UiDevice.getInstance().runWatchers();
        if (str1.equals("Meizu"))
          if (str2.contains("m1 note"))
          {
            new Meizu_m1_note().LogInLogOut(str3);
            UiDevice.getInstance().removeWatcher("CLOSE_ALERT_WATCHER");
            System.out.print("end....\n");
            System.out.print('\002');
            return;
          }
      }
      catch (RemoteException localRemoteException)
      {
        while (true)
        {
          localRemoteException.printStackTrace();
          continue;
          if (str2.contains("MX3"))
          {
            new Meizu_MX3().LogInLogOut(str3);
            continue;
            if (j != 0)
            {
              new DisableApp().disableapp();
            }
            else
            {
              if (i != 0)
                new DisableApp().disableapp();
              if (str1.equals("vivo"))
                new Vivo().run();
              else if (str1.equals("OPPO"))
                new OPPO().run();
              else if (str1.equals("Coolpad"))
                new Coolpad().run();
              else if (str1.equals("Xiaomi"))
                new Xiaomi().run();
              else if (str1.equals("Honor"))
                new Honor().run();
              else if (str1.equals("Huawei"))
                new Huawei().run();
              else if (str1.equals("GiONEE"))
                new GiONEE().run();
              else if (str1.equals("samsung"))
                new Samsung().run();
            }
          }
        }
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (true)
        int k = 0;
    }
  }

  class uiinfo
  {
    public String class_;
    public int instance;
    public int num;
    public String text;

    uiinfo()
    {
    }
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.Run
 * JD-Core Version:    0.6.2
 */