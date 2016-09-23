package run;

import com.android.uiautomator.core.UiObjectNotFoundException;
import com.android.uiautomator.testrunner.UiAutomatorTestCase;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintStream;

public class RunSamsung extends UiAutomatorTestCase
{
  String activationSuccess = "设备已解锁";
  long current = System.currentTimeMillis();
  String[] keylist = { "确定" };
  int outTime = 30000;
  long strtTime = System.currentTimeMillis();
  boolean success = false;

  // ERROR //
  private void autuclick()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 39	java/lang/System:currentTimeMillis	()J
    //   4: putfield 43	run/RunSamsung:current	J
    //   7: aload_0
    //   8: invokevirtual 50	run/RunSamsung:getUiDevice	()Lcom/android/uiautomator/core/UiDevice;
    //   11: invokevirtual 55	com/android/uiautomator/core/UiDevice:wakeUp	()V
    //   14: new 57	com/android/uiautomator/core/UiObject
    //   17: dup
    //   18: new 59	com/android/uiautomator/core/UiSelector
    //   21: dup
    //   22: invokespecial 60	com/android/uiautomator/core/UiSelector:<init>	()V
    //   25: ldc 62
    //   27: invokevirtual 66	com/android/uiautomator/core/UiSelector:packageName	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    //   30: invokespecial 69	com/android/uiautomator/core/UiObject:<init>	(Lcom/android/uiautomator/core/UiSelector;)V
    //   33: invokevirtual 73	com/android/uiautomator/core/UiObject:exists	()Z
    //   36: ifne +154 -> 190
    //   39: return
    //   40: iload_2
    //   41: aload_0
    //   42: getfield 25	run/RunSamsung:keylist	[Ljava/lang/String;
    //   45: arraylength
    //   46: if_icmpge +143 -> 189
    //   49: aload_0
    //   50: getfield 25	run/RunSamsung:keylist	[Ljava/lang/String;
    //   53: iload_2
    //   54: aaload
    //   55: astore_3
    //   56: new 57	com/android/uiautomator/core/UiObject
    //   59: dup
    //   60: new 59	com/android/uiautomator/core/UiSelector
    //   63: dup
    //   64: invokespecial 60	com/android/uiautomator/core/UiSelector:<init>	()V
    //   67: ldc 75
    //   69: invokevirtual 78	com/android/uiautomator/core/UiSelector:className	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    //   72: aload_0
    //   73: getfield 29	run/RunSamsung:activationSuccess	Ljava/lang/String;
    //   76: invokevirtual 81	com/android/uiautomator/core/UiSelector:textContains	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    //   79: invokespecial 69	com/android/uiautomator/core/UiObject:<init>	(Lcom/android/uiautomator/core/UiSelector;)V
    //   82: invokevirtual 73	com/android/uiautomator/core/UiObject:exists	()Z
    //   85: ifeq +37 -> 122
    //   88: getstatic 85	java/lang/System:out	Ljava/io/PrintStream;
    //   91: ldc 87
    //   93: invokevirtual 93	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   96: aload_0
    //   97: iconst_1
    //   98: putfield 31	run/RunSamsung:success	Z
    //   101: ldc2_w 94
    //   104: invokestatic 101	android/os/SystemClock:sleep	(J)V
    //   107: aload_0
    //   108: iconst_1
    //   109: invokestatic 107	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   112: invokespecial 111	run/RunSamsung:writeSuccessToSD	(Ljava/lang/Boolean;)V
    //   115: return
    //   116: astore_1
    //   117: aload_1
    //   118: invokevirtual 114	java/lang/Exception:printStackTrace	()V
    //   121: return
    //   122: new 57	com/android/uiautomator/core/UiObject
    //   125: dup
    //   126: new 59	com/android/uiautomator/core/UiSelector
    //   129: dup
    //   130: invokespecial 60	com/android/uiautomator/core/UiSelector:<init>	()V
    //   133: ldc 116
    //   135: invokevirtual 78	com/android/uiautomator/core/UiSelector:className	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    //   138: aload_3
    //   139: invokevirtual 119	com/android/uiautomator/core/UiSelector:text	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    //   142: invokespecial 69	com/android/uiautomator/core/UiObject:<init>	(Lcom/android/uiautomator/core/UiSelector;)V
    //   145: astore 4
    //   147: aload 4
    //   149: invokevirtual 73	com/android/uiautomator/core/UiObject:exists	()Z
    //   152: ifeq +26 -> 178
    //   155: aload 4
    //   157: invokevirtual 122	com/android/uiautomator/core/UiObject:isEnabled	()Z
    //   160: ifeq +18 -> 178
    //   163: getstatic 85	java/lang/System:out	Ljava/io/PrintStream;
    //   166: ldc 124
    //   168: invokevirtual 93	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   171: aload 4
    //   173: invokevirtual 127	com/android/uiautomator/core/UiObject:click	()Z
    //   176: pop
    //   177: return
    //   178: iinc 2 1
    //   181: goto -141 -> 40
    //   184: astore 6
    //   186: goto -79 -> 107
    //   189: return
    //   190: iconst_0
    //   191: istore_2
    //   192: goto -152 -> 40
    //
    // Exception table:
    //   from	to	target	type
    //   0	39	116	java/lang/Exception
    //   40	101	116	java/lang/Exception
    //   107	115	116	java/lang/Exception
    //   122	177	116	java/lang/Exception
    //   101	107	184	java/lang/Exception
  }

  private boolean isTimeOut()
  {
    return this.current - this.strtTime > this.outTime;
  }

  private void writeSuccessToSD(Boolean paramBoolean)
  {
    String str = "/data/local/tmp/click_timeout";
    if (paramBoolean.booleanValue())
      str = "/data/local/tmp/click_success";
    File localFile = new File(str);
    try
    {
      if (!localFile.exists())
      {
        localFile.createNewFile();
        return;
      }
      new FileWriter(localFile).write("1");
      return;
    }
    catch (Exception localException)
    {
      System.out.println("" + localException.toString());
    }
  }

  public void testDemo()
    throws UiObjectNotFoundException
  {
    while ((!this.success) && (!isTimeOut()))
      autuclick();
    if (isTimeOut())
      writeSuccessToSD(Boolean.valueOf(false));
  }
}

/* Location:           C:\Users\Tato\Desktop\uiclick\classes_dex2jar.jar
 * Qualified Name:     run.RunSamsung
 * JD-Core Version:    0.6.2
 */