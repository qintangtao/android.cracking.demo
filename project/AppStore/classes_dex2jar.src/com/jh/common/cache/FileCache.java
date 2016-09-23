package com.jh.common.cache;

import android.content.Context;
import android.text.TextUtils;
import com.jh.common.app.application.AppSystem;
import com.jh.common.app.util.Md5Util;
import com.jh.persistence.file.ExternalStorageState;
import com.jh.persistence.file.FileUtil;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class FileCache
{
  static final String AUDIO_PATH = "audio/";
  static final String IMAGE_PATH = "image/";
  static final String TEMP_PATH = "temp/";
  static final String VEDIO_PATH = "video/";
  private static FileCache mInstance;
  private File cacheDir;
  private Set<String> fileDirPathSet = new HashSet();

  public FileCache()
  {
    FileEnum[] arrayOfFileEnum = FileEnum.values();
    int i = arrayOfFileEnum.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      FileEnum localFileEnum = arrayOfFileEnum[j];
      this.fileDirPathSet.add(getAbsoluteFile(localFileEnum));
    }
  }

  public FileCache(Context paramContext)
  {
    this();
    if (ExternalStorageState.canWrite());
    for (this.cacheDir = new File(AppSystem.getInstance().getExternalPath(false)); ; this.cacheDir = paramContext.getCacheDir())
    {
      if (!this.cacheDir.exists())
        this.cacheDir.mkdirs();
      return;
    }
  }

  public static FileCache getInstance(Context paramContext)
  {
    if (mInstance == null)
      mInstance = new FileCache(paramContext);
    return mInstance;
  }

  public void addFileDir(String paramString)
  {
    String str = AppSystem.getInstance().getAppDirPath() + File.separator + paramString;
    this.fileDirPathSet.add(AppSystem.getInstance().creatDirIfNotExists(str));
  }

  public void clear()
  {
    Iterator localIterator = this.fileDirPathSet.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      String str = (String)localIterator.next();
      try
      {
        FileUtil.deleteFolderFile(str);
        FileUtil.deleteFolderFile(this.cacheDir.getAbsolutePath());
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
      }
    }
  }

  public String createExternalImageFile()
    throws JHExternalStorage.ExternalStorageFullException, JHExternalStorage.ExternalInvalidException
  {
    if (!JHExternalStorage.canWrite())
      throw new JHExternalStorage.ExternalInvalidException();
    if (JHExternalStorage.isFull(1024L))
      throw new JHExternalStorage.ExternalStorageFullException();
    String str1 = getExternalFile(FileEnum.IMAGE);
    String str2 = new SimpleDateFormat("yyyyMMddhhmmssSSS").format(new Date()) + ".jpg";
    return str1 + str2;
  }

  public String createOtherFile(String paramString)
  {
    return AppSystem.getInstance().getAppDirPath() + File.separator + paramString;
  }

  public String createTempFile(FileEnum paramFileEnum)
  {
    String str = getAbsoluteFile(paramFileEnum) + System.currentTimeMillis();
    if (paramFileEnum == FileEnum.IMAGE)
      return str + ".jpg";
    return AppSystem.getInstance().createFileIfNotExists(str);
  }

  public boolean delete(String paramString)
  {
    return getFile(paramString).delete();
  }

  String getAbsoluteFile(FileEnum paramFileEnum)
  {
    String str = AppSystem.getInstance().getAppDirPath() + File.separator + paramFileEnum.getFilePath();
    return AppSystem.getInstance().creatDirIfNotExists(str);
  }

  String getExternalFile(FileEnum paramFileEnum)
  {
    String str = AppSystem.getInstance().getExternalPath() + File.separator + paramFileEnum.getFilePath();
    return AppSystem.getInstance().creatDirIfNotExists(str);
  }

  public File getExternalTmpFile(String paramString, long paramLong)
    throws JHExternalStorage.ExternalStorageFullException, JHExternalStorage.ExternalInvalidException
  {
    if (!JHExternalStorage.canWrite())
      throw new JHExternalStorage.ExternalInvalidException();
    if (JHExternalStorage.isFull(paramLong))
      throw new JHExternalStorage.ExternalStorageFullException();
    File localFile1 = new File(paramString);
    File localFile2 = localFile1.getParentFile();
    if (!localFile2.exists())
      localFile2.mkdirs();
    if (!localFile1.exists());
    try
    {
      boolean bool = localFile1.createNewFile();
      if (!bool)
        localFile1 = null;
      return localFile1;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return null;
  }

  public File getFile(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      String str = String.valueOf(Md5Util.getMD5Str(paramString));
      return new File(this.cacheDir, str);
    }
    return null;
  }

  public long getFileCacheSize()
  {
    long l = 0L;
    File[] arrayOfFile = this.cacheDir.listFiles();
    int i;
    if ((arrayOfFile != null) && (arrayOfFile.length > 0))
      i = arrayOfFile.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return l;
      File localFile = arrayOfFile[j];
      if (localFile.exists())
        l += localFile.length();
    }
  }

  public Set<String> getFileDirPathSet()
  {
    return this.fileDirPathSet;
  }

  public String getLocalFileAbsoluteName(String paramString, FileEnum paramFileEnum)
  {
    String str1 = getAbsoluteFile(paramFileEnum) + Md5Util.getMD5Str(paramString);
    if (TextUtils.isEmpty(str1))
      return "";
    if (paramFileEnum == FileEnum.IMAGE)
      str1 = str1 + ".jpg";
    while (true)
    {
      File localFile = new File(str1);
      if (!localFile.exists())
        try
        {
          boolean bool = localFile.createNewFile();
          if (!bool)
          {
            return "";
            if ((paramFileEnum != FileEnum.AUDIO) || (paramString.length() <= 6))
              continue;
            int i = paramString.indexOf('.', -6 + paramString.length());
            if (i == -1)
              continue;
            String str2 = paramString.substring(i);
            str1 = str1 + str2;
          }
        }
        catch (IOException localIOException)
        {
          localIOException.printStackTrace();
          return "";
        }
    }
    return str1;
  }

  public void removeFileDir(String paramString)
  {
    this.fileDirPathSet.remove(paramString);
    try
    {
      FileUtil.deleteFolderFile(paramString);
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }

  public static enum FileEnum
  {
    private String filePath;

    static
    {
      AUDIO = new FileEnum("AUDIO", 1, "audio/");
      TEMP = new FileEnum("TEMP", 2, "temp/");
      VEDIO = new FileEnum("VEDIO", 3, "video/");
      FileEnum[] arrayOfFileEnum = new FileEnum[4];
      arrayOfFileEnum[0] = IMAGE;
      arrayOfFileEnum[1] = AUDIO;
      arrayOfFileEnum[2] = TEMP;
      arrayOfFileEnum[3] = VEDIO;
    }

    private FileEnum(String arg3)
    {
      Object localObject;
      this.filePath = localObject;
    }

    public String getFilePath()
    {
      return this.filePath;
    }

    public void setFilePath(String paramString)
    {
      this.filePath = paramString;
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.common.cache.FileCache
 * JD-Core Version:    0.6.2
 */