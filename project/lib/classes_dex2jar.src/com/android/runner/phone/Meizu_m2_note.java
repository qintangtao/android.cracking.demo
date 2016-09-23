package com.android.runner.phone;

import com.android.uiautomator.testrunner.UiAutomatorTestCase;

public class Meizu_m2_note extends UiAutomatorTestCase
{
  String acc_str = "hunknug";
  String pwd_code = "44 51 32 11 36 39 42 35 32";
  String pwd_str = "pwd4hkngd";

  // ERROR //
  boolean GetRootRight()
  {
    // Byte code:
    //   0: ldc 32
    //   2: invokestatic 38	com/android/utils/UIHelper:FindByText	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    //   5: ifnonnull +244 -> 249
    //   8: ldc 40
    //   10: iconst_4
    //   11: invokestatic 44	com/android/utils/UIHelper:FindLikeClickButtonToNewWindow	(Ljava/lang/String;I)Z
    //   14: ifeq +220 -> 234
    //   17: ldc 46
    //   19: invokestatic 50	com/android/utils/UIHelper:FindSwitchToOpen	(Ljava/lang/String;)Z
    //   22: ifeq +202 -> 224
    //   25: ldc 52
    //   27: iconst_2
    //   28: invokestatic 55	com/android/utils/UIHelper:FindClickButtonToNewWindow	(Ljava/lang/String;I)Z
    //   31: ifeq +186 -> 217
    //   34: ldc2_w 56
    //   37: invokestatic 63	java/lang/Thread:sleep	(J)V
    //   40: ldc 65
    //   42: invokestatic 68	com/android/utils/UIHelper:GetUiObjectByResourceid	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    //   45: ifnull +157 -> 202
    //   48: invokestatic 74	com/android/uiautomator/core/UiDevice:getInstance	()Lcom/android/uiautomator/core/UiDevice;
    //   51: sipush 265
    //   54: sipush 614
    //   57: invokevirtual 78	com/android/uiautomator/core/UiDevice:click	(II)Z
    //   60: pop
    //   61: ldc2_w 79
    //   64: invokestatic 63	java/lang/Thread:sleep	(J)V
    //   67: new 82	java/lang/StringBuilder
    //   70: dup
    //   71: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   74: ldc 85
    //   76: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: aload_0
    //   80: getfield 24	com/android/runner/phone/Meizu_m2_note:pwd_code	Ljava/lang/String;
    //   83: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   89: invokestatic 99	com/android/utils/ShellHelper:ExecShell	(Ljava/lang/String;)Ljava/lang/String;
    //   92: pop
    //   93: invokestatic 74	com/android/uiautomator/core/UiDevice:getInstance	()Lcom/android/uiautomator/core/UiDevice;
    //   96: sipush 788
    //   99: sipush 788
    //   102: invokevirtual 78	com/android/uiautomator/core/UiDevice:click	(II)Z
    //   105: pop
    //   106: getstatic 105	java/lang/System:err	Ljava/io/PrintStream;
    //   109: ldc 107
    //   111: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   114: ldc2_w 56
    //   117: invokestatic 63	java/lang/Thread:sleep	(J)V
    //   120: ldc 52
    //   122: iconst_1
    //   123: invokestatic 55	com/android/utils/UIHelper:FindClickButtonToNewWindow	(Ljava/lang/String;I)Z
    //   126: ifeq +61 -> 187
    //   129: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   132: ldc 118
    //   134: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   137: iconst_1
    //   138: ireturn
    //   139: astore_1
    //   140: aload_1
    //   141: invokevirtual 121	java/lang/InterruptedException:printStackTrace	()V
    //   144: goto -104 -> 40
    //   147: astore 4
    //   149: aload 4
    //   151: invokevirtual 121	java/lang/InterruptedException:printStackTrace	()V
    //   154: goto -87 -> 67
    //   157: astore_2
    //   158: aload_2
    //   159: invokevirtual 122	java/lang/Exception:printStackTrace	()V
    //   162: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   165: ldc 124
    //   167: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   170: aload_0
    //   171: ldc 126
    //   173: invokevirtual 129	com/android/runner/phone/Meizu_m2_note:LogInLogOut	(Ljava/lang/String;)Z
    //   176: ireturn
    //   177: astore 7
    //   179: aload 7
    //   181: invokevirtual 121	java/lang/InterruptedException:printStackTrace	()V
    //   184: goto -64 -> 120
    //   187: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   190: ldc 131
    //   192: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   195: aload_0
    //   196: ldc 126
    //   198: invokevirtual 129	com/android/runner/phone/Meizu_m2_note:LogInLogOut	(Ljava/lang/String;)Z
    //   201: ireturn
    //   202: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   205: ldc 133
    //   207: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   210: aload_0
    //   211: ldc 126
    //   213: invokevirtual 129	com/android/runner/phone/Meizu_m2_note:LogInLogOut	(Ljava/lang/String;)Z
    //   216: ireturn
    //   217: aload_0
    //   218: ldc 126
    //   220: invokevirtual 129	com/android/runner/phone/Meizu_m2_note:LogInLogOut	(Ljava/lang/String;)Z
    //   223: ireturn
    //   224: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   227: ldc 107
    //   229: invokevirtual 136	java/io/PrintStream:print	(Ljava/lang/String;)V
    //   232: iconst_1
    //   233: ireturn
    //   234: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   237: ldc 138
    //   239: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   242: aload_0
    //   243: ldc 126
    //   245: invokevirtual 129	com/android/runner/phone/Meizu_m2_note:LogInLogOut	(Ljava/lang/String;)Z
    //   248: ireturn
    //   249: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   252: ldc 140
    //   254: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   257: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   260: ldc 107
    //   262: invokevirtual 136	java/io/PrintStream:print	(Ljava/lang/String;)V
    //   265: iconst_1
    //   266: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   34	40	139	java/lang/InterruptedException
    //   61	67	147	java/lang/InterruptedException
    //   48	61	157	java/lang/Exception
    //   61	67	157	java/lang/Exception
    //   67	114	157	java/lang/Exception
    //   149	154	157	java/lang/Exception
    //   114	120	177	java/lang/InterruptedException
  }

