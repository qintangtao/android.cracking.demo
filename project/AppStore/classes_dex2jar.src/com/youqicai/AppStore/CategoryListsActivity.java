package com.youqicai.AppStore;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import com.lidroid.xutils.ViewUtils;
import com.lidroid.xutils.view.annotation.ContentView;
import com.lidroid.xutils.view.annotation.ViewInject;
import com.viewpagerindicator.TabPageIndicator;
import com.youqicai.AppStore.entity.Category;
import com.youqicai.AppStore.entity.ChildCategory;
import com.youqicai.AppStore.fragment.CategoryListFragment;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@ContentView(2130903044)
public class CategoryListsActivity extends BaseActivity
{
  Category category;

  @ViewInject(2131099678)
  TabPageIndicator indicator;

  @ViewInject(2131099679)
  ViewPager pager;
  private List<String> titleList = new ArrayList();
  private List<String> urlList = new ArrayList();

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    ViewUtils.inject(this);
    this.category = ((Category)getIntent().getSerializableExtra("category"));
    int i = getIntent().getIntExtra("position", 0);
    if (this.category == null)
      finish();
    this.titleList.add("全部");
    this.urlList.add(this.category.getDataUrl());
    Iterator localIterator = this.category.getChildList().iterator();
    while (localIterator.hasNext())
    {
      ChildCategory localChildCategory = (ChildCategory)localIterator.next();
      this.titleList.add(localChildCategory.getTagName());
      this.urlList.add(localChildCategory.getDataUrl());
    }
    GoogleMusicAdapter localGoogleMusicAdapter = new GoogleMusicAdapter(getSupportFragmentManager());
    this.pager.setAdapter(localGoogleMusicAdapter);
    this.indicator.setViewPager(this.pager);
    this.pager.setCurrentItem(i);
  }

  class GoogleMusicAdapter extends FragmentPagerAdapter
  {
    public GoogleMusicAdapter(FragmentManager arg2)
    {
      super();
    }

    public int getCount()
    {
      return CategoryListsActivity.this.titleList.size();
    }

    public Fragment getItem(int paramInt)
    {
      return CategoryListFragment.newInstance((String)CategoryListsActivity.this.urlList.get(paramInt));
    }

    public CharSequence getPageTitle(int paramInt)
    {
      return (CharSequence)CategoryListsActivity.this.titleList.get(paramInt);
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.CategoryListsActivity
 * JD-Core Version:    0.6.2
 */