package com.youqicai.AppStore.fragment;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import java.util.HashMap;

public class BaseFragment extends Fragment
{
  protected static final int FAILLOUDING = 1;
  protected static final int LOADING = 0;
  protected static final int LOAD_MORE = 1;
  protected static final int LOAD_REFRESH = 0;
  public static final int SHOW_DATA_LIST = 0;
  public static final int SHOW_DATA_LIST_ALL = 1;
  public static final int SHOW_DATA_LIST_NULL = 2;
  protected static final int SUCCESS = 2;
  public Context mContext;

  public static BaseFragment newInstance(String paramString1, HashMap paramHashMap, String paramString2)
  {
    BaseFragment localBaseFragment = new BaseFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("requestUrl", paramString1);
    localBundle.putString("categoryId", paramString2);
    if (paramHashMap != null)
      localBundle.putSerializable("postParamsMap", paramHashMap);
    localBaseFragment.setArguments(localBundle);
    return localBaseFragment;
  }

  public void onPause()
  {
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.fragment.BaseFragment
 * JD-Core Version:    0.6.2
 */