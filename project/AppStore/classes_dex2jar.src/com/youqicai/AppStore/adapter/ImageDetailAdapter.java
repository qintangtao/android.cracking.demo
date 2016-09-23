package com.youqicai.AppStore.adapter;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.hsg.sdk.common.imagecache.ImageFetcher;
import com.hsg.sdk.common.imagecache.ImageWorker.SimpleProcessCallback;
import com.youqicai.widget.ZoomImageView;
import com.youqicai.widget.ZoomImageView.OnPhotoTapListener;
import java.util.ArrayList;
import java.util.List;

public class ImageDetailAdapter extends RecyclingPagerAdapter
{
  private Activity mContext;
  private List<String> mList = new ArrayList();

  public ImageDetailAdapter(Activity paramActivity)
  {
    this.mContext = paramActivity;
  }

  public int getCount()
  {
    return this.mList.size();
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    ViewHolder localViewHolder;
    if (localView == null)
    {
      localView = this.mContext.getLayoutInflater().inflate(2130903085, null);
      localViewHolder = new ViewHolder();
      localViewHolder.headerImage = ((ZoomImageView)localView.findViewById(2131099855));
      PhotoTapListener localPhotoTapListener = new PhotoTapListener(null);
      localViewHolder.headerImage.setOnPhotoTapListener(localPhotoTapListener);
      localView.setTag(localViewHolder);
      localView.setTag(localViewHolder.headerImage.getId(), localPhotoTapListener);
    }
    while (true)
    {
      String str = (String)this.mList.get(paramInt);
      ImageFetcher.getInstance(this.mContext).loadImage(str, localViewHolder.headerImage, new ImageWorker.SimpleProcessCallback()
      {
      });
      return localView;
      localViewHolder = (ViewHolder)localView.getTag();
      ((PhotoTapListener)localView.getTag(localViewHolder.headerImage.getId()));
    }
  }

  public void setList(List<String> paramList)
  {
    this.mList = paramList;
    notifyDataSetChanged();
  }

  private class PhotoTapListener
    implements ZoomImageView.OnPhotoTapListener
  {
    private PhotoTapListener()
    {
    }

    public void onPhotoTap(View paramView, float paramFloat1, float paramFloat2)
    {
      ImageDetailAdapter.this.mContext.finish();
    }
  }

  final class ViewHolder
  {
    ZoomImageView headerImage;

    ViewHolder()
    {
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.adapter.ImageDetailAdapter
 * JD-Core Version:    0.6.2
 */