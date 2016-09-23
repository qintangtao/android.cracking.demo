package com.youqicai.AppStore;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.lidroid.xutils.ViewUtils;
import com.lidroid.xutils.view.annotation.ContentView;
import com.lidroid.xutils.view.annotation.event.OnClick;

@ContentView(2130903041)
public class BindActivity extends BaseActivity
{
  @OnClick({2131099672})
  public void close(View paramView)
  {
    Intent localIntent = new Intent(this.context, RecommendActivity.class);
    localIntent.setFlags(268468224);
    this.context.startActivity(localIntent);
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    ViewUtils.inject(this);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.BindActivity
 * JD-Core Version:    0.6.2
 */