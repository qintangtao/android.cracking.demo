package com.youqicai.AppStore.service;

import android.accessibilityservice.AccessibilityService;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.youqicai.AppStore.utils.GlobalData;
import com.youqicai.PhoneHelper.PreferencesHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MarketAccessibilityService extends AccessibilityService
{
  static String TAG = "NotificationService";
  static MarketAccessibilityService instance = null;
  String[] autoInstallPackageNames;

  public MarketAccessibilityService()
  {
    instance = this;
  }

  @SuppressLint({"NewApi"})
  private void clickAccessibilityNodeByText(AccessibilityNodeInfo paramAccessibilityNodeInfo, String paramString)
  {
    List localList = paramAccessibilityNodeInfo.findAccessibilityNodeInfosByText(paramString);
    int i;
    AccessibilityNodeInfo localAccessibilityNodeInfo1;
    boolean bool;
    label111: Rect localRect1;
    AccessibilityNodeInfo localAccessibilityNodeInfo2;
    int j;
    label241: int k;
    if ((localList != null) && (!localList.isEmpty()))
    {
      i = 0;
      if (i < localList.size())
      {
        localAccessibilityNodeInfo1 = (AccessibilityNodeInfo)localList.get(i);
        String str1 = TAG;
        StringBuilder localStringBuilder1 = new StringBuilder().append("NotificationService processinstallApplication searchedText:").append(paramString).append(" node.isEnabled():").append(localAccessibilityNodeInfo1.isEnabled()).append(" node.getText():").append(localAccessibilityNodeInfo1.getText()).append(" equals:");
        if (localAccessibilityNodeInfo1.getText() == null)
        {
          bool = false;
          Log.e(str1, bool);
          if ((!localAccessibilityNodeInfo1.isEnabled()) || (localAccessibilityNodeInfo1.getText() == null) || (paramString == null) || (!paramString.equals(localAccessibilityNodeInfo1.getText().toString())))
            break label456;
          localAccessibilityNodeInfo1.performAction(16);
          localRect1 = new Rect();
          localAccessibilityNodeInfo1.getBoundsInScreen(localRect1);
          localAccessibilityNodeInfo2 = localAccessibilityNodeInfo1.getParent();
          String str2 = TAG;
          StringBuilder localStringBuilder2 = new StringBuilder().append("NotificationService processinstallApplication searchedText  111:").append(paramString).append(" parentNode:").append(localAccessibilityNodeInfo2).append(" parentNode.getChildCount:");
          if (localAccessibilityNodeInfo2 != null)
            break label438;
          j = 0;
          Log.e(str2, j);
          if ((localAccessibilityNodeInfo2 == null) || (!localAccessibilityNodeInfo2.isEnabled()))
            break label456;
          k = 0;
        }
      }
    }
    while (true)
    {
      try
      {
        if ((k <= localAccessibilityNodeInfo2.getChildCount()) && (localAccessibilityNodeInfo2.getChild(k) != null))
        {
          Rect localRect2 = new Rect();
          localAccessibilityNodeInfo2.getChild(k).getBoundsInScreen(localRect2);
          if ((localRect2.centerX() >= localRect1.left) && (localRect2.centerX() <= localRect1.right))
            break label463;
          if ((localRect1.centerX() >= localRect2.left) && (localRect1.centerX() <= localRect2.right))
          {
            break label463;
            if ((localAccessibilityNodeInfo2.getChild(k).isEnabled()) && (m != 0) && (localAccessibilityNodeInfo2.getChild(k).getText() == null))
              localAccessibilityNodeInfo2.getChild(k).performAction(16);
            k++;
            continue;
            bool = paramString.equals(localAccessibilityNodeInfo1.getText().toString());
            break label111;
            label438: j = localAccessibilityNodeInfo2.getChildCount();
            break label241;
          }
          m = 0;
          continue;
        }
      }
      catch (Exception localException)
      {
      }
      label456: i++;
      break;
      return;
      label463: int m = 1;
    }
  }

  @TargetApi(16)
  private void processinstallApplication(AccessibilityEvent paramAccessibilityEvent)
  {
    if ((paramAccessibilityEvent == null) || (paramAccessibilityEvent.getPackageName() == null) || (!PreferencesHelper.getInstance(getApplicationContext()).isAssisAutoInstallSwitch()));
    boolean bool;
    while (true)
    {
      return;
      try
      {
        AccessibilityNodeInfo localAccessibilityNodeInfo1 = paramAccessibilityEvent.getSource();
        if (localAccessibilityNodeInfo1 != null)
        {
          ArrayList localArrayList1 = new ArrayList();
          if ((localArrayList1 != null) && (!localArrayList1.isEmpty()))
          {
            bool = localArrayList1.contains(paramAccessibilityEvent.getPackageName());
            if ((!bool) || (!GlobalData.getInstance().hasInstallingPackageFromMySelf()))
              continue;
            Log.e("doll", bool + " isSystemInstallUI  " + " " + GlobalData.getInstance().hasInstallingPackageFromMySelf());
            AccessibilityNodeInfo localAccessibilityNodeInfo2 = getRootInActiveWindow();
            if (localAccessibilityNodeInfo2 == null)
            {
              localAccessibilityNodeInfo2 = localAccessibilityNodeInfo1;
              if (paramAccessibilityEvent.getEventType() == 4096)
                localAccessibilityNodeInfo1.performAction(4096);
            }
            ArrayList localArrayList2 = new ArrayList();
            localArrayList2.add("下一步");
            localArrayList2.add("安装");
            localArrayList2.add("完成");
            localArrayList2.add("确定");
            if ((localArrayList2 == null) || (localArrayList2.isEmpty()))
              continue;
            Iterator localIterator = new ArrayList(localArrayList2).iterator();
            while (localIterator.hasNext())
              clickAccessibilityNodeByText(localAccessibilityNodeInfo2, (String)localIterator.next());
          }
        }
      }
      catch (Exception localException)
      {
        return;
      }
    }
    if (this.autoInstallPackageNames == null)
      this.autoInstallPackageNames = getResources().getStringArray(2131558400);
    String[] arrayOfString = this.autoInstallPackageNames;
    int i = arrayOfString.length;
    for (int j = 0; ; j++)
    {
      bool = false;
      if (j >= i)
        break;
      String str = arrayOfString[j];
      if ((str != null) && (paramAccessibilityEvent.getPackageName().equals(str)))
      {
        bool = true;
        break;
      }
    }
  }

  public void onAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    Log.e(TAG, "NotificationService  onAccessibilityEvent ");
    processinstallApplication(paramAccessibilityEvent);
  }

  public void onInterrupt()
  {
    Log.e(TAG, "NotificationService onInterrupt");
  }

  protected void onServiceConnected()
  {
    GlobalData.mAssistAutoInstallSwitchOn = true;
    boolean bool1 = PreferencesHelper.getInstance(getApplicationContext()).isAssisAutoInstallSwitch();
    if (GlobalData.mAssistAutoInstallSwitchOn != bool1)
      PreferencesHelper.getInstance(getApplicationContext()).setAssisAutoInstallSwitch(true);
    boolean bool2 = PreferencesHelper.getInstance(getApplicationContext()).isAssisAutoInstallSwitch();
    Log.e(TAG, "NotificationService  start trackAccessibilityEvent " + bool2);
    if (bool2)
    {
      Intent localIntent = new Intent();
      localIntent.setAction("com.main.apps.view.install");
      sendBroadcast(localIntent);
    }
  }

  public boolean onUnbind(Intent paramIntent)
  {
    GlobalData.mAssistAutoInstallSwitchOn = false;
    PreferencesHelper.getInstance(getApplicationContext()).setAssisAutoInstallSwitch(false);
    GlobalData.getInstance().clearInstallPackageData();
    Log.e(TAG, "NotificationService AccessibilityEvent closed!");
    return super.onUnbind(paramIntent);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.service.MarketAccessibilityService
 * JD-Core Version:    0.6.2
 */