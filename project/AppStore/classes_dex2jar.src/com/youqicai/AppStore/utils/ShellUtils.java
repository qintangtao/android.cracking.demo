package com.youqicai.AppStore.utils;

import java.util.List;

public class ShellUtils
{
  public static final String COMMAND_EXIT = "exit\n";
  public static final String COMMAND_LINE_END = "\n";
  public static final String COMMAND_SH = "sh";
  public static final String COMMAND_SU = "su";

  private ShellUtils()
  {
    throw new AssertionError();
  }

  public static boolean checkRootPermission()
  {
    return execCommand("echo root", true, false).result == 0;
  }

  public static CommandResult execCommand(String paramString, boolean paramBoolean)
  {
    return execCommand(new String[] { paramString }, paramBoolean, true);
  }

  public static CommandResult execCommand(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    return execCommand(new String[] { paramString }, paramBoolean1, paramBoolean2);
  }

  public static CommandResult execCommand(List<String> paramList, boolean paramBoolean)
  {
    if (paramList == null);
    for (String[] arrayOfString = null; ; arrayOfString = (String[])paramList.toArray(new String[0]))
      return execCommand(arrayOfString, paramBoolean, true);
  }

  public static CommandResult execCommand(List<String> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramList == null);
    for (String[] arrayOfString = null; ; arrayOfString = (String[])paramList.toArray(new String[0]))
      return execCommand(arrayOfString, paramBoolean1, paramBoolean2);
  }

  public static CommandResult execCommand(String[] paramArrayOfString, boolean paramBoolean)
  {
    return execCommand(paramArrayOfString, paramBoolean, true);
  }

  // ERROR //
  public static CommandResult execCommand(String[] paramArrayOfString, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: iconst_m1
    //   1: istore_3
    //   2: aload_0
    //   3: ifnull +8 -> 11
    //   6: aload_0
    //   7: arraylength
    //   8: ifne +18 -> 26
    //   11: new 34	com/youqicai/AppStore/utils/ShellUtils$CommandResult
    //   14: dup
    //   15: iload_3
    //   16: aconst_null
    //   17: aconst_null
    //   18: invokespecial 62	com/youqicai/AppStore/utils/ShellUtils$CommandResult:<init>	(ILjava/lang/String;Ljava/lang/String;)V
    //   21: astore 4
    //   23: aload 4
    //   25: areturn
    //   26: aconst_null
    //   27: astore 5
    //   29: aconst_null
    //   30: astore 6
    //   32: aconst_null
    //   33: astore 7
    //   35: aconst_null
    //   36: astore 8
    //   38: aconst_null
    //   39: astore 9
    //   41: aconst_null
    //   42: astore 10
    //   44: invokestatic 68	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   47: astore 20
    //   49: iload_1
    //   50: ifeq +61 -> 111
    //   53: ldc 17
    //   55: astore 21
    //   57: aload 20
    //   59: aload 21
    //   61: invokevirtual 72	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   64: astore 5
    //   66: new 74	java/io/DataOutputStream
    //   69: dup
    //   70: aload 5
    //   72: invokevirtual 80	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   75: invokespecial 83	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   78: astore 22
    //   80: aload_0
    //   81: arraylength
    //   82: istore 23
    //   84: iconst_0
    //   85: istore 24
    //   87: iload 24
    //   89: iload 23
    //   91: if_icmpge +136 -> 227
    //   94: aload_0
    //   95: iload 24
    //   97: aaload
    //   98: astore 25
    //   100: aload 25
    //   102: ifnonnull +16 -> 118
    //   105: iinc 24 1
    //   108: goto -21 -> 87
    //   111: ldc 14
    //   113: astore 21
    //   115: goto -58 -> 57
    //   118: aload 22
    //   120: aload 25
    //   122: invokevirtual 87	java/lang/String:getBytes	()[B
    //   125: invokevirtual 91	java/io/DataOutputStream:write	([B)V
    //   128: aload 22
    //   130: ldc 11
    //   132: invokevirtual 95	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   135: aload 22
    //   137: invokevirtual 98	java/io/DataOutputStream:flush	()V
    //   140: goto -35 -> 105
    //   143: astore 11
    //   145: aload 22
    //   147: astore 10
    //   149: aload 11
    //   151: invokevirtual 101	java/io/IOException:printStackTrace	()V
    //   154: aload 10
    //   156: ifnull +8 -> 164
    //   159: aload 10
    //   161: invokevirtual 104	java/io/DataOutputStream:close	()V
    //   164: aload 6
    //   166: ifnull +8 -> 174
    //   169: aload 6
    //   171: invokevirtual 107	java/io/BufferedReader:close	()V
    //   174: aload 7
    //   176: ifnull +8 -> 184
    //   179: aload 7
    //   181: invokevirtual 107	java/io/BufferedReader:close	()V
    //   184: aload 5
    //   186: ifnull +8 -> 194
    //   189: aload 5
    //   191: invokevirtual 110	java/lang/Process:destroy	()V
    //   194: aload 8
    //   196: ifnonnull +385 -> 581
    //   199: aconst_null
    //   200: astore 15
    //   202: aload 9
    //   204: ifnonnull +387 -> 591
    //   207: aconst_null
    //   208: astore 16
    //   210: new 34	com/youqicai/AppStore/utils/ShellUtils$CommandResult
    //   213: dup
    //   214: iload_3
    //   215: aload 15
    //   217: aload 16
    //   219: invokespecial 62	com/youqicai/AppStore/utils/ShellUtils$CommandResult:<init>	(ILjava/lang/String;Ljava/lang/String;)V
    //   222: astore 17
    //   224: aload 17
    //   226: areturn
    //   227: aload 22
    //   229: ldc 8
    //   231: invokevirtual 95	java/io/DataOutputStream:writeBytes	(Ljava/lang/String;)V
    //   234: aload 22
    //   236: invokevirtual 98	java/io/DataOutputStream:flush	()V
    //   239: aload 5
    //   241: invokevirtual 114	java/lang/Process:waitFor	()I
    //   244: istore_3
    //   245: aconst_null
    //   246: astore 9
    //   248: aconst_null
    //   249: astore 7
    //   251: aconst_null
    //   252: astore 8
    //   254: aconst_null
    //   255: astore 6
    //   257: iload_2
    //   258: ifeq +195 -> 453
    //   261: new 116	java/lang/StringBuilder
    //   264: dup
    //   265: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   268: astore 26
    //   270: new 116	java/lang/StringBuilder
    //   273: dup
    //   274: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   277: astore 27
    //   279: new 106	java/io/BufferedReader
    //   282: dup
    //   283: new 119	java/io/InputStreamReader
    //   286: dup
    //   287: aload 5
    //   289: invokevirtual 123	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   292: invokespecial 126	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   295: invokespecial 129	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   298: astore 28
    //   300: new 106	java/io/BufferedReader
    //   303: dup
    //   304: new 119	java/io/InputStreamReader
    //   307: dup
    //   308: aload 5
    //   310: invokevirtual 132	java/lang/Process:getErrorStream	()Ljava/io/InputStream;
    //   313: invokespecial 126	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   316: invokespecial 129	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   319: astore 29
    //   321: aload 28
    //   323: invokevirtual 136	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   326: astore 30
    //   328: aload 30
    //   330: ifnull +14 -> 344
    //   333: aload 26
    //   335: aload 30
    //   337: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   340: pop
    //   341: goto -20 -> 321
    //   344: aload 29
    //   346: invokevirtual 136	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   349: astore 32
    //   351: aload 32
    //   353: ifnull +84 -> 437
    //   356: aload 27
    //   358: aload 32
    //   360: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   363: pop
    //   364: goto -20 -> 344
    //   367: astore 18
    //   369: aload 22
    //   371: astore 10
    //   373: aload 27
    //   375: astore 9
    //   377: aload 26
    //   379: astore 8
    //   381: aload 29
    //   383: astore 7
    //   385: aload 28
    //   387: astore 6
    //   389: aload 18
    //   391: invokevirtual 141	java/lang/Exception:printStackTrace	()V
    //   394: aload 10
    //   396: ifnull +8 -> 404
    //   399: aload 10
    //   401: invokevirtual 104	java/io/DataOutputStream:close	()V
    //   404: aload 6
    //   406: ifnull +8 -> 414
    //   409: aload 6
    //   411: invokevirtual 107	java/io/BufferedReader:close	()V
    //   414: aload 7
    //   416: ifnull +8 -> 424
    //   419: aload 7
    //   421: invokevirtual 107	java/io/BufferedReader:close	()V
    //   424: aload 5
    //   426: ifnull -232 -> 194
    //   429: aload 5
    //   431: invokevirtual 110	java/lang/Process:destroy	()V
    //   434: goto -240 -> 194
    //   437: aload 27
    //   439: astore 9
    //   441: aload 26
    //   443: astore 8
    //   445: aload 29
    //   447: astore 7
    //   449: aload 28
    //   451: astore 6
    //   453: aload 22
    //   455: ifnull +8 -> 463
    //   458: aload 22
    //   460: invokevirtual 104	java/io/DataOutputStream:close	()V
    //   463: aload 6
    //   465: ifnull +8 -> 473
    //   468: aload 6
    //   470: invokevirtual 107	java/io/BufferedReader:close	()V
    //   473: aload 7
    //   475: ifnull +8 -> 483
    //   478: aload 7
    //   480: invokevirtual 107	java/io/BufferedReader:close	()V
    //   483: aload 5
    //   485: ifnull +393 -> 878
    //   488: aload 5
    //   490: invokevirtual 110	java/lang/Process:destroy	()V
    //   493: goto -299 -> 194
    //   496: astore 34
    //   498: aload 34
    //   500: invokevirtual 101	java/io/IOException:printStackTrace	()V
    //   503: goto -20 -> 483
    //   506: astore 14
    //   508: aload 14
    //   510: invokevirtual 101	java/io/IOException:printStackTrace	()V
    //   513: goto -329 -> 184
    //   516: astore 19
    //   518: aload 19
    //   520: invokevirtual 101	java/io/IOException:printStackTrace	()V
    //   523: goto -99 -> 424
    //   526: astore 12
    //   528: aload 10
    //   530: ifnull +8 -> 538
    //   533: aload 10
    //   535: invokevirtual 104	java/io/DataOutputStream:close	()V
    //   538: aload 6
    //   540: ifnull +8 -> 548
    //   543: aload 6
    //   545: invokevirtual 107	java/io/BufferedReader:close	()V
    //   548: aload 7
    //   550: ifnull +8 -> 558
    //   553: aload 7
    //   555: invokevirtual 107	java/io/BufferedReader:close	()V
    //   558: aload 5
    //   560: ifnull +8 -> 568
    //   563: aload 5
    //   565: invokevirtual 110	java/lang/Process:destroy	()V
    //   568: aload 12
    //   570: athrow
    //   571: astore 13
    //   573: aload 13
    //   575: invokevirtual 101	java/io/IOException:printStackTrace	()V
    //   578: goto -20 -> 558
    //   581: aload 8
    //   583: invokevirtual 144	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   586: astore 15
    //   588: goto -386 -> 202
    //   591: aload 9
    //   593: invokevirtual 144	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   596: astore 16
    //   598: goto -388 -> 210
    //   601: astore 12
    //   603: aload 22
    //   605: astore 10
    //   607: aconst_null
    //   608: astore 7
    //   610: aconst_null
    //   611: astore 6
    //   613: goto -85 -> 528
    //   616: astore 12
    //   618: aload 22
    //   620: astore 10
    //   622: aconst_null
    //   623: astore 7
    //   625: aconst_null
    //   626: astore 6
    //   628: goto -100 -> 528
    //   631: astore 12
    //   633: aload 22
    //   635: astore 10
    //   637: aconst_null
    //   638: astore 7
    //   640: aconst_null
    //   641: astore 6
    //   643: goto -115 -> 528
    //   646: astore 12
    //   648: aload 22
    //   650: astore 10
    //   652: aload 28
    //   654: astore 6
    //   656: aconst_null
    //   657: astore 7
    //   659: goto -131 -> 528
    //   662: astore 12
    //   664: aload 22
    //   666: astore 10
    //   668: aload 29
    //   670: astore 7
    //   672: aload 28
    //   674: astore 6
    //   676: goto -148 -> 528
    //   679: astore 18
    //   681: aconst_null
    //   682: astore 9
    //   684: aconst_null
    //   685: astore 7
    //   687: aconst_null
    //   688: astore 10
    //   690: aconst_null
    //   691: astore 8
    //   693: aconst_null
    //   694: astore 6
    //   696: goto -307 -> 389
    //   699: astore 18
    //   701: aload 22
    //   703: astore 10
    //   705: aconst_null
    //   706: astore 9
    //   708: aconst_null
    //   709: astore 7
    //   711: aconst_null
    //   712: astore 8
    //   714: aconst_null
    //   715: astore 6
    //   717: goto -328 -> 389
    //   720: astore 18
    //   722: aload 22
    //   724: astore 10
    //   726: aload 26
    //   728: astore 8
    //   730: aconst_null
    //   731: astore 9
    //   733: aconst_null
    //   734: astore 7
    //   736: aconst_null
    //   737: astore 6
    //   739: goto -350 -> 389
    //   742: astore 18
    //   744: aload 22
    //   746: astore 10
    //   748: aload 27
    //   750: astore 9
    //   752: aload 26
    //   754: astore 8
    //   756: aconst_null
    //   757: astore 7
    //   759: aconst_null
    //   760: astore 6
    //   762: goto -373 -> 389
    //   765: astore 18
    //   767: aload 22
    //   769: astore 10
    //   771: aload 27
    //   773: astore 9
    //   775: aload 26
    //   777: astore 8
    //   779: aload 28
    //   781: astore 6
    //   783: aconst_null
    //   784: astore 7
    //   786: goto -397 -> 389
    //   789: astore 11
    //   791: aconst_null
    //   792: astore 9
    //   794: aconst_null
    //   795: astore 7
    //   797: aconst_null
    //   798: astore 10
    //   800: aconst_null
    //   801: astore 8
    //   803: aconst_null
    //   804: astore 6
    //   806: goto -657 -> 149
    //   809: astore 11
    //   811: aload 22
    //   813: astore 10
    //   815: aload 26
    //   817: astore 8
    //   819: aconst_null
    //   820: astore 9
    //   822: aconst_null
    //   823: astore 7
    //   825: aconst_null
    //   826: astore 6
    //   828: goto -679 -> 149
    //   831: astore 11
    //   833: aload 22
    //   835: astore 10
    //   837: aload 27
    //   839: astore 9
    //   841: aload 26
    //   843: astore 8
    //   845: aconst_null
    //   846: astore 7
    //   848: aconst_null
    //   849: astore 6
    //   851: goto -702 -> 149
    //   854: astore 11
    //   856: aload 22
    //   858: astore 10
    //   860: aload 27
    //   862: astore 9
    //   864: aload 26
    //   866: astore 8
    //   868: aload 28
    //   870: astore 6
    //   872: aconst_null
    //   873: astore 7
    //   875: goto -726 -> 149
    //   878: goto -684 -> 194
    //   881: astore 11
    //   883: aload 22
    //   885: astore 10
    //   887: aload 27
    //   889: astore 9
    //   891: aload 26
    //   893: astore 8
    //   895: aload 29
    //   897: astore 7
    //   899: aload 28
    //   901: astore 6
    //   903: goto -754 -> 149
    //
    // Exception table:
    //   from	to	target	type
    //   80	84	143	java/io/IOException
    //   94	100	143	java/io/IOException
    //   118	140	143	java/io/IOException
    //   227	245	143	java/io/IOException
    //   261	270	143	java/io/IOException
    //   321	328	367	java/lang/Exception
    //   333	341	367	java/lang/Exception
    //   344	351	367	java/lang/Exception
    //   356	364	367	java/lang/Exception
    //   458	463	496	java/io/IOException
    //   468	473	496	java/io/IOException
    //   478	483	496	java/io/IOException
    //   159	164	506	java/io/IOException
    //   169	174	506	java/io/IOException
    //   179	184	506	java/io/IOException
    //   399	404	516	java/io/IOException
    //   409	414	516	java/io/IOException
    //   419	424	516	java/io/IOException
    //   44	49	526	finally
    //   57	80	526	finally
    //   149	154	526	finally
    //   389	394	526	finally
    //   533	538	571	java/io/IOException
    //   543	548	571	java/io/IOException
    //   553	558	571	java/io/IOException
    //   80	84	601	finally
    //   94	100	601	finally
    //   118	140	601	finally
    //   227	245	601	finally
    //   261	270	601	finally
    //   270	279	616	finally
    //   279	300	631	finally
    //   300	321	646	finally
    //   321	328	662	finally
    //   333	341	662	finally
    //   344	351	662	finally
    //   356	364	662	finally
    //   44	49	679	java/lang/Exception
    //   57	80	679	java/lang/Exception
    //   80	84	699	java/lang/Exception
    //   94	100	699	java/lang/Exception
    //   118	140	699	java/lang/Exception
    //   227	245	699	java/lang/Exception
    //   261	270	699	java/lang/Exception
    //   270	279	720	java/lang/Exception
    //   279	300	742	java/lang/Exception
    //   300	321	765	java/lang/Exception
    //   44	49	789	java/io/IOException
    //   57	80	789	java/io/IOException
    //   270	279	809	java/io/IOException
    //   279	300	831	java/io/IOException
    //   300	321	854	java/io/IOException
    //   321	328	881	java/io/IOException
    //   333	341	881	java/io/IOException
    //   344	351	881	java/io/IOException
    //   356	364	881	java/io/IOException
  }

  public static class CommandResult
  {
    public String errorMsg;
    public int result;
    public String successMsg;

    public CommandResult(int paramInt)
    {
      this.result = paramInt;
    }

    public CommandResult(int paramInt, String paramString1, String paramString2)
    {
      this.result = paramInt;
      this.successMsg = paramString1;
      this.errorMsg = paramString2;
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.utils.ShellUtils
 * JD-Core Version:    0.6.2
 */