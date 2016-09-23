package com.youqicai.AppStore.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.RadioButton;
import com.lidroid.xutils.ViewUtils;
import com.lidroid.xutils.view.annotation.ViewInject;
import java.util.ArrayList;
import java.util.List;

public class BillboardFragment extends BaseFragment
  implements CompoundButton.OnCheckedChangeListener
{

  @ViewInject(2131099821)
  RadioButton hot_board;

  @ViewInject(2131099822)
  RadioButton hot_personal;

  @ViewInject(2131099820)
  RadioButton quick_board;

  @ViewInject(2131099721)
  ViewPager viewPager;

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mContext = getActivity();
    this.quick_board.setOnCheckedChangeListener(this);
    this.hot_board.setOnCheckedChangeListener(this);
    this.hot_personal.setOnCheckedChangeListener(this);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(BoardFragment.newInstance(0));
    localArrayList.add(HotBoardFragment.newInstance(1));
    localArrayList.add(PersonalBoardFragment.newInstance(2));
    this.viewPager.setAdapter(new ViewPagerAdapter(localArrayList));
    this.viewPager.setOffscreenPageLimit(2);
    this.viewPager.setCurrentItem(0);
    this.quick_board.setChecked(true);
    this.viewPager.setOnPageChangeListener(new MyOnPageChangeListener());
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramCompoundButton == this.quick_board)
      if (paramBoolean)
        this.viewPager.setCurrentItem(0);
    do
    {
      do
      {
        return;
        if (paramCompoundButton != this.hot_board)
          break;
      }
      while (!paramBoolean);
      this.viewPager.setCurrentItem(1);
      return;
    }
    while ((paramCompoundButton != this.hot_personal) || (!paramBoolean));
    this.viewPager.setCurrentItem(2);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903075, paramViewGroup, false);
    ViewUtils.inject(this, localView);
    return localView;
  }

  public class MyOnPageChangeListener
    implements ViewPager.OnPageChangeListener
  {
    public MyOnPageChangeListener()
    {
    }

    public void onPageScrollStateChanged(int paramInt)
    {
    }

    public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
    {
    }

    public void onPageSelected(int paramInt)
    {
      switch (paramInt)
      {
      default:
        return;
      case 0:
        BillboardFragment.this.quick_board.setChecked(true);
        BillboardFragment.this.hot_board.setChecked(false);
        BillboardFragment.this.hot_personal.setChecked(false);
        return;
      case 1:
        BillboardFragment.this.quick_board.setChecked(false);
        BillboardFragment.this.hot_board.setChecked(true);
        BillboardFragment.this.hot_personal.setChecked(false);
        return;
      case 2:
      }
      BillboardFragment.this.quick_board.setChecked(false);
      BillboardFragment.this.hot_board.setChecked(false);
      BillboardFragment.this.hot_personal.setChecked(true);
    }
  }

  class ViewPagerAdapter extends FragmentPagerAdapter
  {
    private List<Fragment> fragmentsList;

    public ViewPagerAdapter()
    {
      super();
      Object localObject;
      this.fragmentsList = localObject;
    }

    public int getCount()
    {
      return this.fragmentsList.size();
    }

    public Fragment getItem(int paramInt)
    {
      return (Fragment)this.fragmentsList.get(paramInt);
    }

    public int getItemPosition(Object paramObject)
    {
      return super.getItemPosition(paramObject);
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.fragment.BillboardFragment
 * JD-Core Version:    0.6.2
 */