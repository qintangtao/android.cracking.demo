package com.youqicai.AppStore;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Mode;
import com.handmark.pulltorefresh.library.PullToRefreshBase.OnRefreshListener2;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.lidroid.xutils.ViewUtils;
import com.lidroid.xutils.view.annotation.ContentView;
import com.lidroid.xutils.view.annotation.ViewInject;
import com.youqicai.AppStore.adapter.CardAdapter;
import com.youqicai.AppStore.entity.Category;
import com.youqicai.AppStore.entity.ChildCategory;
import com.youqicai.AppStore.entity.ResultCardEntity;
import com.youqicai.AppStore.parser.BaseCardParser;
import com.youqicai.http.HttpUtil;
import com.youqicai.http.TaskEntity;
import com.youqicai.http.TaskEntity.OnResultListener;
import com.youqicai.widget.FailLoadingView;
import com.youqicai.widget.LoadingView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@ContentView(2130903043)
public class CategoryListActivity extends BaseActivity
  implements TaskEntity.OnResultListener, PullToRefreshBase.OnRefreshListener2
{
  CardAdapter cardAdapter;
  Category category;
  ArrayList<ChildHolder> childHolderList = new ArrayList();

  @ViewInject(2131099676)
  LinearLayout childLayout;
  String currentDataUrl = "";

  @ViewInject(2131099675)
  FailLoadingView failLoadingView;

  @ViewInject(2131099674)
  LoadingView loadingView;
  LayoutInflater mLayoutInflater;

  @ViewInject(2131099669)
  TextView name;

  @ViewInject(2131099670)
  LinearLayout necessary_layout;
  private int pageNo = 0;

  @ViewInject(2131099677)
  PullToRefreshListView pullToRefreshListView;

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    ViewUtils.inject(this);
    this.necessary_layout.setVisibility(8);
    this.category = ((Category)getIntent().getSerializableExtra("category"));
    int i = getIntent().getIntExtra("position", -1);
    Log.e("doll", "pos = " + i);
    this.pullToRefreshListView.setMode(PullToRefreshBase.Mode.PULL_FROM_END);
    this.pullToRefreshListView.setOnRefreshListener(this);
    this.cardAdapter = new CardAdapter(this);
    this.pullToRefreshListView.setAdapter(this.cardAdapter);
    setViewShowStatus(0);
    ChildCategory localChildCategory1 = (ChildCategory)this.category.getChildList().get(i);
    this.currentDataUrl = localChildCategory1.getDataUrl();
    HttpUtil.AddTaskToQueueHead(this.currentDataUrl + "&pageNo=" + this.pageNo, 0, new BaseCardParser(), this);
    this.name.setText(localChildCategory1.getTagName());
    this.mLayoutInflater = getLayoutInflater();
    int j = 1;
    try
    {
      if (this.category.getChildList().size() % 3 == 0);
      label240: int i1;
      for (j = this.category.getChildList().size() / 3; ; j = i1 + 1)
      {
        this.childLayout.removeAllViews();
        this.childHolderList.clear();
        for (int k = 0; k < j; k++)
        {
          ChildHolder localChildHolder1 = new ChildHolder(null);
          View localView = this.mLayoutInflater.inflate(2130903083, null);
          LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
          this.childLayout.addView(localView, localLayoutParams);
          localChildHolder1.appNameList.add((TextView)localView.findViewById(2131099845));
          localChildHolder1.appNameList.add((TextView)localView.findViewById(2131099846));
          localChildHolder1.appNameList.add((TextView)localView.findViewById(2131099847));
          this.childHolderList.add(localChildHolder1);
        }
        i1 = this.category.getChildList().size() / 3;
      }
      int m = 0;
      ArrayList localArrayList = this.category.getChildList();
      Iterator localIterator = this.childHolderList.iterator();
      while (localIterator.hasNext())
      {
        ChildHolder localChildHolder2 = (ChildHolder)localIterator.next();
        int n = 0;
        if (n < 3)
        {
          if (localArrayList.size() > n + m * 3)
          {
            ChildCategory localChildCategory2 = (ChildCategory)localArrayList.get(n + m * 3);
            ((TextView)localChildHolder2.appNameList.get(n)).setText(localChildCategory2.getTagName());
            ((TextView)localChildHolder2.appNameList.get(n)).setTag(localChildCategory2);
            ((TextView)localChildHolder2.appNameList.get(n)).setOnClickListener(new View.OnClickListener()
            {
              public void onClick(View paramAnonymousView)
              {
                ChildCategory localChildCategory = (ChildCategory)paramAnonymousView.getTag();
                Log.e("doll", localChildCategory.toString());
                if ((localChildCategory != null) && (!CategoryListActivity.this.currentDataUrl.equals(localChildCategory.getDataUrl())))
                {
                  CategoryListActivity.this.setViewShowStatus(0);
                  CategoryListActivity.this.name.setText(localChildCategory.getTagName());
                  CategoryListActivity.access$102(CategoryListActivity.this, 1);
                  CategoryListActivity.this.currentDataUrl = localChildCategory.getDataUrl();
                  HttpUtil.AddTaskToQueueHead(CategoryListActivity.this.currentDataUrl + "&pageNo=" + CategoryListActivity.this.pageNo, 0, new BaseCardParser(), CategoryListActivity.this);
                }
              }
            });
          }
          while (true)
          {
            n++;
            break;
            ((TextView)localChildHolder2.appNameList.get(n)).setText("");
            ((TextView)localChildHolder2.appNameList.get(n)).setOnClickListener(new View.OnClickListener()
            {
              public void onClick(View paramAnonymousView)
              {
              }
            });
          }
        }
        m++;
      }
      return;
    }
    catch (Exception localException)
    {
      break label240;
    }
  }

  public void onError(Object paramObject)
  {
    setViewShowStatus(1);
  }

  public void onPullDownToRefresh(PullToRefreshBase paramPullToRefreshBase)
  {
    this.pageNo = 1;
    HttpUtil.AddTaskToQueueHead(this.currentDataUrl + "&pageNo=" + this.pageNo, 0, new BaseCardParser(), this);
  }

  public void onPullUpToRefresh(PullToRefreshBase paramPullToRefreshBase)
  {
    HttpUtil.AddTaskToQueueHead(this.currentDataUrl + "&pageNo=" + this.pageNo, 1, new BaseCardParser(), this);
  }

  public void onResult(Object paramObject)
  {
    TaskEntity localTaskEntity = (TaskEntity)paramObject;
    ResultCardEntity localResultCardEntity = (ResultCardEntity)localTaskEntity.outObject;
    int i = localTaskEntity.taskId;
    if (i == 0)
    {
      List localList2 = localResultCardEntity.cardEntityList;
      this.cardAdapter.clear();
      this.cardAdapter.setAll(localList2);
      this.cardAdapter.notifyDataSetChanged();
      if (!localResultCardEntity.hasNext)
        this.pullToRefreshListView.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
    }
    while (true)
    {
      this.pageNo = (1 + this.pageNo);
      this.pullToRefreshListView.onRefreshComplete();
      setViewShowStatus(2);
      return;
      if (i == 1)
      {
        boolean bool = localResultCardEntity.hasNext;
        List localList1 = localResultCardEntity.cardEntityList;
        this.cardAdapter.addAll(localList1);
        if (!bool)
          this.pullToRefreshListView.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
      }
    }
  }

  protected void setViewShowStatus(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
      this.loadingView.setVisibility(0);
      this.failLoadingView.setVisibility(8);
      this.pullToRefreshListView.setVisibility(8);
      return;
    case 1:
      this.loadingView.setVisibility(8);
      this.failLoadingView.setVisibility(0);
      this.pullToRefreshListView.setVisibility(8);
      return;
    case 2:
    }
    this.loadingView.setVisibility(8);
    this.failLoadingView.setVisibility(8);
    this.pullToRefreshListView.setVisibility(0);
    this.pullToRefreshListView.onRefreshComplete();
  }

  private class ChildHolder
  {
    ArrayList<TextView> appNameList = new ArrayList();

    private ChildHolder()
    {
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.CategoryListActivity
 * JD-Core Version:    0.6.2
 */