package com.youqicai.AppStore.receiver;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.youqicai.AppStore.service.HandleService;
import com.youqicai.AppStore.service.MonitorService;
import com.youqicai.AppStore.utils.GlobalData;
import com.youqicai.PhoneHelper.DeviceInfo;
import com.youqicai.datasdk.DSManager;
import com.youqicai.datasdk.NetworkStatus;
import com.youqicai.datasdk.Track;
import com.youqicai.manager.BaseDbAdapter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class InstallReceiver extends BroadcastReceiver
{
  private static final String ANDROID_GZCPC_NET_CHANGE_ACTION = "android.gzcpc.conn.CONNECTIVITY_CHANGE";
  private static final String ANDROID_NET_CHANGE_ACTION = "android.net.conn.CONNECTIVITY_CHANGE";
  static ArrayList<AppInstallListener> mListener = new ArrayList();
  public static Map<String, Long> pkgTimeMap = new HashMap();

  public static void registAppInstallListener(AppInstallListener paramAppInstallListener)
  {
    if ((paramAppInstallListener != null) && (!mListener.contains(paramAppInstallListener)))
      mListener.add(paramAppInstallListener);
  }

  public static void unregistAppInstallListener(AppInstallListener paramAppInstallListener)
  {
    if ((paramAppInstallListener != null) && (mListener.contains(paramAppInstallListener)))
      mListener.remove(paramAppInstallListener);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    if (str1 == "android.intent.action.INSTALL_PACKAGE");
    while (true)
    {
      if (NetworkStatus.getInstance().isConnected())
      {
        DSManager.init();
        HandleService.handleService(paramContext, "j");
      }
      String str4;
      Track localTrack2;
      label832: label851: 
      do
      {
        long l3;
        while (true)
        {
          return;
          if ((str1 == "android.intent.action.PACKAGE_ADDED") || (str1 == "android.intent.action.PACKAGE_REPLACED"))
          {
            Uri localUri1 = paramIntent.getData();
            String str2 = null;
            if (localUri1 != null)
              str2 = localUri1.getSchemeSpecificPart();
            if (str2 == null)
              break;
            BaseDbAdapter.getInstance(paramContext.getApplicationContext()).updateDownloadStatus(str2, 6);
            if ((mListener != null) && (mListener.size() > 0))
              for (int i = 0; i < mListener.size(); i++)
                ((AppInstallListener)mListener.get(i)).onInstallReceive(paramIntent);
            if ((str2 != null) && (str2.contains(":")))
              str2 = str2.subSequence(1 + str2.indexOf(":"), str2.length()).toString();
            Bundle localBundle1 = new Bundle();
            localBundle1.putString("pkg", str2);
            HandleService.handleService(paramContext, "b", localBundle1);
            GlobalData.getInstance().removeInstallPackage(str2);
            break;
          }
          if ((str1 == "android.intent.action.UNINSTALL_PACKAGE") || (str1 == "android.intent.action.PACKAGE_REMOVED"))
          {
            Uri localUri2 = paramIntent.getData();
            String str3 = null;
            if (localUri2 != null)
              str3 = localUri2.getSchemeSpecificPart();
            if (str3 == null)
              break;
            BaseDbAdapter.getInstance(paramContext.getApplicationContext()).deleteUpgradeApp(str3);
            if ((mListener != null) && (mListener.size() > 0))
              for (int j = 0; j < mListener.size(); j++)
                ((AppInstallListener)mListener.get(j)).onInstallReceive(paramIntent);
            if ((str3 != null) && (str3.contains(":")))
              str3 = str3.subSequence(1 + str3.indexOf(":"), str3.length()).toString();
            Bundle localBundle2 = new Bundle();
            localBundle2.putString("pkg", str3);
            HandleService.handleService(paramContext, "e", localBundle2);
            break;
          }
          if ((str1 == "android.intent.action.BOOT_COMPLETED") || (str1 == "android.intent.action.USER_PRESENT"))
          {
            Intent localIntent1 = new Intent(paramContext, MonitorService.class);
            paramContext.startService(localIntent1);
            break;
          }
          if ((str1.equalsIgnoreCase("android.net.conn.CONNECTIVITY_CHANGE")) || (str1.equalsIgnoreCase("android.gzcpc.conn.CONNECTIVITY_CHANGE")))
          {
            Intent localIntent2 = new Intent(paramContext, MonitorService.class);
            paramContext.startService(localIntent2);
            break;
          }
          if (str1.equals("com.dingkai.action.start_track"))
          {
            String str5 = DeviceInfo.getTopTask(paramContext);
            Intent localIntent6 = new Intent(paramContext, InstallReceiver.class);
            Track localTrack4 = new Track();
            localTrack4.setPackageName(str5);
            localTrack4.setStartTime(System.currentTimeMillis());
            localIntent6.setAction("com.dingkai.action.submit_data");
            localIntent6.putExtra("track", localTrack4);
            ((AlarmManager)paramContext.getSystemService("alarm")).set(1, System.currentTimeMillis(), PendingIntent.getBroadcast(paramContext, 0, localIntent6, 268435456));
            break;
          }
          if (str1.equals("com.dingkai.action.stop_track"))
          {
            Intent localIntent3 = new Intent(paramContext, InstallReceiver.class);
            localIntent3.setAction("com.dingkai.action.submit_data");
            ((AlarmManager)paramContext.getSystemService("alarm")).cancel(PendingIntent.getBroadcast(paramContext, 0, localIntent3, 268435456));
            break;
          }
          if (!str1.equals("com.dingkai.action.submit_data"))
            break label1091;
          str4 = DeviceInfo.getTopTask(paramContext);
          Intent localIntent5 = new Intent(paramContext, InstallReceiver.class);
          Track localTrack1 = new Track();
          localTrack1.setPackageName(str4);
          localTrack1.setStartTime(System.currentTimeMillis());
          localIntent5.setAction("com.dingkai.action.submit_data");
          localIntent5.putExtra("track", localTrack1);
          ((AlarmManager)paramContext.getSystemService("alarm")).set(1, 6000L + System.currentTimeMillis(), PendingIntent.getBroadcast(paramContext, 0, localIntent5, 268435456));
          Log.e("doll ----------------- ", "---------getTopTask--------------->" + str4);
          try
          {
            localTrack2 = (Track)paramIntent.getSerializableExtra("track");
            if (!str4.equals(localTrack2.getPackageName()))
              break label851;
            l3 = System.currentTimeMillis() - localTrack2.getStartTime();
            if (!pkgTimeMap.containsKey(str4))
              break label832;
            long l4 = ((Long)pkgTimeMap.get(str4)).longValue();
            pkgTimeMap.put(str4, Long.valueOf(l3 + l4));
          }
          catch (Exception localException1)
          {
            localException1.printStackTrace();
          }
        }
        break;
        pkgTimeMap.put(str4, Long.valueOf(l3));
        break;
        if (!DeviceInfo.ignoreActivePkg.contains(localTrack2.getPackageName()))
          break label898;
      }
      while (!pkgTimeMap.containsKey(localTrack2.getPackageName()));
      pkgTimeMap.remove(localTrack2.getPackageName());
      return;
      label898: long l1 = System.currentTimeMillis() - localTrack2.getStartTime();
      if (pkgTimeMap.containsKey(localTrack2.getPackageName()))
      {
        long l2 = l1 + ((Long)pkgTimeMap.get(localTrack2.getPackageName())).longValue();
        Track localTrack3 = new Track();
        localTrack3.setStartTime(localTrack2.getStartTime());
        localTrack3.setPackageName(localTrack2.getPackageName());
        localTrack3.setUsageTime(l2);
        try
        {
          Bundle localBundle3 = new Bundle();
          localBundle3.putSerializable("track", localTrack3);
          HandleService.handleService(paramContext, "i", localBundle3);
          pkgTimeMap.remove(localTrack2.getPackageName());
          continue;
        }
        catch (Exception localException2)
        {
          localException2.printStackTrace();
          pkgTimeMap.remove(localTrack2.getPackageName());
          continue;
        }
        finally
        {
          pkgTimeMap.remove(localTrack2.getPackageName());
        }
      }
      else
      {
        pkgTimeMap.put(str4, Long.valueOf(l1));
        continue;
        label1091: HandleService.handleService(paramContext, "f");
        Intent localIntent4 = new Intent(paramContext, MonitorService.class);
        paramContext.startService(localIntent4);
        HandleService.handleService(paramContext, "j");
      }
    }
  }

  public static abstract interface AppInstallListener
  {
    public abstract void onInstallReceive(Intent paramIntent);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.receiver.InstallReceiver
 * JD-Core Version:    0.6.2
 */