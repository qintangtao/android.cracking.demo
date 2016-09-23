package com.youqicai.AppStore.adapter;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import java.util.ArrayList;

public class StoreFragmentPagerAdapter extends FragmentPagerAdapter
{
  private ArrayList<Fragment> fragmentsList;
  private ArrayList<CharSequence> pageTitleList;

  public StoreFragmentPagerAdapter(FragmentManager paramFragmentManager)
  {
    super(paramFragmentManager);
  }

  public StoreFragmentPagerAdapter(FragmentManager paramFragmentManager, ArrayList<Fragment> paramArrayList, ArrayList<CharSequence> paramArrayList1)
  {
    super(paramFragmentManager);
    this.fragmentsList = paramArrayList;
    this.pageTitleList = paramArrayList1;
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

  public CharSequence getPageTitle(int paramInt)
  {
    return (CharSequence)this.pageTitleList.get(paramInt);
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.adapter.StoreFragmentPagerAdapter
 * JD-Core Version:    0.6.2
 */