package com.youqicai.AppStore.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.youqicai.AppStore.AppStoreApplication;
import com.youqicai.PhoneHelper.AppUtils;
import com.youqicai.PhoneHelper.DeviceInfo;
import com.youqicai.speed.Util;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class ConnectService extends Service
{
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    new RevcThread().start();
    Util.addShortcut(this);
    startService(new Intent(getApplicationContext(), MonitorService.class));
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  class RevcThread extends Thread
  {
    public RevcThread()
    {
    }

    private boolean sendDataToPc(String paramString1, int paramInt, String paramString2)
    {
      try
      {
        Socket localSocket = new Socket();
        localSocket.connect(new InetSocketAddress(paramString1, paramInt), 5000);
        localSocket.getOutputStream().write(paramString2.getBytes());
        localSocket.close();
        Log.e("doll----------------->", "end sendToService true");
        return true;
      }
      catch (UnknownHostException localUnknownHostException)
      {
        localUnknownHostException.printStackTrace();
        Log.e("doll----------------->", "end sendToService false");
        return false;
      }
      catch (IOException localIOException)
      {
        while (true)
          localIOException.printStackTrace();
      }
      catch (Exception localException)
      {
        label60: break label60;
      }
    }

    private String setJsonInfo(JSONObject paramJSONObject, String paramString1, String paramString2)
    {
      try
      {
        paramJSONObject.put("id", paramString2);
        paramJSONObject.put("fun", paramString1);
        String str = paramJSONObject.toString();
        return str;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        Log.e("doll----------------->", "�쳣 JSONException" + localJSONException.toString());
      }
      return null;
    }

    public String getFixedLenString(String paramString, int paramInt, char paramChar)
    {
      if ((paramString == null) || (paramString.length() == 0))
        paramString = "";
      if (paramString.length() == paramInt)
        return paramString;
      if (paramString.length() > paramInt)
        return paramString.substring(0, paramInt);
      StringBuilder localStringBuilder = new StringBuilder(paramString);
      while (localStringBuilder.length() < paramInt)
        localStringBuilder.insert(0, paramChar);
      return localStringBuilder.toString();
    }

    public void run()
    {
      try
      {
        ServerSocket localServerSocket = new ServerSocket(10086);
        while (true)
        {
          localSocket = localServerSocket.accept();
          BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(localSocket.getInputStream()));
          JSONTokener localJSONTokener = new JSONTokener(localBufferedReader.readLine());
          localJSONObject = null;
          str1 = "";
          localObject = "";
          try
          {
            localJSONObject = (JSONObject)localJSONTokener.nextValue();
            str1 = localJSONObject.getString("fun");
            String str9 = localJSONObject.getString("id");
            localObject = str9;
            if (str1.compareToIgnoreCase("getDeviceInfo") == 0)
            {
              String str6 = setJsonInfo(DeviceInfo.deviceInfo, "getDeviceInfo", (String)localObject);
              String str7 = getFixedLenString(Integer.toHexString(str6.getBytes().length), 8, '0');
              String str8 = "##**$$" + str7 + str6;
              localSocket.getOutputStream().write(str8.getBytes());
              localSocket.getOutputStream().flush();
              localSocket.shutdownOutput();
              localBufferedReader.close();
              localSocket.close();
            }
          }
          catch (JSONException localJSONException2)
          {
            while (true)
              localJSONException2.printStackTrace();
          }
        }
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          Socket localSocket;
          JSONObject localJSONObject;
          String str1;
          Object localObject;
          localIOException.printStackTrace();
          return;
          if (str1.compareToIgnoreCase("getAppInfos") == 0)
          {
            String str3 = setJsonInfo(AppUtils.getAppInfos(AppStoreApplication.getInstance()), "getAppInfos", (String)localObject);
            String str4 = getFixedLenString(Integer.toHexString(str3.getBytes().length), 8, '0');
            String str5 = "##**$$" + str4 + str3;
            localSocket.getOutputStream().write(str5.getBytes());
          }
          else if (str1.compareToIgnoreCase("setChannel") == 0)
          {
            if (localJSONObject.has("args"))
            {
              String str2 = localJSONObject.getJSONObject("args").getString("cid");
              DeviceInfo.saveCid(AppStoreApplication.getInstance().getApplicationContext(), str2);
              localSocket.getOutputStream().write("##**$$status:0".getBytes());
              localSocket.getOutputStream().flush();
              localSocket.shutdownOutput();
            }
          }
          else if ((str1.compareToIgnoreCase("setInstalledApp") == 0) && (localJSONObject.has("args")))
          {
            localJSONObject.getJSONObject("args").getString("pkg");
          }
        }
      }
      catch (SocketTimeoutException localSocketTimeoutException)
      {
      }
      catch (JSONException localJSONException1)
      {
      }
      catch (Throwable localThrowable)
      {
      }
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.service.ConnectService
 * JD-Core Version:    0.6.2
 */