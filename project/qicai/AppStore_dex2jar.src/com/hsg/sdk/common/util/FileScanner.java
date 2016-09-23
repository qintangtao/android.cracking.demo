package com.hsg.sdk.common.util;

import java.io.File;
import java.util.ArrayList;

public class FileScanner
{
  private static FileScanner mScanner;
  private FileScannerListener mScannerListener;

  private ArrayList<File> scann(String paramString1, boolean paramBoolean, String paramString2)
  {
    int i = 0;
    Object localObject = null;
    if (paramString1 != null)
    {
      boolean bool1 = paramString1.equals("");
      localObject = null;
      if (!bool1)
        break label29;
    }
    label29: File[] arrayOfFile;
    do
    {
      File localFile1;
      boolean bool2;
      do
      {
        return localObject;
        localFile1 = new File(paramString1);
        bool2 = localFile1.isDirectory();
        localObject = null;
      }
      while (!bool2);
      localObject = new ArrayList();
      arrayOfFile = localFile1.listFiles();
    }
    while ((arrayOfFile == null) || (arrayOfFile.length <= 0));
    if ((paramString2 == null) || (paramString2.equals("")))
    {
      int j = arrayOfFile.length;
      label99: File localFile2;
      if (i < j)
      {
        localFile2 = arrayOfFile[i];
        if ((!localFile2.isDirectory()) || (!paramBoolean))
          break label165;
        ArrayList localArrayList1 = scann(localFile2.getPath(), paramBoolean, paramString2);
        if ((localArrayList1 != null) && (localArrayList1.size() > 0))
          ((ArrayList)localObject).addAll(localArrayList1);
      }
      while (true)
      {
        i++;
        break label99;
        break;
        label165: if (localFile2.isFile())
          ((ArrayList)localObject).add(localFile2);
      }
    }
    int k = arrayOfFile.length;
    label189: File localFile3;
    if (i < k)
    {
      localFile3 = arrayOfFile[i];
      if ((!localFile3.isDirectory()) || (!paramBoolean))
        break label255;
      ArrayList localArrayList2 = scann(localFile3.getPath(), paramBoolean, paramString2);
      if ((localArrayList2 != null) && (localArrayList2.size() > 0))
        ((ArrayList)localObject).addAll(localArrayList2);
    }
    while (true)
    {
      i++;
      break label189;
      break;
      label255: if ((localFile3.isFile()) && (localFile3.getPath().toLowerCase().endsWith(paramString2.toLowerCase())))
        ((ArrayList)localObject).add(localFile3);
    }
  }

  private void startScanTask(final String paramString1, final boolean paramBoolean, final String paramString2, final FileScannerListener paramFileScannerListener)
  {
    new Thread(new Runnable()
    {
      public void run()
      {
        ArrayList localArrayList = FileScanner.this.scann(paramString1, paramBoolean, paramString2);
        if (paramFileScannerListener != null)
          paramFileScannerListener.onComplete(localArrayList);
      }
    }).start();
  }

  private void startScanTask(final String[] paramArrayOfString, final boolean paramBoolean, final String paramString, final FileScannerListener paramFileScannerListener)
  {
    new Thread(new Runnable()
    {
      public void run()
      {
        ArrayList localArrayList1 = new ArrayList();
        for (int i = 0; ; i++)
        {
          if (i >= paramArrayOfString.length)
          {
            if (paramFileScannerListener != null)
              paramFileScannerListener.onComplete(localArrayList1);
            return;
          }
          ArrayList localArrayList2 = FileScanner.this.scann(paramArrayOfString[i], paramBoolean, paramString);
          if (localArrayList2 != null)
            localArrayList1.addAll(localArrayList2);
          if (paramFileScannerListener != null)
            paramFileScannerListener.onProgress(i, localArrayList2);
        }
      }
    }).start();
  }

  public void scanFile(String paramString1, boolean paramBoolean, String paramString2)
  {
    startScanTask(paramString1, paramBoolean, paramString2, this.mScannerListener);
  }

  public void scanFile(String[] paramArrayOfString, boolean paramBoolean, String paramString)
  {
    startScanTask(paramArrayOfString, paramBoolean, paramString, this.mScannerListener);
  }

  public void setFileScannerListener(FileScannerListener paramFileScannerListener)
  {
    this.mScannerListener = paramFileScannerListener;
  }

  public static abstract interface FileScannerListener
  {
    public abstract void onComplete(ArrayList<File> paramArrayList);

    public abstract void onProgress(int paramInt, ArrayList<File> paramArrayList);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.util.FileScanner
 * JD-Core Version:    0.6.2
 */