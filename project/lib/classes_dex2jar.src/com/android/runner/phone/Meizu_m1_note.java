package com.android.runner.phone;

import com.android.uiautomator.core.UiObject;
import com.android.uiautomator.core.UiObjectNotFoundException;
import com.android.uiautomator.testrunner.UiAutomatorTestCase;
import com.android.utils.ShellHelper;
import com.android.utils.UIHelper;
import java.io.PrintStream;

public class Meizu_m1_note extends UiAutomatorTestCase
{
  String acc_str = "hunknug";
  String pwd_code = "44 51 32 11 36 39 42 35 32";
  String pwd_str = "pwd4hkngd";

  boolean GetRootRight()
  {
    if (UIHelper.FindByText("已开启") == null)
    {
      System.out.println("can not find yikaiqi");
      if (UIHelper.FindLikeClickButtonToNewWindow("系统权限", 4))
      {
        if (UIHelper.FindSwitchToOpen("com.meizu.account:id/agreeCheck"))
        {
          if (UIHelper.FindClickButtonToNewWindow("确定", 1))
          {
            try
            {
              Thread.sleep(500L);
              localUiObject = UIHelper.GetUiObjectByResourceid("com.meizu.account:id/PasswordEdit");
              if (localUiObject == null)
                break label183;
            }
            catch (InterruptedException localInterruptedException1)
            {
              try
              {
                while (true)
                {
                  UiObject localUiObject;
                  System.out.println("click pwd");
                  localUiObject.click();
                  try
                  {
                    Thread.sleep(500L);
                    ShellHelper.ExecShell("input keyevent " + this.pwd_code);
                    System.out.print("RE:LOGIN SUCC\n");
                    if (UIHelper.FindClickButtonToNewWindow("确定", 1))
                    {
                      System.out.println("a1");
                      return true;
                      localInterruptedException1 = localInterruptedException1;
                      localInterruptedException1.printStackTrace();
                    }
                  }
                  catch (InterruptedException localInterruptedException2)
                  {
                    while (true)
                      localInterruptedException2.printStackTrace();
                  }
                }
              }
              catch (UiObjectNotFoundException localUiObjectNotFoundException)
              {
                localUiObjectNotFoundException.printStackTrace();
                System.out.println("a11");
                return LogInLogOut("login");
              }
            }
            System.out.println("a2");
            return LogInLogOut("login");
            label183: System.out.println("a0");
            return LogInLogOut("login");
          }
          return LogInLogOut("login");
        }
        System.out.print("RE:LOGIN SUCC\n");
        return true;
      }
      System.out.println("can not find button xi tong quan xian");
      return LogInLogOut("login");
    }
    System.out.println("find yikaiqi");
    System.out.print("RE:LOGIN SUCC\n");
    return true;
  }

