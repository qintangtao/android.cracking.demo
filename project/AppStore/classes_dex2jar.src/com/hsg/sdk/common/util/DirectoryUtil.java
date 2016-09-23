package com.hsg.sdk.common.util;

import android.os.Environment;
import android.util.Log;
import java.io.File;

public class DirectoryUtil
{
  private static DirectoryUtil mDirMgr = null;
  private String mRootDir = null;

  private DirectoryUtil(String paramString)
  {
    this.mRootDir = paramString;
  }

  private File getDirectory(String paramString)
  {
    return Environment.getExternalStoragePublicDirectory(paramString);
  }

  public static DirectoryUtil getInstance()
  {
    if (mDirMgr == null)
      try
      {
        throw new NotInitRootDirException("û�г�ʼ��root·��");
      }
      catch (NotInitRootDirException localNotInitRootDirException)
      {
        localNotInitRootDirException.printStackTrace();
      }
    return mDirMgr;
  }

  public static DirectoryUtil newInstance(String paramString)
  {
    if (mDirMgr == null)
      mDirMgr = new DirectoryUtil(paramString);
    return mDirMgr;
  }

  public void RecursionDeleteFile(File paramFile)
  {
    if (paramFile.isFile())
      paramFile.delete();
    while (!paramFile.isDirectory())
      return;
    File[] arrayOfFile = paramFile.listFiles();
    if ((arrayOfFile == null) || (arrayOfFile.length == 0))
    {
      paramFile.delete();
      return;
    }
    int i = arrayOfFile.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
      {
        paramFile.delete();
        return;
      }
      RecursionDeleteFile(arrayOfFile[j]);
    }
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

  public void deleteFile(int paramInt, String paramString)
  {
    Log.d("huashao", getCustomPath(paramInt) + " filename=" + paramString);
    File localFile = new File(getCustomPath(paramInt), paramString);
    if (localFile.exists())
      RecursionDeleteFile(localFile);
  }

  // ERROR //
  public byte[] getByteFromFile(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 43	java/io/File
    //   3: dup
    //   4: aload_1
    //   5: aload_2
    //   6: invokespecial 117	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   9: astore_3
    //   10: aload_3
    //   11: invokevirtual 110	java/io/File:exists	()Z
    //   14: ifne +5 -> 19
    //   17: aconst_null
    //   18: areturn
    //   19: aconst_null
    //   20: astore 4
    //   22: new 119	java/io/FileInputStream
    //   25: dup
    //   26: aload_3
    //   27: invokespecial 121	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   30: astore 5
    //   32: new 123	java/io/ByteArrayOutputStream
    //   35: dup
    //   36: invokespecial 124	java/io/ByteArrayOutputStream:<init>	()V
    //   39: astore 6
    //   41: sipush 256
    //   44: newarray byte
    //   46: astore 8
    //   48: aload 5
    //   50: aload 8
    //   52: invokevirtual 128	java/io/FileInputStream:read	([B)I
    //   55: istore 9
    //   57: iload 9
    //   59: iconst_m1
    //   60: if_icmpne +23 -> 83
    //   63: aload 5
    //   65: invokevirtual 131	java/io/FileInputStream:close	()V
    //   68: aload 6
    //   70: astore 4
    //   72: aload 4
    //   74: ifnull -57 -> 17
    //   77: aload 4
    //   79: invokevirtual 135	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   82: areturn
    //   83: aload 6
    //   85: aload 8
    //   87: iconst_0
    //   88: iload 9
    //   90: invokevirtual 139	java/io/ByteArrayOutputStream:write	([BII)V
    //   93: sipush 256
    //   96: newarray byte
    //   98: astore 8
    //   100: goto -52 -> 48
    //   103: astore 7
    //   105: aload 7
    //   107: invokevirtual 140	java/lang/Exception:printStackTrace	()V
    //   110: goto -38 -> 72
    //   113: astore 7
    //   115: aconst_null
    //   116: astore 4
    //   118: goto -13 -> 105
    //   121: astore 7
    //   123: aload 6
    //   125: astore 4
    //   127: goto -22 -> 105
    //
    // Exception table:
    //   from	to	target	type
    //   22	32	103	java/lang/Exception
    //   32	41	113	java/lang/Exception
    //   41	48	121	java/lang/Exception
    //   48	57	121	java/lang/Exception
    //   63	68	121	java/lang/Exception
    //   83	100	121	java/lang/Exception
  }

