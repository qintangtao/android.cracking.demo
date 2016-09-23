package com.youqicai.AppStore;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
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
import com.youqicai.AppStore.config.BuildUrl;
import com.youqicai.AppStore.entity.ResultRegEntity;
import com.youqicai.AppStore.parser.RegParser;
import com.youqicai.AppStore.utils.DialogHelp;
import com.youqicai.AppStore.utils.ViewTools;
import com.youqicai.PhoneHelper.PreferencesHelper;
import com.youqicai.http.HttpUtil;
import com.youqicai.http.TaskEntity;
import com.youqicai.http.TaskEntity.OnResultListener;

@ContentView(2130903056)
public class RegActivity extends BaseActivity
  implements TaskEntity.OnResultListener, DialogInterface.OnClickListener
{
  private ProgressDialog _waitDialog;

  @ViewInject(2131099755)
  TextView forgotPwd;
  int isReg = 0;

  @ViewInject(2131099752)
  EditText logPwd;

  @ViewInject(2131099754)
  TextView loginTextView;
  private ProgressDialog pd = null;

  @ViewInject(2131099751)
  EditText phoneNo;

  @ViewInject(2131099753)
  Button regButton;

  @ViewInject(2131099669)
  TextView title;

  private void hideCheckDialog()
  {
    if (this._waitDialog != null)
      this._waitDialog.dismiss();
  }

  private void showCheckDialog()
  {
    if (this._waitDialog == null)
      this._waitDialog = DialogHelp.getWaitDialog((Activity)this.context, "正在提交注册信息...");
    this._waitDialog.show();
  }

  @OnClick({2131099754})
  public void clickLogin(View paramView)
  {
    if (this.isReg == 0)
    {
      this.isReg = 1;
      this.title.setText(2131492924);
      this.regButton.setText(2131492924);
      this.logPwd.setVisibility(0);
      this.loginTextView.setVisibility(0);
      this.loginTextView.setText(2131492925);
      this.forgotPwd.setVisibility(0);
    }
    do
    {
      return;
      if (this.isReg == 1)
      {
        this.isReg = 0;
        this.title.setText(2131492918);
        this.loginTextView.setVisibility(0);
        this.loginTextView.setText(2131492917);
        this.logPwd.setVisibility(8);
        this.forgotPwd.setVisibility(8);
        this.regButton.setText(2131492916);
        return;
      }
    }
    while (this.isReg != 2);
    this.isReg = 0;
    this.title.setText(2131492918);
    this.loginTextView.setVisibility(0);
    this.loginTextView.setText(2131492917);
    this.logPwd.setVisibility(8);
    this.forgotPwd.setVisibility(8);
    this.regButton.setText(2131492916);
  }

  @OnClick({2131099755})
  public void forgotPwd(View paramView)
  {
    this.isReg = 2;
    this.title.setText(2131492929);
    this.loginTextView.setVisibility(8);
    this.loginTextView.setText(2131492916);
    this.logPwd.setVisibility(8);
    this.forgotPwd.setVisibility(8);
    this.regButton.setText(2131492929);
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.isReg = 1;
    this.title.setText(2131492924);
    this.regButton.setText(2131492924);
    this.logPwd.setVisibility(0);
    this.loginTextView.setVisibility(0);
    this.loginTextView.setText(2131492925);
    this.forgotPwd.setVisibility(0);
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    ViewUtils.inject(this);
    ViewTools.increaseClickRegion(this.loginTextView, 15, 15, 15, 15);
    ViewTools.increaseClickRegion(this.forgotPwd, 15, 15, 15, 15);
    this.forgotPwd.setVisibility(8);
    this.title.setText(2131492918);
  }

  public void onError(Object paramObject)
  {
  }

  public void onResult(Object paramObject)
  {
    TaskEntity localTaskEntity = (TaskEntity)paramObject;
    ResultRegEntity localResultRegEntity = (ResultRegEntity)localTaskEntity.outObject;
    int i = localTaskEntity.taskId;
    hideCheckDialog();
    if (i == 0)
      if (localResultRegEntity.status == 1)
        DialogHelp.getConfirmDialog(this.context, localResultRegEntity.msg, this).show();
    do
    {
      return;
      PreferencesHelper.getInstance(this.context).saveToken(localResultRegEntity.token);
      PreferencesHelper.getInstance(this.context).saveHeadUrl(localResultRegEntity.headUrl);
      startActivity(new Intent(this.context, EditInfoActivity.class));
      return;
      if (i == 1)
      {
        if (localResultRegEntity.status == 1)
        {
          Toast.makeText(this.context, localResultRegEntity.msg, 0).show();
          return;
        }
        PreferencesHelper.getInstance(this.context).saveNickName(localResultRegEntity.nickName);
        PreferencesHelper.getInstance(this.context).saveToken(localResultRegEntity.token);
        PreferencesHelper.getInstance(this.context).saveHeadUrl(localResultRegEntity.headUrl);
        Toast.makeText(this.context, 2131492922, 0).show();
        finish();
        return;
      }
    }
    while (i != 2);
    if (localResultRegEntity.status == 1)
    {
      Toast.makeText(this.context, localResultRegEntity.msg, 0).show();
      return;
    }
    Toast.makeText(this.context, "密码重置成功,请查收短信", 0).show();
    this.isReg = 1;
    this.title.setText(2131492924);
    this.regButton.setText(2131492924);
    this.logPwd.setVisibility(0);
    this.loginTextView.setVisibility(0);
    this.loginTextView.setText(2131492925);
    this.forgotPwd.setVisibility(0);
  }

  @OnClick({2131099753})
  public void regButton(View paramView)
  {
    String str1 = this.phoneNo.getText().toString();
    if (this.isReg == 0)
      if (str1.length() == 11)
      {
        showCheckDialog();
        HttpUtil.AddTaskToQueueHead(BuildUrl.buildRegUrl(str1), 0, new RegParser(), this);
      }
    do
    {
      return;
      Toast.makeText(this.context, "请输入正确的手机号", 0).show();
      return;
      if (this.isReg == 1)
      {
        String str2 = this.logPwd.getText().toString();
        if (str1.length() == 11)
        {
          showCheckDialog();
          HttpUtil.AddTaskToQueueHead(BuildUrl.buildLoginUrl(str1, str2), 1, new RegParser(), this);
          return;
        }
        Toast.makeText(this.context, "请输入正确的手机号", 0).show();
        return;
      }
    }
    while (this.isReg != 2);
    if (str1.length() == 11)
    {
      showCheckDialog();
      HttpUtil.AddTaskToQueueHead(BuildUrl.buildFindPwd(str1), 2, new RegParser(), this);
      return;
    }
    Toast.makeText(this.context, "请输入正确的手机号", 0).show();
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.RegActivity
 * JD-Core Version:    0.6.2
 */