package com.youqicai.AppStore;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.lidroid.xutils.ViewUtils;
import com.lidroid.xutils.view.annotation.ContentView;
import com.lidroid.xutils.view.annotation.ViewInject;
import com.lidroid.xutils.view.annotation.event.OnClick;
import com.youqicai.AppStore.entity.ResultRegEntity;
import com.youqicai.AppStore.parser.RegParser;
import com.youqicai.PhoneHelper.PreferencesHelper;
import com.youqicai.http.HttpUtil;
import com.youqicai.http.TaskEntity;
import com.youqicai.http.TaskEntity.OnResultListener;
import org.apache.http.entity.StringEntity;
import org.json.JSONObject;

@ContentView(2130903048)
public class EditInfoActivity extends BaseActivity
  implements TaskEntity.OnResultListener
{

  @ViewInject(2131099694)
  ImageView avater;

  @ViewInject(2131099669)
  TextView name;

  @ViewInject(2131099695)
  EditText nickName;
  private String tempNick;

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    ViewUtils.inject(this);
    this.name.setText(2131492927);
  }

  public void onError(Object paramObject)
  {
  }

  public void onResult(Object paramObject)
  {
    if (((ResultRegEntity)((TaskEntity)paramObject).outObject).status == 0)
    {
      PreferencesHelper.getInstance(this.context).saveNickName(this.tempNick);
      Toast.makeText(this.context, 2131492928, 0).show();
      finish();
    }
  }

  @OnClick({2131099696})
  public void submit(View paramView)
  {
    String str1 = this.nickName.getText().toString().trim();
    if (str1.length() == 0)
    {
      Toast.makeText(this.context, 2131492926, 0).show();
      return;
    }
    String str2 = PreferencesHelper.getInstance(this.context).getToken();
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("nickName", str1);
      localJSONObject.put("token", str2);
      StringEntity localStringEntity = new StringEntity(localJSONObject.toString(), "utf-8");
      this.tempNick = str1;
      HttpUtil.AddTaskToQueueHead("http://mapp.youqicai.com/api?action=editprofile", localStringEntity, 0, new RegParser(), this);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.EditInfoActivity
 * JD-Core Version:    0.6.2
 */