package com.google.kd.utils;

import android.util.Log;
import com.android.utils.Commems;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import org.apache.http.util.EncodingUtils;

public class FileUtils
{
  public static int delfile(String paramString)
  {
    File localFile = new File(paramString);
    boolean bool = localFile.exists();
    int i = 0;
    if (bool)
    {
      if (localFile.delete())
        i = 1;
    }
    else
      return i;
    return 0;
  }

  public static boolean isFileExist(String paramString1, String paramString2)
  {
    return new File(paramString1, paramString2).exists();
  }

  // ERROR //
  public static void nulls(String paramString)
  {
    // Byte code:
    //   0: new 12	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 15	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: invokevirtual 19	java/io/File:exists	()Z
    //   11: ifeq +23 -> 34
    //   14: new 32	java/io/RandomAccessFile
    //   17: dup
    //   18: aload_0
    //   19: ldc 34
    //   21: invokespecial 35	java/io/RandomAccessFile:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   24: astore_1
    //   25: aload_1
    //   26: invokevirtual 39	java/io/RandomAccessFile:getChannel	()Ljava/nio/channels/FileChannel;
    //   29: lconst_0
    //   30: invokevirtual 45	java/nio/channels/FileChannel:truncate	(J)Ljava/nio/channels/FileChannel;
    //   33: pop
    //   34: return
    //   35: astore_2
    //   36: aload_2
    //   37: invokevirtual 48	java/lang/Exception:printStackTrace	()V
    //   40: return
    //   41: astore_2
    //   42: goto -6 -> 36
    //
    // Exception table:
    //   from	to	target	type
    //   14	25	35	java/lang/Exception
    //   25	34	41	java/lang/Exception
  }

