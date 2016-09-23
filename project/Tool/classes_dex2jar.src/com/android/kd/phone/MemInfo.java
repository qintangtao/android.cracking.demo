package com.android.kd.phone;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Context;

public class MemInfo
{
  // ERROR //
  public static long getmem_TOLAL()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_0
    //   2: new 16	java/io/BufferedReader
    //   5: dup
    //   6: new 18	java/io/FileReader
    //   9: dup
    //   10: ldc 20
    //   12: invokespecial 23	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   15: bipush 8
    //   17: invokespecial 26	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   20: astore_1
    //   21: aload_1
    //   22: invokevirtual 30	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   25: astore 11
    //   27: aconst_null
    //   28: astore 5
    //   30: aload 11
    //   32: ifnull +7 -> 39
    //   35: aload 11
    //   37: astore 5
    //   39: aload_1
    //   40: ifnull +144 -> 184
    //   43: aload_1
    //   44: invokevirtual 33	java/io/BufferedReader:close	()V
    //   47: aload 5
    //   49: bipush 58
    //   51: invokevirtual 39	java/lang/String:indexOf	(I)I
    //   54: istore 7
    //   56: aload 5
    //   58: bipush 107
    //   60: invokevirtual 39	java/lang/String:indexOf	(I)I
    //   63: istore 8
    //   65: aload 5
    //   67: iload 7
    //   69: iconst_1
    //   70: iadd
    //   71: iload 8
    //   73: invokevirtual 43	java/lang/String:substring	(II)Ljava/lang/String;
    //   76: invokevirtual 46	java/lang/String:trim	()Ljava/lang/String;
    //   79: invokestatic 52	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   82: i2l
    //   83: lreturn
    //   84: astore_2
    //   85: aload_2
    //   86: invokevirtual 55	java/io/FileNotFoundException:printStackTrace	()V
    //   89: aconst_null
    //   90: astore 5
    //   92: aload_0
    //   93: ifnull -46 -> 47
    //   96: aload_0
    //   97: invokevirtual 33	java/io/BufferedReader:close	()V
    //   100: aconst_null
    //   101: astore 5
    //   103: goto -56 -> 47
    //   106: astore 6
    //   108: aload 6
    //   110: invokevirtual 56	java/io/IOException:printStackTrace	()V
    //   113: aconst_null
    //   114: astore 5
    //   116: goto -69 -> 47
    //   119: astore 9
    //   121: aload 9
    //   123: invokevirtual 56	java/io/IOException:printStackTrace	()V
    //   126: aconst_null
    //   127: astore 5
    //   129: aload_0
    //   130: ifnull -83 -> 47
    //   133: aload_0
    //   134: invokevirtual 33	java/io/BufferedReader:close	()V
    //   137: aconst_null
    //   138: astore 5
    //   140: goto -93 -> 47
    //   143: astore 10
    //   145: aload 10
    //   147: invokevirtual 56	java/io/IOException:printStackTrace	()V
    //   150: aconst_null
    //   151: astore 5
    //   153: goto -106 -> 47
    //   156: astore_3
    //   157: aload_0
    //   158: ifnull +7 -> 165
    //   161: aload_0
    //   162: invokevirtual 33	java/io/BufferedReader:close	()V
    //   165: aload_3
    //   166: athrow
    //   167: astore 4
    //   169: aload 4
    //   171: invokevirtual 56	java/io/IOException:printStackTrace	()V
    //   174: goto -9 -> 165
    //   177: astore 12
    //   179: aload 12
    //   181: invokevirtual 56	java/io/IOException:printStackTrace	()V
    //   184: goto -137 -> 47
    //   187: astore_3
    //   188: aload_1
    //   189: astore_0
    //   190: goto -33 -> 157
    //   193: astore 9
    //   195: aload_1
    //   196: astore_0
    //   197: goto -76 -> 121
    //   200: astore_2
    //   201: aload_1
    //   202: astore_0
    //   203: goto -118 -> 85
    //
    // Exception table:
    //   from	to	target	type
    //   2	21	84	java/io/FileNotFoundException
    //   96	100	106	java/io/IOException
    //   2	21	119	java/io/IOException
    //   133	137	143	java/io/IOException
    //   2	21	156	finally
    //   85	89	156	finally
    //   121	126	156	finally
    //   161	165	167	java/io/IOException
    //   43	47	177	java/io/IOException
    //   21	27	187	finally
    //   21	27	193	java/io/IOException
    //   21	27	200	java/io/FileNotFoundException
  }

  public static long getmem_UNUSED(Context paramContext)
  {
    ActivityManager localActivityManager = (ActivityManager)paramContext.getSystemService("activity");
    ActivityManager.MemoryInfo localMemoryInfo = new ActivityManager.MemoryInfo();
    localActivityManager.getMemoryInfo(localMemoryInfo);
    return localMemoryInfo.availMem / 1024L;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\Tool\classes_dex2jar.jar
 * Qualified Name:     com.android.kd.phone.MemInfo
 * JD-Core Version:    0.6.2
 */