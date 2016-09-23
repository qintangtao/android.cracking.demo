package com.youqicai.AppStore;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.lidroid.xutils.ViewUtils;
import com.lidroid.xutils.view.annotation.ContentView;
import com.lidroid.xutils.view.annotation.ViewInject;
import com.lidroid.xutils.view.annotation.event.OnClick;
import com.youqicai.AppStore.entity.ResultRegEntity;
import com.youqicai.AppStore.parser.RegParser;
import com.youqicai.http.HttpUtil;
import com.youqicai.http.TaskEntity;
import com.youqicai.http.TaskEntity.OnResultListener;
import org.apache.http.entity.StringEntity;
import org.json.JSONObject;

@ContentView(2130903050)
public class FeedbackActivity extends BaseActivity
  implements TaskEntity.OnResultListener
{

  @ViewInject(2131099695)
  EditText feedbackContent;

  @ViewInject(2131099669)
  TextView name;

  @ViewInject(2131099696)
  Button submit;

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    ViewUtils.inject(this);
    this.name.setText(2131492898);
  }

  public void onError(Object paramObject)
  {
  }

  public void onResult(Object paramObject)
  {
    if (((ResultRegEntity)((TaskEntity)paramObject).outObject).status == 0)
    {
      Toast.makeText(this.context, 2131492920, 0).show();
      this.feedbackContent.setText("");
      return;
    }
    Toast.makeText(this.context, 2131492921, 0).show();
  }

  @OnClick({2131099696})
  public void submit(View paramView)
  {
    String str1 = this.feedbackContent.getText().toString();
    String str2 = Build.MODEL;
    if (str1.length() <= 5)
    {
      Toast.makeText(this.context, 2131492913, 0).show();
      return;
    }
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("content", str1);
      localJSONObject.put("model", str2);
      HttpUtil.AddTaskToQueueHead("http://mapp.youqicai.com/api?action=feedback", new StringEntity(localJSONObject.toString(), "utf-8"), 0, new RegParser(), this);
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.FeedbackActivity
 * JD-Core Version:    0.6.2
 */