  public static String readFile(String paramString)
  {
    String str = "";
    try
    {
      if (new File(paramString).exists())
      {
        FileInputStream localFileInputStream = new FileInputStream(paramString);
        byte[] arrayOfByte = new byte[localFileInputStream.available()];
        localFileInputStream.read(arrayOfByte);
        str = EncodingUtils.getString(arrayOfByte, "UTF-8");
        localFileInputStream.close();
        return str;
      }
      LogUtils.d("wyy", paramString + " file is not exists!");
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return str;
  }

  public static String readFileByReader(String paramString)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    try
    {
      FileReader localFileReader = new FileReader(paramString);
      while (true)
      {
        int i = localFileReader.read();
        if (i == -1)
          return localStringBuffer.toString();
        char c = (char)i;
        localStringBuffer.append(c);
      }
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public static String[] readWifiState()
  {
    String str = readFile(Commems.WIFI_STATE);
    Log.d("wyy", "readFile:" + str.length());
    if (str.length() > 0)
    {
      String[] arrayOfString = str.split("#");
      if ((arrayOfString != null) && (arrayOfString.length >= 2))
        for (int i = 0; ; i++)
        {
          if (i >= arrayOfString.length)
            return arrayOfString;
          Log.d("wyy", "wifi split:" + arrayOfString[i]);
          Log.d("wyy", "wifi length:" + arrayOfString[i].length());
        }
      Log.d("wyy", Commems.WIFI_STATE + " file not match");
      return null;
    }
    Log.d("wyy", Commems.WIFI_STATE + " file is not exists!");
    return null;
  }

  // ERROR //
  public static void write2sd(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    // Byte code:
    //   0: new 12	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 15	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: astore 4
    //   10: aload 4
    //   12: invokevirtual 19	java/io/File:exists	()Z
    //   15: ifne +9 -> 24
    //   18: aload 4
    //   20: invokevirtual 155	java/io/File:mkdirs	()Z
    //   23: pop
    //   24: new 12	java/io/File
    //   27: dup
    //   28: new 78	java/lang/StringBuilder
    //   31: dup
    //   32: aload_0
    //   33: invokestatic 84	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   36: invokespecial 85	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   39: aload_1
    //   40: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: invokespecial 15	java/io/File:<init>	(Ljava/lang/String;)V
    //   49: astore 5
    //   51: ldc 76
    //   53: new 78	java/lang/StringBuilder
    //   56: dup
    //   57: ldc 157
    //   59: invokespecial 85	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   62: aload 5
    //   64: invokevirtual 160	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   67: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   73: invokestatic 136	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   76: pop
    //   77: aload 5
    //   79: invokevirtual 19	java/io/File:exists	()Z
    //   82: ifne +9 -> 91
    //   85: aload 5
    //   87: invokevirtual 163	java/io/File:createNewFile	()Z
    //   90: pop
    //   91: ldc 76
    //   93: new 78	java/lang/StringBuilder
    //   96: dup
    //   97: ldc 165
    //   99: invokespecial 85	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   102: aload 5
    //   104: invokevirtual 19	java/io/File:exists	()Z
    //   107: invokevirtual 168	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   110: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   113: invokestatic 136	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   116: pop
    //   117: new 78	java/lang/StringBuilder
    //   120: dup
    //   121: ldc 170
    //   123: invokespecial 85	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   126: aload 5
    //   128: invokevirtual 160	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   131: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   137: astore 8
    //   139: invokestatic 176	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   142: astore 9
    //   144: aload 9
    //   146: aload 8
    //   148: invokevirtual 180	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   151: pop
    //   152: aconst_null
    //   153: astore 11
    //   155: new 182	java/io/FileWriter
    //   158: dup
    //   159: aload 5
    //   161: iload_3
    //   162: invokespecial 185	java/io/FileWriter:<init>	(Ljava/io/File;Z)V
    //   165: astore 12
    //   167: aload 12
    //   169: aload_2
    //   170: invokevirtual 188	java/io/FileWriter:write	(Ljava/lang/String;)V
    //   173: aload 12
    //   175: ifnull +85 -> 260
    //   178: aload 12
    //   180: invokevirtual 189	java/io/FileWriter:close	()V
    //   183: return
    //   184: astore 19
    //   186: aload 19
    //   188: invokevirtual 190	java/io/IOException:printStackTrace	()V
    //   191: return
    //   192: astore 10
    //   194: aload 10
    //   196: invokevirtual 190	java/io/IOException:printStackTrace	()V
    //   199: goto -47 -> 152
    //   202: astore 13
    //   204: aload 13
    //   206: invokevirtual 190	java/io/IOException:printStackTrace	()V
    //   209: aload 11
    //   211: ifnull -28 -> 183
    //   214: aload 11
    //   216: invokevirtual 189	java/io/FileWriter:close	()V
    //   219: return
    //   220: astore 16
    //   222: aload 16
    //   224: invokevirtual 190	java/io/IOException:printStackTrace	()V
    //   227: return
    //   228: astore 14
    //   230: aload 11
    //   232: ifnull +8 -> 240
    //   235: aload 11
    //   237: invokevirtual 189	java/io/FileWriter:close	()V
    //   240: aload 14
    //   242: athrow
    //   243: astore 15
    //   245: aload 15
    //   247: invokevirtual 190	java/io/IOException:printStackTrace	()V
    //   250: goto -10 -> 240
    //   253: astore 17
    //   255: aload 17
    //   257: invokevirtual 190	java/io/IOException:printStackTrace	()V
    //   260: return
    //   261: astore 14
    //   263: aload 12
    //   265: astore 11
    //   267: goto -37 -> 230
    //   270: astore 13
    //   272: aload 12
    //   274: astore 11
    //   276: goto -72 -> 204
    //
    // Exception table:
    //   from	to	target	type
    //   85	91	184	java/io/IOException
    //   144	152	192	java/io/IOException
    //   155	167	202	java/io/IOException
    //   214	219	220	java/io/IOException
    //   155	167	228	finally
    //   204	209	228	finally
    //   235	240	243	java/io/IOException
    //   178	183	253	java/io/IOException
    //   167	173	261	finally
    //   167	173	270	java/io/IOException
  }

  // ERROR //
  public static void writeStringToSdcard(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 12	java/io/File
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 15	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: astore_2
    //   9: ldc 76
    //   11: new 78	java/lang/StringBuilder
    //   14: dup
    //   15: ldc 192
    //   17: invokespecial 85	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: ldc 194
    //   26: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: aload_2
    //   30: invokevirtual 19	java/io/File:exists	()Z
    //   33: invokevirtual 168	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   36: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   39: invokestatic 100	com/google/kd/utils/LogUtils:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   42: aload_2
    //   43: invokevirtual 19	java/io/File:exists	()Z
    //   46: ifne +79 -> 125
    //   49: aload_2
    //   50: invokevirtual 163	java/io/File:createNewFile	()Z
    //   53: istore 11
    //   55: ldc 76
    //   57: new 78	java/lang/StringBuilder
    //   60: dup
    //   61: aload_1
    //   62: invokestatic 84	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   65: invokespecial 85	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   68: ldc 196
    //   70: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: iload 11
    //   75: invokevirtual 168	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   78: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: invokestatic 199	com/google/kd/utils/LogUtils:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   84: iload 11
    //   86: ifeq +39 -> 125
    //   89: return
    //   90: astore 10
    //   92: ldc 76
    //   94: new 78	java/lang/StringBuilder
    //   97: dup
    //   98: aload_1
    //   99: invokestatic 84	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   102: invokespecial 85	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   105: ldc 194
    //   107: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: aload 10
    //   112: invokevirtual 200	java/io/IOException:toString	()Ljava/lang/String;
    //   115: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   118: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   121: invokestatic 199	com/google/kd/utils/LogUtils:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   124: return
    //   125: aload_0
    //   126: ifnull -37 -> 89
    //   129: aload_0
    //   130: ldc 52
    //   132: invokevirtual 204	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   135: ifne -46 -> 89
    //   138: aconst_null
    //   139: astore_3
    //   140: new 182	java/io/FileWriter
    //   143: dup
    //   144: aload_2
    //   145: invokespecial 207	java/io/FileWriter:<init>	(Ljava/io/File;)V
    //   148: astore 4
    //   150: aload 4
    //   152: aload_0
    //   153: invokevirtual 188	java/io/FileWriter:write	(Ljava/lang/String;)V
    //   156: aload 4
    //   158: invokevirtual 189	java/io/FileWriter:close	()V
    //   161: return
    //   162: astore 9
    //   164: aload 9
    //   166: invokevirtual 48	java/lang/Exception:printStackTrace	()V
    //   169: return
    //   170: astore 5
    //   172: aload 5
    //   174: invokevirtual 48	java/lang/Exception:printStackTrace	()V
    //   177: aload_3
    //   178: invokevirtual 189	java/io/FileWriter:close	()V
    //   181: return
    //   182: astore 8
    //   184: aload 8
    //   186: invokevirtual 48	java/lang/Exception:printStackTrace	()V
    //   189: return
    //   190: astore 6
    //   192: aload_3
    //   193: invokevirtual 189	java/io/FileWriter:close	()V
    //   196: aload 6
    //   198: athrow
    //   199: astore 7
    //   201: aload 7
    //   203: invokevirtual 48	java/lang/Exception:printStackTrace	()V
    //   206: goto -10 -> 196
    //   209: astore 6
    //   211: aload 4
    //   213: astore_3
    //   214: goto -22 -> 192
    //   217: astore 5
    //   219: aload 4
    //   221: astore_3
    //   222: goto -50 -> 172
    //
    // Exception table:
    //   from	to	target	type
    //   49	84	90	java/io/IOException
    //   156	161	162	java/lang/Exception
    //   140	150	170	java/lang/Exception
    //   177	181	182	java/lang/Exception
    //   140	150	190	finally
    //   172	177	190	finally
    //   192	196	199	java/lang/Exception
    //   150	156	209	finally
    //   150	156	217	java/lang/Exception
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\Tool\classes_dex2jar.jar
 * Qualified Name:     com.google.kd.utils.FileUtils
 * JD-Core Version:    0.6.2
 */