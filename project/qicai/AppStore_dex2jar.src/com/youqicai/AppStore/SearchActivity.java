package com.youqicai.AppStore;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshBase.Mode;
import com.handmark.pulltorefresh.library.PullToRefreshBase.OnRefreshListener2;
import com.handmark.pulltorefresh.library.PullToRefreshListView;
import com.lidroid.xutils.ViewUtils;
import com.lidroid.xutils.view.annotation.ContentView;
import com.lidroid.xutils.view.annotation.ViewInject;
import com.youqicai.AppStore.adapter.CardAdapter;
import com.youqicai.AppStore.adapter.HotWordsAdapter;
import com.youqicai.AppStore.card.HotwordsCard.ClickListener;
import com.youqicai.AppStore.config.BuildUrl;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.entity.CardEntity;
import com.youqicai.AppStore.entity.HotwordEntity;
import com.youqicai.AppStore.entity.ResultCardEntity;
import com.youqicai.AppStore.parser.BaseCardParser;
import com.youqicai.AppStore.parser.HotwordParser;
import com.youqicai.AppStore.parser.SearchParser;
import com.youqicai.AppStore.receiver.InstallReceiver;
import com.youqicai.AppStore.receiver.InstallReceiver.AppInstallListener;
import com.youqicai.AppStore.utils.BaseUtils;
import com.youqicai.AppStore.utils.ViewTools;
import com.youqicai.http.HttpUtil;
import com.youqicai.http.TaskEntity;
import com.youqicai.http.TaskEntity.OnResultListener;
import com.youqicai.manager.ApkManager;
import com.youqicai.widget.LoadingView;
import java.util.ArrayList;
import java.util.List;

