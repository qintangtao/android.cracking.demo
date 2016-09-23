package com.youqicai.AppStore;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.ListView;
import android.widget.TextView;
import com.lidroid.xutils.ViewUtils;
import com.lidroid.xutils.view.annotation.ContentView;
import com.lidroid.xutils.view.annotation.ViewInject;
import com.youqicai.AppStore.adapter.CategoryAdapter;
import com.youqicai.AppStore.entity.ResultCategoryEntity;
import com.youqicai.AppStore.parser.CategoryParser;
import com.youqicai.http.HttpUtil;
import com.youqicai.http.TaskEntity;
import com.youqicai.http.TaskEntity.OnResultListener;
import com.youqicai.widget.FailLoadingView;
import com.youqicai.widget.LoadingView;

@ContentView(2130903042)
public class CategoryActivity extends BaseActivity
  implements TaskEntity.OnResultListener
{
  CategoryAdapter categoryAdapter;
  String dataUrl;

  @ViewInject(2131099675)
  FailLoadingView failLoadingView;

  @ViewInject(2131099673)
  ListView listView;

  @ViewInject(2131099674)
  LoadingView loadingView;

  @ViewInject(2131099669)
  TextView name;

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    ViewUtils.inject(this);
    this.categoryAdapter = new CategoryAdapter(this);
    this.listView.setAdapter(this.categoryAdapter);
    this.dataUrl = getIntent().getStringExtra("dataUrl");
    String str = getIntent().getStringExtra("title");
    if (!TextUtils.isEmpty(this.dataUrl))
    {
      this.name.setText(str);
      HttpUtil.AddTaskToQueueHead(this.dataUrl, 0, new CategoryParser(), this);
    }
  }

  public void onError(Object paramObject)
  {
  }

  public void onResult(Object paramObject)
  {
    this.loadingView.setVisibility(8);
    this.failLoadingView.setVisibility(8);
    ResultCategoryEntity localResultCategoryEntity = (ResultCategoryEntity)((TaskEntity)paramObject).outObject;
    this.categoryAdapter.setData(localResultCategoryEntity.cardEntityList);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.CategoryActivity
 * JD-Core Version:    0.6.2
 */