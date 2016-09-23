package com.youqicai.AppStore;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.widget.TextView;
import com.lidroid.xutils.ViewUtils;
import com.lidroid.xutils.view.annotation.ContentView;
import com.lidroid.xutils.view.annotation.ViewInject;
import com.youqicai.AppStore.adapter.ImageDetailAdapter;
import java.util.ArrayList;

@ContentView(2130903051)
public class ImageDetailActivity extends Activity
{
  public static final String EXTRA_IMAGE = "extra_image";
  public static final String POSITION = "position";
  private ArrayList<String> lists;

  @ViewInject(2131099718)
  TextView textView;

  @ViewInject(2131099679)
  ViewPager viewPager;

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    ViewUtils.inject(this);
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null)
    {
      this.lists = localBundle.getStringArrayList("extra_image");
      if ((this.lists != null) && (this.lists.size() != 0));
    }
    else
    {
      return;
    }
    final int i = this.lists.size();
    ImageDetailAdapter localImageDetailAdapter = new ImageDetailAdapter(this);
    this.viewPager.setAdapter(localImageDetailAdapter);
    localImageDetailAdapter.setList(localBundle.getStringArrayList("extra_image"));
    this.viewPager.setOffscreenPageLimit(2);
    int j = localBundle.getInt("position", 0);
    if (j != -1)
      this.viewPager.setCurrentItem(j);
    int k = j + 1;
    this.textView.setText(k + "/" + i);
    this.viewPager.setOnPageChangeListener(new ViewPager.OnPageChangeListener()
    {
      public void onPageScrollStateChanged(int paramAnonymousInt)
      {
      }

      public void onPageScrolled(int paramAnonymousInt1, float paramAnonymousFloat, int paramAnonymousInt2)
      {
      }

      public void onPageSelected(int paramAnonymousInt)
      {
        ImageDetailActivity.this.textView.setText(paramAnonymousInt + 1 + "/" + i);
      }
    });
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.ImageDetailActivity
 * JD-Core Version:    0.6.2
 */