@ContentView(2130903057)
public class SearchActivity extends BaseActivity
  implements TaskEntity.OnResultListener, TextWatcher, View.OnClickListener, PullToRefreshBase.OnRefreshListener2, View.OnKeyListener, HotwordsCard.ClickListener, InstallReceiver.AppInstallListener
{
  private boolean autoEnable = true;

  @ViewInject(2131099756)
  ImageView back;
  CardAdapter cardAdapter;

  @ViewInject(2131099757)
  ImageView clearSearch;
  private String currentUrl;

  @ViewInject(2131099759)
  EditText editText;

  @ViewInject(2131099750)
  GridView gridView;
  HotWordsAdapter hotWordsAdapter;
  ArrayList<HotwordEntity> hotwords = new ArrayList();

  @ViewInject(2131099674)
  LoadingView loadingView;
  private List<CardEntity> mDataList = new ArrayList();
  public Handler mHandler = new Handler()
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      super.handleMessage(paramAnonymousMessage);
      switch (paramAnonymousMessage.what)
      {
      default:
      case 0:
      case 1:
      }
      List localList;
      do
      {
        return;
        SearchActivity.this.cardAdapter.setAll(SearchActivity.this.mDataList);
        SearchActivity.this.cardAdapter.notifyDataSetChanged();
        return;
        localList = (List)paramAnonymousMessage.obj;
      }
      while (localList == null);
      SearchActivity.this.mDataList.addAll(localList);
      SearchActivity.this.cardAdapter.setAll(SearchActivity.this.mDataList);
      SearchActivity.this.cardAdapter.notifyDataSetChanged();
    }
  };
  int pageNo = 1;

  @ViewInject(2131099677)
  PullToRefreshListView pullToRefreshListView;

  @ViewInject(2131099758)
  ImageView serach;

  public void afterTextChanged(Editable paramEditable)
  {
    String str = paramEditable.toString();
    if (str.length() >= 1)
      this.clearSearch.setVisibility(0);
    while (!this.autoEnable)
    {
      return;
      this.clearSearch.setVisibility(8);
    }
    if (str.length() >= 1)
    {
      HttpUtil.AddTaskToQueueHead(BuildUrl.buildSearchKeyword(paramEditable.toString()), 1, new SearchParser(), this);
      return;
    }
    if ((this.hotwords != null) && (this.hotwords.size() > 0))
    {
      this.hotWordsAdapter.setData(this.hotwords);
      this.hotWordsAdapter.notifyDataSetChanged();
    }
    this.gridView.setVisibility(0);
    this.pullToRefreshListView.setVisibility(8);
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131099757)
    {
      this.editText.setText("");
      this.editText.setSelection(0);
    }
    do
    {
      String str;
      do
      {
        return;
        if (paramView.getId() != 2131099758)
          break;
        str = this.editText.getText().toString();
      }
      while (str.length() < 1);
      this.pageNo = 1;
      this.currentUrl = BuildUrl.buildSearchResult(str);
      HttpUtil.AddTaskToQueueHead(this.currentUrl + "&" + "pageNo" + "=" + this.pageNo, 2, new BaseCardParser(), this);
      BaseUtils.hideKeyboard(this, this.editText);
      return;
    }
    while (paramView.getId() != 2131099756);
    finish();
  }

  public void onClickItem(String paramString)
  {
    this.autoEnable = false;
    this.loadingView.setVisibility(0);
    this.gridView.setVisibility(8);
    this.pageNo = 1;
    this.currentUrl = BuildUrl.buildSearchResult(paramString);
    HttpUtil.AddTaskToQueueHead(this.currentUrl + "&" + "pageNo" + "=" + this.pageNo, 2, new BaseCardParser(), this);
    this.editText.setText(paramString);
    this.editText.setSelection(paramString.length());
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    ViewUtils.inject(this);
    HttpUtil.AddTaskToQueueHead("http://mapp.youqicai.com/api?action=hotword", 0, new HotwordParser(), this);
    this.loadingView.setVisibility(0);
    this.hotWordsAdapter = new HotWordsAdapter(this);
    this.hotWordsAdapter.setHotwordListener(this);
    this.gridView.setAdapter(this.hotWordsAdapter);
    this.editText.addTextChangedListener(this);
    this.editText.setOnKeyListener(this);
    this.cardAdapter = new CardAdapter(this);
    this.cardAdapter.setHotwordListener(this);
    this.pullToRefreshListView.setMode(PullToRefreshBase.Mode.PULL_FROM_END);
    this.pullToRefreshListView.setAdapter(this.cardAdapter);
    this.pullToRefreshListView.setOnRefreshListener(this);
    this.clearSearch.setVisibility(8);
    this.clearSearch.setOnClickListener(this);
    this.serach.setOnClickListener(this);
    InstallReceiver.registAppInstallListener(this);
    ViewTools.increaseClickRegion(this.back, 15, 15, 15, 15);
    this.back.setOnClickListener(this);
  }

  public void onError(Object paramObject)
  {
  }

  public void onInstallReceive(Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    Uri localUri = paramIntent.getData();
    String str2 = null;
    if (localUri != null)
      str2 = localUri.getSchemeSpecificPart();
    int j;
    if (str1 == "android.intent.action.PACKAGE_ADDED")
      if ((str2 != null) && (this.mDataList != null) && (this.mDataList.size() > 0))
      {
        j = 0;
        if (j < this.mDataList.size())
        {
          AppInfoEntity localAppInfoEntity2 = ((CardEntity)this.mDataList.get(j)).getSingleAppItem();
          if ((localAppInfoEntity2 == null) || (!str2.equals(localAppInfoEntity2.getPackageName())))
            break label141;
          localAppInfoEntity2.setAppStatus(6);
          Message localMessage2 = this.mHandler.obtainMessage();
          localMessage2.what = 0;
          this.mHandler.sendMessage(localMessage2);
        }
      }
    while (true)
    {
      return;
      label141: j++;
      break;
      if (((str1 == "android.intent.action.UNINSTALL_PACKAGE") || (str1 == "android.intent.action.PACKAGE_REMOVED")) && (str2 != null) && (this.mDataList != null) && (this.mDataList.size() > 0))
        for (int i = 0; i < this.mDataList.size(); i++)
        {
          AppInfoEntity localAppInfoEntity1 = ((CardEntity)this.mDataList.get(i)).getSingleAppItem();
          if ((localAppInfoEntity1 != null) && (str2.equals(localAppInfoEntity1.getPackageName())))
          {
            localAppInfoEntity1.setAppStatus(0);
            localAppInfoEntity1.setdownloadProgress(0.0F);
            Message localMessage1 = this.mHandler.obtainMessage();
            localMessage1.what = 0;
            this.mHandler.sendMessage(localMessage1);
            return;
          }
        }
    }
  }

  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    switch (paramView.getId())
    {
    default:
    case 2131099759:
    }
    do
      return false;
    while ((paramInt != 84) && (paramInt != 66));
    this.pageNo = 1;
    this.currentUrl = BuildUrl.buildSearchResult(this.editText.getText().toString().trim());
    HttpUtil.AddTaskToQueueHead(this.currentUrl + "&" + "pageNo" + "=" + this.pageNo, 2, new BaseCardParser(), this);
    BaseUtils.hideKeyboard(this, this.editText);
    return true;
  }

  public void onPullDownToRefresh(PullToRefreshBase paramPullToRefreshBase)
  {
  }

  public void onPullUpToRefresh(PullToRefreshBase paramPullToRefreshBase)
  {
    HttpUtil.AddTaskToQueueHead(this.currentUrl + "&" + "pageNo" + "=" + this.pageNo, 3, new BaseCardParser(), this);
  }

  public void onResult(Object paramObject)
  {
    if (isFinishing())
      return;
    this.loadingView.setVisibility(8);
    TaskEntity localTaskEntity = (TaskEntity)paramObject;
    if (localTaskEntity.taskId == 0)
    {
      this.pullToRefreshListView.setVisibility(8);
      this.gridView.setVisibility(0);
      this.hotwords.clear();
      this.hotwords.addAll((ArrayList)localTaskEntity.outObject);
      if ((this.hotwords != null) && (this.hotwords.size() > 0))
      {
        this.hotWordsAdapter.setData(this.hotwords);
        this.hotWordsAdapter.notifyDataSetChanged();
      }
      this.pullToRefreshListView.setMode(PullToRefreshBase.Mode.PULL_FROM_START);
    }
    while (true)
    {
      this.autoEnable = true;
      return;
      if (localTaskEntity.taskId == 1)
      {
        this.pullToRefreshListView.onRefreshComplete();
        this.pullToRefreshListView.setVisibility(0);
        this.gridView.setVisibility(8);
        ResultCardEntity localResultCardEntity = (ResultCardEntity)localTaskEntity.outObject;
        this.mDataList.clear();
        this.cardAdapter.clear();
        if (localResultCardEntity.cardEntityList.size() != 0)
          new DataThread(localResultCardEntity.cardEntityList).start();
      }
      else if (localTaskEntity.taskId == 2)
      {
        this.pageNo = (1 + this.pageNo);
        this.gridView.setVisibility(8);
        this.pullToRefreshListView.onRefreshComplete();
        this.pullToRefreshListView.setVisibility(0);
        List localList = ((ResultCardEntity)localTaskEntity.outObject).cardEntityList;
        this.mDataList.clear();
        this.cardAdapter.clear();
        if (localList.size() != 0)
          new DataThread(localList).start();
      }
      else if (localTaskEntity.taskId != 3);
    }
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public class DataThread extends Thread
  {
    List<CardEntity> entityList;

    public DataThread()
    {
      Object localObject;
      this.entityList = localObject;
    }

    public void run()
    {
      Message localMessage = Message.obtain();
      if (this.entityList != null)
      {
        ArrayList localArrayList = new ArrayList();
        for (int i = 0; i < this.entityList.size(); i++)
        {
          AppInfoEntity localAppInfoEntity = ((CardEntity)this.entityList.get(i)).getSingleAppItem();
          if (localAppInfoEntity != null)
            localArrayList.add(localAppInfoEntity);
        }
        ApkManager.getInstance().checkDownloadStatus(localArrayList);
        localMessage.what = 1;
        localMessage.obj = this.entityList;
        SearchActivity.this.mHandler.sendMessage(localMessage);
      }
      while (true)
      {
        super.run();
        return;
        localMessage.what = 2;
        SearchActivity.this.mHandler.sendMessage(localMessage);
      }
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.SearchActivity
 * JD-Core Version:    0.6.2
 */