  // ERROR //
  public boolean LogInLogOut(String paramString)
  {
    // Byte code:
    //   0: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   3: ldc 136
    //   5: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   8: ldc 138
    //   10: invokestatic 141	com/android/utils/UIHelper:StartApp	(Ljava/lang/String;)Z
    //   13: pop
    //   14: ldc 143
    //   16: invokestatic 108	com/android/utils/ShellHelper:ExecShell	(Ljava/lang/String;)Ljava/lang/String;
    //   19: pop
    //   20: ldc 138
    //   22: invokestatic 141	com/android/utils/UIHelper:StartApp	(Ljava/lang/String;)Z
    //   25: pop
    //   26: ldc2_w 144
    //   29: invokestatic 77	java/lang/Thread:sleep	(J)V
    //   32: invokestatic 148	com/android/utils/UIHelper:CloseTopWindow	()Z
    //   35: pop
    //   36: invokestatic 154	com/android/uiautomator/core/UiDevice:getInstance	()Lcom/android/uiautomator/core/UiDevice;
    //   39: sipush 145
    //   42: sipush 431
    //   45: invokevirtual 157	com/android/uiautomator/core/UiDevice:click	(II)Z
    //   48: pop
    //   49: ldc2_w 144
    //   52: invokestatic 77	java/lang/Thread:sleep	(J)V
    //   55: ldc 159
    //   57: invokestatic 82	com/android/utils/UIHelper:GetUiObjectByResourceid	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    //   60: astore 9
    //   62: ldc 161
    //   64: invokestatic 82	com/android/utils/UIHelper:GetUiObjectByResourceid	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    //   67: astore 10
    //   69: aload 10
    //   71: ifnonnull +10 -> 81
    //   74: ldc 163
    //   76: invokestatic 82	com/android/utils/UIHelper:GetUiObjectByResourceid	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    //   79: astore 10
    //   81: aload_1
    //   82: ldc 165
    //   84: invokevirtual 171	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   87: ifeq +309 -> 396
    //   90: aload 10
    //   92: ifnull +33 -> 125
    //   95: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   98: ldc 110
    //   100: invokevirtual 113	java/io/PrintStream:print	(Ljava/lang/String;)V
    //   103: iconst_1
    //   104: ireturn
    //   105: astore 5
    //   107: aload 5
    //   109: invokevirtual 118	java/lang/InterruptedException:printStackTrace	()V
    //   112: goto -80 -> 32
    //   115: astore 8
    //   117: aload 8
    //   119: invokevirtual 118	java/lang/InterruptedException:printStackTrace	()V
    //   122: goto -67 -> 55
    //   125: aload 9
    //   127: ifnull +255 -> 382
    //   130: aload 9
    //   132: invokevirtual 174	com/android/uiautomator/core/UiObject:clickAndWaitForNewWindow	()Z
    //   135: ifeq +229 -> 364
    //   138: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   141: ldc 176
    //   143: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   146: ldc2_w 177
    //   149: invokestatic 77	java/lang/Thread:sleep	(J)V
    //   152: ldc 180
    //   154: invokestatic 108	com/android/utils/ShellHelper:ExecShell	(Ljava/lang/String;)Ljava/lang/String;
    //   157: pop
    //   158: ldc 182
    //   160: iconst_5
    //   161: invokestatic 69	com/android/utils/UIHelper:FindClickButtonToNewWindow	(Ljava/lang/String;I)Z
    //   164: ifeq +186 -> 350
    //   167: ldc 184
    //   169: iconst_1
    //   170: invokestatic 69	com/android/utils/UIHelper:FindClickButtonToNewWindow	(Ljava/lang/String;I)Z
    //   173: istore 28
    //   175: iload 28
    //   177: ifeq +159 -> 336
    //   180: ldc2_w 144
    //   183: invokestatic 77	java/lang/Thread:sleep	(J)V
    //   186: ldc 79
    //   188: invokestatic 82	com/android/utils/UIHelper:GetUiObjectByResourceid	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    //   191: ifnull +117 -> 308
    //   194: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   197: ldc 186
    //   199: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   202: ldc2_w 70
    //   205: invokestatic 77	java/lang/Thread:sleep	(J)V
    //   208: new 91	java/lang/StringBuilder
    //   211: dup
    //   212: invokespecial 92	java/lang/StringBuilder:<init>	()V
    //   215: ldc 94
    //   217: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   220: aload_0
    //   221: getfield 24	com/android/runner/phone/Meizu_m1_note:pwd_code	Ljava/lang/String;
    //   224: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   227: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   230: invokestatic 108	com/android/utils/ShellHelper:ExecShell	(Ljava/lang/String;)Ljava/lang/String;
    //   233: pop
    //   234: ldc 66
    //   236: iconst_1
    //   237: invokestatic 69	com/android/utils/UIHelper:FindClickButtonToNewWindow	(Ljava/lang/String;I)Z
    //   240: ifeq +82 -> 322
    //   243: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   246: ldc 115
    //   248: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   251: aload_0
    //   252: aload_1
    //   253: invokevirtual 126	com/android/runner/phone/Meizu_m1_note:LogInLogOut	(Ljava/lang/String;)Z
    //   256: ireturn
    //   257: astore 26
    //   259: aload 26
    //   261: invokevirtual 118	java/lang/InterruptedException:printStackTrace	()V
    //   264: goto -112 -> 152
    //   267: astore 24
    //   269: aload 24
    //   271: invokevirtual 119	com/android/uiautomator/core/UiObjectNotFoundException:printStackTrace	()V
    //   274: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   277: ldc 188
    //   279: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   282: aload_0
    //   283: aload_1
    //   284: invokevirtual 126	com/android/runner/phone/Meizu_m1_note:LogInLogOut	(Ljava/lang/String;)Z
    //   287: ireturn
    //   288: astore 29
    //   290: aload 29
    //   292: invokevirtual 118	java/lang/InterruptedException:printStackTrace	()V
    //   295: goto -109 -> 186
    //   298: astore 30
    //   300: aload 30
    //   302: invokevirtual 118	java/lang/InterruptedException:printStackTrace	()V
    //   305: goto -97 -> 208
    //   308: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   311: ldc 130
    //   313: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   316: aload_0
    //   317: aload_1
    //   318: invokevirtual 126	com/android/runner/phone/Meizu_m1_note:LogInLogOut	(Ljava/lang/String;)Z
    //   321: ireturn
    //   322: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   325: ldc 128
    //   327: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   330: aload_0
    //   331: aload_1
    //   332: invokevirtual 126	com/android/runner/phone/Meizu_m1_note:LogInLogOut	(Ljava/lang/String;)Z
    //   335: ireturn
    //   336: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   339: ldc 190
    //   341: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   344: aload_0
    //   345: aload_1
    //   346: invokevirtual 126	com/android/runner/phone/Meizu_m1_note:LogInLogOut	(Ljava/lang/String;)Z
    //   349: ireturn
    //   350: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   353: ldc 192
    //   355: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   358: aload_0
    //   359: aload_1
    //   360: invokevirtual 126	com/android/runner/phone/Meizu_m1_note:LogInLogOut	(Ljava/lang/String;)Z
    //   363: ireturn
    //   364: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   367: ldc 194
    //   369: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   372: aload_0
    //   373: aload_1
    //   374: invokevirtual 126	com/android/runner/phone/Meizu_m1_note:LogInLogOut	(Ljava/lang/String;)Z
    //   377: istore 25
    //   379: iload 25
    //   381: ireturn
    //   382: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   385: ldc 196
    //   387: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   390: aload_0
    //   391: aload_1
    //   392: invokevirtual 126	com/android/runner/phone/Meizu_m1_note:LogInLogOut	(Ljava/lang/String;)Z
    //   395: ireturn
    //   396: aload_1
    //   397: ldc 123
    //   399: invokevirtual 171	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   402: ifeq -299 -> 103
    //   405: aload 9
    //   407: ifnull +83 -> 490
    //   410: aload 9
    //   412: invokevirtual 174	com/android/uiautomator/core/UiObject:clickAndWaitForNewWindow	()Z
    //   415: istore 21
    //   417: iload 21
    //   419: ifeq +53 -> 472
    //   422: ldc2_w 177
    //   425: invokestatic 77	java/lang/Thread:sleep	(J)V
    //   428: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   431: ldc 110
    //   433: invokevirtual 113	java/io/PrintStream:print	(Ljava/lang/String;)V
    //   436: aload_0
    //   437: invokevirtual 198	com/android/runner/phone/Meizu_m1_note:GetRootRight	()Z
    //   440: ireturn
    //   441: astore 23
    //   443: aload 23
    //   445: invokevirtual 118	java/lang/InterruptedException:printStackTrace	()V
    //   448: goto -20 -> 428
    //   451: astore 20
    //   453: aload 20
    //   455: invokevirtual 119	com/android/uiautomator/core/UiObjectNotFoundException:printStackTrace	()V
    //   458: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   461: ldc 200
    //   463: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   466: aload_0
    //   467: aload_1
    //   468: invokevirtual 126	com/android/runner/phone/Meizu_m1_note:LogInLogOut	(Ljava/lang/String;)Z
    //   471: ireturn
    //   472: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   475: ldc 202
    //   477: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   480: aload_0
    //   481: aload_1
    //   482: invokevirtual 126	com/android/runner/phone/Meizu_m1_note:LogInLogOut	(Ljava/lang/String;)Z
    //   485: istore 22
    //   487: iload 22
    //   489: ireturn
    //   490: aload 10
    //   492: ifnull +213 -> 705
    //   495: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   498: new 91	java/lang/StringBuilder
    //   501: dup
    //   502: invokespecial 92	java/lang/StringBuilder:<init>	()V
    //   505: ldc 204
    //   507: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   510: aload 10
    //   512: invokevirtual 208	com/android/uiautomator/core/UiObject:getBounds	()Landroid/graphics/Rect;
    //   515: invokevirtual 211	android/graphics/Rect:toString	()Ljava/lang/String;
    //   518: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   521: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   524: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   527: aload 10
    //   529: invokevirtual 89	com/android/uiautomator/core/UiObject:click	()Z
    //   532: pop
    //   533: aload 10
    //   535: aload_0
    //   536: getfield 16	com/android/runner/phone/Meizu_m1_note:acc_str	Ljava/lang/String;
    //   539: invokevirtual 214	com/android/uiautomator/core/UiObject:setText	(Ljava/lang/String;)Z
    //   542: pop
    //   543: ldc2_w 144
    //   546: invokestatic 77	java/lang/Thread:sleep	(J)V
    //   549: ldc 216
    //   551: invokestatic 82	com/android/utils/UIHelper:GetUiObjectByResourceid	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    //   554: astore 13
    //   556: aload 13
    //   558: ifnonnull +10 -> 568
    //   561: ldc 79
    //   563: invokestatic 82	com/android/utils/UIHelper:GetUiObjectByResourceid	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    //   566: astore 13
    //   568: aload 13
    //   570: ifnull +97 -> 667
    //   573: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   576: ldc 84
    //   578: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   581: aload 13
    //   583: invokevirtual 89	com/android/uiautomator/core/UiObject:click	()Z
    //   586: pop
    //   587: aload 13
    //   589: aload_0
    //   590: getfield 20	com/android/runner/phone/Meizu_m1_note:pwd_str	Ljava/lang/String;
    //   593: invokevirtual 214	com/android/uiautomator/core/UiObject:setText	(Ljava/lang/String;)Z
    //   596: pop
    //   597: ldc 218
    //   599: iconst_5
    //   600: invokestatic 69	com/android/utils/UIHelper:FindClickButtonToNewWindow	(Ljava/lang/String;I)Z
    //   603: ifeq +88 -> 691
    //   606: ldc2_w 177
    //   609: invokestatic 77	java/lang/Thread:sleep	(J)V
    //   612: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   615: ldc 121
    //   617: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   620: aload_0
    //   621: aload_1
    //   622: invokevirtual 126	com/android/runner/phone/Meizu_m1_note:LogInLogOut	(Ljava/lang/String;)Z
    //   625: ireturn
    //   626: astore 11
    //   628: aload 11
    //   630: invokevirtual 119	com/android/uiautomator/core/UiObjectNotFoundException:printStackTrace	()V
    //   633: goto -90 -> 543
    //   636: astore 12
    //   638: aload 12
    //   640: invokevirtual 118	java/lang/InterruptedException:printStackTrace	()V
    //   643: goto -94 -> 549
    //   646: astore 14
    //   648: aload 14
    //   650: invokevirtual 119	com/android/uiautomator/core/UiObjectNotFoundException:printStackTrace	()V
    //   653: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   656: ldc 220
    //   658: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   661: aload_0
    //   662: aload_1
    //   663: invokevirtual 126	com/android/runner/phone/Meizu_m1_note:LogInLogOut	(Ljava/lang/String;)Z
    //   666: ireturn
    //   667: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   670: ldc 222
    //   672: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   675: aload_0
    //   676: aload_1
    //   677: invokevirtual 126	com/android/runner/phone/Meizu_m1_note:LogInLogOut	(Ljava/lang/String;)Z
    //   680: ireturn
    //   681: astore 17
    //   683: aload 17
    //   685: invokevirtual 118	java/lang/InterruptedException:printStackTrace	()V
    //   688: goto -76 -> 612
    //   691: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   694: ldc 224
    //   696: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   699: aload_0
    //   700: aload_1
    //   701: invokevirtual 126	com/android/runner/phone/Meizu_m1_note:LogInLogOut	(Ljava/lang/String;)Z
    //   704: ireturn
    //   705: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   708: ldc 226
    //   710: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   713: aload_0
    //   714: aload_1
    //   715: invokevirtual 126	com/android/runner/phone/Meizu_m1_note:LogInLogOut	(Ljava/lang/String;)Z
    //   718: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   26	32	105	java/lang/InterruptedException
    //   49	55	115	java/lang/InterruptedException
    //   146	152	257	java/lang/InterruptedException
    //   130	146	267	com/android/uiautomator/core/UiObjectNotFoundException
    //   146	152	267	com/android/uiautomator/core/UiObjectNotFoundException
    //   152	175	267	com/android/uiautomator/core/UiObjectNotFoundException
    //   180	186	267	com/android/uiautomator/core/UiObjectNotFoundException
    //   186	202	267	com/android/uiautomator/core/UiObjectNotFoundException
    //   202	208	267	com/android/uiautomator/core/UiObjectNotFoundException
    //   208	257	267	com/android/uiautomator/core/UiObjectNotFoundException
    //   259	264	267	com/android/uiautomator/core/UiObjectNotFoundException
    //   290	295	267	com/android/uiautomator/core/UiObjectNotFoundException
    //   300	305	267	com/android/uiautomator/core/UiObjectNotFoundException
    //   308	322	267	com/android/uiautomator/core/UiObjectNotFoundException
    //   322	336	267	com/android/uiautomator/core/UiObjectNotFoundException
    //   336	350	267	com/android/uiautomator/core/UiObjectNotFoundException
    //   350	364	267	com/android/uiautomator/core/UiObjectNotFoundException
    //   364	379	267	com/android/uiautomator/core/UiObjectNotFoundException
    //   180	186	288	java/lang/InterruptedException
    //   202	208	298	java/lang/InterruptedException
    //   422	428	441	java/lang/InterruptedException
    //   410	417	451	com/android/uiautomator/core/UiObjectNotFoundException
    //   422	428	451	com/android/uiautomator/core/UiObjectNotFoundException
    //   428	441	451	com/android/uiautomator/core/UiObjectNotFoundException
    //   443	448	451	com/android/uiautomator/core/UiObjectNotFoundException
    //   472	487	451	com/android/uiautomator/core/UiObjectNotFoundException
    //   495	543	626	com/android/uiautomator/core/UiObjectNotFoundException
    //   543	549	636	java/lang/InterruptedException
    //   573	597	646	com/android/uiautomator/core/UiObjectNotFoundException
    //   606	612	681	java/lang/InterruptedException
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.phone.Meizu_m1_note
 * JD-Core Version:    0.6.2
 */