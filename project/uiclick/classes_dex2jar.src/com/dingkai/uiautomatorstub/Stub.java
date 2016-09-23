package com.dingkai.uiautomatorstub;

import com.android.uiautomator.testrunner.UiAutomatorTestCase;

public class Stub extends UiAutomatorTestCase
{
  private static final int TEST_TOLERANCE = 3;

  protected void setUp()
    throws Exception
  {
    super.setUp();
    Log.d("UiAutomator started.");
  }

  protected void tearDown()
    throws Exception
  {
    Log.d("UiAutomator stopped.");
    super.tearDown();
  }

  // ERROR //
  @android.test.FlakyTest(tolerance=3)
  @android.test.suitebuilder.annotation.LargeTest
  public void testUIAutomatorStub()
    throws java.lang.InterruptedException
  {
    // Byte code:
    //   0: new 41	java/io/File
    //   3: dup
    //   4: ldc 43
    //   6: invokespecial 45	java/io/File:<init>	(Ljava/lang/String;)V
    //   9: astore_1
    //   10: aconst_null
    //   11: astore_2
    //   12: new 47	java/io/BufferedReader
    //   15: dup
    //   16: new 49	java/io/FileReader
    //   19: dup
    //   20: aload_1
    //   21: invokespecial 52	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   24: invokespecial 55	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   27: astore_3
    //   28: iconst_1
    //   29: istore 4
    //   31: aload_3
    //   32: invokevirtual 59	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   35: astore 10
    //   37: aload 10
    //   39: ifnull +148 -> 187
    //   42: aload 10
    //   44: ldc 61
    //   46: invokevirtual 67	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   49: astore 11
    //   51: aload 11
    //   53: arraylength
    //   54: iconst_2
    //   55: if_icmplt -24 -> 31
    //   58: aload 11
    //   60: iconst_1
    //   61: aaload
    //   62: astore 12
    //   64: aload 11
    //   66: iconst_0
    //   67: aaload
    //   68: ldc 69
    //   70: invokevirtual 67	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   73: astore 13
    //   75: aload 13
    //   77: arraylength
    //   78: anewarray 71	com/android/uiautomator/core/UiSelector
    //   81: astore 14
    //   83: iconst_0
    //   84: istore 15
    //   86: iload 15
    //   88: aload 13
    //   90: arraylength
    //   91: if_icmpge +37 -> 128
    //   94: aload 13
    //   96: iload 15
    //   98: aaload
    //   99: invokevirtual 75	java/lang/String:isEmpty	()Z
    //   102: ifne +191 -> 293
    //   105: aload 14
    //   107: iload 15
    //   109: new 71	com/android/uiautomator/core/UiSelector
    //   112: dup
    //   113: invokespecial 76	com/android/uiautomator/core/UiSelector:<init>	()V
    //   116: aload 13
    //   118: iload 15
    //   120: aaload
    //   121: invokevirtual 80	com/android/uiautomator/core/UiSelector:textContains	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    //   124: aastore
    //   125: goto +168 -> 293
    //   128: invokestatic 86	com/android/uiautomator/core/UiDevice:getInstance	()Lcom/android/uiautomator/core/UiDevice;
    //   131: astore 16
    //   133: iconst_1
    //   134: anewarray 88	java/lang/Object
    //   137: astore 17
    //   139: aload 17
    //   141: iconst_0
    //   142: iload 4
    //   144: invokestatic 94	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   147: aastore
    //   148: aload 16
    //   150: ldc 96
    //   152: aload 17
    //   154: invokestatic 100	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   157: new 102	com/dingkai/uiautomatorstub/watcher/ClickUiObjectWatcher
    //   160: dup
    //   161: aload 14
    //   163: new 71	com/android/uiautomator/core/UiSelector
    //   166: dup
    //   167: invokespecial 76	com/android/uiautomator/core/UiSelector:<init>	()V
    //   170: aload 12
    //   172: invokevirtual 105	com/android/uiautomator/core/UiSelector:text	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiSelector;
    //   175: invokespecial 108	com/dingkai/uiautomatorstub/watcher/ClickUiObjectWatcher:<init>	([Lcom/android/uiautomator/core/UiSelector;Lcom/android/uiautomator/core/UiSelector;)V
    //   178: invokevirtual 112	com/android/uiautomator/core/UiDevice:registerWatcher	(Ljava/lang/String;Lcom/android/uiautomator/core/UiWatcher;)V
    //   181: iinc 4 1
    //   184: goto -153 -> 31
    //   187: aload_3
    //   188: invokevirtual 115	java/io/BufferedReader:close	()V
    //   191: aload_3
    //   192: ifnull +98 -> 290
    //   195: aload_3
    //   196: invokevirtual 115	java/io/BufferedReader:close	()V
    //   199: invokestatic 86	com/android/uiautomator/core/UiDevice:getInstance	()Lcom/android/uiautomator/core/UiDevice;
    //   202: invokevirtual 118	com/android/uiautomator/core/UiDevice:wakeUp	()V
    //   205: invokestatic 86	com/android/uiautomator/core/UiDevice:getInstance	()Lcom/android/uiautomator/core/UiDevice;
    //   208: invokevirtual 121	com/android/uiautomator/core/UiDevice:runWatchers	()V
    //   211: ldc2_w 122
    //   214: invokestatic 129	java/lang/Thread:sleep	(J)V
    //   217: goto -18 -> 199
    //   220: astore 18
    //   222: goto -23 -> 199
    //   225: astore 5
    //   227: aload 5
    //   229: invokevirtual 132	java/io/IOException:printStackTrace	()V
    //   232: aload_2
    //   233: ifnull -34 -> 199
    //   236: aload_2
    //   237: invokevirtual 115	java/io/BufferedReader:close	()V
    //   240: goto -41 -> 199
    //   243: astore 8
    //   245: goto -46 -> 199
    //   248: astore 6
    //   250: aload_2
    //   251: ifnull +7 -> 258
    //   254: aload_2
    //   255: invokevirtual 115	java/io/BufferedReader:close	()V
    //   258: aload 6
    //   260: athrow
    //   261: astore 9
    //   263: aload 9
    //   265: invokevirtual 133	android/os/RemoteException:printStackTrace	()V
    //   268: goto -63 -> 205
    //   271: astore 7
    //   273: goto -15 -> 258
    //   276: astore 6
    //   278: aload_3
    //   279: astore_2
    //   280: goto -30 -> 250
    //   283: astore 5
    //   285: aload_3
    //   286: astore_2
    //   287: goto -60 -> 227
    //   290: goto -91 -> 199
    //   293: iinc 15 1
    //   296: goto -210 -> 86
    //
    // Exception table:
    //   from	to	target	type
    //   195	199	220	java/io/IOException
    //   12	28	225	java/io/IOException
    //   236	240	243	java/io/IOException
    //   12	28	248	finally
    //   227	232	248	finally
    //   199	205	261	android/os/RemoteException
    //   254	258	271	java/io/IOException
    //   31	37	276	finally
    //   42	83	276	finally
    //   86	125	276	finally
    //   128	181	276	finally
    //   187	191	276	finally
    //   31	37	283	java/io/IOException
    //   42	83	283	java/io/IOException
    //   86	125	283	java/io/IOException
    //   128	181	283	java/io/IOException
    //   187	191	283	java/io/IOException
  }
}

/* Location:           C:\Users\Tato\Desktop\uiclick\classes_dex2jar.jar
 * Qualified Name:     com.dingkai.uiautomatorstub.Stub
 * JD-Core Version:    0.6.2
 */