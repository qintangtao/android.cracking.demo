package com.hsg.sdk.common.util;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.io.UnsupportedEncodingException;

public class DirectoryMgr
{
  private static DirectoryMgr mDirMgr = null;
  private String mRootDir = null;

  private DirectoryMgr()
  {
    this(1);
  }

  private DirectoryMgr(int paramInt)
  {
    this.mRootDir = ("soso/" + getRootDir(paramInt));
  }

  private File getCustomDirectory(String paramString)
  {
    File localFile = new File(Environment.getExternalStorageDirectory(), "/" + this.mRootDir + "/" + paramString);
    if (!localFile.exists())
      localFile.mkdirs();
    return localFile;
  }

  private File getDirectory(String paramString)
  {
    return Environment.getExternalStoragePublicDirectory(paramString);
  }

  public static DirectoryMgr newInstance()
  {
    if (mDirMgr == null)
      mDirMgr = new DirectoryMgr();
    return mDirMgr;
  }

  public static DirectoryMgr newInstance(int paramInt)
  {
    if (mDirMgr == null)
      mDirMgr = new DirectoryMgr(paramInt);
    return mDirMgr;
  }

  // ERROR //
  public static byte[] readFile(File paramFile, String paramString)
  {
    // Byte code:
    //   0: new 43	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: aload_1
    //   6: invokespecial 54	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   9: astore_2
    //   10: aload_2
    //   11: invokevirtual 58	java/io/File:exists	()Z
    //   14: ifne +5 -> 19
    //   17: aconst_null
    //   18: areturn
    //   19: aconst_null
    //   20: astore_3
    //   21: sipush 4096
    //   24: newarray byte
    //   26: astore 4
    //   28: new 77	java/io/FileInputStream
    //   31: dup
    //   32: aload_2
    //   33: invokespecial 80	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   36: astore 5
    //   38: new 82	java/io/ByteArrayOutputStream
    //   41: dup
    //   42: invokespecial 83	java/io/ByteArrayOutputStream:<init>	()V
    //   45: astore 6
    //   47: aload 5
    //   49: aload 4
    //   51: invokevirtual 87	java/io/FileInputStream:read	([B)I
    //   54: ifgt +43 -> 97
    //   57: aload 5
    //   59: invokevirtual 90	java/io/FileInputStream:close	()V
    //   62: iconst_0
    //   63: ifeq +109 -> 172
    //   66: aconst_null
    //   67: invokevirtual 90	java/io/FileInputStream:close	()V
    //   70: aload 6
    //   72: astore 10
    //   74: aconst_null
    //   75: astore 12
    //   77: aload 10
    //   79: ifnull +15 -> 94
    //   82: aload 10
    //   84: invokevirtual 94	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   87: astore 12
    //   89: aload 10
    //   91: invokevirtual 95	java/io/ByteArrayOutputStream:close	()V
    //   94: aload 12
    //   96: areturn
    //   97: aload 6
    //   99: aload 4
    //   101: invokevirtual 99	java/io/ByteArrayOutputStream:write	([B)V
    //   104: goto -57 -> 47
    //   107: astore 9
    //   109: aload 6
    //   111: astore 10
    //   113: aload 5
    //   115: astore_3
    //   116: aload 9
    //   118: invokevirtual 102	java/lang/Exception:printStackTrace	()V
    //   121: aload_3
    //   122: ifnull -48 -> 74
    //   125: aload_3
    //   126: invokevirtual 90	java/io/FileInputStream:close	()V
    //   129: goto -55 -> 74
    //   132: astore 11
    //   134: aload 11
    //   136: invokevirtual 103	java/io/IOException:printStackTrace	()V
    //   139: goto -65 -> 74
    //   142: astore 7
    //   144: aload_3
    //   145: ifnull +7 -> 152
    //   148: aload_3
    //   149: invokevirtual 90	java/io/FileInputStream:close	()V
    //   152: aload 7
    //   154: athrow
    //   155: astore 8
    //   157: aload 8
    //   159: invokevirtual 103	java/io/IOException:printStackTrace	()V
    //   162: goto -10 -> 152
    //   165: astore 14
    //   167: aload 14
    //   169: invokevirtual 103	java/io/IOException:printStackTrace	()V
    //   172: aload 6
    //   174: astore 10
    //   176: goto -102 -> 74
    //   179: astore 13
    //   181: aload 13
    //   183: invokevirtual 103	java/io/IOException:printStackTrace	()V
    //   186: goto -92 -> 94
    //   189: astore 7
    //   191: aload 5
    //   193: astore_3
    //   194: goto -50 -> 144
    //   197: astore 7
    //   199: aload 5
    //   201: astore_3
    //   202: goto -58 -> 144
    //   205: astore 9
    //   207: aconst_null
    //   208: astore 10
    //   210: aconst_null
    //   211: astore_3
    //   212: goto -96 -> 116
    //   215: astore 9
    //   217: aload 5
    //   219: astore_3
    //   220: aconst_null
    //   221: astore 10
    //   223: goto -107 -> 116
    //
    // Exception table:
    //   from	to	target	type
    //   47	62	107	java/lang/Exception
    //   97	104	107	java/lang/Exception
    //   125	129	132	java/io/IOException
    //   28	38	142	finally
    //   116	121	142	finally
    //   148	152	155	java/io/IOException
    //   66	70	165	java/io/IOException
    //   89	94	179	java/io/IOException
    //   38	47	189	finally
    //   47	62	197	finally
    //   97	104	197	finally
    //   28	38	205	java/lang/Exception
    //   38	47	215	java/lang/Exception
  }

