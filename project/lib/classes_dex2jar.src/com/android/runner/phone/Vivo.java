package com.android.runner.phone;

import android.graphics.Rect;
import com.android.models.NodeInfo;
import com.android.runner.AutoObserveAppInListView;
import com.android.uiautomator.core.UiDevice;
import com.android.uiautomator.core.UiObject;
import com.android.uiautomator.core.UiObjectNotFoundException;
import com.android.uiautomator.core.UiSelector;
import com.android.utils.UIHelper;
import java.io.PrintStream;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class Vivo
{
  Rect MainRect = null;
  HashSet<String> doappname = new HashSet();
  int item_max_count = 0;
  boolean nextisallow = true;

  void DoViVo()
  {
    AutoObserveAppInListView localAutoObserveAppInListView = new AutoObserveAppInListView();
    Object localObject = "";
    while (true)
    {
      localAutoObserveAppInListView.GetUI();
      NodeInfo localNodeInfo1 = (NodeInfo)localAutoObserveAppInListView.ListViews.get(0);
      UiObject localUiObject;
      if (this.item_max_count == 0)
      {
        Iterator localIterator = localNodeInfo1.CNodeInfo.iterator();
        while (localIterator.hasNext())
        {
          NodeInfo localNodeInfo4 = (NodeInfo)localIterator.next();
          if (localNodeInfo4.CNodeInfo.size() > this.item_max_count)
            this.item_max_count = localNodeInfo4.CNodeInfo.size();
        }
        if (this.item_max_count == 3)
          localUiObject = new UiObject(new UiSelector().instance(0));
      }
      String str;
      try
      {
        this.MainRect = localUiObject.getBounds();
        System.out.println("item_max_count:" + this.item_max_count);
        doonepage(localAutoObserveAppInListView);
        localNodeInfo2 = (NodeInfo)localNodeInfo1.CNodeInfo.get(-1 + localNodeInfo1.CNodeInfo.size());
        if (localNodeInfo2.CNodeInfo.size() < -1 + this.item_max_count)
        {
          localNodeInfo3 = (NodeInfo)localNodeInfo1.CNodeInfo.get(-2 + localNodeInfo1.CNodeInfo.size());
          if (localNodeInfo3.CNodeInfo.size() == this.item_max_count)
          {
            str = ((NodeInfo)localNodeInfo3.CNodeInfo.get(1)).text;
            if (!str.equals(localObject))
              break label397;
            System.out.println("Is The last");
            return;
          }
        }
      }
      catch (UiObjectNotFoundException localUiObjectNotFoundException)
      {
        NodeInfo localNodeInfo2;
        while (true)
        {
          NodeInfo localNodeInfo3;
          localUiObjectNotFoundException.printStackTrace();
          continue;
          str = ((NodeInfo)localNodeInfo3.CNodeInfo.get(0)).text;
        }
        if (localNodeInfo2.CNodeInfo.size() == this.item_max_count);
        for (str = ((NodeInfo)localNodeInfo2.CNodeInfo.get(1)).text; ; str = ((NodeInfo)localNodeInfo2.CNodeInfo.get(0)).text)
          break;
        label397: Rect localRect = localNodeInfo1.bounds;
        int i = (localRect.right - localRect.left) / 2 + localRect.left;
        int j = localRect.bottom - (localRect.bottom - localRect.top) / 10;
        int k = (localRect.right - localRect.left) / 2 + localRect.left;
        int m = 50 + (localRect.top + (localRect.bottom - localRect.top) / 20);
        boolean bool = UiDevice.getInstance().swipe(i, j, k, m, 55);
        System.out.println(bool);
      }
      try
      {
        Thread.sleep(1000L);
        localObject = str;
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          localInterruptedException.printStackTrace();
      }
    }
  }

  String dooneitem(AutoObserveAppInListView paramAutoObserveAppInListView)
  {
    paramAutoObserveAppInListView.GetUI();
    NodeInfo localNodeInfo1 = (NodeInfo)paramAutoObserveAppInListView.ListViews.get(0);
    if (localNodeInfo1 == null)
      return "";
    if (localNodeInfo1.CNodeInfo.size() == 0)
      return "";
    Iterator localIterator = localNodeInfo1.CNodeInfo.iterator();
    if (localIterator.hasNext())
    {
      NodeInfo localNodeInfo2 = (NodeInfo)localIterator.next();
      String str1 = "";
      label125: Rect localRect;
      label152: label171: String str2;
      if (localNodeInfo2.CNodeInfo.size() == this.item_max_count)
        if (((NodeInfo)localNodeInfo2.CNodeInfo.get(0)).text.contains("允许"))
        {
          this.nextisallow = true;
          if (this.item_max_count != 3)
            break label349;
          localRect = ((NodeInfo)localNodeInfo2.CNodeInfo.get(1)).bounds;
          str1 = ((NodeInfo)localNodeInfo2.CNodeInfo.get(1)).text;
          if ((str1.equals("")) || (this.doappname.contains(str1)))
            break label453;
          if (!this.nextisallow)
            break label483;
          str2 = "true";
          label204: if (!paramAutoObserveAppInListView.ProcessApp(str1, str2))
            break label510;
          System.out.println("click :" + localRect.left + "," + localRect.top);
          if (this.item_max_count != 3)
            break label490;
          UiDevice.getInstance().click(this.MainRect.right - localRect.left, localRect.top);
          label290: System.out.println(this.nextisallow + ":" + str1 + " need click");
        }
      while (true)
      {
        this.doappname.add(str1);
        return str1;
        this.nextisallow = false;
        break label125;
        label349: localRect = ((NodeInfo)localNodeInfo2.CNodeInfo.get(-1 + this.item_max_count)).bounds;
        break label152;
        int i = localNodeInfo2.CNodeInfo.size();
        int j = -1 + this.item_max_count;
        localRect = null;
        if (i != j)
          break label171;
        if (this.item_max_count == 3);
        for (localRect = ((NodeInfo)localNodeInfo2.CNodeInfo.get(0)).bounds; ; localRect = ((NodeInfo)localNodeInfo2.CNodeInfo.get(-2 + this.item_max_count)).bounds)
        {
          str1 = ((NodeInfo)localNodeInfo2.CNodeInfo.get(0)).text;
          break label171;
          label453: break;
        }
        label483: str2 = "false";
        break label204;
        label490: UiDevice.getInstance().click(localRect.left, localRect.top);
        break label290;
        label510: System.out.println(this.nextisallow + ":" + str1 + " don not need click");
      }
    }
    return "";
  }

  void doonepage(AutoObserveAppInListView paramAutoObserveAppInListView)
  {
    Object localObject = "";
    while (true)
    {
      String str = dooneitem(paramAutoObserveAppInListView);
      try
      {
        Thread.sleep(300L);
        System.out.println("last do app:" + str);
        if (((String)localObject).equals(str))
          return;
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          localInterruptedException.printStackTrace();
        localObject = str;
      }
    }
  }

  public void run()
  {
    UIHelper.Press_BACK(4);
    int i = UIHelper.GetAppVcode("com.iqoo.secure");
    if (i == 0)
      System.out.println("can not find com.iqoo.secure");
    while (true)
    {
      return;
      System.out.println("find com.iqoo.secure ver:" + i);
      if (!UIHelper.StartApp("com.iqoo.secure/.MainGuideActivity"))
        continue;
      if (!UIHelper.FindClickButtonToNewWindow("软件管理", 2));
      try
      {
        UiDevice.getInstance().swipe(400, 400, 10, 400, 20);
        try
        {
          label85: UiDevice.getInstance().swipe(400, 400, 10, 400, 20);
          try
          {
            label105: UiDevice.getInstance().pressDPadCenter();
            label112: UiObject localUiObject = UIHelper.GetUiObjectByResourceid("com.iqoo.secure:id/btn_begin_guide");
            if (localUiObject.exists());
            try
            {
              localUiObject.clickAndWaitForNewWindow();
              if (!UIHelper.FindClickButtonToNewWindow("软件管理", 2))
                continue;
              if (!UIHelper.FindClickButtonToNewWindow("自启动管理", 2));
            }
            catch (UiObjectNotFoundException localUiObjectNotFoundException)
            {
              try
              {
                Thread.sleep(1000L);
                DoViVo();
                System.out.println("press back 4 times");
                UIHelper.Press_BACK(4);
                return;
                localUiObjectNotFoundException = localUiObjectNotFoundException;
                localUiObjectNotFoundException.printStackTrace();
              }
              catch (InterruptedException localInterruptedException)
              {
                while (true)
                  localInterruptedException.printStackTrace();
              }
            }
          }
          catch (Exception localException3)
          {
            break label112;
          }
        }
        catch (Exception localException2)
        {
          break label105;
        }
      }
      catch (Exception localException1)
      {
        break label85;
      }
    }
  }
}

/* Location:           C:\ProgramData\MPhoneAssistant\res\lib\classes_dex2jar.jar
 * Qualified Name:     com.android.runner.phone.Vivo
 * JD-Core Version:    0.6.2
 */