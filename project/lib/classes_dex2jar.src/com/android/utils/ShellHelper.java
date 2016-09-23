package com.android.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintStream;

public class ShellHelper
{
  public static String ExecShell(String paramString)
  {
    while (true)
    {
      BufferedReader localBufferedReader1;
      BufferedReader localBufferedReader2;
      try
      {
        StringBuilder localStringBuilder = new StringBuilder();
        try
        {
          Process localProcess = Runtime.getRuntime().exec(paramString);
          localBufferedReader1 = new BufferedReader(new InputStreamReader(localProcess.getErrorStream()));
          localBufferedReader2 = new BufferedReader(new InputStreamReader(localProcess.getInputStream()));
          String str2 = localBufferedReader2.readLine();
          if (str2 == null)
            continue;
          localStringBuilder.append(str2);
          localStringBuilder.append('\n');
          continue;
        }
        catch (IOException localIOException)
        {
          System.out.print("exec shell error\n");
          localIOException.printStackTrace();
        }
        String str1 = localStringBuilder.toString();
        return str1;
        String str3 = localBufferedReader1.readLine();
        if (str3 != null)
        {
          localStringBuilder.append(str3);
          localStringBuilder.append('\n');
          continue;
        }
      }
      finally
      {
      }
      localBufferedReader2.close();
      localBufferedReader1.close();
    }
  }

  public static String ExecShell(String[] paramArrayOfString)
  {
    while (true)
    {
      BufferedReader localBufferedReader1;
      BufferedReader localBufferedReader2;
      try
      {
        StringBuilder localStringBuilder = new StringBuilder();
        try
        {
          Process localProcess = Runtime.getRuntime().exec(paramArrayOfString);
          localBufferedReader1 = new BufferedReader(new InputStreamReader(localProcess.getErrorStream()));
          localBufferedReader2 = new BufferedReader(new InputStreamReader(localProcess.getInputStream()));
          String str2 = localBufferedReader2.readLine();
          if (str2 == null)
            continue;
          localStringBuilder.append(str2);
          localStringBuilder.append('\n');
          continue;
        }
        catch (IOException localIOException)
        {
          System.out.print("exec shell error\n");
          localIOException.printStackTrace();
        }
        String str1 = localStringBuilder.toString();
        return str1;
        String str3 = localBufferedReader1.readLine();
        if (str3 != null)
        {
          localStringBuilder.append(str3);
          localStringBuilder.append('\n');
          continue;
        }
      }
      finally
      {
      }
      localBufferedReader2.close();
      localBufferedReader1.close();
    }
  }

  // ERROR //
  public static String ExecShell1(String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: new 14	java/lang/StringBuilder
    //   6: dup
    //   7: invokespecial 15	java/lang/StringBuilder:<init>	()V
    //   10: astore_1
    //   11: invokestatic 21	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   14: aload_0
    //   15: invokevirtual 25	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   18: astore 6
    //   20: new 27	java/io/BufferedReader
    //   23: dup
    //   24: new 29	java/io/InputStreamReader
    //   27: dup
    //   28: aload 6
    //   30: invokevirtual 44	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   33: invokespecial 38	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   36: invokespecial 41	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   39: astore 7
    //   41: new 14	java/lang/StringBuilder
    //   44: dup
    //   45: ldc 87
    //   47: invokespecial 89	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   50: astore 8
    //   52: aload 7
    //   54: invokevirtual 48	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   57: astore 9
    //   59: aload 9
    //   61: ifnull +50 -> 111
    //   64: aload 8
    //   66: aload 9
    //   68: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: pop
    //   72: aload 8
    //   74: bipush 10
    //   76: invokevirtual 55	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   79: pop
    //   80: goto -28 -> 52
    //   83: astore_2
    //   84: aload 8
    //   86: astore_1
    //   87: getstatic 61	java/lang/System:out	Ljava/io/PrintStream;
    //   90: ldc 63
    //   92: invokevirtual 69	java/io/PrintStream:print	(Ljava/lang/String;)V
    //   95: aload_2
    //   96: invokevirtual 72	java/io/IOException:printStackTrace	()V
    //   99: aload_1
    //   100: invokevirtual 75	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   103: astore 4
    //   105: ldc 2
    //   107: monitorexit
    //   108: aload 4
    //   110: areturn
    //   111: aload 6
    //   113: invokevirtual 93	java/lang/Process:waitFor	()I
    //   116: istore 12
    //   118: iload 12
    //   120: ifeq +3 -> 123
    //   123: aload 8
    //   125: astore_1
    //   126: goto -27 -> 99
    //   129: astore 5
    //   131: getstatic 61	java/lang/System:out	Ljava/io/PrintStream;
    //   134: ldc 63
    //   136: invokevirtual 69	java/io/PrintStream:print	(Ljava/lang/String;)V
    //   139: aload 5
    //   141: invokevirtual 94	java/lang/InterruptedException:printStackTrace	()V
    //   144: goto -45 -> 99
    //   147: astore_3
    //   148: ldc 2
    //   150: monitorexit
    //   151: aload_3
    //   152: athrow
    //   153: astore 5
    //   155: aload 8
    //   157: astore_1
    //   158: goto -27 -> 131
    //   161: astore_2
    //   162: goto -75 -> 87
    //
    // Exception table:
    //   from	to	target	type
    //   52	59	83	java/io/IOException
    //   64	80	83	java/io/IOException
    //   111	118	83	java/io/IOException
    //   11	52	129	java/lang/InterruptedException
    //   3	11	147	finally
    //   11	52	147	finally
    //   52	59	147	finally
    //   64	80	147	finally
    //   87	99	147	finally
    //   99	105	147	finally
    //   111	118	147	finally
    //   131	144	147	finally
    //   52	59	153	java/lang/InterruptedException
    //   64	80	153	java/lang/InterruptedException
    //   111	118	153	java/lang/InterruptedException
    //   11	52	161	java/io/IOException
  }

