package com.android.runner.phone;

import com.android.uiautomator.core.UiObject;
import com.android.uiautomator.core.UiObjectNotFoundException;
import com.android.uiautomator.testrunner.UiAutomatorTestCase;
import com.android.utils.ShellHelper;
import com.android.utils.UIHelper;
import java.io.PrintStream;

public class Meizu_MX3 extends UiAutomatorTestCase
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
    //   42: sipush 331
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
    //   87: ifeq +332 -> 419
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
    //   127: ifnull +278 -> 405
    //   130: aload 9
    //   132: invokevirtual 174	com/android/uiautomator/core/UiObject:clickAndWaitForNewWindow	()Z
    //   135: ifeq +252 -> 387
    //   138: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   141: ldc 176
    //   143: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   146: ldc2_w 177
    //   149: invokestatic 77	java/lang/Thread:sleep	(J)V
    //   152: invokestatic 154	com/android/uiautomator/core/UiDevice:getInstance	()Lcom/android/uiautomator/core/UiDevice;
    //   155: sipush 445
    //   158: sipush 731
    //   161: invokevirtual 157	com/android/uiautomator/core/UiDevice:click	(II)Z
    //   164: pop
    //   165: ldc2_w 144
    //   168: invokestatic 77	java/lang/Thread:sleep	(J)V
    //   171: ldc 180
    //   173: iconst_5
    //   174: invokestatic 69	com/android/utils/UIHelper:FindClickButtonToNewWindow	(Ljava/lang/String;I)Z
    //   177: ifeq +196 -> 373
    //   180: ldc 182
    //   182: iconst_1
    //   183: invokestatic 69	com/android/utils/UIHelper:FindClickButtonToNewWindow	(Ljava/lang/String;I)Z
    //   186: istore 29
    //   188: iload 29
    //   190: ifeq +169 -> 359
    //   193: ldc2_w 144
    //   196: invokestatic 77	java/lang/Thread:sleep	(J)V
    //   199: ldc 184
    //   201: invokestatic 82	com/android/utils/UIHelper:GetUiObjectByResourceid	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    //   204: ifnull +127 -> 331
    //   207: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   210: ldc 186
    //   212: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   215: ldc2_w 70
    //   218: invokestatic 77	java/lang/Thread:sleep	(J)V
    //   221: new 91	java/lang/StringBuilder
    //   224: dup
    //   225: invokespecial 92	java/lang/StringBuilder:<init>	()V
    //   228: ldc 94
    //   230: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   233: aload_0
    //   234: getfield 24	com/android/runner/phone/Meizu_MX3:pwd_code	Ljava/lang/String;
    //   237: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   243: invokestatic 108	com/android/utils/ShellHelper:ExecShell	(Ljava/lang/String;)Ljava/lang/String;
    //   246: pop
    //   247: ldc 66
    //   249: iconst_1
    //   250: invokestatic 69	com/android/utils/UIHelper:FindClickButtonToNewWindow	(Ljava/lang/String;I)Z
    //   253: ifeq +92 -> 345
    //   256: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   259: ldc 115
    //   261: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   264: aload_0
    //   265: aload_1
    //   266: invokevirtual 126	com/android/runner/phone/Meizu_MX3:LogInLogOut	(Ljava/lang/String;)Z
    //   269: ireturn
    //   270: astore 26
    //   272: aload 26
    //   274: invokevirtual 118	java/lang/InterruptedException:printStackTrace	()V
    //   277: goto -125 -> 152
    //   280: astore 24
    //   282: aload 24
    //   284: invokevirtual 119	com/android/uiautomator/core/UiObjectNotFoundException:printStackTrace	()V
    //   287: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   290: ldc 188
    //   292: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   295: aload_0
    //   296: aload_1
    //   297: invokevirtual 126	com/android/runner/phone/Meizu_MX3:LogInLogOut	(Ljava/lang/String;)Z
    //   300: ireturn
    //   301: astore 28
    //   303: aload 28
    //   305: invokevirtual 118	java/lang/InterruptedException:printStackTrace	()V
    //   308: goto -137 -> 171
    //   311: astore 30
    //   313: aload 30
    //   315: invokevirtual 118	java/lang/InterruptedException:printStackTrace	()V
    //   318: goto -119 -> 199
    //   321: astore 31
    //   323: aload 31
    //   325: invokevirtual 118	java/lang/InterruptedException:printStackTrace	()V
    //   328: goto -107 -> 221
    //   331: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   334: ldc 130
    //   336: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   339: aload_0
    //   340: aload_1
    //   341: invokevirtual 126	com/android/runner/phone/Meizu_MX3:LogInLogOut	(Ljava/lang/String;)Z
    //   344: ireturn
    //   345: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   348: ldc 128
    //   350: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   353: aload_0
    //   354: aload_1
    //   355: invokevirtual 126	com/android/runner/phone/Meizu_MX3:LogInLogOut	(Ljava/lang/String;)Z
    //   358: ireturn
    //   359: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   362: ldc 190
    //   364: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   367: aload_0
    //   368: aload_1
    //   369: invokevirtual 126	com/android/runner/phone/Meizu_MX3:LogInLogOut	(Ljava/lang/String;)Z
    //   372: ireturn
    //   373: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   376: ldc 192
    //   378: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   381: aload_0
    //   382: aload_1
    //   383: invokevirtual 126	com/android/runner/phone/Meizu_MX3:LogInLogOut	(Ljava/lang/String;)Z
    //   386: ireturn
    //   387: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   390: ldc 194
    //   392: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   395: aload_0
    //   396: aload_1
    //   397: invokevirtual 126	com/android/runner/phone/Meizu_MX3:LogInLogOut	(Ljava/lang/String;)Z
    //   400: istore 25
    //   402: iload 25
    //   404: ireturn
    //   405: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   408: ldc 196
    //   410: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   413: aload_0
    //   414: aload_1
    //   415: invokevirtual 126	com/android/runner/phone/Meizu_MX3:LogInLogOut	(Ljava/lang/String;)Z
    //   418: ireturn
    //   419: aload_1
    //   420: ldc 123
    //   422: invokevirtual 171	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   425: ifeq -322 -> 103
    //   428: aload 9
    //   430: ifnull +83 -> 513
    //   433: aload 9
    //   435: invokevirtual 174	com/android/uiautomator/core/UiObject:clickAndWaitForNewWindow	()Z
    //   438: istore 21
    //   440: iload 21
    //   442: ifeq +53 -> 495
    //   445: ldc2_w 177
    //   448: invokestatic 77	java/lang/Thread:sleep	(J)V
    //   451: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   454: ldc 110
    //   456: invokevirtual 113	java/io/PrintStream:print	(Ljava/lang/String;)V
    //   459: aload_0
    //   460: invokevirtual 198	com/android/runner/phone/Meizu_MX3:GetRootRight	()Z
    //   463: ireturn
    //   464: astore 23
    //   466: aload 23
    //   468: invokevirtual 118	java/lang/InterruptedException:printStackTrace	()V
    //   471: goto -20 -> 451
    //   474: astore 20
    //   476: aload 20
    //   478: invokevirtual 119	com/android/uiautomator/core/UiObjectNotFoundException:printStackTrace	()V
    //   481: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   484: ldc 200
    //   486: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   489: aload_0
    //   490: aload_1
    //   491: invokevirtual 126	com/android/runner/phone/Meizu_MX3:LogInLogOut	(Ljava/lang/String;)Z
    //   494: ireturn
    //   495: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   498: ldc 202
    //   500: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   503: aload_0
    //   504: aload_1
    //   505: invokevirtual 126	com/android/runner/phone/Meizu_MX3:LogInLogOut	(Ljava/lang/String;)Z
    //   508: istore 22
    //   510: iload 22
    //   512: ireturn
    //   513: aload 10
    //   515: ifnull +213 -> 728
    //   518: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   521: new 91	java/lang/StringBuilder
    //   524: dup
    //   525: invokespecial 92	java/lang/StringBuilder:<init>	()V
    //   528: ldc 204
    //   530: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   533: aload 10
    //   535: invokevirtual 208	com/android/uiautomator/core/UiObject:getBounds	()Landroid/graphics/Rect;
    //   538: invokevirtual 211	android/graphics/Rect:toString	()Ljava/lang/String;
    //   541: invokevirtual 98	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   544: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   547: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   550: aload 10
    //   552: invokevirtual 89	com/android/uiautomator/core/UiObject:click	()Z
    //   555: pop
    //   556: aload 10
    //   558: aload_0
    //   559: getfield 16	com/android/runner/phone/Meizu_MX3:acc_str	Ljava/lang/String;
    //   562: invokevirtual 214	com/android/uiautomator/core/UiObject:setText	(Ljava/lang/String;)Z
    //   565: pop
    //   566: ldc2_w 144
    //   569: invokestatic 77	java/lang/Thread:sleep	(J)V
    //   572: ldc 216
    //   574: invokestatic 82	com/android/utils/UIHelper:GetUiObjectByResourceid	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    //   577: astore 13
    //   579: aload 13
    //   581: ifnonnull +10 -> 591
    //   584: ldc 79
    //   586: invokestatic 82	com/android/utils/UIHelper:GetUiObjectByResourceid	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    //   589: astore 13
    //   591: aload 13
    //   593: ifnull +97 -> 690
    //   596: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   599: ldc 84
    //   601: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   604: aload 13
    //   606: invokevirtual 89	com/android/uiautomator/core/UiObject:click	()Z
    //   609: pop
    //   610: aload 13
    //   612: aload_0
    //   613: getfield 20	com/android/runner/phone/Meizu_MX3:pwd_str	Ljava/lang/String;
    //   616: invokevirtual 214	com/android/uiautomator/core/UiObject:setText	(Ljava/lang/String;)Z
    //   619: pop
    //   620: ldc 218
    //   622: iconst_5
    //   623: invokestatic 69	com/android/utils/UIHelper:FindClickButtonToNewWindow	(Ljava/lang/String;I)Z
    //   626: ifeq +88 -> 714
    //   629: ldc2_w 177
    //   632: invokestatic 77	java/lang/Thread:sleep	(J)V
    //   635: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   638: ldc 121
    //   640: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   643: aload_0
    //   644: aload_1
    //   645: invokevirtual 126	com/android/runner/phone/Meizu_MX3:LogInLogOut	(Ljava/lang/String;)Z
    //   648: ireturn
    //   649: astore 11
    //   651: aload 11
    //   653: invokevirtual 119	com/android/uiautomator/core/UiObjectNotFoundException:printStackTrace	()V
    //   656: goto -90 -> 566
    //   659: astore 12
    //   661: aload 12
    //   663: invokevirtual 118	java/lang/InterruptedException:printStackTrace	()V
    //   666: goto -94 -> 572
    //   669: astore 14
    //   671: aload 14
    //   673: invokevirtual 119	com/android/uiautomator/core/UiObjectNotFoundException:printStackTrace	()V
    //   676: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   679: ldc 220
    //   681: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   684: aload_0
    //   685: aload_1
    //   686: invokevirtual 126	com/android/runner/phone/Meizu_MX3:LogInLogOut	(Ljava/lang/String;)Z
    //   689: ireturn
    //   690: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   693: ldc 222
    //   695: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   698: aload_0
    //   699: aload_1
    //   700: invokevirtual 126	com/android/runner/phone/Meizu_MX3:LogInLogOut	(Ljava/lang/String;)Z
    //   703: ireturn
    //   704: astore 17
    //   706: aload 17
    //   708: invokevirtual 118	java/lang/InterruptedException:printStackTrace	()V
    //   711: goto -76 -> 635
    //   714: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   717: ldc 224
    //   719: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   722: aload_0
    //   723: aload_1
    //   724: invokevirtual 126	com/android/runner/phone/Meizu_MX3:LogInLogOut	(Ljava/lang/String;)Z
    //   727: ireturn
    //   728: getstatic 44	java/lang/System:out	Ljava/io/PrintStream;
    //   731: ldc 226
    //   733: invokevirtual 52	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   736: aload_0
    //   737: aload_1
    //   738: invokevirtual 126	com/android/runner/phone/Meizu_MX3:LogInLogOut	(Ljava/lang/String;)Z
    //   741: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   26	32	105	java/lang/InterruptedException
    //   49	55	115	java/lang/InterruptedException
    //   146	152	270	java/lang/InterruptedException
    //   130	146	280	com/android/uiautomator/core/UiObjectNotFoundException
    //   146	152	280	com/android/uiautomator/core/UiObjectNotFoundException
    //   152	165	280	com/android/uiautomator/core/UiObjectNotFoundException
    //   165	171	280	com/android/uiautomator/core/UiObjectNotFoundException
    //   171	188	280	com/android/uiautomator/core/UiObjectNotFoundException
    //   193	199	280	com/android/uiautomator/core/UiObjectNotFoundException
    //   199	215	280	com/android/uiautomator/core/UiObjectNotFoundException
    //   215	221	280	com/android/uiautomator/core/UiObjectNotFoundException
    //   221	270	280	com/android/uiautomator/core/UiObjectNotFoundException
    //   272	277	280	com/android/uiautomator/core/UiObjectNotFoundException
    //   303	308	280	com/android/uiautomator/core/UiObjectNotFoundException
    //   313	318	280	com/android/uiautomator/core/UiObjectNotFoundException
    //   323	328	280	com/android/uiautomator/core/UiObjectNotFoundException
    //   331	345	280	com/android/uiautomator/core/UiObjectNotFoundException
    //   345	359	280	com/android/uiautomator/core/UiObjectNotFoundException
    //   359	373	280	com/android/uiautomator/core/UiObjectNotFoundException
    //   373	387	280	com/android/uiautomator/core/UiObjectNotFoundException
    //   387	402	280	com/android/uiautomator/core/UiObjectNotFoundException
    //   165	171	301	java/lang/InterruptedException
    //   193	199	311	java/lang/InterruptedException
    //   215	221	321	java/lang/InterruptedException
    //   445	451	464	java/lang/InterruptedException
    //   433	440	474	com/android/uiautomator/core/UiObjectNotFoundException
    //   445	451	474	com/android/uiautomator/core/UiObjectNotFoundException
    //   451	464	474	com/android/uiautomator/core/UiObjectNotFoundException
    //   466	471	474	com/android/uiautomator/core/UiObjectNotFoundException
    //   495	510	474	com/android/uiautomator/core/UiObjectNotFoundException
    //   518	566	649	com/android/uiautomator/core/UiObjectNotFoundException
    //   566	572	659	java/lang/InterruptedException
    //   596	620	669	com/android/uiautomator/core/UiObjectNotFoundException
    //   629	635	704	java/lang/InterruptedException
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.phone.Meizu_MX3
 * JD-Core Version:    0.6.2
 */