  // ERROR //
  public static int writeFile(File paramFile, String paramString, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: new 43	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: aload_1
    //   6: invokespecial 54	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   9: astore_3
    //   10: aconst_null
    //   11: astore 4
    //   13: new 109	java/io/FileOutputStream
    //   16: dup
    //   17: aload_3
    //   18: invokespecial 110	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   21: astore 5
    //   23: aload 5
    //   25: ifnull +14 -> 39
    //   28: aload 5
    //   30: aload_2
    //   31: invokevirtual 111	java/io/FileOutputStream:write	([B)V
    //   34: aload 5
    //   36: invokevirtual 114	java/io/FileOutputStream:flush	()V
    //   39: aload 5
    //   41: invokevirtual 115	java/io/FileOutputStream:close	()V
    //   44: iconst_0
    //   45: ireturn
    //   46: astore 7
    //   48: aload 7
    //   50: invokevirtual 116	java/io/FileNotFoundException:printStackTrace	()V
    //   53: aload 4
    //   55: invokevirtual 115	java/io/FileOutputStream:close	()V
    //   58: goto -14 -> 44
    //   61: astore 10
    //   63: aload 10
    //   65: invokevirtual 103	java/io/IOException:printStackTrace	()V
    //   68: goto -24 -> 44
    //   71: astore 11
    //   73: aload 11
    //   75: invokevirtual 103	java/io/IOException:printStackTrace	()V
    //   78: aload 4
    //   80: invokevirtual 115	java/io/FileOutputStream:close	()V
    //   83: goto -39 -> 44
    //   86: astore 12
    //   88: aload 12
    //   90: invokevirtual 103	java/io/IOException:printStackTrace	()V
    //   93: goto -49 -> 44
    //   96: astore 8
    //   98: aload 4
    //   100: invokevirtual 115	java/io/FileOutputStream:close	()V
    //   103: aload 8
    //   105: athrow
    //   106: astore 9
    //   108: aload 9
    //   110: invokevirtual 103	java/io/IOException:printStackTrace	()V
    //   113: goto -10 -> 103
    //   116: astore 6
    //   118: aload 6
    //   120: invokevirtual 103	java/io/IOException:printStackTrace	()V
    //   123: goto -79 -> 44
    //   126: astore 8
    //   128: aload 5
    //   130: astore 4
    //   132: goto -34 -> 98
    //   135: astore 11
    //   137: aload 5
    //   139: astore 4
    //   141: goto -68 -> 73
    //   144: astore 7
    //   146: aload 5
    //   148: astore 4
    //   150: goto -102 -> 48
    //
    // Exception table:
    //   from	to	target	type
    //   13	23	46	java/io/FileNotFoundException
    //   53	58	61	java/io/IOException
    //   13	23	71	java/io/IOException
    //   78	83	86	java/io/IOException
    //   13	23	96	finally
    //   48	53	96	finally
    //   73	78	96	finally
    //   98	103	106	java/io/IOException
    //   39	44	116	java/io/IOException
    //   28	39	126	finally
    //   28	39	135	java/io/IOException
    //   28	39	144	java/io/FileNotFoundException
  }

