package com.youqicai.download;

import android.annotation.SuppressLint;
import android.app.DownloadManager;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.jh.app.util.BaseToastV;
import com.jh.app.util.RunnableExecutor;
import com.jh.common.app.application.AppSystem;
import com.jh.common.app.util.CommonUtils;
import com.jh.common.cache.FileCache;
import com.jh.common.cache.FileCache.FileEnum;
import com.jh.common.cache.JHExternalStorage;
import com.jh.common.cache.JHExternalStorage.ExternalStorageFullException;
import com.jh.exception.JHException;
import com.jh.net.JHHttpClient;
import com.jh.net.JHHttpClient.HttpContent;
import com.jh.net.JHIOException;
import com.jh.net.NetStatus;
import com.jh.net.NoNetWorkException;
import com.jh.util.BaseEncrypt;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Vector;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

public class DownloadService
{
  private static final String CANCEL_FLAG = "CANCEL_FLAG";
  public static final int FAILED = 2;
  public static final int RUNNING = 1;
  private static final String STATUS = "STATUS";
  public static final int SUCCESS = 0;
  public static final int WAIT = -1;
  private static DownloadService instance = new DownloadService(5);
  private RunnableExecutor closeExecutor = new RunnableExecutor(3);
  private DownloadManager downloadManager;
  private Queue<NetSpeedDTO> downloadSpeed = new LinkedList();
  private RunnableExecutor executor;
  private List<GlobalDownLoadListener> globalListeners = new ArrayList();
  Handler handler = new Handler(Looper.getMainLooper())
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      DownloadService.DownloadTask localDownloadTask = (DownloadService.DownloadTask)paramAnonymousMessage.obj;
      Bundle localBundle = paramAnonymousMessage.getData();
      int i = 2;
      boolean bool = false;
      if (localBundle != null)
      {
        bool = localBundle.getBoolean("CANCEL_FLAG", false);
        i = localBundle.getInt("STATUS", 2);
      }
      localDownloadTask.doFeedBack(bool, i);
    }
  };

  private DownloadService(int paramInt)
  {
    this.executor = RunnableExecutor.newInstance(paramInt);
  }

  public static Uri encodeUTF8(String paramString)
    throws UnsupportedEncodingException
  {
    return Uri.parse(UriEncoder.encode(paramString));
  }

  private static String getFileTag(String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString2))
      return paramString2;
    return paramString1;
  }

  public static DownloadService getInstance()
  {
    return instance;
  }

  private DownloadTask getTask(String paramString1, String paramString2, String paramString3, DownloadListener paramDownloadListener, String[] paramArrayOfString, int paramInt)
  {
    return new RetryDownLoadTask(paramString1, paramString2, paramString3, paramDownloadListener, paramArrayOfString, paramInt);
  }

  public static DownloadService newDownLoadQueue(int paramInt)
  {
    return new DownloadService(paramInt);
  }

  private void startDownLoad(Runnable paramRunnable)
  {
    this.executor.executeTask(paramRunnable);
  }

  public void addGlobalListener(GlobalDownLoadListener paramGlobalDownLoadListener)
  {
    if (paramGlobalDownLoadListener != null);
    try
    {
      this.globalListeners.add(paramGlobalDownLoadListener);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void executeAdvanceDownloadTask(String paramString1, String paramString2, int paramInt)
    throws DownloadException
  {
    try
    {
      executeAdvanceDownloadTask(paramString1, paramString2, null, null, null, false, paramInt);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void executeAdvanceDownloadTask(String paramString1, String paramString2, DownloadListener paramDownloadListener)
    throws DownloadException
  {
    try
    {
      executeAdvanceDownloadTask(paramString1, paramString2, null, paramDownloadListener, null, false, 3);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void executeAdvanceDownloadTask(String paramString1, String paramString2, DownloadListener paramDownloadListener, boolean paramBoolean)
    throws DownloadException
  {
    try
    {
      executeAdvanceDownloadTask(paramString1, paramString2, null, paramDownloadListener, null, paramBoolean, 3);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void executeAdvanceDownloadTask(String paramString1, String paramString2, String paramString3, DownloadListener paramDownloadListener)
    throws DownloadException
  {
    try
    {
      executeAdvanceDownloadTask(paramString1, paramString2, paramString3, paramDownloadListener, null, false, 3);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void executeAdvanceDownloadTask(String paramString1, String paramString2, String paramString3, DownloadListener paramDownloadListener, boolean paramBoolean, int paramInt)
  {
    try
    {
      executeAdvanceDownloadTask(paramString1, paramString2, paramString3, paramDownloadListener, null, paramBoolean, paramInt);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void executeAdvanceDownloadTask(String paramString1, String paramString2, String paramString3, DownloadListener paramDownloadListener, String[] paramArrayOfString, boolean paramBoolean, int paramInt)
    throws DownloadException
  {
    try
    {
      if (TextUtils.isEmpty(paramString1))
      {
        if (paramDownloadListener != null)
          paramDownloadListener.failed("", new JHException(AppSystem.getInstance().getContext().getString(2131492891)));
        Iterator localIterator1 = this.globalListeners.iterator();
        while (localIterator1.hasNext())
          ((GlobalDownLoadListener)localIterator1.next()).failed("", new JHException(AppSystem.getInstance().getContext().getString(2131492891)));
      }
    }
    finally
    {
    }
    if (!NetStatus.hasNet(AppSystem.getInstance().getContext()))
    {
      if (paramDownloadListener != null)
        paramDownloadListener.failed(getFileTag(paramString1, paramString3), new NoNetWorkException());
      Iterator localIterator2 = this.globalListeners.iterator();
      while (localIterator2.hasNext())
        ((GlobalDownLoadListener)localIterator2.next()).failed(getFileTag(paramString1, paramString3), new NoNetWorkException());
    }
    if (JHExternalStorage.isFull())
    {
      if (paramDownloadListener != null)
        paramDownloadListener.failed(getFileTag(paramString1, paramString3), new JHExternalStorage.ExternalStorageFullException());
      Iterator localIterator3 = this.globalListeners.iterator();
      while (localIterator3.hasNext())
        ((GlobalDownLoadListener)localIterator3.next()).failed(getFileTag(paramString1, paramString3), new JHExternalStorage.ExternalStorageFullException());
      BaseToastV.getInstance(AppSystem.getInstance().getContext()).showToastLong("空间已满,请及时清除");
    }
    while (true)
    {
      return;
      synchronized (this.executor)
      {
        if (!hasTask(getFileTag(paramString1, paramString3)))
        {
          DownloadTask localDownloadTask = getTask(paramString1, paramString2, paramString3, paramDownloadListener, paramArrayOfString, paramInt);
          localDownloadTask.setDeleteAtFailed(paramBoolean);
          startDownLoad(localDownloadTask);
        }
      }
    }
  }

  public void executeAdvanceDownloadTask(String paramString1, String paramString2, String paramString3, String[] paramArrayOfString, DownloadListener paramDownloadListener)
    throws DownloadException
  {
    try
    {
      executeAdvanceDownloadTask(paramString1, paramString2, paramString3, paramDownloadListener, paramArrayOfString, false, 3);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void executeDownLoadTaskExclude(String paramString1, String paramString2, DownloadListener paramDownloadListener)
  {
    try
    {
      if (!hasTask(paramString1))
        startDownLoad(new RetryDownLoadTask(paramString1, paramString2, null, paramDownloadListener, null, 3));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void executeDownloadTask(String paramString1, String paramString2)
    throws DownloadException
  {
    try
    {
      executeDownloadTask(paramString1, paramString2, null);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void executeDownloadTask(String paramString1, String paramString2, DownloadListener paramDownloadListener)
    throws DownloadException
  {
    try
    {
      stopDownload(paramString1);
      startDownLoad(new DownloadTask(paramString1, paramString2, null, null, paramDownloadListener));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void executeDownloadTaskCanRepeat(String paramString1, String paramString2, DownloadListener paramDownloadListener)
    throws DownloadException
  {
    try
    {
      startDownLoad(new DownloadTask(paramString1, paramString2, null, null, paramDownloadListener));
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void executeRetryDownloadTask(String paramString1, String paramString2, DownloadListener paramDownloadListener)
    throws DownloadException
  {
    try
    {
      executeRetryDownloadTask(paramString1, paramString2, paramDownloadListener, null, true);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void executeRetryDownloadTask(String paramString1, String paramString2, DownloadListener paramDownloadListener, String[] paramArrayOfString, boolean paramBoolean)
    throws DownloadException
  {
    try
    {
      DownloadTask localDownloadTask;
      if (!hasTask(paramString1, paramString2))
        if (hasSameNameTask(paramString2))
          localDownloadTask = (DownloadTask)getTaskBySavePath(paramString2).get(0);
      try
      {
        stopDownloadBySavePath(paramString2);
        DownloadDBCache localDownloadDBCache = DownloadDBCache.getInstance(AppSystem.getInstance().getContext());
        if (!localDownloadDBCache.queryCache(paramString1, paramString2, null).sameTask)
        {
          localDownloadDBCache.deleteTableBySavePath(paramString2);
          new File(paramString2).delete();
        }
        localDownloadTask.exception = new Exception("另有同名路径下载开始了");
        localDownloadTask.doFeedBack(false, 2);
        startDownLoad(new RetryDownLoadTask(paramString1, paramString2, null, paramDownloadListener, paramArrayOfString, 3));
        return;
      }
      finally
      {
      }
    }
    finally
    {
    }
  }

  public DownloadTask getNextTask()
  {
    return (DownloadTask)this.executor.getNextTask();
  }

  public int getSize()
  {
    return this.executor.getSize();
  }

  public List<DownloadTask> getTaskByGuid(String paramString)
  {
    LinkedList localLinkedList = new LinkedList();
    synchronized (this.executor.getRunningTasks())
    {
      Iterator localIterator1 = this.executor.getRunningTasks().iterator();
      while (localIterator1.hasNext())
      {
        Runnable localRunnable2 = (Runnable)localIterator1.next();
        if (((localRunnable2 instanceof DownloadTask)) && (!TextUtils.isEmpty(((DownloadTask)localRunnable2).guid)) && (((DownloadTask)localRunnable2).guid.equalsIgnoreCase(paramString)))
          localLinkedList.add((DownloadTask)localRunnable2);
      }
    }
    synchronized (this.executor.getWaitTasks())
    {
      Iterator localIterator2 = this.executor.getWaitTasks().iterator();
      while (localIterator2.hasNext())
      {
        Runnable localRunnable1 = (Runnable)localIterator2.next();
        if (((localRunnable1 instanceof DownloadTask)) && (!TextUtils.isEmpty(((DownloadTask)localRunnable1).guid)) && (((DownloadTask)localRunnable1).guid.equalsIgnoreCase(paramString)))
          localLinkedList.add((DownloadTask)localRunnable1);
      }
    }
    return localLinkedList;
  }

  public List<DownloadTask> getTaskBySavePath(String paramString)
  {
    LinkedList localLinkedList = new LinkedList();
    synchronized (this.executor.getRunningTasks())
    {
      Iterator localIterator1 = this.executor.getRunningTasks().iterator();
      while (localIterator1.hasNext())
      {
        Runnable localRunnable2 = (Runnable)localIterator1.next();
        if (((localRunnable2 instanceof DownloadTask)) && (((DownloadTask)localRunnable2).saveLocation.equalsIgnoreCase(paramString)))
          localLinkedList.add((DownloadTask)localRunnable2);
      }
    }
    synchronized (this.executor.getWaitTasks())
    {
      Iterator localIterator2 = this.executor.getWaitTasks().iterator();
      while (localIterator2.hasNext())
      {
        Runnable localRunnable1 = (Runnable)localIterator2.next();
        if (((localRunnable1 instanceof DownloadTask)) && (((DownloadTask)localRunnable1).saveLocation.equalsIgnoreCase(paramString)))
          localLinkedList.add((DownloadTask)localRunnable1);
      }
    }
    return localLinkedList;
  }

  public List<DownloadTask> getTaskByUrl(String paramString)
  {
    LinkedList localLinkedList = new LinkedList();
    synchronized (this.executor.getRunningTasks())
    {
      Iterator localIterator1 = this.executor.getRunningTasks().iterator();
      while (localIterator1.hasNext())
      {
        Runnable localRunnable2 = (Runnable)localIterator1.next();
        if (((localRunnable2 instanceof DownloadTask)) && (((DownloadTask)localRunnable2).srcUrl.equalsIgnoreCase(paramString)))
          localLinkedList.add((DownloadTask)localRunnable2);
      }
    }
    synchronized (this.executor.getWaitTasks())
    {
      Iterator localIterator2 = this.executor.getWaitTasks().iterator();
      while (localIterator2.hasNext())
      {
        Runnable localRunnable1 = (Runnable)localIterator2.next();
        if (((localRunnable1 instanceof DownloadTask)) && (((DownloadTask)localRunnable1).srcUrl.equalsIgnoreCase(paramString)))
          localLinkedList.add((DownloadTask)localRunnable1);
      }
    }
    return localLinkedList;
  }

  public List<DownloadTask> getTaskByUrlAndSavePath(String paramString1, String paramString2)
  {
    LinkedList localLinkedList = new LinkedList();
    synchronized (this.executor.getRunningTasks())
    {
      Iterator localIterator1 = this.executor.getRunningTasks().iterator();
      while (localIterator1.hasNext())
      {
        Runnable localRunnable2 = (Runnable)localIterator1.next();
        if (((localRunnable2 instanceof DownloadTask)) && (((DownloadTask)localRunnable2).srcUrl.equalsIgnoreCase(paramString1)) && (((DownloadTask)localRunnable2).saveLocation.equalsIgnoreCase(paramString2)))
          localLinkedList.add((DownloadTask)localRunnable2);
      }
    }
    synchronized (this.executor.getWaitTasks())
    {
      Iterator localIterator2 = this.executor.getWaitTasks().iterator();
      while (localIterator2.hasNext())
      {
        Runnable localRunnable1 = (Runnable)localIterator2.next();
        if (((localRunnable1 instanceof DownloadTask)) && (((DownloadTask)localRunnable1).srcUrl.equalsIgnoreCase(paramString1)) && (((DownloadTask)localRunnable1).saveLocation.equalsIgnoreCase(paramString2)))
          localLinkedList.add((DownloadTask)localRunnable1);
      }
    }
    return localLinkedList;
  }

  public boolean hasSameNameTask(String paramString)
  {
    List localList = getTaskBySavePath(paramString);
    return (localList != null) && (localList.size() > 0);
  }

  public boolean hasTask(String paramString)
  {
    List localList = getTaskByUrl(paramString);
    return (localList != null) && (localList.size() > 0);
  }

  public boolean hasTask(String paramString1, String paramString2)
  {
    List localList = getTaskByUrlAndSavePath(paramString1, paramString2);
    return (localList != null) && (localList.size() > 0);
  }

  public boolean hasWaitingTask()
  {
    return this.executor.hasWaitingTask();
  }

  public boolean isDownLoadingByGuid(String paramString)
  {
    try
    {
      List localList = getTaskByGuid(paramString);
      if (localList != null)
      {
        int i = localList.size();
        if (i <= 0);
      }
      for (boolean bool = true; ; bool = false)
        return bool;
    }
    finally
    {
    }
  }

  public boolean isTaskFull()
  {
    return this.executor.isTaskFull();
  }

  public void removeGlobalListener(GlobalDownLoadListener paramGlobalDownLoadListener)
  {
    if (paramGlobalDownLoadListener != null);
    try
    {
      this.globalListeners.remove(paramGlobalDownLoadListener);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void stopDownload(String paramString)
  {
    try
    {
      List localList = getTaskByUrl(paramString);
      if (localList != null)
      {
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          DownloadTask localDownloadTask = (DownloadTask)localIterator.next();
          localDownloadTask.stop();
          this.executor.removeTask(localDownloadTask);
        }
      }
    }
    finally
    {
    }
  }

  public void stopDownload(String paramString1, String paramString2)
  {
    try
    {
      List localList = getTaskByUrlAndSavePath(paramString1, paramString2);
      if (localList != null)
      {
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          DownloadTask localDownloadTask = (DownloadTask)localIterator.next();
          localDownloadTask.stop();
          this.executor.removeTask(localDownloadTask);
        }
      }
    }
    finally
    {
    }
  }

  public void stopDownloadById(String paramString)
  {
    try
    {
      List localList = getTaskByGuid(paramString);
      if (localList != null)
      {
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          DownloadTask localDownloadTask = (DownloadTask)localIterator.next();
          localDownloadTask.stop();
          this.executor.removeTask(localDownloadTask);
        }
      }
    }
    finally
    {
    }
  }

  public void stopDownloadBySavePath(String paramString)
  {
    try
    {
      List localList = getTaskBySavePath(paramString);
      if (localList != null)
      {
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          DownloadTask localDownloadTask = (DownloadTask)localIterator.next();
          localDownloadTask.stop();
          this.executor.removeTask(localDownloadTask);
        }
      }
    }
    finally
    {
    }
  }

  public void synExecuteDownTask(String paramString1, String paramString2, DownloadListener paramDownloadListener)
  {
    try
    {
      new SynDownloadTask(paramString1, paramString2, paramDownloadListener).run();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean syncAdvanceTask(String paramString1, String paramString2)
  {
    DownloadTask localDownloadTask = getTask(paramString1, paramString2, null, null, null, 3);
    localDownloadTask.run();
    return localDownloadTask.status == 0;
  }

  private class CloseInputStream
    implements Runnable
  {
    private InputStream inputStream;

    public CloseInputStream(InputStream arg2)
    {
      Object localObject;
      this.inputStream = localObject;
    }

    public void run()
    {
      try
      {
        if (this.inputStream != null)
          this.inputStream.close();
        return;
      }
      catch (Exception localException)
      {
      }
    }
  }

  class DownloadTask
    implements Runnable
  {
    volatile boolean cancelFlag = false;
    JHHttpClient.HttpContent content;
    boolean deleteAtFailed = false;
    long downLoadAllSize;
    long downloadedSize = 0L;
    Exception exception;
    File file;
    String guid;
    boolean hasDownLoadData = false;
    DownloadListener listener;
    String[] mimetype;
    OutputStream output;
    long preSize;
    long preTime = System.currentTimeMillis();
    String saveLocation;
    String srcUrl;
    int status = -1;

    public DownloadTask(String paramString1, String paramString2, String paramArrayOfString, String[] paramDownloadListener, DownloadListener arg6)
    {
      this.srcUrl = paramString1;
      this.mimetype = paramDownloadListener;
      this.guid = paramArrayOfString;
      this.saveLocation = paramString2;
      Object localObject;
      this.listener = localObject;
    }

    private void notifysuccess()
    {
      closeFileOutputStream();
      if (this.file.length() > 0L)
      {
        this.status = 0;
        sendMessage();
        return;
      }
      this.status = 2;
      this.exception = new JHException(AppSystem.getInstance().getContext().getString(2131492892));
      sendMessage();
    }

    protected void cancelTask()
      throws IOException, CloneNotSupportedException
    {
      DownloadService.this.executor.removeTask(this);
      closeFileOutputStream();
      if ((this.file != null) && (this.deleteAtFailed))
        this.file.delete();
      sendCancelMessage();
    }

    void clearFile()
    {
      new File(this.saveLocation).deleteOnExit();
    }

    protected void closeFileOutputStream()
    {
      try
      {
        if (this.output != null)
        {
          this.output.flush();
          this.output.close();
          this.output = null;
        }
        return;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
      }
    }

    protected void closeHttpInputStream()
    {
      if ((this.content != null) && (this.content.getStream() != null))
      {
        DownloadService.this.closeExecutor.executeTask(new DownloadService.CloseInputStream(DownloadService.this, this.content.getStream()));
        this.content = null;
      }
    }

    protected void closeStream()
    {
      closeFileOutputStream();
      closeHttpInputStream();
    }

    protected void createTmpFilePath()
    {
      if (TextUtils.isEmpty(this.saveLocation))
      {
        this.saveLocation = FileCache.getInstance(AppSystem.getInstance().getContext()).getLocalFileAbsoluteName(this.srcUrl, FileCache.FileEnum.TEMP);
        if (TextUtils.isEmpty(this.saveLocation))
          failed(new JHException(AppSystem.getInstance().getContext().getString(2131492891)));
      }
    }

    void doFeedBack(boolean paramBoolean, int paramInt)
    {
      if (!paramBoolean)
      {
        if (paramInt != 0)
          break label101;
        if (this.listener != null)
          this.listener.success(getFileTag(), this.saveLocation);
        synchronized (DownloadService.this)
        {
          Iterator localIterator3 = DownloadService.this.globalListeners.iterator();
          if (localIterator3.hasNext())
            ((GlobalDownLoadListener)localIterator3.next()).success(getFileTag(), this.saveLocation);
        }
      }
      label101: 
      do
      {
        return;
        if (paramInt == 2)
        {
          if (this.listener != null)
            this.listener.failed(getFileTag(), this.exception);
          synchronized (DownloadService.this)
          {
            Iterator localIterator2 = DownloadService.this.globalListeners.iterator();
            if (localIterator2.hasNext())
              ((GlobalDownLoadListener)localIterator2.next()).failed(getFileTag(), this.exception);
          }
          return;
        }
      }
      while (paramInt != 1);
      if (this.listener != null)
      {
        this.listener.setDownAllSize((float)this.downLoadAllSize);
        this.listener.setDownloadedSize((float)this.downloadedSize);
        if (System.currentTimeMillis() - this.preTime > 1000L)
        {
          Log.i("time", "-" + (System.currentTimeMillis() - this.preTime));
          long l1 = System.currentTimeMillis() - this.preTime;
          long l2 = 1000L * ((this.downloadedSize - this.preSize) / l1);
          if ((this.listener instanceof SpeedDownloadListener))
            ((SpeedDownloadListener)this.listener).setSpeed(CommonUtils.getFileSize(Long.valueOf(l2)) + "/s");
          if (DownloadService.this.downloadSpeed.size() > 4)
            DownloadService.this.downloadSpeed.poll();
          NetSpeedDTO localNetSpeedDTO = new NetSpeedDTO();
          localNetSpeedDTO.setInterval(this.downloadedSize - this.preSize);
          localNetSpeedDTO.setTime(l1);
          DownloadService.this.downloadSpeed.offer(localNetSpeedDTO);
          this.preTime = System.currentTimeMillis();
          this.preSize = this.downloadedSize;
        }
      }
      synchronized (DownloadService.this)
      {
        Iterator localIterator1 = DownloadService.this.globalListeners.iterator();
        if (localIterator1.hasNext())
          ((GlobalDownLoadListener)localIterator1.next()).setDownloadedSize(getFileTag(), (float)this.downloadedSize, (float)this.downLoadAllSize);
      }
    }

    protected void downLoad(String paramString)
      throws JHIOException, Exception
    {
      Log.d("DownloadService", "start download:[" + paramString + "]");
      createTmpFilePath();
      if (this.file == null)
        this.file = new File(this.saveLocation);
      initHttpContent(paramString);
      InputStream localInputStream = this.content.getStream();
      long l = this.content.getContentLength();
      initAllsize();
      if ((!this.file.exists()) || (this.file.length() == 0L) || (l > 0L))
      {
        this.file.getParentFile().mkdirs();
        this.file.createNewFile();
        this.output = getFileOutputStream(this.file);
        int i = Math.min((int)Runtime.getRuntime().freeMemory() / 10, 512000);
        if (i < 1024)
        {
          this.status = 2;
          throw new JHIOException();
        }
        byte[] arrayOfByte = new byte[i];
        while (true)
        {
          int j = localInputStream.read(arrayOfByte);
          if (j <= 0)
            break;
          if (this.cancelFlag)
            return;
          notifyProcess(arrayOfByte, j);
          this.hasDownLoadData = true;
        }
      }
      for (this.status = 0; ; this.status = 0)
      {
        Log.d("DownloadService", "Finish download task[" + paramString + "]");
        return;
      }
    }

    protected void failed(Exception paramException)
    {
      this.status = 2;
      if (this.file != null)
      {
        if (this.deleteAtFailed)
          this.file.delete();
        if (paramException != null)
          paramException.printStackTrace();
        this.exception = paramException;
      }
      sendMessage();
    }

    protected void finishTask()
    {
      if (this.cancelFlag);
      while (true)
      {
        try
        {
          cancelTask();
          DownloadService.this.executor.removeTask(this);
          closeStream();
          return;
        }
        catch (IOException localIOException)
        {
          localIOException.printStackTrace();
          continue;
        }
        catch (CloneNotSupportedException localCloneNotSupportedException)
        {
          localCloneNotSupportedException.printStackTrace();
          continue;
        }
        if (this.status != 0)
        {
          this.status = 2;
          failed(this.exception);
        }
        else
        {
          notifysuccess();
        }
      }
    }

    protected OutputStream getFileOutputStream(File paramFile)
      throws FileNotFoundException
    {
      return new BufferedOutputStream(new FileOutputStream(paramFile));
    }

    String getFileTag()
    {
      return DownloadService.getFileTag(this.srcUrl, this.guid);
    }

    protected JHHttpClient getHttpClient()
    {
      JHHttpClient localJHHttpClient = new JHHttpClient();
      localJHHttpClient.setConnectTimeout(30000);
      return localJHHttpClient;
    }

    protected void initAllsize()
    {
      this.downLoadAllSize = this.content.getContentLength();
    }

    protected void initHttpContent(String paramString)
      throws JHIOException, UnsupportedEncodingException, Exception
    {
      this.content = getHttpClient().getContent(DownloadService.encodeUTF8(paramString).toString());
    }

    public boolean isDeleteAtFailed()
    {
      return this.deleteAtFailed;
    }

    protected void isValidMimeType(Header[] paramArrayOfHeader)
    {
      if ((paramArrayOfHeader != null) && (paramArrayOfHeader.length > 0))
      {
        String str1 = paramArrayOfHeader[0].getValue();
        if (!TextUtils.isEmpty(str1))
        {
          String[] arrayOfString1 = str1.split(";");
          if ((arrayOfString1 != null) && (arrayOfString1.length > 0))
          {
            String str2 = arrayOfString1[0].trim();
            int i = 0;
            if ((this.mimetype == null) || (this.mimetype.length == 0))
              i = 1;
            label265: 
            while (i == 0)
            {
              throw new JHException();
              String[] arrayOfString2 = this.mimetype;
              int j = arrayOfString2.length;
              int k = 0;
              label98: String str3;
              String[] arrayOfString3;
              if (k < j)
              {
                str3 = arrayOfString2[k];
                i = 1;
                if ((!TextUtils.isEmpty(str3)) && (!TextUtils.isEmpty(str2)))
                {
                  arrayOfString3 = str3.split("/");
                  if (arrayOfString3.length >= 2)
                    break label162;
                  i = 0;
                }
              }
              while (true)
              {
                if (i != 0)
                  break label265;
                k++;
                break label98;
                break;
                label162: String str4 = arrayOfString3[1].trim();
                if (str4 == null)
                  i = 0;
                else if (str4.equals("*"))
                {
                  if (!Pattern.compile("^" + str3.substring(0, -1 + str3.length()) + "[\\w]+").matcher(str2).matches())
                    i = 0;
                }
                else if (!str2.equalsIgnoreCase(str3))
                  i = 0;
              }
            }
          }
        }
      }
    }

    protected void notifyProcess(byte[] paramArrayOfByte, int paramInt)
      throws IOException, CloneNotSupportedException
    {
      this.output.write(paramArrayOfByte, 0, paramInt);
      this.downloadedSize += paramInt;
      sendMessage();
    }

    public void run()
    {
      this.status = 1;
      try
      {
        downLoad(this.srcUrl);
        return;
      }
      catch (Exception localException)
      {
        this.exception = localException;
        return;
      }
      finally
      {
        finishTask();
      }
    }

    protected void sendCancelMessage()
    {
      Message localMessage = Message.obtain();
      localMessage.obj = this;
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("CANCEL_FLAG", true);
      localMessage.setData(localBundle);
      DownloadService.this.handler.sendMessage(localMessage);
    }

    protected void sendFailMessage()
    {
      Message localMessage = Message.obtain();
      localMessage.obj = this;
      Bundle localBundle = new Bundle();
      localBundle.putInt("STATUS", 2);
      localMessage.setData(localBundle);
      DownloadService.this.handler.sendMessage(localMessage);
    }

    protected void sendMessage()
    {
      Message localMessage = Message.obtain();
      localMessage.obj = this;
      Bundle localBundle = new Bundle();
      localBundle.putInt("STATUS", this.status);
      localMessage.setData(localBundle);
      DownloadService.this.handler.sendMessage(localMessage);
    }

    public void setDeleteAtFailed(boolean paramBoolean)
    {
      this.deleteAtFailed = paramBoolean;
    }

    void stop()
    {
      this.cancelFlag = true;
      closeStream();
    }
  }

  class NotifyDownLoadTask extends DownloadService.DownloadTask
  {
    private Context context;

    public NotifyDownLoadTask(String paramString1, String paramString2, String paramArrayOfString, String[] paramContext, Context arg6)
    {
      super(paramString1, paramString2, paramArrayOfString, paramContext, null);
      Object localObject;
      this.context = localObject;
    }
  }

  class RetryDownLoadTask extends DownloadService.DownloadTask
  {
    private MessageDigest md5Key;
    private MessageDigest md5SecondKey;
    protected int retryInterval = 5000;
    protected int retryTime = 3;
    private MessageDigest sha1Key;
    private MessageDigest sha1SecondKey;

    public RetryDownLoadTask(String paramString1, String paramString2, String paramDownloadListener, DownloadListener paramArrayOfString, String[] paramInt, int arg7)
    {
      super(paramString1, paramString2, paramDownloadListener, paramInt, paramArrayOfString);
      int i;
      this.retryTime = i;
      setDeleteAtFailed(this.deleteAtFailed);
    }

    private long getFileLength(String paramString1, String paramString2, String paramString3)
    {
      DownloadDBCache localDownloadDBCache = DownloadDBCache.getInstance(AppSystem.getInstance().getContext());
      new DownloadDBCache.QueryResult();
      DownloadDBCache.QueryResult localQueryResult = localDownloadDBCache.queryCache(paramString1, paramString2, paramString3);
      if (localQueryResult.isChange)
        return 0L;
      return localQueryResult.downloadedLen;
    }

    protected void downLoad(String paramString)
      throws JHIOException, Exception
    {
      Log.d("DownloadService", "start download:[" + paramString + "]");
      createTmpFilePath();
      if (this.file == null)
        this.file = new File(this.saveLocation);
      initHttpContent(paramString);
      initAllsize();
      DownloadDBCache localDownloadDBCache = DownloadDBCache.getInstance(AppSystem.getInstance().getContext());
      if (!localDownloadDBCache.queryCache(paramString, this.saveLocation, this.guid).hasCache)
        localDownloadDBCache.insertHistory(paramString, this.saveLocation, this.guid, this.downLoadAllSize);
      InputStream localInputStream = this.content.getStream();
      long l = this.content.getContentLength();
      if ((!this.file.exists()) || (this.file.length() == 0L) || (l > 0L))
      {
        this.file.getParentFile().mkdirs();
        this.file.createNewFile();
        this.output = getFileOutputStream(this.file);
        int i = Math.min((int)Runtime.getRuntime().freeMemory() / 10, 512000);
        if (i < 1024)
        {
          this.status = 2;
          throw new JHIOException();
        }
        byte[] arrayOfByte = new byte[i];
        while (true)
        {
          int j = localInputStream.read(arrayOfByte);
          if (j <= 0)
            break;
          if (this.cancelFlag)
            return;
          notifyProcess(arrayOfByte, j);
          this.hasDownLoadData = true;
        }
      }
      for (this.status = 0; ; this.status = 0)
      {
        Log.d("DownloadService", "Finish download task[" + paramString + "]");
        return;
      }
    }

    protected OutputStream getFileOutputStream(File paramFile)
      throws FileNotFoundException
    {
      if (this.downloadedSize > 0L);
      for (boolean bool = true; ; bool = false)
        return new BufferedOutputStream(new FileOutputStream(paramFile, bool));
    }

    protected void initAllsize()
    {
      this.downLoadAllSize = 0L;
      super.initAllsize();
      this.downLoadAllSize += this.downloadedSize;
      try
      {
        this.md5Key = MessageDigest.getInstance("MD5");
        this.sha1Key = MessageDigest.getInstance("SHA-1");
        localBufferedInputStream = new BufferedInputStream(new FileInputStream(this.file));
        byte[] arrayOfByte = new byte[1024];
        while (true)
        {
          int i = localBufferedInputStream.read(arrayOfByte);
          if (i <= 0)
            break;
          this.sha1Key.update(arrayOfByte, 0, i);
          this.md5Key.update(arrayOfByte, 0, i);
        }
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        BufferedInputStream localBufferedInputStream;
        localNoSuchAlgorithmException.printStackTrace();
        return;
        localBufferedInputStream.close();
        return;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        localFileNotFoundException.printStackTrace();
        return;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
      }
    }

    protected void initHttpContent(String paramString)
      throws JHIOException, IOException, Exception
    {
      BasicHttpParams localBasicHttpParams = new BasicHttpParams();
      DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient(localBasicHttpParams);
      HttpGet localHttpGet = new HttpGet(DownloadService.encodeUTF8(paramString).toString());
      HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 30000);
      HttpConnectionParams.setSoTimeout(localBasicHttpParams, 30000);
      long l = getFileLength(paramString, this.saveLocation, this.guid);
      if (this.file.length() > 0L)
        localHttpGet.setHeader("RANGE", "bytes=" + this.file.length() + "-");
      localHttpGet.setHeader("User-Agent", "DingKai SoftWare");
      HttpResponse localHttpResponse = localDefaultHttpClient.execute(localHttpGet);
      this.content = new JHHttpClient.HttpContent();
      this.content.setContentLength(localHttpResponse.getEntity().getContentLength());
      Header[] arrayOfHeader = localHttpResponse.getHeaders("Content-Encoding");
      int i = 0;
      int j = arrayOfHeader.length;
      int k = 0;
      int m;
      if (i < j)
      {
        if (arrayOfHeader[i].getValue().equalsIgnoreCase("gzip"))
          k = 1;
      }
      else
      {
        m = localHttpResponse.getStatusLine().getStatusCode();
        if (m != 200)
          break label295;
        this.downloadedSize = 0L;
        new File(this.saveLocation).delete();
      }
      while (true)
        if (k != 0)
        {
          this.content.setStream(new GZIPInputStream(localHttpResponse.getEntity().getContent()));
          return;
          i++;
          break;
          label295: if (m == 206)
          {
            this.downloadedSize = l;
          }
          else
          {
            if (m == 416)
            {
              this.file.delete();
              this.file.createNewFile();
              throw new JHIOException();
            }
            throw new JHIOException();
          }
        }
      this.content.setStream(localHttpResponse.getEntity().getContent());
    }

    protected void notifyProcess(byte[] paramArrayOfByte, int paramInt)
      throws IOException, CloneNotSupportedException
    {
      this.output.write(paramArrayOfByte, 0, paramInt);
      this.output.flush();
      this.downloadedSize += paramInt;
      DownloadDBCache localDownloadDBCache = DownloadDBCache.getInstance(AppSystem.getInstance().getContext());
      this.sha1SecondKey = this.sha1Key;
      this.md5SecondKey = this.md5Key;
      this.sha1Key.update(paramArrayOfByte, 0, paramInt);
      this.md5Key.update(paramArrayOfByte, 0, paramInt);
      this.sha1SecondKey = ((MessageDigest)this.sha1Key.clone());
      this.md5SecondKey = ((MessageDigest)this.md5Key.clone());
      String str1 = "";
      if (this.sha1Key != null)
        str1 = BaseEncrypt.toHexString(this.sha1Key.digest());
      String str2 = "";
      if (this.md5Key != null)
        str2 = BaseEncrypt.toHexString(this.md5Key.digest());
      this.sha1Key = this.sha1SecondKey;
      this.md5Key = this.md5SecondKey;
      if (this.downLoadAllSize == this.downloadedSize)
        localDownloadDBCache.updateProcess(this.srcUrl, this.saveLocation, this.guid, this.downloadedSize, str1, str2, 0);
      while (true)
      {
        sendMessage();
        return;
        localDownloadDBCache.updateProcess(this.srcUrl, this.saveLocation, this.guid, this.downloadedSize, str1, str2, this.status);
      }
    }

    protected void process()
      throws JHIOException, Exception
    {
      downLoad(this.srcUrl);
    }

    // ERROR //
    public void run()
    {
      // Byte code:
      //   0: aload_0
      //   1: iconst_1
      //   2: putfield 187	com/youqicai/download/DownloadService$RetryDownLoadTask:status	I
      //   5: aload_0
      //   6: getfield 23	com/youqicai/download/DownloadService$RetryDownLoadTask:retryTime	I
      //   9: istore_1
      //   10: aload_0
      //   11: invokevirtual 98	com/youqicai/download/DownloadService$RetryDownLoadTask:createTmpFilePath	()V
      //   14: aload_0
      //   15: getfield 102	com/youqicai/download/DownloadService$RetryDownLoadTask:file	Ljava/io/File;
      //   18: ifnonnull +18 -> 36
      //   21: aload_0
      //   22: new 104	java/io/File
      //   25: dup
      //   26: aload_0
      //   27: getfield 108	com/youqicai/download/DownloadService$RetryDownLoadTask:saveLocation	Ljava/lang/String;
      //   30: invokespecial 110	java/io/File:<init>	(Ljava/lang/String;)V
      //   33: putfield 102	com/youqicai/download/DownloadService$RetryDownLoadTask:file	Ljava/io/File;
      //   36: invokestatic 41	com/jh/common/app/application/AppSystem:getInstance	()Lcom/jh/common/app/application/AppSystem;
      //   39: invokevirtual 45	com/jh/common/app/application/AppSystem:getContext	()Landroid/content/Context;
      //   42: invokestatic 50	com/youqicai/download/DownloadDBCache:getInstance	(Landroid/content/Context;)Lcom/youqicai/download/DownloadDBCache;
      //   45: astore_2
      //   46: aload_2
      //   47: aload_0
      //   48: getfield 402	com/youqicai/download/DownloadService$RetryDownLoadTask:srcUrl	Ljava/lang/String;
      //   51: aload_0
      //   52: getfield 108	com/youqicai/download/DownloadService$RetryDownLoadTask:saveLocation	Ljava/lang/String;
      //   55: aload_0
      //   56: getfield 119	com/youqicai/download/DownloadService$RetryDownLoadTask:guid	Ljava/lang/String;
      //   59: invokevirtual 59	com/youqicai/download/DownloadDBCache:queryCache	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/youqicai/download/DownloadDBCache$QueryResult;
      //   62: astore_3
      //   63: aload_3
      //   64: getfield 420	com/youqicai/download/DownloadDBCache$QueryResult:allLen	J
      //   67: aload_3
      //   68: getfield 66	com/youqicai/download/DownloadDBCache$QueryResult:downloadedLen	J
      //   71: lcmp
      //   72: ifne +157 -> 229
      //   75: aload_3
      //   76: getfield 66	com/youqicai/download/DownloadDBCache$QueryResult:downloadedLen	J
      //   79: lconst_0
      //   80: lcmp
      //   81: ifle +148 -> 229
      //   84: aload_3
      //   85: getfield 62	com/youqicai/download/DownloadDBCache$QueryResult:isChange	Z
      //   88: ifne +107 -> 195
      //   91: aload_0
      //   92: iconst_0
      //   93: putfield 187	com/youqicai/download/DownloadService$RetryDownLoadTask:status	I
      //   96: aload_2
      //   97: aload_0
      //   98: getfield 108	com/youqicai/download/DownloadService$RetryDownLoadTask:saveLocation	Ljava/lang/String;
      //   101: invokevirtual 423	com/youqicai/download/DownloadDBCache:hasHistory	(Ljava/lang/String;)Z
      //   104: ifeq +33 -> 137
      //   107: aload_3
      //   108: getfield 426	com/youqicai/download/DownloadDBCache$QueryResult:sameTask	Z
      //   111: ifne +26 -> 137
      //   114: aload_2
      //   115: aload_0
      //   116: getfield 108	com/youqicai/download/DownloadService$RetryDownLoadTask:saveLocation	Ljava/lang/String;
      //   119: invokevirtual 429	com/youqicai/download/DownloadDBCache:deleteTableBySavePath	(Ljava/lang/String;)V
      //   122: new 104	java/io/File
      //   125: dup
      //   126: aload_0
      //   127: getfield 108	com/youqicai/download/DownloadService$RetryDownLoadTask:saveLocation	Ljava/lang/String;
      //   130: invokespecial 110	java/io/File:<init>	(Ljava/lang/String;)V
      //   133: invokevirtual 360	java/io/File:delete	()Z
      //   136: pop
      //   137: aload_0
      //   138: iconst_0
      //   139: putfield 204	com/youqicai/download/DownloadService$RetryDownLoadTask:hasDownLoadData	Z
      //   142: iload_1
      //   143: ifle +230 -> 373
      //   146: aload_0
      //   147: getfield 187	com/youqicai/download/DownloadService$RetryDownLoadTask:status	I
      //   150: ifeq +223 -> 373
      //   153: aload_0
      //   154: getfield 197	com/youqicai/download/DownloadService$RetryDownLoadTask:cancelFlag	Z
      //   157: ifne +216 -> 373
      //   160: aload_0
      //   161: invokevirtual 431	com/youqicai/download/DownloadService$RetryDownLoadTask:process	()V
      //   164: aload_0
      //   165: getfield 204	com/youqicai/download/DownloadService$RetryDownLoadTask:hasDownLoadData	Z
      //   168: ifeq +20 -> 188
      //   171: aload_0
      //   172: getfield 187	com/youqicai/download/DownloadService$RetryDownLoadTask:status	I
      //   175: ifeq +13 -> 188
      //   178: aload_0
      //   179: getfield 23	com/youqicai/download/DownloadService$RetryDownLoadTask:retryTime	I
      //   182: istore_1
      //   183: aload_0
      //   184: iconst_1
      //   185: putfield 187	com/youqicai/download/DownloadService$RetryDownLoadTask:status	I
      //   188: aload_0
      //   189: invokevirtual 434	com/youqicai/download/DownloadService$RetryDownLoadTask:closeStream	()V
      //   192: goto -50 -> 142
      //   195: aload_2
      //   196: aload_0
      //   197: getfield 402	com/youqicai/download/DownloadService$RetryDownLoadTask:srcUrl	Ljava/lang/String;
      //   200: aload_0
      //   201: getfield 108	com/youqicai/download/DownloadService$RetryDownLoadTask:saveLocation	Ljava/lang/String;
      //   204: aload_0
      //   205: getfield 119	com/youqicai/download/DownloadService$RetryDownLoadTask:guid	Ljava/lang/String;
      //   208: invokevirtual 438	com/youqicai/download/DownloadDBCache:deleteTable	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
      //   211: new 104	java/io/File
      //   214: dup
      //   215: aload_0
      //   216: getfield 108	com/youqicai/download/DownloadService$RetryDownLoadTask:saveLocation	Ljava/lang/String;
      //   219: invokespecial 110	java/io/File:<init>	(Ljava/lang/String;)V
      //   222: invokevirtual 360	java/io/File:delete	()Z
      //   225: pop
      //   226: goto -130 -> 96
      //   229: aload_3
      //   230: getfield 420	com/youqicai/download/DownloadDBCache$QueryResult:allLen	J
      //   233: aload_3
      //   234: getfield 66	com/youqicai/download/DownloadDBCache$QueryResult:downloadedLen	J
      //   237: lcmp
      //   238: ifge +37 -> 275
      //   241: aload_2
      //   242: aload_0
      //   243: getfield 402	com/youqicai/download/DownloadService$RetryDownLoadTask:srcUrl	Ljava/lang/String;
      //   246: aload_0
      //   247: getfield 108	com/youqicai/download/DownloadService$RetryDownLoadTask:saveLocation	Ljava/lang/String;
      //   250: aload_0
      //   251: getfield 119	com/youqicai/download/DownloadService$RetryDownLoadTask:guid	Ljava/lang/String;
      //   254: invokevirtual 438	com/youqicai/download/DownloadDBCache:deleteTable	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
      //   257: new 104	java/io/File
      //   260: dup
      //   261: aload_0
      //   262: getfield 108	com/youqicai/download/DownloadService$RetryDownLoadTask:saveLocation	Ljava/lang/String;
      //   265: invokespecial 110	java/io/File:<init>	(Ljava/lang/String;)V
      //   268: invokevirtual 360	java/io/File:delete	()Z
      //   271: pop
      //   272: goto -176 -> 96
      //   275: aload_3
      //   276: getfield 122	com/youqicai/download/DownloadDBCache$QueryResult:hasCache	Z
      //   279: ifne -183 -> 96
      //   282: new 104	java/io/File
      //   285: dup
      //   286: aload_0
      //   287: getfield 108	com/youqicai/download/DownloadService$RetryDownLoadTask:saveLocation	Ljava/lang/String;
      //   290: invokespecial 110	java/io/File:<init>	(Ljava/lang/String;)V
      //   293: invokevirtual 147	java/io/File:exists	()Z
      //   296: ifeq -200 -> 96
      //   299: new 104	java/io/File
      //   302: dup
      //   303: aload_0
      //   304: getfield 108	com/youqicai/download/DownloadService$RetryDownLoadTask:saveLocation	Ljava/lang/String;
      //   307: invokespecial 110	java/io/File:<init>	(Ljava/lang/String;)V
      //   310: invokevirtual 360	java/io/File:delete	()Z
      //   313: pop
      //   314: goto -218 -> 96
      //   317: astore 8
      //   319: iinc 1 255
      //   322: iload_1
      //   323: ifeq +11 -> 334
      //   326: aload_0
      //   327: getfield 187	com/youqicai/download/DownloadService$RetryDownLoadTask:status	I
      //   330: iconst_2
      //   331: if_icmpne +47 -> 378
      //   334: aload_0
      //   335: aload 8
      //   337: putfield 442	com/youqicai/download/DownloadService$RetryDownLoadTask:exception	Ljava/lang/Exception;
      //   340: aload_0
      //   341: iconst_2
      //   342: putfield 187	com/youqicai/download/DownloadService$RetryDownLoadTask:status	I
      //   345: aload_0
      //   346: getfield 204	com/youqicai/download/DownloadService$RetryDownLoadTask:hasDownLoadData	Z
      //   349: ifeq +20 -> 369
      //   352: aload_0
      //   353: getfield 187	com/youqicai/download/DownloadService$RetryDownLoadTask:status	I
      //   356: ifeq +13 -> 369
      //   359: aload_0
      //   360: getfield 23	com/youqicai/download/DownloadService$RetryDownLoadTask:retryTime	I
      //   363: pop
      //   364: aload_0
      //   365: iconst_1
      //   366: putfield 187	com/youqicai/download/DownloadService$RetryDownLoadTask:status	I
      //   369: aload_0
      //   370: invokevirtual 434	com/youqicai/download/DownloadService$RetryDownLoadTask:closeStream	()V
      //   373: aload_0
      //   374: invokevirtual 445	com/youqicai/download/DownloadService$RetryDownLoadTask:finishTask	()V
      //   377: return
      //   378: aload_0
      //   379: getfield 197	com/youqicai/download/DownloadService$RetryDownLoadTask:cancelFlag	Z
      //   382: istore 11
      //   384: iload 11
      //   386: ifeq +34 -> 420
      //   389: aload_0
      //   390: getfield 204	com/youqicai/download/DownloadService$RetryDownLoadTask:hasDownLoadData	Z
      //   393: ifeq +20 -> 413
      //   396: aload_0
      //   397: getfield 187	com/youqicai/download/DownloadService$RetryDownLoadTask:status	I
      //   400: ifeq +13 -> 413
      //   403: aload_0
      //   404: getfield 23	com/youqicai/download/DownloadService$RetryDownLoadTask:retryTime	I
      //   407: pop
      //   408: aload_0
      //   409: iconst_1
      //   410: putfield 187	com/youqicai/download/DownloadService$RetryDownLoadTask:status	I
      //   413: aload_0
      //   414: invokevirtual 434	com/youqicai/download/DownloadService$RetryDownLoadTask:closeStream	()V
      //   417: goto -44 -> 373
      //   420: iconst_0
      //   421: istore 12
      //   423: iload 12
      //   425: aload_0
      //   426: getfield 25	com/youqicai/download/DownloadService$RetryDownLoadTask:retryInterval	I
      //   429: sipush 200
      //   432: idiv
      //   433: if_icmpge +14 -> 447
      //   436: aload_0
      //   437: getfield 197	com/youqicai/download/DownloadService$RetryDownLoadTask:cancelFlag	Z
      //   440: istore 13
      //   442: iload 13
      //   444: ifeq +34 -> 478
      //   447: aload_0
      //   448: getfield 204	com/youqicai/download/DownloadService$RetryDownLoadTask:hasDownLoadData	Z
      //   451: ifeq +20 -> 471
      //   454: aload_0
      //   455: getfield 187	com/youqicai/download/DownloadService$RetryDownLoadTask:status	I
      //   458: ifeq +13 -> 471
      //   461: aload_0
      //   462: getfield 23	com/youqicai/download/DownloadService$RetryDownLoadTask:retryTime	I
      //   465: istore_1
      //   466: aload_0
      //   467: iconst_1
      //   468: putfield 187	com/youqicai/download/DownloadService$RetryDownLoadTask:status	I
      //   471: aload_0
      //   472: invokevirtual 434	com/youqicai/download/DownloadService$RetryDownLoadTask:closeStream	()V
      //   475: goto -333 -> 142
      //   478: ldc2_w 446
      //   481: invokestatic 452	java/lang/Thread:sleep	(J)V
      //   484: iinc 12 1
      //   487: goto -64 -> 423
      //   490: astore 10
      //   492: aload 10
      //   494: invokevirtual 453	java/lang/InterruptedException:printStackTrace	()V
      //   497: goto -50 -> 447
      //   500: astore 6
      //   502: aload_0
      //   503: getfield 204	com/youqicai/download/DownloadService$RetryDownLoadTask:hasDownLoadData	Z
      //   506: ifeq +20 -> 526
      //   509: aload_0
      //   510: getfield 187	com/youqicai/download/DownloadService$RetryDownLoadTask:status	I
      //   513: ifeq +13 -> 526
      //   516: aload_0
      //   517: getfield 23	com/youqicai/download/DownloadService$RetryDownLoadTask:retryTime	I
      //   520: pop
      //   521: aload_0
      //   522: iconst_1
      //   523: putfield 187	com/youqicai/download/DownloadService$RetryDownLoadTask:status	I
      //   526: aload_0
      //   527: invokevirtual 434	com/youqicai/download/DownloadService$RetryDownLoadTask:closeStream	()V
      //   530: aload 6
      //   532: athrow
      //   533: astore 5
      //   535: aload 5
      //   537: invokevirtual 454	java/lang/Throwable:printStackTrace	()V
      //   540: aload 5
      //   542: instanceof 456
      //   545: ifeq +14 -> 559
      //   548: new 458	com/jh/exception/JHException
      //   551: dup
      //   552: ldc_w 460
      //   555: invokespecial 461	com/jh/exception/JHException:<init>	(Ljava/lang/String;)V
      //   558: athrow
      //   559: aload_0
      //   560: getfield 204	com/youqicai/download/DownloadService$RetryDownLoadTask:hasDownLoadData	Z
      //   563: ifeq +20 -> 583
      //   566: aload_0
      //   567: getfield 187	com/youqicai/download/DownloadService$RetryDownLoadTask:status	I
      //   570: ifeq +13 -> 583
      //   573: aload_0
      //   574: getfield 23	com/youqicai/download/DownloadService$RetryDownLoadTask:retryTime	I
      //   577: istore_1
      //   578: aload_0
      //   579: iconst_1
      //   580: putfield 187	com/youqicai/download/DownloadService$RetryDownLoadTask:status	I
      //   583: aload_0
      //   584: invokevirtual 434	com/youqicai/download/DownloadService$RetryDownLoadTask:closeStream	()V
      //   587: goto -445 -> 142
      //
      // Exception table:
      //   from	to	target	type
      //   160	164	317	java/lang/Exception
      //   378	384	490	java/lang/InterruptedException
      //   423	442	490	java/lang/InterruptedException
      //   478	484	490	java/lang/InterruptedException
      //   160	164	500	finally
      //   326	334	500	finally
      //   334	345	500	finally
      //   378	384	500	finally
      //   423	442	500	finally
      //   478	484	500	finally
      //   492	497	500	finally
      //   535	559	500	finally
      //   160	164	533	java/lang/Throwable
    }
  }

  @SuppressLint({"HandlerLeak"})
  class SynDownloadTask
    implements Runnable
  {
    long downLoadAllSize;
    long downloadedSize = 0L;
    Exception exception;
    DownloadListener listener;
    String saveLocation;
    String srcUrl;

    public SynDownloadTask(String paramString1, String paramDownloadListener, DownloadListener arg4)
    {
      this.srcUrl = paramString1;
      this.saveLocation = paramDownloadListener;
      Object localObject;
      this.listener = localObject;
    }

    void clearFile()
    {
      new File(this.saveLocation).deleteOnExit();
    }

    // ERROR //
    public void run()
    {
      // Byte code:
      //   0: ldc 52
      //   2: new 54	java/lang/StringBuilder
      //   5: dup
      //   6: invokespecial 55	java/lang/StringBuilder:<init>	()V
      //   9: ldc 57
      //   11: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   14: aload_0
      //   15: getfield 32	com/youqicai/download/DownloadService$SynDownloadTask:srcUrl	Ljava/lang/String;
      //   18: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   21: ldc 63
      //   23: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   26: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   29: invokestatic 73	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
      //   32: pop
      //   33: new 75	com/jh/net/JHHttpClient
      //   36: dup
      //   37: invokespecial 76	com/jh/net/JHHttpClient:<init>	()V
      //   40: astore_2
      //   41: aload_2
      //   42: ldc 77
      //   44: invokevirtual 81	com/jh/net/JHHttpClient:setConnectTimeout	(I)V
      //   47: aconst_null
      //   48: astore_3
      //   49: aconst_null
      //   50: astore 4
      //   52: new 39	java/io/File
      //   55: dup
      //   56: aload_0
      //   57: getfield 34	com/youqicai/download/DownloadService$SynDownloadTask:saveLocation	Ljava/lang/String;
      //   60: invokespecial 42	java/io/File:<init>	(Ljava/lang/String;)V
      //   63: astore 5
      //   65: aload 5
      //   67: invokevirtual 85	java/io/File:exists	()Z
      //   70: istore 13
      //   72: aconst_null
      //   73: astore_3
      //   74: aconst_null
      //   75: astore 4
      //   77: iload 13
      //   79: ifne +18 -> 97
      //   82: aload 5
      //   84: invokevirtual 89	java/io/File:getParentFile	()Ljava/io/File;
      //   87: invokevirtual 92	java/io/File:mkdirs	()Z
      //   90: pop
      //   91: aload 5
      //   93: invokevirtual 95	java/io/File:createNewFile	()Z
      //   96: pop
      //   97: new 97	java/io/FileOutputStream
      //   100: dup
      //   101: aload 5
      //   103: invokespecial 100	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
      //   106: astore 16
      //   108: aload_2
      //   109: aload_0
      //   110: getfield 32	com/youqicai/download/DownloadService$SynDownloadTask:srcUrl	Ljava/lang/String;
      //   113: invokevirtual 104	com/jh/net/JHHttpClient:getContent	(Ljava/lang/String;)Lcom/jh/net/JHHttpClient$HttpContent;
      //   116: astore_3
      //   117: aload_3
      //   118: invokevirtual 110	com/jh/net/JHHttpClient$HttpContent:getStream	()Ljava/io/InputStream;
      //   121: astore 17
      //   123: aload_0
      //   124: aload_3
      //   125: invokevirtual 114	com/jh/net/JHHttpClient$HttpContent:getContentLength	()J
      //   128: putfield 116	com/youqicai/download/DownloadService$SynDownloadTask:downLoadAllSize	J
      //   131: aload_0
      //   132: getfield 36	com/youqicai/download/DownloadService$SynDownloadTask:listener	Lcom/youqicai/download/DownloadListener;
      //   135: ifnull +17 -> 152
      //   138: aload_0
      //   139: getfield 36	com/youqicai/download/DownloadService$SynDownloadTask:listener	Lcom/youqicai/download/DownloadListener;
      //   142: aload_0
      //   143: getfield 116	com/youqicai/download/DownloadService$SynDownloadTask:downLoadAllSize	J
      //   146: l2f
      //   147: invokeinterface 122 2 0
      //   152: sipush 1024
      //   155: newarray byte
      //   157: astore 18
      //   159: aload 17
      //   161: aload 18
      //   163: invokevirtual 128	java/io/InputStream:read	([B)I
      //   166: istore 19
      //   168: iload 19
      //   170: iconst_m1
      //   171: if_icmpeq +112 -> 283
      //   174: aload 16
      //   176: aload 18
      //   178: iconst_0
      //   179: iload 19
      //   181: invokevirtual 134	java/io/OutputStream:write	([BII)V
      //   184: goto -25 -> 159
      //   187: astore 6
      //   189: aload 16
      //   191: astore 4
      //   193: aload_0
      //   194: getfield 32	com/youqicai/download/DownloadService$SynDownloadTask:srcUrl	Ljava/lang/String;
      //   197: ifnull +24 -> 221
      //   200: aload_0
      //   201: getfield 32	com/youqicai/download/DownloadService$SynDownloadTask:srcUrl	Ljava/lang/String;
      //   204: invokevirtual 139	java/lang/String:toLowerCase	()Ljava/lang/String;
      //   207: ldc 141
      //   209: invokevirtual 145	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
      //   212: ifne +9 -> 221
      //   215: aload 5
      //   217: invokevirtual 148	java/io/File:delete	()Z
      //   220: pop
      //   221: aload 6
      //   223: invokevirtual 151	java/lang/Exception:printStackTrace	()V
      //   226: aload_0
      //   227: aload 6
      //   229: putfield 153	com/youqicai/download/DownloadService$SynDownloadTask:exception	Ljava/lang/Exception;
      //   232: aload_0
      //   233: getfield 36	com/youqicai/download/DownloadService$SynDownloadTask:listener	Lcom/youqicai/download/DownloadListener;
      //   236: ifnull +18 -> 254
      //   239: aload_0
      //   240: getfield 36	com/youqicai/download/DownloadService$SynDownloadTask:listener	Lcom/youqicai/download/DownloadListener;
      //   243: aload_0
      //   244: getfield 32	com/youqicai/download/DownloadService$SynDownloadTask:srcUrl	Ljava/lang/String;
      //   247: aload 6
      //   249: invokeinterface 157 3 0
      //   254: aload 4
      //   256: ifnull +8 -> 264
      //   259: aload 4
      //   261: invokevirtual 160	java/io/OutputStream:close	()V
      //   264: aload_3
      //   265: ifnull +17 -> 282
      //   268: aload_3
      //   269: invokevirtual 110	com/jh/net/JHHttpClient$HttpContent:getStream	()Ljava/io/InputStream;
      //   272: ifnull +10 -> 282
      //   275: aload_3
      //   276: invokevirtual 110	com/jh/net/JHHttpClient$HttpContent:getStream	()Ljava/io/InputStream;
      //   279: invokevirtual 161	java/io/InputStream:close	()V
      //   282: return
      //   283: aload 16
      //   285: invokevirtual 164	java/io/OutputStream:flush	()V
      //   288: aload_0
      //   289: getfield 36	com/youqicai/download/DownloadService$SynDownloadTask:listener	Lcom/youqicai/download/DownloadListener;
      //   292: ifnull +20 -> 312
      //   295: aload_0
      //   296: getfield 36	com/youqicai/download/DownloadService$SynDownloadTask:listener	Lcom/youqicai/download/DownloadListener;
      //   299: aload_0
      //   300: getfield 32	com/youqicai/download/DownloadService$SynDownloadTask:srcUrl	Ljava/lang/String;
      //   303: aload_0
      //   304: getfield 34	com/youqicai/download/DownloadService$SynDownloadTask:saveLocation	Ljava/lang/String;
      //   307: invokeinterface 168 3 0
      //   312: ldc 52
      //   314: new 54	java/lang/StringBuilder
      //   317: dup
      //   318: invokespecial 55	java/lang/StringBuilder:<init>	()V
      //   321: ldc 170
      //   323: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   326: aload_0
      //   327: getfield 32	com/youqicai/download/DownloadService$SynDownloadTask:srcUrl	Ljava/lang/String;
      //   330: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   333: ldc 63
      //   335: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   338: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   341: invokestatic 73	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
      //   344: pop
      //   345: aload 16
      //   347: ifnull +8 -> 355
      //   350: aload 16
      //   352: invokevirtual 160	java/io/OutputStream:close	()V
      //   355: aload_3
      //   356: ifnull +126 -> 482
      //   359: aload_3
      //   360: invokevirtual 110	com/jh/net/JHHttpClient$HttpContent:getStream	()Ljava/io/InputStream;
      //   363: ifnull +119 -> 482
      //   366: aload_3
      //   367: invokevirtual 110	com/jh/net/JHHttpClient$HttpContent:getStream	()Ljava/io/InputStream;
      //   370: invokevirtual 161	java/io/InputStream:close	()V
      //   373: return
      //   374: astore 22
      //   376: aload 22
      //   378: invokevirtual 171	java/io/IOException:printStackTrace	()V
      //   381: goto -26 -> 355
      //   384: astore 21
      //   386: aload 21
      //   388: invokevirtual 171	java/io/IOException:printStackTrace	()V
      //   391: return
      //   392: astore 11
      //   394: aload 11
      //   396: invokevirtual 171	java/io/IOException:printStackTrace	()V
      //   399: goto -135 -> 264
      //   402: astore 10
      //   404: aload 10
      //   406: invokevirtual 171	java/io/IOException:printStackTrace	()V
      //   409: return
      //   410: astore 7
      //   412: aload 4
      //   414: ifnull +8 -> 422
      //   417: aload 4
      //   419: invokevirtual 160	java/io/OutputStream:close	()V
      //   422: aload_3
      //   423: ifnull +17 -> 440
      //   426: aload_3
      //   427: invokevirtual 110	com/jh/net/JHHttpClient$HttpContent:getStream	()Ljava/io/InputStream;
      //   430: ifnull +10 -> 440
      //   433: aload_3
      //   434: invokevirtual 110	com/jh/net/JHHttpClient$HttpContent:getStream	()Ljava/io/InputStream;
      //   437: invokevirtual 161	java/io/InputStream:close	()V
      //   440: aload 7
      //   442: athrow
      //   443: astore 9
      //   445: aload 9
      //   447: invokevirtual 171	java/io/IOException:printStackTrace	()V
      //   450: goto -28 -> 422
      //   453: astore 8
      //   455: aload 8
      //   457: invokevirtual 171	java/io/IOException:printStackTrace	()V
      //   460: goto -20 -> 440
      //   463: astore 7
      //   465: aload 16
      //   467: astore 4
      //   469: goto -57 -> 412
      //   472: astore 6
      //   474: aconst_null
      //   475: astore_3
      //   476: aconst_null
      //   477: astore 4
      //   479: goto -286 -> 193
      //   482: return
      //
      // Exception table:
      //   from	to	target	type
      //   108	152	187	java/lang/Exception
      //   152	159	187	java/lang/Exception
      //   159	168	187	java/lang/Exception
      //   174	184	187	java/lang/Exception
      //   283	312	187	java/lang/Exception
      //   312	345	187	java/lang/Exception
      //   350	355	374	java/io/IOException
      //   366	373	384	java/io/IOException
      //   259	264	392	java/io/IOException
      //   275	282	402	java/io/IOException
      //   65	72	410	finally
      //   82	97	410	finally
      //   97	108	410	finally
      //   193	221	410	finally
      //   221	254	410	finally
      //   417	422	443	java/io/IOException
      //   433	440	453	java/io/IOException
      //   108	152	463	finally
      //   152	159	463	finally
      //   159	168	463	finally
      //   174	184	463	finally
      //   283	312	463	finally
      //   312	345	463	finally
      //   65	72	472	java/lang/Exception
      //   82	97	472	java/lang/Exception
      //   97	108	472	java/lang/Exception
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.download.DownloadService
 * JD-Core Version:    0.6.2
 */