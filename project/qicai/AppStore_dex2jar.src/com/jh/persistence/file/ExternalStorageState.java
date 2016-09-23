package com.jh.persistence.file;

import android.os.Environment;
import android.os.StatFs;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

public class ExternalStorageState
{
  public static final String SD_CARD = "sdCard";

  public static boolean canRead()
  {
    String str = Environment.getExternalStorageState();
    if ("mounted".equals(str));
    while ("mounted_ro".equals(str))
      return true;
    return false;
  }

  public static boolean canWrite()
  {
    return "mounted".equals(Environment.getExternalStorageState());
  }

  public static long getAvailableMemory()
  {
    if (canRead())
    {
      StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
      return localStatFs.getBlockSize() * localStatFs.getAvailableBlocks();
    }
    return -1L;
  }

  public static List<String> getAvailableStorage()
  {
    ArrayList localArrayList1 = new ArrayList(10);
    ArrayList localArrayList2 = new ArrayList(10);
    try
    {
      File localFile = new File("/proc/mounts");
      Scanner localScanner;
      if (localFile.exists())
        localScanner = new Scanner(localFile);
      while (true)
      {
        boolean bool = localScanner.hasNext();
        if (!bool)
        {
          localArrayList2.addAll(localArrayList1);
          return localArrayList2;
        }
        String str = localScanner.nextLine();
        if ((!str.contains("/mnt/secure/asec")) && ((str.startsWith("/dev/block/vold/")) || (str.startsWith("/dev/fuse"))))
          localArrayList1.add(str.split(" ")[1]);
      }
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public static List<String> getReadableStorage()
  {
    List localList = getAvailableStorage();
    Iterator localIterator = localList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localList;
      String str = (String)localIterator.next();
      if (!new File(str).canRead())
        localList.remove(str);
    }
  }

  public static List<String> getWriteableStorage()
  {
    List localList = getAvailableStorage();
    Iterator localIterator = localList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return localList;
      String str = (String)localIterator.next();
      if (!new File(str).canWrite())
        localList.remove(str);
    }
  }

  public static boolean isVisible()
  {
    String str = Environment.getExternalStorageState();
    if ("mounted".equals(str))
      return true;
    return !"mounted_ro".equals(str);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.persistence.file.ExternalStorageState
 * JD-Core Version:    0.6.2
 */