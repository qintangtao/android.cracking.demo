package com.youqicai.AppStore;

import android.os.Bundle;
import android.util.Log;
import android.widget.ListView;
import com.lidroid.xutils.ViewUtils;
import com.lidroid.xutils.view.annotation.ContentView;
import com.lidroid.xutils.view.annotation.ViewInject;
import com.youqicai.AppStore.adapter.UpdateApplistAdapter;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.entity.ResultAppInfoEntity;
import com.youqicai.AppStore.parser.UpdateParser;
import com.youqicai.PhoneHelper.AppUtils;
import com.youqicai.http.ConnectionUtil;
import com.youqicai.http.HttpUtil;
import com.youqicai.http.TaskEntity;
import com.youqicai.http.TaskEntity.OnResultListener;
import com.youqicai.widget.EmptyDownLoadView;
import com.youqicai.widget.FailLoadingView;
import com.youqicai.widget.LoadingView;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.entity.StringEntity;
import org.json.JSONArray;
import org.json.JSONObject;

@ContentView(2130903059)
public class UpdateActivity extends BaseActivity
  implements TaskEntity.OnResultListener
{

  @ViewInject(2131099693)
  EmptyDownLoadView emptyDownLoadView;

  @ViewInject(2131099675)
  FailLoadingView failLoadingView;

  @ViewInject(2131099761)
  ListView listView;

  @ViewInject(2131099674)
  LoadingView loadingView;
  private ArrayList<AppInfoEntity> mData = new ArrayList();
  private List<AppInfoEntity> mInstalledApp;
  long time;
  UpdateApplistAdapter updateApplistAdapter;

  private void getAppListFromServer()
  {
    try
    {
      this.time = System.currentTimeMillis();
      if ((this.mInstalledApp == null) || (this.mInstalledApp.size() <= 0))
        this.mInstalledApp = AppUtils.getApps(this.context);
      this.time = System.currentTimeMillis();
      HttpUtil.AddTaskToQueueHead("http://mapp.youqicai.com/api?action=checkupdate", new StringEntity(getAppUpdateListParam(this.mInstalledApp)), 0, new UpdateParser(), this);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static String getAppUpdateListParam(List<AppInfoEntity> paramList)
  {
    Object localObject = "";
    try
    {
      JSONArray localJSONArray = new JSONArray();
      if ((paramList != null) && (paramList.size() > 0))
        for (int i = 0; i < paramList.size(); i++)
        {
          AppInfoEntity localAppInfoEntity = (AppInfoEntity)paramList.get(i);
          JSONObject localJSONObject = new JSONObject();
          localJSONObject.put("p", localAppInfoEntity.getPackageName());
          localJSONObject.put("v", localAppInfoEntity.getVersionCode());
          localJSONObject.put("m", localAppInfoEntity.getApkMd5());
          localJSONArray.put(localJSONObject);
        }
      String str = localJSONArray.toString();
      localObject = str;
      label121: Log.e("doll -- > ", (String)localObject);
      return localObject;
    }
    catch (Exception localException)
    {
      break label121;
    }
  }

  private void loadData()
  {
    if (ConnectionUtil.isConnected(this.context))
    {
      if ((this.mData == null) || (this.mData.size() == 0))
        new Thread(new Runnable()
        {
          public void run()
          {
            UpdateActivity.this.getAppListFromServer();
          }
        }).start();
      return;
    }
    setViewShowStatus(1);
  }

  private void setViewShowStatus(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
      do
      {
        do
        {
          return;
          if (this.emptyDownLoadView != null)
            this.emptyDownLoadView.setVisibility(8);
          if (this.loadingView != null)
            this.loadingView.setVisibility(0);
        }
        while (this.failLoadingView == null);
        this.failLoadingView.setVisibility(8);
        return;
        if (this.emptyDownLoadView != null)
          this.emptyDownLoadView.setVisibility(8);
        if (this.loadingView != null)
          this.loadingView.setVisibility(8);
      }
      while (this.failLoadingView == null);
      this.failLoadingView.setVisibility(0);
      return;
    case 2:
    }
    this.loadingView.setVisibility(8);
    this.failLoadingView.setVisibility(8);
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    ViewUtils.inject(this);
    this.updateApplistAdapter = new UpdateApplistAdapter(this.context);
    this.listView.setAdapter(this.updateApplistAdapter);
    loadData();
  }

  public void onError(Object paramObject)
  {
  }

  public void onResult(Object paramObject)
  {
    TaskEntity localTaskEntity = (TaskEntity)paramObject;
    ResultAppInfoEntity localResultAppInfoEntity = (ResultAppInfoEntity)localTaskEntity.outObject;
    if (localTaskEntity.taskId == 0)
    {
      ArrayList localArrayList = localResultAppInfoEntity.appInfoEntityList;
      this.mData.clear();
      this.mData.addAll(localArrayList);
      this.updateApplistAdapter.setData(this.mData);
      this.updateApplistAdapter.notifyDataSetInvalidated();
      setViewShowStatus(2);
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.UpdateActivity
 * JD-Core Version:    0.6.2
 */