  // ERROR //
  public boolean LogInLogOut(String paramString)
  {
    // Byte code:
    //   0: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   3: new 82	java/lang/StringBuilder
    //   6: dup
    //   7: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   10: ldc 144
    //   12: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: aload_1
    //   16: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   22: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   25: ldc 146
    //   27: invokestatic 149	com/android/utils/UIHelper:StartApp	(Ljava/lang/String;)Z
    //   30: pop
    //   31: ldc 151
    //   33: invokestatic 99	com/android/utils/ShellHelper:ExecShell	(Ljava/lang/String;)Ljava/lang/String;
    //   36: pop
    //   37: ldc 146
    //   39: invokestatic 149	com/android/utils/UIHelper:StartApp	(Ljava/lang/String;)Z
    //   42: pop
    //   43: ldc2_w 79
    //   46: invokestatic 63	java/lang/Thread:sleep	(J)V
    //   49: invokestatic 154	com/android/utils/UIHelper:CloseTopWindow	()Z
    //   52: pop
    //   53: invokestatic 74	com/android/uiautomator/core/UiDevice:getInstance	()Lcom/android/uiautomator/core/UiDevice;
    //   56: sipush 145
    //   59: sipush 431
    //   62: invokevirtual 78	com/android/uiautomator/core/UiDevice:click	(II)Z
    //   65: pop
    //   66: ldc2_w 79
    //   69: invokestatic 63	java/lang/Thread:sleep	(J)V
    //   72: invokestatic 74	com/android/uiautomator/core/UiDevice:getInstance	()Lcom/android/uiautomator/core/UiDevice;
    //   75: sipush 660
    //   78: sipush 431
    //   81: invokevirtual 78	com/android/uiautomator/core/UiDevice:click	(II)Z
    //   84: pop
    //   85: ldc2_w 79
    //   88: invokestatic 63	java/lang/Thread:sleep	(J)V
    //   91: ldc 156
    //   93: invokestatic 68	com/android/utils/UIHelper:GetUiObjectByResourceid	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    //   96: astore 11
    //   98: ldc 158
    //   100: invokestatic 68	com/android/utils/UIHelper:GetUiObjectByResourceid	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    //   103: astore 12
    //   105: aload 12
    //   107: ifnonnull +10 -> 117
    //   110: ldc 160
    //   112: invokestatic 68	com/android/utils/UIHelper:GetUiObjectByResourceid	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    //   115: astore 12
    //   117: aload_1
    //   118: ldc 162
    //   120: invokevirtual 168	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   123: ifeq +348 -> 471
    //   126: aload 12
    //   128: ifnull +43 -> 171
    //   131: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   134: ldc 170
    //   136: invokevirtual 136	java/io/PrintStream:print	(Ljava/lang/String;)V
    //   139: iconst_1
    //   140: ireturn
    //   141: astore 5
    //   143: aload 5
    //   145: invokevirtual 121	java/lang/InterruptedException:printStackTrace	()V
    //   148: goto -99 -> 49
    //   151: astore 8
    //   153: aload 8
    //   155: invokevirtual 121	java/lang/InterruptedException:printStackTrace	()V
    //   158: goto -86 -> 72
    //   161: astore 10
    //   163: aload 10
    //   165: invokevirtual 121	java/lang/InterruptedException:printStackTrace	()V
    //   168: goto -77 -> 91
    //   171: aload 11
    //   173: ifnull +284 -> 457
    //   176: aload 11
    //   178: invokevirtual 175	com/android/uiautomator/core/UiObject:clickAndWaitForNewWindow	()Z
    //   181: ifeq +258 -> 439
    //   184: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   187: ldc 177
    //   189: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   192: ldc2_w 178
    //   195: invokestatic 63	java/lang/Thread:sleep	(J)V
    //   198: ldc 181
    //   200: invokestatic 99	com/android/utils/ShellHelper:ExecShell	(Ljava/lang/String;)Ljava/lang/String;
    //   203: pop
    //   204: ldc 183
    //   206: iconst_5
    //   207: invokestatic 55	com/android/utils/UIHelper:FindClickButtonToNewWindow	(Ljava/lang/String;I)Z
    //   210: ifeq +215 -> 425
    //   213: ldc 185
    //   215: iconst_2
    //   216: invokestatic 55	com/android/utils/UIHelper:FindClickButtonToNewWindow	(Ljava/lang/String;I)Z
    //   219: istore 30
    //   221: iload 30
    //   223: ifeq +188 -> 411
    //   226: ldc2_w 56
    //   229: invokestatic 63	java/lang/Thread:sleep	(J)V
    //   232: ldc 65
    //   234: invokestatic 68	com/android/utils/UIHelper:GetUiObjectByResourceid	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    //   237: ifnull +146 -> 383
    //   240: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   243: ldc 187
    //   245: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   248: ldc2_w 79
    //   251: invokestatic 63	java/lang/Thread:sleep	(J)V
    //   254: new 82	java/lang/StringBuilder
    //   257: dup
    //   258: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   261: ldc 85
    //   263: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   266: aload_0
    //   267: getfield 24	com/android/runner/phone/Meizu_m2_note:pwd_code	Ljava/lang/String;
    //   270: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   273: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   276: invokestatic 99	com/android/utils/ShellHelper:ExecShell	(Ljava/lang/String;)Ljava/lang/String;
    //   279: pop
    //   280: ldc2_w 56
    //   283: invokestatic 63	java/lang/Thread:sleep	(J)V
    //   286: invokestatic 74	com/android/uiautomator/core/UiDevice:getInstance	()Lcom/android/uiautomator/core/UiDevice;
    //   289: sipush 740
    //   292: sipush 865
    //   295: invokevirtual 78	com/android/uiautomator/core/UiDevice:click	(II)Z
    //   298: pop
    //   299: ldc 52
    //   301: iconst_4
    //   302: invokestatic 55	com/android/utils/UIHelper:FindClickButtonToNewWindow	(Ljava/lang/String;I)Z
    //   305: ifeq +92 -> 397
    //   308: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   311: ldc 118
    //   313: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   316: aload_0
    //   317: aload_1
    //   318: invokevirtual 129	com/android/runner/phone/Meizu_m2_note:LogInLogOut	(Ljava/lang/String;)Z
    //   321: ireturn
    //   322: astore 28
    //   324: aload 28
    //   326: invokevirtual 121	java/lang/InterruptedException:printStackTrace	()V
    //   329: goto -131 -> 198
    //   332: astore 26
    //   334: aload 26
    //   336: invokevirtual 188	com/android/uiautomator/core/UiObjectNotFoundException:printStackTrace	()V
    //   339: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   342: ldc 190
    //   344: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   347: aload_0
    //   348: aload_1
    //   349: invokevirtual 129	com/android/runner/phone/Meizu_m2_note:LogInLogOut	(Ljava/lang/String;)Z
    //   352: ireturn
    //   353: astore 31
    //   355: aload 31
    //   357: invokevirtual 121	java/lang/InterruptedException:printStackTrace	()V
    //   360: goto -128 -> 232
    //   363: astore 32
    //   365: aload 32
    //   367: invokevirtual 121	java/lang/InterruptedException:printStackTrace	()V
    //   370: goto -116 -> 254
    //   373: astore 34
    //   375: aload 34
    //   377: invokevirtual 121	java/lang/InterruptedException:printStackTrace	()V
    //   380: goto -94 -> 286
    //   383: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   386: ldc 133
    //   388: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   391: aload_0
    //   392: aload_1
    //   393: invokevirtual 129	com/android/runner/phone/Meizu_m2_note:LogInLogOut	(Ljava/lang/String;)Z
    //   396: ireturn
    //   397: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   400: ldc 131
    //   402: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   405: aload_0
    //   406: aload_1
    //   407: invokevirtual 129	com/android/runner/phone/Meizu_m2_note:LogInLogOut	(Ljava/lang/String;)Z
    //   410: ireturn
    //   411: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   414: ldc 192
    //   416: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   419: aload_0
    //   420: aload_1
    //   421: invokevirtual 129	com/android/runner/phone/Meizu_m2_note:LogInLogOut	(Ljava/lang/String;)Z
    //   424: ireturn
    //   425: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   428: ldc 194
    //   430: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   433: aload_0
    //   434: aload_1
    //   435: invokevirtual 129	com/android/runner/phone/Meizu_m2_note:LogInLogOut	(Ljava/lang/String;)Z
    //   438: ireturn
    //   439: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   442: ldc 196
    //   444: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   447: aload_0
    //   448: aload_1
    //   449: invokevirtual 129	com/android/runner/phone/Meizu_m2_note:LogInLogOut	(Ljava/lang/String;)Z
    //   452: istore 27
    //   454: iload 27
    //   456: ireturn
    //   457: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   460: ldc 198
    //   462: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   465: aload_0
    //   466: aload_1
    //   467: invokevirtual 129	com/android/runner/phone/Meizu_m2_note:LogInLogOut	(Ljava/lang/String;)Z
    //   470: ireturn
    //   471: aload_1
    //   472: ldc 126
    //   474: invokevirtual 168	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   477: ifeq -338 -> 139
    //   480: aload 11
    //   482: ifnull +91 -> 573
    //   485: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   488: ldc 200
    //   490: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   493: aload 11
    //   495: invokevirtual 175	com/android/uiautomator/core/UiObject:clickAndWaitForNewWindow	()Z
    //   498: istore 23
    //   500: iload 23
    //   502: ifeq +53 -> 555
    //   505: ldc2_w 56
    //   508: invokestatic 63	java/lang/Thread:sleep	(J)V
    //   511: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   514: ldc 107
    //   516: invokevirtual 136	java/io/PrintStream:print	(Ljava/lang/String;)V
    //   519: aload_0
    //   520: invokevirtual 202	com/android/runner/phone/Meizu_m2_note:GetRootRight	()Z
    //   523: ireturn
    //   524: astore 25
    //   526: aload 25
    //   528: invokevirtual 121	java/lang/InterruptedException:printStackTrace	()V
    //   531: goto -20 -> 511
    //   534: astore 22
    //   536: aload 22
    //   538: invokevirtual 188	com/android/uiautomator/core/UiObjectNotFoundException:printStackTrace	()V
    //   541: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   544: ldc 204
    //   546: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   549: aload_0
    //   550: aload_1
    //   551: invokevirtual 129	com/android/runner/phone/Meizu_m2_note:LogInLogOut	(Ljava/lang/String;)Z
    //   554: ireturn
    //   555: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   558: ldc 206
    //   560: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   563: aload_0
    //   564: aload_1
    //   565: invokevirtual 129	com/android/runner/phone/Meizu_m2_note:LogInLogOut	(Ljava/lang/String;)Z
    //   568: istore 24
    //   570: iload 24
    //   572: ireturn
    //   573: aload 12
    //   575: ifnull +197 -> 772
    //   578: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   581: ldc 208
    //   583: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   586: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   589: ldc 210
    //   591: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   594: aload 12
    //   596: invokevirtual 212	com/android/uiautomator/core/UiObject:click	()Z
    //   599: pop
    //   600: aload 12
    //   602: aload_0
    //   603: getfield 16	com/android/runner/phone/Meizu_m2_note:acc_str	Ljava/lang/String;
    //   606: invokevirtual 215	com/android/uiautomator/core/UiObject:setText	(Ljava/lang/String;)Z
    //   609: pop
    //   610: ldc2_w 79
    //   613: invokestatic 63	java/lang/Thread:sleep	(J)V
    //   616: ldc 217
    //   618: invokestatic 68	com/android/utils/UIHelper:GetUiObjectByResourceid	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    //   621: astore 15
    //   623: aload 15
    //   625: ifnonnull +10 -> 635
    //   628: ldc 65
    //   630: invokestatic 68	com/android/utils/UIHelper:GetUiObjectByResourceid	(Ljava/lang/String;)Lcom/android/uiautomator/core/UiObject;
    //   633: astore 15
    //   635: aload 15
    //   637: ifnull +97 -> 734
    //   640: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   643: ldc 219
    //   645: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   648: aload 15
    //   650: invokevirtual 212	com/android/uiautomator/core/UiObject:click	()Z
    //   653: pop
    //   654: aload 15
    //   656: aload_0
    //   657: getfield 20	com/android/runner/phone/Meizu_m2_note:pwd_str	Ljava/lang/String;
    //   660: invokevirtual 215	com/android/uiautomator/core/UiObject:setText	(Ljava/lang/String;)Z
    //   663: pop
    //   664: ldc 221
    //   666: iconst_5
    //   667: invokestatic 55	com/android/utils/UIHelper:FindClickButtonToNewWindow	(Ljava/lang/String;I)Z
    //   670: ifeq +88 -> 758
    //   673: ldc2_w 56
    //   676: invokestatic 63	java/lang/Thread:sleep	(J)V
    //   679: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   682: ldc 124
    //   684: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   687: aload_0
    //   688: aload_1
    //   689: invokevirtual 129	com/android/runner/phone/Meizu_m2_note:LogInLogOut	(Ljava/lang/String;)Z
    //   692: ireturn
    //   693: astore 13
    //   695: aload 13
    //   697: invokevirtual 188	com/android/uiautomator/core/UiObjectNotFoundException:printStackTrace	()V
    //   700: goto -90 -> 610
    //   703: astore 14
    //   705: aload 14
    //   707: invokevirtual 121	java/lang/InterruptedException:printStackTrace	()V
    //   710: goto -94 -> 616
    //   713: astore 16
    //   715: aload 16
    //   717: invokevirtual 188	com/android/uiautomator/core/UiObjectNotFoundException:printStackTrace	()V
    //   720: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   723: ldc 223
    //   725: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   728: aload_0
    //   729: aload_1
    //   730: invokevirtual 129	com/android/runner/phone/Meizu_m2_note:LogInLogOut	(Ljava/lang/String;)Z
    //   733: ireturn
    //   734: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   737: ldc 225
    //   739: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   742: aload_0
    //   743: aload_1
    //   744: invokevirtual 129	com/android/runner/phone/Meizu_m2_note:LogInLogOut	(Ljava/lang/String;)Z
    //   747: ireturn
    //   748: astore 19
    //   750: aload 19
    //   752: invokevirtual 121	java/lang/InterruptedException:printStackTrace	()V
    //   755: goto -76 -> 679
    //   758: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   761: ldc 227
    //   763: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   766: aload_0
    //   767: aload_1
    //   768: invokevirtual 129	com/android/runner/phone/Meizu_m2_note:LogInLogOut	(Ljava/lang/String;)Z
    //   771: ireturn
    //   772: getstatic 116	java/lang/System:out	Ljava/io/PrintStream;
    //   775: ldc 229
    //   777: invokevirtual 113	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   780: aload_0
    //   781: aload_1
    //   782: invokevirtual 129	com/android/runner/phone/Meizu_m2_note:LogInLogOut	(Ljava/lang/String;)Z
    //   785: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   43	49	141	java/lang/InterruptedException
    //   66	72	151	java/lang/InterruptedException
    //   85	91	161	java/lang/InterruptedException
    //   192	198	322	java/lang/InterruptedException
    //   176	192	332	com/android/uiautomator/core/UiObjectNotFoundException
    //   192	198	332	com/android/uiautomator/core/UiObjectNotFoundException
    //   198	221	332	com/android/uiautomator/core/UiObjectNotFoundException
    //   226	232	332	com/android/uiautomator/core/UiObjectNotFoundException
    //   232	248	332	com/android/uiautomator/core/UiObjectNotFoundException
    //   248	254	332	com/android/uiautomator/core/UiObjectNotFoundException
    //   254	280	332	com/android/uiautomator/core/UiObjectNotFoundException
    //   280	286	332	com/android/uiautomator/core/UiObjectNotFoundException
    //   286	322	332	com/android/uiautomator/core/UiObjectNotFoundException
    //   324	329	332	com/android/uiautomator/core/UiObjectNotFoundException
    //   355	360	332	com/android/uiautomator/core/UiObjectNotFoundException
    //   365	370	332	com/android/uiautomator/core/UiObjectNotFoundException
    //   375	380	332	com/android/uiautomator/core/UiObjectNotFoundException
    //   383	397	332	com/android/uiautomator/core/UiObjectNotFoundException
    //   397	411	332	com/android/uiautomator/core/UiObjectNotFoundException
    //   411	425	332	com/android/uiautomator/core/UiObjectNotFoundException
    //   425	439	332	com/android/uiautomator/core/UiObjectNotFoundException
    //   439	454	332	com/android/uiautomator/core/UiObjectNotFoundException
    //   226	232	353	java/lang/InterruptedException
    //   248	254	363	java/lang/InterruptedException
    //   280	286	373	java/lang/InterruptedException
    //   505	511	524	java/lang/InterruptedException
    //   493	500	534	com/android/uiautomator/core/UiObjectNotFoundException
    //   505	511	534	com/android/uiautomator/core/UiObjectNotFoundException
    //   511	524	534	com/android/uiautomator/core/UiObjectNotFoundException
    //   526	531	534	com/android/uiautomator/core/UiObjectNotFoundException
    //   555	570	534	com/android/uiautomator/core/UiObjectNotFoundException
    //   586	610	693	com/android/uiautomator/core/UiObjectNotFoundException
    //   610	616	703	java/lang/InterruptedException
    //   640	664	713	com/android/uiautomator/core/UiObjectNotFoundException
    //   673	679	748	java/lang/InterruptedException
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.phone.Meizu_m2_note
 * JD-Core Version:    0.6.2
 */