package com.youqicai.AppStore.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.hsg.sdk.common.imagecache.ImageFetcher;
import com.hsg.sdk.common.imagecache.ImageWorker.SimpleProcessCallback;
import com.lidroid.xutils.ViewUtils;
import com.lidroid.xutils.view.annotation.ViewInject;
import com.lidroid.xutils.view.annotation.event.OnClick;
import com.youqicai.AppStore.entity.AppInfoEntity;
import java.util.ArrayList;
import java.util.List;

public class MustAdapter extends BaseAdapter
{
  private boolean enable = true;
  private LayoutInflater layoutInflater;
  private List<AppInfoEntity> list = new ArrayList();
  private Context mContext;
  private SelectAppListener selectAppListener;

  public MustAdapter(Context paramContext, SelectAppListener paramSelectAppListener)
  {
    this.mContext = paramContext;
    this.layoutInflater = LayoutInflater.from(paramContext);
    this.selectAppListener = paramSelectAppListener;
    this.enable = true;
  }

  public MustAdapter(Context paramContext, List<AppInfoEntity> paramList, SelectAppListener paramSelectAppListener)
  {
    this.mContext = paramContext;
    this.layoutInflater = LayoutInflater.from(paramContext);
    this.list.addAll(paramList);
    this.selectAppListener = paramSelectAppListener;
    this.enable = true;
  }

  public void addAll(List<AppInfoEntity> paramList)
  {
    this.list.addAll(paramList);
  }

  public List<AppInfoEntity> getCheckedList()
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < this.list.size(); i++)
    {
      AppInfoEntity localAppInfoEntity = (AppInfoEntity)this.list.get(i);
      if (localAppInfoEntity.isChecked())
        localArrayList.add(localAppInfoEntity);
    }
    return localArrayList;
  }

  public int getCount()
  {
    return this.list.size();
  }

  public Object getItem(int paramInt)
  {
    return this.list.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ChildHolder localChildHolder;
    if (paramView == null)
    {
      paramView = this.layoutInflater.inflate(2130903086, null);
      localChildHolder = new ChildHolder();
      ViewUtils.inject(localChildHolder, paramView);
      paramView.setTag(localChildHolder);
    }
    while (true)
    {
      localChildHolder.init((AppInfoEntity)getItem(paramInt));
      return paramView;
      localChildHolder = (ChildHolder)paramView.getTag();
    }
  }

  public void setEnable(boolean paramBoolean)
  {
    this.enable = paramBoolean;
  }

  public void setImage(ImageView paramImageView, String paramString, int paramInt)
  {
    if (paramImageView == null)
      return;
    if (paramInt != -1)
      paramImageView.setImageResource(paramInt);
    ImageFetcher.getInstance(this.mContext.getApplicationContext()).loadImage(paramString, paramImageView, new ImageWorker.SimpleProcessCallback()
    {
    });
  }

  class ChildHolder
  {

    @ViewInject(2131099858)
    CheckBox checkBox;

    @ViewInject(2131099857)
    ImageView icon;

    @ViewInject(2131099856)
    LinearLayout layout;
    AppInfoEntity temp;

    @ViewInject(2131099748)
    TextView title;

    ChildHolder()
    {
    }

    public void init(final AppInfoEntity paramAppInfoEntity)
    {
      this.temp = paramAppInfoEntity;
      this.title.setText(paramAppInfoEntity.getAppName());
      this.checkBox.setChecked(paramAppInfoEntity.isChecked());
      MustAdapter.this.setImage(this.icon, paramAppInfoEntity.getIconUrl(), 2130837567);
      this.checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
      {
        public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
        {
          if (MustAdapter.this.enable)
          {
            MustAdapter.ChildHolder.this.checkBox.setChecked(paramAnonymousBoolean);
            MustAdapter.ChildHolder.this.temp.setChecked(paramAnonymousBoolean);
            if (MustAdapter.this.selectAppListener != null)
              MustAdapter.this.selectAppListener.onSelect();
            return;
          }
          MustAdapter.ChildHolder.this.checkBox.setChecked(paramAppInfoEntity.isChecked());
        }
      });
    }

    @OnClick({2131099856})
    public void setCheck(View paramView)
    {
      AppInfoEntity localAppInfoEntity;
      if (MustAdapter.this.enable)
      {
        localAppInfoEntity = this.temp;
        if (this.temp.isChecked())
          break label40;
      }
      label40: for (boolean bool = true; ; bool = false)
      {
        localAppInfoEntity.setChecked(bool);
        MustAdapter.this.notifyDataSetChanged();
        return;
      }
    }
  }

  public static abstract interface SelectAppListener
  {
    public abstract void onSelect();
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.adapter.MustAdapter
 * JD-Core Version:    0.6.2
 */