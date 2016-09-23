package com.lidroid.xutils;

import android.app.Activity;
import android.preference.PreferenceActivity;
import android.preference.PreferenceGroup;
import android.view.View;
import com.lidroid.xutils.view.ViewFinder;

public class ViewUtils
{
  public static void inject(Activity paramActivity)
  {
    injectObject(paramActivity, new ViewFinder(paramActivity));
  }

  public static void inject(PreferenceActivity paramPreferenceActivity)
  {
    injectObject(paramPreferenceActivity, new ViewFinder(paramPreferenceActivity));
  }

  public static void inject(View paramView)
  {
    injectObject(paramView, new ViewFinder(paramView));
  }

  public static void inject(Object paramObject, Activity paramActivity)
  {
    injectObject(paramObject, new ViewFinder(paramActivity));
  }

  public static void inject(Object paramObject, PreferenceActivity paramPreferenceActivity)
  {
    injectObject(paramObject, new ViewFinder(paramPreferenceActivity));
  }

  public static void inject(Object paramObject, PreferenceGroup paramPreferenceGroup)
  {
    injectObject(paramObject, new ViewFinder(paramPreferenceGroup));
  }

  public static void inject(Object paramObject, View paramView)
  {
    injectObject(paramObject, new ViewFinder(paramView));
  }

