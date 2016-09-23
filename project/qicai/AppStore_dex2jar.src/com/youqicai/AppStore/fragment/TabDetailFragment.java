package com.youqicai.AppStore.fragment;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.hsg.sdk.common.imagecache.ImageFetcher;
import com.youqicai.AppStore.ImageDetailActivity;
import com.youqicai.AppStore.adapter.MergeAdapter;
import com.youqicai.AppStore.config.BuildUrl;
import com.youqicai.AppStore.entity.AppInfoEntity;
import com.youqicai.AppStore.parser.DetailParser;
import com.youqicai.AppStore.utils.BaseUtils;
import com.youqicai.http.HttpUtil;
import com.youqicai.http.TaskEntity;
import com.youqicai.http.TaskEntity.OnResultListener;
import com.youqicai.widget.ScrollTabHolder;
import com.youqicai.widget.ScrollTabHolderFragment;
import java.util.ArrayList;
import java.util.List;

public class TabDetailFragment extends ScrollTabHolderFragment
  implements AbsListView.OnScrollListener, TaskEntity.OnResultListener
{
  private static final String ARG_APP = "app";
  private static final String ARG_POSITION = "position";
  private MergeAdapter adapter = null;
  private AppInfoEntity appInfoEntity;
  private LayoutInflater layoutInflater;
  private Activity mActivity;
  private TextView mAppDesc;
  private LinearLayout mAppDetailGallery = null;
  private ImageView mAppDetailGallery2 = null;
  private ListView mListView;
  private int mPosition;

  private void initGallery(final ArrayList<String> paramArrayList)
  {
    int i = paramArrayList.size();
    if (i == 1)
    {
      setImageViewScale(getActivity(), this.mAppDetailGallery2);
      ImageFetcher.getInstance(getActivity()).loadImage(paramArrayList.get(0), this.mAppDetailGallery2);
      this.mAppDetailGallery.setVisibility(8);
      return;
    }
    for (final int j = 0; j < i; j++)
    {
      ImageView localImageView = new ImageView(getActivity());
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
      localLayoutParams.setMargins(10, 0, 0, 0);
      localLayoutParams.gravity = 17;
      localImageView.setLayoutParams(localLayoutParams);
      setImageViewScale(getActivity(), localImageView);
      ImageFetcher.getInstance(getActivity()).loadImage(paramArrayList.get(j), localImageView);
      this.mAppDetailGallery.addView(localImageView);
      localImageView.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          Log.e("点击图片", (String)paramArrayList.get(j) + " ---------------- i" + j);
          Bundle localBundle = new Bundle();
          ArrayList localArrayList = paramArrayList;
          localBundle.putInt("position", j);
          localBundle.putStringArrayList("extra_image", localArrayList);
          BaseUtils.openActivity(TabDetailFragment.this.mActivity, ImageDetailActivity.class, localBundle);
        }
      });
    }
    this.mAppDetailGallery2.setVisibility(8);
  }

  public static Fragment newInstance(AppInfoEntity paramAppInfoEntity, int paramInt)
  {
    TabDetailFragment localTabDetailFragment = new TabDetailFragment();
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("app", paramAppInfoEntity);
    localBundle.putInt("position", paramInt);
    localTabDetailFragment.setArguments(localBundle);
    return localTabDetailFragment;
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
    this.mListView.setAdapter(this.adapter);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mActivity = getActivity();
    this.mPosition = getArguments().getInt("position");
    this.appInfoEntity = ((AppInfoEntity)getArguments().getSerializable("app"));
    ArrayList localArrayList = new ArrayList();
    this.layoutInflater = getActivity().getLayoutInflater();
    View localView1 = this.layoutInflater.inflate(2130903071, null);
    this.mAppDetailGallery2 = ((ImageView)localView1.findViewById(2131099804));
    this.mAppDetailGallery = ((LinearLayout)localView1.findViewById(2131099803));
    localArrayList.add(localView1);
    View localView2 = this.layoutInflater.inflate(2130903070, null);
    this.mAppDesc = ((TextView)localView2.findViewById(2131099802));
    localArrayList.add(localView2);
    this.adapter = new MergeAdapter();
    this.adapter.addViews(localArrayList);
    HttpUtil.AddTaskToQueueHead(BuildUrl.buildDetail(this.appInfoEntity.getAppId()), 0, new DetailParser(), this);
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
    AppInfoEntity localAppInfoEntity = (AppInfoEntity)((TaskEntity)paramObject).outObject;
    if (localAppInfoEntity != null)
    {
      this.appInfoEntity = localAppInfoEntity;
      String str = this.appInfoEntity.getDescription().replaceAll("\\\\r", "\r").replaceAll("\\\\n", "\n");
      this.mAppDesc.setText(str + "\n\n\n\n");
      ArrayList localArrayList = localAppInfoEntity.getSnapshotsUrlList();
      if (localArrayList.size() >= 1)
        initGallery(localArrayList);
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

  public void setImageViewScale(Activity paramActivity, View paramView)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    int i = 2 * paramActivity.getWindowManager().getDefaultDisplay().getWidth() / 5;
    localLayoutParams.height = (i * 5 / 3);
    localLayoutParams.width = i;
    paramView.setLayoutParams(localLayoutParams);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.fragment.TabDetailFragment
 * JD-Core Version:    0.6.2
 */