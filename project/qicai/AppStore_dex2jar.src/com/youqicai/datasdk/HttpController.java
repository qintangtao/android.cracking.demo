package com.youqicai.datasdk;

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.youqicai.PhoneHelper.PreferencesHelper;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.Calendar;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class HttpController
{
  private static HttpController mInstance;
  private MyHttpClient mHttpClient = new MyHttpClient();
  private ConcurrentHashMap<String, Future<?>> mTasks = new ConcurrentHashMap();
  private ExecutorService mThreadPool = Executors.newFixedThreadPool(1);

  private void execute(Runnable paramRunnable)
  {
    execute(null, paramRunnable);
  }

  private void execute(String paramString, Runnable paramRunnable)
  {
    try
    {
      if (this.mThreadPool != null)
      {
        Future localFuture = this.mThreadPool.submit(paramRunnable);
        if (!TextUtils.isEmpty(paramString))
        {
          if (this.mTasks.contains(paramString))
            ((Future)this.mTasks.get(paramString)).cancel(true);
          this.mTasks.put(paramString, localFuture);
        }
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static HttpController getInstance()
  {
    if (mInstance == null)
      mInstance = new HttpController();
    return mInstance;
  }

  public static byte[] readStream(InputStream paramInputStream)
    throws Exception
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[1024];
    while (true)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1)
        break;
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
    localByteArrayOutputStream.close();
    paramInputStream.close();
    return localByteArrayOutputStream.toByteArray();
  }

  public void sendData(final Context paramContext, final String paramString)
  {
    execute(new Runnable()
    {
      public void run()
      {
        int i = 0;
        List localList = PreferencesHelper.getInstance(paramContext).getReportUrls();
        int j = 0;
        int k = localList.size();
        int m = -1 + k * 3;
        while (i <= m)
        {
          if (i >= 3)
            j++;
          if (j > k - 1)
            i = m + 1;
          try
          {
            String str = (String)localList.get(j);
            if (TextUtils.isEmpty(new MyHttpClient().doPost(str, paramString)))
            {
              if (i >= m)
              {
                int n = Calendar.getInstance().get(6);
                DBProvider localDBProvider = DBProvider.getDBProvider();
                ContentValues localContentValues = new ContentValues();
                localContentValues.put("time", Integer.valueOf(n));
                localContentValues.put("data", paramString);
                localDBProvider.insert("statistics", localContentValues);
              }
              i++;
            }
            else
            {
              i = m + 1;
            }
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            i++;
          }
        }
      }
    });
  }

  public void sendData(final Context paramContext, final String paramString, final int paramInt)
  {
    execute(new Runnable()
    {
      public void run()
      {
        int i = 0;
        List localList = PreferencesHelper.getInstance(paramContext).getReportUrls();
        int j = 0;
        int k = localList.size();
        int m = -1 + k * 3;
        while (true)
          if (i <= m)
          {
            if (i >= 3)
              j++;
            if (j > k - 1)
              i = m + 1;
            try
            {
              String str = (String)localList.get(j);
              if (TextUtils.isEmpty(new MyHttpClient().doPost(str, paramString)))
              {
                if (i < m)
                  break label229;
                int n = Calendar.getInstance().get(6);
                DBProvider localDBProvider = DBProvider.getDBProvider();
                ContentValues localContentValues = new ContentValues();
                localContentValues.put("time", Integer.valueOf(n));
                localContentValues.put("data", paramString);
                localDBProvider.insert("statistics", localContentValues);
                break label229;
              }
              i = m + 1;
              if (paramInt != 2)
                break label207;
              PreferencesHelper.getInstance(paramContext).saveTodayUpload();
              PreferencesHelper.getInstance(paramContext).saveUploadCount();
            }
            catch (Exception localException)
            {
              localException.printStackTrace();
              i++;
            }
            continue;
            label207: if (paramInt == 1)
              PreferencesHelper.getInstance(paramContext).saveDeviceTodayUpload();
          }
          else
          {
            return;
            label229: i++;
          }
      }
    });
  }

  public void sendManyData(final Context paramContext, final MessageModel paramMessageModel)
  {
    execute(new Runnable()
    {
      public void run()
      {
        int i = 0;
        List localList = PreferencesHelper.getInstance(paramContext).getReportUrls();
        int j = 0;
        int k = localList.size();
        int m = -1 + k * 3;
        while (i <= m)
        {
          if (i >= 3)
            j++;
          if (j > k - 1)
            i = m + 1;
          try
          {
            String str1 = (String)localList.get(j);
            String str2 = new MyHttpClient().doPost(str1, paramMessageModel.data);
            Log.e("sendManyData ---------------------------> ", paramMessageModel.data + " ------------------------strResponse " + str2);
            if (!TextUtils.isEmpty(str2))
            {
              MessageUtils.deleteManyMsg(paramContext, paramMessageModel.id);
              i = m + 1;
            }
          }
          catch (Exception localException)
          {
            i++;
          }
        }
      }
    });
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.datasdk.HttpController
 * JD-Core Version:    0.6.2
 */