package com.youqicai.AppStore;

import android.content.Intent;
import android.os.Bundle;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Mode;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.lidroid.xutils.ViewUtils;
import com.lidroid.xutils.view.annotation.ContentView;
import com.lidroid.xutils.view.annotation.ViewInject;
import com.youqicai.AppStore.adapter.CardAdapter;
import com.youqicai.AppStore.entity.BannerItem;
import com.youqicai.AppStore.entity.ResultCardEntity;
import com.youqicai.AppStore.parser.BaseCardParser;
import com.youqicai.http.HttpUtil;
import com.youqicai.http.TaskEntity;
import com.youqicai.http.TaskEntity.OnResultListener;
import com.youqicai.widget.FailLoadingView;
import com.youqicai.widget.LoadingView;
import java.util.List;

@ContentView(2130903043)
public class SpecialActivity extends BaseActivity
  implements TaskEntity.OnResultListener
{
  private BannerItem bannerItem;
  CardAdapter cardAdapter;

  @ViewInject(2131099675)
  FailLoadingView failLoadingView;

  @ViewInject(2131099674)
  LoadingView loadingView;

  @ViewInject(2131099677)
  PullToRefreshListView pullToRefreshListView;

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    ViewUtils.inject(this);
    this.bannerItem = ((BannerItem)getIntent().getSerializableExtra("bannerItem"));
    HttpUtil.AddTaskToQueueHead("http://ops.dingkaidata.com/api?action=topicapp&topicId=3", 0, new BaseCardParser(), this);
    this.pullToRefreshListView.setMode(PullToRefreshBase.Mode.PULL_FROM_END);
    this.cardAdapter = new CardAdapter(this);
    this.pullToRefreshListView.setAdapter(this.cardAdapter);
  }

  public void onError(Object paramObject)
  {
  }

  public void onResult(Object paramObject)
  {
    TaskEntity localTaskEntity = (TaskEntity)paramObject;
    ResultCardEntity localResultCardEntity = (ResultCardEntity)localTaskEntity.outObject;
    if (localTaskEntity.taskId == 0)
    {
      List localList = localResultCardEntity.cardEntityList;
      this.cardAdapter.clear();
      this.cardAdapter.addAll(localList);
      this.loadingView.setVisibility(8);
      this.pullToRefreshListView.setVisibility(0);
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.SpecialActivity
 * JD-Core Version:    0.6.2
 */