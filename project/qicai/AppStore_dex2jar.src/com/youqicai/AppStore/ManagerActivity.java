package com.youqicai.AppStore;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.TextView;
import com.hsg.sdk.common.imagecache.ImageFetcher;
import com.hsg.sdk.common.imagecache.ImageWorker.SimpleProcessCallback;
import com.lidroid.xutils.ViewUtils;
import com.lidroid.xutils.view.annotation.ContentView;
import com.lidroid.xutils.view.annotation.ViewInject;
import com.lidroid.xutils.view.annotation.event.OnClick;
import com.youqicai.AppStore.config.BuildUrl;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.entity.ResultAppInfoEntity;
import com.youqicai.AppStore.parser.UpdateParser;
import com.youqicai.PhoneHelper.PreferencesHelper;
import com.youqicai.http.ConnectionUtil;
import com.youqicai.http.HttpUtil;
import com.youqicai.http.TaskEntity;
import com.youqicai.http.TaskEntity.OnResultListener;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

@ContentView(2130903053)
public class ManagerActivity extends BaseActivity
  implements TaskEntity.OnResultListener
{

  @ViewInject(2131099722)
  ImageView accountImage;

  @ViewInject(2131099723)
  TextView accountName;

  @ViewInject(2131099727)
  TextView updateDesc;

  @ViewInject(2131099726)
  TextView updateText;

  private void getAppListFromServer()
  {
    try
    {
      HttpUtil.AddTaskToQueueHead(BuildUrl.buildUpdateSelf("1", this.context.getPackageName(), "1"), 0, new UpdateParser(), this);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static String getAppUpdateListParam(List<AppInfoEntity> paramList)
  {
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
      return str;
    }
    catch (Exception localException)
    {
    }
    return "";
  }

  private void loadUpdateData()
  {
    if ((ConnectionUtil.isConnected(this.context)) && (!PreferencesHelper.getInstance(this.context).isUpdateCheck()))
      new Thread(new Runnable()
      {
        public void run()
        {
          ManagerActivity.this.getAppListFromServer();
          PreferencesHelper.getInstance(ManagerActivity.this.context).saveUpdateCheck();
        }
      }).start();
  }

  public void back(View paramView)
  {
    finish();
  }

  @OnClick({2131099739})
  public void intentToAbout(View paramView)
  {
    startActivity(new Intent(this, AboutActivity.class));
  }

  @OnClick({2131099734})
  public void intentToConnect(View paramView)
  {
  }

  @OnClick({2131099728})
  public void intentToDownload(View paramView)
  {
    startActivity(new Intent(this, DownloadActivity.class));
  }

  @OnClick({2131099737})
  public void intentToFeedback(View paramView)
  {
    startActivity(new Intent(this, FeedbackActivity.class));
  }

  @OnClick({2131099724})
  public void intentToUpdate(View paramView)
  {
    startActivity(new Intent(this, UpdateActivity.class));
  }

  @OnClick({2131099731})
  public void intentUninstall(View paramView)
  {
    startActivity(new Intent(this, UninstallActivity.class));
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    ViewUtils.inject(this);
    String str1 = PreferencesHelper.getInstance(this.context).getNickName();
    if ((TextUtils.isEmpty(str1)) || (str1.equals("null")))
      str1 = "匿名";
    this.accountName.setText(str1);
    loadUpdateData();
    String str2 = PreferencesHelper.getInstance(this.context).getHeadUrl();
    ImageFetcher.getInstance(getApplicationContext()).loadImage(str2, this.accountImage, new ImageWorker.SimpleProcessCallback()
    {
      public void onMemoryOver(BitmapDrawable paramAnonymousBitmapDrawable)
      {
        super.onMemoryOver(paramAnonymousBitmapDrawable);
        ManagerActivity.this.accountImage.setScaleType(ImageView.ScaleType.FIT_XY);
      }

      public void onTaskOver(Drawable paramAnonymousDrawable)
      {
        super.onTaskOver(paramAnonymousDrawable);
        ManagerActivity.this.accountImage.setScaleType(ImageView.ScaleType.FIT_XY);
      }
    });
  }

  public void onError(Object paramObject)
  {
  }

  public void onResult(Object paramObject)
  {
    TaskEntity localTaskEntity = (TaskEntity)paramObject;
    ResultAppInfoEntity localResultAppInfoEntity = (ResultAppInfoEntity)localTaskEntity.outObject;
    if (localTaskEntity.taskId == 0);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.ManagerActivity
 * JD-Core Version:    0.6.2
 */