  public boolean canReadSdcard()
  {
    String str = Environment.getExternalStorageState();
    return (str.equalsIgnoreCase("mounted")) || (str.equalsIgnoreCase("mounted_ro"));
  }

  public boolean canWriteSdcard()
  {
    return Environment.getExternalStorageState().equalsIgnoreCase("mounted");
  }

  public void deleteDir(int paramInt)
  {
    File localFile = getCustomPath(paramInt);
    File[] arrayOfFile;
    if (localFile.exists())
    {
      arrayOfFile = localFile.listFiles();
      if (arrayOfFile != null)
        break label28;
      localFile.delete();
    }
    while (true)
    {
      return;
      label28: int i = arrayOfFile.length;
      for (int j = 0; j < i; j++)
        arrayOfFile[j].delete();
    }
  }

  public void deleteFile(int paramInt, String paramString)
  {
    File localFile = new File(getCustomPath(paramInt), paramString);
    if (localFile.exists())
      localFile.delete();
  }

  public File getCustomPath(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return null;
    case 1:
      return getCustomDirectory("download");
    case 4:
      return getCustomDirectory("movies");
    case 3:
      return getCustomDirectory("music");
    case 2:
      return getCustomDirectory("pictures");
    case 153:
    }
    return getCustomDirectory("temp");
  }

  public File getPublicPath(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return null;
    case 1:
      return getDirectory(Environment.DIRECTORY_DOWNLOADS);
    case 5:
      return getDirectory(Environment.DIRECTORY_DCIM);
    case 4:
      return getDirectory(Environment.DIRECTORY_MOVIES);
    case 3:
      return getDirectory(Environment.DIRECTORY_MUSIC);
    case 2:
      return getDirectory(Environment.DIRECTORY_PICTURES);
    case 6:
    }
    return new File(getDirectory(Environment.DIRECTORY_DCIM).getPath() + "/Screenshots");
  }

  public String getRootDir(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return null;
    case 1:
      return "helper";
    case 2457:
      return "other_999";
    case -1:
    }
    return "none_999";
  }

  public String getRootPath(Context paramContext, boolean paramBoolean)
  {
    String str;
    if ("mounted".equals(Environment.getExternalStorageState()))
      str = Environment.getExternalStorageDirectory().getAbsolutePath();
    do
    {
      return str;
      str = null;
    }
    while (!paramBoolean);
    return paramContext.getFilesDir().getAbsolutePath();
  }

  public String readFile(int paramInt, String paramString1, String paramString2)
  {
    byte[] arrayOfByte = readFile(paramInt, paramString1);
    if (arrayOfByte == null)
      return null;
    if (paramString2 == null);
    try
    {
      return new String(arrayOfByte);
      String str = new String(arrayOfByte, paramString2);
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
    }
    return null;
  }

  public byte[] readFile(int paramInt, String paramString)
  {
    return readFile(getCustomPath(paramInt), paramString);
  }

  public int writeFile(int paramInt, String paramString1, String paramString2)
  {
    writeFile(paramInt, paramString1, paramString2.getBytes());
    return 0;
  }

  public int writeFile(int paramInt, String paramString, byte[] paramArrayOfByte)
  {
    writeFile(getCustomPath(paramInt), paramString, paramArrayOfByte);
    return 0;
  }

  public static abstract interface CustomDirName
  {
    public static final String DOWNLOAD = "download";
    public static final String MOVIES = "movies";
    public static final String MUSIC = "music";
    public static final String PICTURES = "pictures";
    public static final String TEMP = "temp";
  }

  public static abstract interface DirType
  {
    public static final int DT_DCIM = 5;
    public static final int DT_DOWNLOAD = 1;
    public static final int DT_MOVIES = 4;
    public static final int DT_MUSIC = 3;
    public static final int DT_PICTURE = 2;
    public static final int DT_SCREENSHOT = 6;
    public static final int DT_TEMP = 153;
  }

  public static abstract interface ProductType
  {
    public static final int PT_NONE = -1;
    public static final int PT_OTHER = 2457;
    public static final int SOSO_HELPER = 1;
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.DirectoryMgr
 * JD-Core Version:    0.6.2
 */