  public File getCustomDirectory(String paramString)
  {
    File localFile = new File(Environment.getExternalStorageDirectory(), "/" + this.mRootDir + "/" + paramString);
    if (!localFile.exists())
      localFile.mkdirs();
    return localFile;
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

  public File getFileByPath(String paramString1, String paramString2)
  {
    File localFile = new File(paramString1, paramString2);
    if (!localFile.exists())
      localFile = null;
    return localFile;
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
    }
    return getDirectory(Environment.DIRECTORY_PICTURES);
  }

  // ERROR //
  public int writeFile(String paramString1, String paramString2, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: new 43	java/io/File
    //   3: dup
    //   4: aload_1
    //   5: aload_2
    //   6: invokespecial 117	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   9: astore 4
    //   11: aconst_null
    //   12: astore 5
    //   14: new 191	java/io/FileOutputStream
    //   17: dup
    //   18: aload 4
    //   20: invokespecial 192	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   23: astore 6
    //   25: aload 6
    //   27: ifnull +14 -> 41
    //   30: aload 6
    //   32: aload_3
    //   33: invokevirtual 195	java/io/FileOutputStream:write	([B)V
    //   36: aload 6
    //   38: invokevirtual 198	java/io/FileOutputStream:flush	()V
    //   41: aload 6
    //   43: invokevirtual 199	java/io/FileOutputStream:close	()V
    //   46: iconst_0
    //   47: ireturn
    //   48: astore 8
    //   50: aload 8
    //   52: invokevirtual 200	java/io/FileNotFoundException:printStackTrace	()V
    //   55: aload 5
    //   57: invokevirtual 199	java/io/FileOutputStream:close	()V
    //   60: goto -14 -> 46
    //   63: astore 11
    //   65: aload 11
    //   67: invokevirtual 201	java/io/IOException:printStackTrace	()V
    //   70: goto -24 -> 46
    //   73: astore 12
    //   75: aload 12
    //   77: invokevirtual 201	java/io/IOException:printStackTrace	()V
    //   80: aload 5
    //   82: invokevirtual 199	java/io/FileOutputStream:close	()V
    //   85: goto -39 -> 46
    //   88: astore 13
    //   90: aload 13
    //   92: invokevirtual 201	java/io/IOException:printStackTrace	()V
    //   95: goto -49 -> 46
    //   98: astore 9
    //   100: aload 5
    //   102: invokevirtual 199	java/io/FileOutputStream:close	()V
    //   105: aload 9
    //   107: athrow
    //   108: astore 10
    //   110: aload 10
    //   112: invokevirtual 201	java/io/IOException:printStackTrace	()V
    //   115: goto -10 -> 105
    //   118: astore 7
    //   120: aload 7
    //   122: invokevirtual 201	java/io/IOException:printStackTrace	()V
    //   125: goto -79 -> 46
    //   128: astore 9
    //   130: aload 6
    //   132: astore 5
    //   134: goto -34 -> 100
    //   137: astore 12
    //   139: aload 6
    //   141: astore 5
    //   143: goto -68 -> 75
    //   146: astore 8
    //   148: aload 6
    //   150: astore 5
    //   152: goto -102 -> 50
    //
    // Exception table:
    //   from	to	target	type
    //   14	25	48	java/io/FileNotFoundException
    //   55	60	63	java/io/IOException
    //   14	25	73	java/io/IOException
    //   80	85	88	java/io/IOException
    //   14	25	98	finally
    //   50	55	98	finally
    //   75	80	98	finally
    //   100	105	108	java/io/IOException
    //   41	46	118	java/io/IOException
    //   30	41	128	finally
    //   30	41	137	java/io/IOException
    //   30	41	146	java/io/FileNotFoundException
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
    public static final int DT_TEMP = 153;
  }

  public static class NotInitRootDirException extends Exception
  {
    public NotInitRootDirException()
    {
    }

    public NotInitRootDirException(String paramString)
    {
      super();
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.DirectoryUtil
 * JD-Core Version:    0.6.2
 */