package com.youqicai.AppStore.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListView;
import com.youqicai.AppStore.adapter.CommentAdapter;
import com.youqicai.AppStore.config.BuildUrl;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.entity.Comment;
import com.youqicai.AppStore.entity.ResultCommentEntity;
import com.youqicai.AppStore.parser.CommentParser;
import com.youqicai.http.HttpUtil;
import com.youqicai.http.TaskEntity;
import com.youqicai.http.TaskEntity.OnResultListener;
import com.youqicai.widget.ScrollTabHolder;
import com.youqicai.widget.ScrollTabHolderFragment;
import java.util.List;

public class TabCommentFragment extends ScrollTabHolderFragment
  implements AbsListView.OnScrollListener, TaskEntity.OnResultListener
{
  private static final String ARG_APP = "app";
  private static final String ARG_POSITION = "position";
  private AppInfoEntity appInfoEntity;
  CommentAdapter commentAdapter;
  private ListView mListView;
  private int mPosition;
  private int pageNo = 1;

  public static Fragment newInstance(AppInfoEntity paramAppInfoEntity, int paramInt)
  {
    TabCommentFragment localTabCommentFragment = new TabCommentFragment();
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("app", paramAppInfoEntity);
    localBundle.putInt("position", paramInt);
    localTabCommentFragment.setArguments(localBundle);
    return localTabCommentFragment;
  }

  public void adjustScroll(int paramInt)
  {
    if ((paramInt == 0) && (this.mListView.getFirstVisiblePosition() >= 1))
      return;
    this.mListView.setSelectionFromTop(1, paramInt);
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.mListView.setOnScrollListener(this);
    this.commentAdapter = new CommentAdapter(getActivity());
    this.mListView.setAdapter(this.commentAdapter);
    this.pageNo = 1;
    HttpUtil.AddTaskToQueueHead(BuildUrl.buildComment(this.appInfoEntity.getAppId(), this.pageNo), 0, new CommentParser(), this);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mPosition = getArguments().getInt("position");
    this.appInfoEntity = ((AppInfoEntity)getArguments().getSerializable("app"));
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView1 = paramLayoutInflater.inflate(2130903077, null);
    this.mListView = ((ListView)localView1.findViewById(2131099823));
    View localView2 = paramLayoutInflater.inflate(2130903102, this.mListView, false);
    this.mListView.addHeaderView(localView2);
    return localView1;
  }

  public void onError(Object paramObject)
  {
  }

  public void onResult(Object paramObject)
  {
    TaskEntity localTaskEntity = (TaskEntity)paramObject;
    ResultCommentEntity localResultCommentEntity = (ResultCommentEntity)localTaskEntity.outObject;
    if (localTaskEntity.taskId == 0)
    {
      List localList = localResultCommentEntity.commentList;
      for (int i = 0; i < localList.size(); i++)
        this.commentAdapter.addComment((Comment)localList.get(i));
      this.commentAdapter.notifyDataSetInvalidated();
    }
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.mScrollTabHolder != null)
      this.mScrollTabHolder.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3, this.mPosition);
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.fragment.TabCommentFragment
 * JD-Core Version:    0.6.2
 */