  // ERROR //
  private static void injectObject(Object paramObject, ViewFinder paramViewFinder)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 37	java/lang/Object:getClass	()Ljava/lang/Class;
    //   4: astore_2
    //   5: aload_2
    //   6: ldc 39
    //   8: invokevirtual 45	java/lang/Class:getAnnotation	(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    //   11: checkcast 39	com/lidroid/xutils/view/annotation/ContentView
    //   14: astore_3
    //   15: aload_3
    //   16: ifnull +54 -> 70
    //   19: iconst_1
    //   20: anewarray 41	java/lang/Class
    //   23: astore 40
    //   25: aload 40
    //   27: iconst_0
    //   28: getstatic 51	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   31: aastore
    //   32: aload_2
    //   33: ldc 53
    //   35: aload 40
    //   37: invokevirtual 57	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   40: astore 41
    //   42: iconst_1
    //   43: anewarray 4	java/lang/Object
    //   46: astore 42
    //   48: aload 42
    //   50: iconst_0
    //   51: aload_3
    //   52: invokeinterface 61 1 0
    //   57: invokestatic 65	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   60: aastore
    //   61: aload 41
    //   63: aload_0
    //   64: aload 42
    //   66: invokevirtual 71	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   69: pop
    //   70: aload_2
    //   71: invokevirtual 75	java/lang/Class:getDeclaredFields	()[Ljava/lang/reflect/Field;
    //   74: astore 4
    //   76: aload 4
    //   78: ifnull +24 -> 102
    //   81: aload 4
    //   83: arraylength
    //   84: ifle +18 -> 102
    //   87: aload 4
    //   89: arraylength
    //   90: istore 27
    //   92: iconst_0
    //   93: istore 28
    //   95: iload 28
    //   97: iload 27
    //   99: if_icmplt +51 -> 150
    //   102: aload_2
    //   103: invokevirtual 79	java/lang/Class:getDeclaredMethods	()[Ljava/lang/reflect/Method;
    //   106: astore 5
    //   108: aload 5
    //   110: ifnull +24 -> 134
    //   113: aload 5
    //   115: arraylength
    //   116: ifle +18 -> 134
    //   119: aload 5
    //   121: arraylength
    //   122: istore 6
    //   124: iconst_0
    //   125: istore 7
    //   127: iload 7
    //   129: iload 6
    //   131: if_icmplt +247 -> 378
    //   134: return
    //   135: astore 39
    //   137: aload 39
    //   139: invokevirtual 83	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   142: aload 39
    //   144: invokestatic 89	com/lidroid/xutils/util/LogUtils:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   147: goto -77 -> 70
    //   150: aload 4
    //   152: iload 28
    //   154: aaload
    //   155: astore 29
    //   157: aload 29
    //   159: ldc 91
    //   161: invokevirtual 94	java/lang/reflect/Field:getAnnotation	(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    //   164: checkcast 91	com/lidroid/xutils/view/annotation/ViewInject
    //   167: astore 30
    //   169: aload 30
    //   171: ifnull +63 -> 234
    //   174: aload_1
    //   175: aload 30
    //   177: invokeinterface 95 1 0
    //   182: aload 30
    //   184: invokeinterface 98 1 0
    //   189: invokevirtual 102	com/lidroid/xutils/view/ViewFinder:findViewById	(II)Landroid/view/View;
    //   192: astore 38
    //   194: aload 38
    //   196: ifnull +17 -> 213
    //   199: aload 29
    //   201: iconst_1
    //   202: invokevirtual 106	java/lang/reflect/Field:setAccessible	(Z)V
    //   205: aload 29
    //   207: aload_0
    //   208: aload 38
    //   210: invokevirtual 110	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   213: iinc 28 1
    //   216: goto -121 -> 95
    //   219: astore 37
    //   221: aload 37
    //   223: invokevirtual 83	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   226: aload 37
    //   228: invokestatic 89	com/lidroid/xutils/util/LogUtils:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   231: goto -18 -> 213
    //   234: aload 29
    //   236: ldc 112
    //   238: invokevirtual 94	java/lang/reflect/Field:getAnnotation	(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    //   241: checkcast 112	com/lidroid/xutils/view/annotation/ResInject
    //   244: astore 31
    //   246: aload 31
    //   248: ifnull +63 -> 311
    //   251: aload 31
    //   253: invokeinterface 116 1 0
    //   258: aload_1
    //   259: invokevirtual 120	com/lidroid/xutils/view/ViewFinder:getContext	()Landroid/content/Context;
    //   262: aload 31
    //   264: invokeinterface 123 1 0
    //   269: invokestatic 129	com/lidroid/xutils/view/ResLoader:loadRes	(Lcom/lidroid/xutils/view/ResType;Landroid/content/Context;I)Ljava/lang/Object;
    //   272: astore 36
    //   274: aload 36
    //   276: ifnull -63 -> 213
    //   279: aload 29
    //   281: iconst_1
    //   282: invokevirtual 106	java/lang/reflect/Field:setAccessible	(Z)V
    //   285: aload 29
    //   287: aload_0
    //   288: aload 36
    //   290: invokevirtual 110	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   293: goto -80 -> 213
    //   296: astore 35
    //   298: aload 35
    //   300: invokevirtual 83	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   303: aload 35
    //   305: invokestatic 89	com/lidroid/xutils/util/LogUtils:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   308: goto -95 -> 213
    //   311: aload 29
    //   313: ldc 131
    //   315: invokevirtual 94	java/lang/reflect/Field:getAnnotation	(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    //   318: checkcast 131	com/lidroid/xutils/view/annotation/PreferenceInject
    //   321: astore 32
    //   323: aload 32
    //   325: ifnull -112 -> 213
    //   328: aload_1
    //   329: aload 32
    //   331: invokeinterface 133 1 0
    //   336: invokevirtual 137	com/lidroid/xutils/view/ViewFinder:findPreference	(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    //   339: astore 34
    //   341: aload 34
    //   343: ifnull -130 -> 213
    //   346: aload 29
    //   348: iconst_1
    //   349: invokevirtual 106	java/lang/reflect/Field:setAccessible	(Z)V
    //   352: aload 29
    //   354: aload_0
    //   355: aload 34
    //   357: invokevirtual 110	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   360: goto -147 -> 213
    //   363: astore 33
    //   365: aload 33
    //   367: invokevirtual 83	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   370: aload 33
    //   372: invokestatic 89	com/lidroid/xutils/util/LogUtils:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   375: goto -162 -> 213
    //   378: aload 5
    //   380: iload 7
    //   382: aaload
    //   383: astore 8
    //   385: aload 8
    //   387: invokevirtual 141	java/lang/reflect/Method:getDeclaredAnnotations	()[Ljava/lang/annotation/Annotation;
    //   390: astore 9
    //   392: aload 9
    //   394: ifnull +24 -> 418
    //   397: aload 9
    //   399: arraylength
    //   400: ifle +18 -> 418
    //   403: aload 9
    //   405: arraylength
    //   406: istore 10
    //   408: iconst_0
    //   409: istore 11
    //   411: iload 11
    //   413: iload 10
    //   415: if_icmplt +9 -> 424
    //   418: iinc 7 1
    //   421: goto -294 -> 127
    //   424: aload 9
    //   426: iload 11
    //   428: aaload
    //   429: astore 12
    //   431: aload 12
    //   433: invokeinterface 146 1 0
    //   438: astore 13
    //   440: aload 13
    //   442: ldc 148
    //   444: invokevirtual 45	java/lang/Class:getAnnotation	(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    //   447: ifnull +220 -> 667
    //   450: aload 8
    //   452: iconst_1
    //   453: invokevirtual 149	java/lang/reflect/Method:setAccessible	(Z)V
    //   456: aload 13
    //   458: ldc 150
    //   460: iconst_0
    //   461: anewarray 41	java/lang/Class
    //   464: invokevirtual 153	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   467: astore 15
    //   469: aload 13
    //   471: ldc 154
    //   473: iconst_0
    //   474: anewarray 41	java/lang/Class
    //   477: invokevirtual 153	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   480: astore 26
    //   482: aload 26
    //   484: astore 17
    //   486: aload 15
    //   488: aload 12
    //   490: iconst_0
    //   491: anewarray 4	java/lang/Object
    //   494: invokevirtual 71	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   497: astore 18
    //   499: aload 17
    //   501: ifnonnull +22 -> 523
    //   504: aconst_null
    //   505: astore 19
    //   507: goto +142 -> 649
    //   510: aload 18
    //   512: invokestatic 160	java/lang/reflect/Array:getLength	(Ljava/lang/Object;)I
    //   515: istore 21
    //   517: iconst_0
    //   518: istore 22
    //   520: goto +140 -> 660
    //   523: iconst_0
    //   524: anewarray 4	java/lang/Object
    //   527: astore 25
    //   529: aload 17
    //   531: aload 12
    //   533: aload 25
    //   535: invokevirtual 71	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   538: astore 19
    //   540: goto +109 -> 649
    //   543: aload 19
    //   545: invokestatic 160	java/lang/reflect/Array:getLength	(Ljava/lang/Object;)I
    //   548: istore 20
    //   550: goto -40 -> 510
    //   553: new 162	com/lidroid/xutils/view/ViewInjectInfo
    //   556: dup
    //   557: invokespecial 163	com/lidroid/xutils/view/ViewInjectInfo:<init>	()V
    //   560: astore 23
    //   562: aload 23
    //   564: aload 18
    //   566: iload 22
    //   568: invokestatic 167	java/lang/reflect/Array:get	(Ljava/lang/Object;I)Ljava/lang/Object;
    //   571: putfield 170	com/lidroid/xutils/view/ViewInjectInfo:value	Ljava/lang/Object;
    //   574: iload 20
    //   576: iload 22
    //   578: if_icmple +42 -> 620
    //   581: aload 19
    //   583: iload 22
    //   585: invokestatic 167	java/lang/reflect/Array:get	(Ljava/lang/Object;I)Ljava/lang/Object;
    //   588: checkcast 47	java/lang/Integer
    //   591: invokevirtual 173	java/lang/Integer:intValue	()I
    //   594: istore 24
    //   596: aload 23
    //   598: iload 24
    //   600: putfield 176	com/lidroid/xutils/view/ViewInjectInfo:parentId	I
    //   603: aload_1
    //   604: aload 23
    //   606: aload 12
    //   608: aload_0
    //   609: aload 8
    //   611: invokestatic 182	com/lidroid/xutils/view/EventListenerManager:addEventMethod	(Lcom/lidroid/xutils/view/ViewFinder;Lcom/lidroid/xutils/view/ViewInjectInfo;Ljava/lang/annotation/Annotation;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    //   614: iinc 22 1
    //   617: goto +43 -> 660
    //   620: iconst_0
    //   621: istore 24
    //   623: goto -27 -> 596
    //   626: astore 14
    //   628: aload 14
    //   630: invokevirtual 83	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   633: aload 14
    //   635: invokestatic 89	com/lidroid/xutils/util/LogUtils:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   638: goto +29 -> 667
    //   641: astore 16
    //   643: aconst_null
    //   644: astore 17
    //   646: goto -160 -> 486
    //   649: aload 19
    //   651: ifnonnull -108 -> 543
    //   654: iconst_0
    //   655: istore 20
    //   657: goto -147 -> 510
    //   660: iload 22
    //   662: iload 21
    //   664: if_icmplt -111 -> 553
    //   667: iinc 11 1
    //   670: goto -259 -> 411
    //
    // Exception table:
    //   from	to	target	type
    //   19	70	135	java/lang/Throwable
    //   174	194	219	java/lang/Throwable
    //   199	213	219	java/lang/Throwable
    //   251	274	296	java/lang/Throwable
    //   279	293	296	java/lang/Throwable
    //   328	341	363	java/lang/Throwable
    //   346	360	363	java/lang/Throwable
    //   456	469	626	java/lang/Throwable
    //   486	499	626	java/lang/Throwable
    //   510	517	626	java/lang/Throwable
    //   523	540	626	java/lang/Throwable
    //   543	550	626	java/lang/Throwable
    //   553	574	626	java/lang/Throwable
    //   581	596	626	java/lang/Throwable
    //   596	614	626	java/lang/Throwable
    //   469	482	641	java/lang/Throwable
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.lidroid.xutils.ViewUtils
 * JD-Core Version:    0.6.2
 */