  // ERROR //
  public static String ExecShell1(String[] paramArrayOfString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: new 14	java/lang/StringBuilder
    //   6: dup
    //   7: invokespecial 15	java/lang/StringBuilder:<init>	()V
    //   10: astore_1
    //   11: invokestatic 21	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   14: aload_0
    //   15: invokevirtual 82	java/lang/Runtime:exec	([Ljava/lang/String;)Ljava/lang/Process;
    //   18: astore 6
    //   20: new 27	java/io/BufferedReader
    //   23: dup
    //   24: new 29	java/io/InputStreamReader
    //   27: dup
    //   28: aload 6
    //   30: invokevirtual 44	java/lang/Process:getInputStream	()Ljava/io/InputStream;
    //   33: invokespecial 38	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   36: invokespecial 41	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   39: astore 7
    //   41: new 14	java/lang/StringBuilder
    //   44: dup
    //   45: ldc 87
    //   47: invokespecial 89	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   50: astore 8
    //   52: aload 7
    //   54: invokevirtual 48	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   57: astore 9
    //   59: aload 9
    //   61: ifnull +50 -> 111
    //   64: aload 8
    //   66: aload 9
    //   68: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: pop
    //   72: aload 8
    //   74: bipush 10
    //   76: invokevirtual 55	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   79: pop
    //   80: goto -28 -> 52
    //   83: astore_2
    //   84: aload 8
    //   86: astore_1
    //   87: getstatic 61	java/lang/System:out	Ljava/io/PrintStream;
    //   90: ldc 63
    //   92: invokevirtual 69	java/io/PrintStream:print	(Ljava/lang/String;)V
    //   95: aload_2
    //   96: invokevirtual 72	java/io/IOException:printStackTrace	()V
    //   99: aload_1
    //   100: invokevirtual 75	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   103: astore 4
    //   105: ldc 2
    //   107: monitorexit
    //   108: aload 4
    //   110: areturn
    //   111: aload 6
    //   113: invokevirtual 93	java/lang/Process:waitFor	()I
    //   116: istore 12
    //   118: iload 12
    //   120: ifeq +3 -> 123
    //   123: aload 8
    //   125: astore_1
    //   126: goto -27 -> 99
    //   129: astore 5
    //   131: getstatic 61	java/lang/System:out	Ljava/io/PrintStream;
    //   134: ldc 63
    //   136: invokevirtual 69	java/io/PrintStream:print	(Ljava/lang/String;)V
    //   139: aload 5
    //   141: invokevirtual 94	java/lang/InterruptedException:printStackTrace	()V
    //   144: goto -45 -> 99
    //   147: astore_3
    //   148: ldc 2
    //   150: monitorexit
    //   151: aload_3
    //   152: athrow
    //   153: astore 5
    //   155: aload 8
    //   157: astore_1
    //   158: goto -27 -> 131
    //   161: astore_2
    //   162: goto -75 -> 87
    //
    // Exception table:
    //   from	to	target	type
    //   52	59	83	java/io/IOException
    //   64	80	83	java/io/IOException
    //   111	118	83	java/io/IOException
    //   11	52	129	java/lang/InterruptedException
    //   3	11	147	finally
    //   11	52	147	finally
    //   52	59	147	finally
    //   64	80	147	finally
    //   87	99	147	finally
    //   99	105	147	finally
    //   111	118	147	finally
    //   131	144	147	finally
    //   52	59	153	java/lang/InterruptedException
    //   64	80	153	java/lang/InterruptedException
    //   111	118	153	java/lang/InterruptedException
    //   11	52	161	java/io/IOException
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.utils.ShellHelper
 * JD-Core Version:    0.6.2
 */