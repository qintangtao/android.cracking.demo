package com.mycheering.data;

import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONObject;

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

  public void getConfig(final Context paramContext, final String paramString)
  {
    execute(new Runnable()
    {
      public void run()
      {
        while (true)
        {
          int i;
          int j;
          int k;
          int m;
          StringBuffer localStringBuffer;
          try
          {
            List localList = PreferencesHelper.getInstance(paramContext).getReportUrls();
            i = localList.size();
            j = -1 + i * 3;
            k = 0;
            m = 0;
            break label390;
            String str1 = (String)localList.get(k);
            byte[] arrayOfByte = GZIP.gzipCompress(DES.encryptDES(paramString, "74185296").getBytes());
            String str2 = DES.decryptDES(new MyHttpClient().doPost(str1 + "/update_config", arrayOfByte), "74185296");
            if (TextUtils.isEmpty(str2))
              break label390;
            JSONObject localJSONObject = new JSONArray(str2).getJSONObject(0);
            PreferencesHelper localPreferencesHelper = PreferencesHelper.getInstance(paramContext);
            localPreferencesHelper.setConfigVersion(localJSONObject.getInt("configVersion"));
            localPreferencesHelper.setReportMode(localJSONObject.getInt("reportMode"));
            localPreferencesHelper.saveTimeoutMillis(localJSONObject.getInt("timeoutMillis"));
            localPreferencesHelper.setReportUrls(localJSONObject.getString("reportUrls"));
            localPreferencesHelper.saveIsLocation(localJSONObject.getInt("isLocation"));
            localPreferencesHelper.saveIsUser(localJSONObject.getInt("isUser"));
            localPreferencesHelper.saveIsEvent(localJSONObject.getInt("isEvent"));
            localPreferencesHelper.saveIsError(localJSONObject.getInt("isError"));
            localPreferencesHelper.saveReportEnable(localJSONObject.getInt("reportEnable"));
            localPreferencesHelper.saveReportInterval(localJSONObject.getInt("reportInterval"));
            localPreferencesHelper.saveDisableEvents(localJSONObject.getString("disableEvents"));
            localPreferencesHelper.saveSessionMsgCount(localJSONObject.getInt("sessionMsgCount"));
            m = j + 1;
            if (k == 0)
              break label390;
            localStringBuffer = new StringBuffer();
            localStringBuffer.append(str1).append(",");
            Iterator localIterator = localList.iterator();
            if (localIterator.hasNext())
            {
              String str3 = (String)localIterator.next();
              if (str3.equals(str1))
                continue;
              localStringBuffer.append(str3).append(",");
              continue;
            }
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            return;
          }
          PreferencesHelper.getInstance(paramContext).setReportUrls(localStringBuffer.toString());
          label390: if (m <= j)
          {
            if (m >= 3)
              k++;
            if (k > i - 1)
              m = j + 1;
          }
        }
      }
    });
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
        while (true)
          if (i <= m)
          {
            if (i >= 3)
              j++;
            if (j > k - 1)
              i = m + 1;
            StringBuffer localStringBuffer;
            try
            {
              String str1 = (String)localList.get(j);
              String str2 = DES.encryptDES(paramString, "74185296");
              byte[] arrayOfByte = GZIP.gzipCompress(str2.getBytes());
              if (TextUtils.isEmpty(new MyHttpClient().doPost(str1 + "/report", arrayOfByte)))
              {
                if (i < m)
                  break label316;
                int n = Calendar.getInstance().get(6);
                DBProvider localDBProvider = DBProvider.getDBProvider(paramContext);
                ContentValues localContentValues = new ContentValues();
                localContentValues.put("time", Integer.valueOf(n));
                localContentValues.put("data", str2);
                localDBProvider.insert("t_statistics", localContentValues);
                break label316;
              }
              i = m + 1;
              if (j == 0)
                continue;
              localStringBuffer = new StringBuffer();
              localStringBuffer.append(str1).append(",");
              Iterator localIterator = localList.iterator();
              while (localIterator.hasNext())
              {
                String str3 = (String)localIterator.next();
                if (!str3.equals(str1))
                  localStringBuffer.append(str3).append(",");
              }
            }
            catch (Exception localException)
            {
              localException.printStackTrace();
              i++;
            }
            continue;
            PreferencesHelper.getInstance(paramContext).setReportUrls(localStringBuffer.toString());
          }
          else
          {
            return;
            label316: i++;
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
        while (true)
        {
          if (i <= m)
          {
            if (i >= 3)
              j++;
            if (j > k - 1)
              i = m + 1;
          }
          try
          {
            String str1 = (String)localList.get(j);
            byte[] arrayOfByte = GZIP.gzipCompress(DES.encryptDES(paramMessageModel.data, "74185296").getBytes());
            if (!TextUtils.isEmpty(new MyHttpClient().doPost(str1 + "/report", arrayOfByte)))
            {
              MessageUtils.deleteManyMsg(paramContext, paramMessageModel.idList);
              i = m + 1;
              if (j != 0)
              {
                StringBuffer localStringBuffer = new StringBuffer();
                localStringBuffer.append(str1).append(",");
                Iterator localIterator = localList.iterator();
                while (localIterator.hasNext())
                {
                  String str2 = (String)localIterator.next();
                  if (!str2.equals(str1))
                    localStringBuffer.append(str2).append(",");
                }
                PreferencesHelper.getInstance(paramContext).setReportUrls(localStringBuffer.toString());
                continue;
                return;
              }
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

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.mycheering.data.HttpController
 * JD-Core Version:    0.6.2
 */