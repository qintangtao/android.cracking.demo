package com.youqicai.AppStore;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.view.Window;
import android.widget.TextView;

public class AboutActivity extends BaseActivity
{
  private TextView mTitleName = null;
  private TextView versionName = null;

  private String getVersionName()
  {
    PackageManager localPackageManager = getPackageManager();
    try
    {
      PackageInfo localPackageInfo2 = localPackageManager.getPackageInfo(getPackageName(), 0);
      localPackageInfo1 = localPackageInfo2;
      return localPackageInfo1.versionName;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        localNameNotFoundException.printStackTrace();
        PackageInfo localPackageInfo1 = null;
      }
    }
  }

  protected void findView()
  {
  }

  public void onCreate(Bundle paramBundle)
  {
    getWindow().requestFeature(1);
    super.onCreate(paramBundle);
    setContentView(2130903040);
    findView();
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.AboutActivity
 * JD-Core Version:    0.6.2
 */