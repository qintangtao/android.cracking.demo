package com.youqicai.AppStore.item;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RatingBar;
import android.widget.TextView;
import com.youqicai.AppStore.entity.Comment;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CommentItem extends BaseItemView
{
  private View contentView;
  private Holder viewHolder;

  public CommentItem(Context paramContext)
  {
    super(paramContext);
  }

  public static String getTime(String paramString)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    try
    {
      String str = localSimpleDateFormat.format(new Date(Long.valueOf(paramString).longValue()));
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return localSimpleDateFormat.format(new Date());
  }

  public void applyData(Object paramObject)
  {
    Comment localComment = (Comment)paramObject;
    if (localComment == null)
      return;
    setImage(this.viewHolder.picture, localComment.getHeadUrl(), null);
    if ((TextUtils.isEmpty(localComment.getNickName())) || (localComment.getNickName().equals("null")))
      this.viewHolder.nickName.setText(2131492923);
    try
    {
      while (true)
      {
        float f = Float.valueOf(localComment.getScore()).floatValue();
        this.viewHolder.comment_score.setRating(f);
        label84: setTextView(localComment.getComment(), this.viewHolder.content);
        setTextView(getTime(localComment.getCreateTime()), this.viewHolder.time);
        return;
        setTextView(localComment.getNickName(), this.viewHolder.nickName);
      }
    }
    catch (Exception localException)
    {
      break label84;
    }
  }

  protected void initView()
  {
    this.contentView = this.mInflater.inflate(2130903084, null);
    addView(this.contentView, new LinearLayout.LayoutParams(-1, -2));
    this.viewHolder = new Holder(null);
    this.viewHolder.picture = ((ImageView)this.contentView.findViewById(2131099848));
    this.viewHolder.nickName = ((TextView)this.contentView.findViewById(2131099849));
    this.viewHolder.version = ((TextView)this.contentView.findViewById(2131099850));
    this.viewHolder.comment_score = ((RatingBar)this.contentView.findViewById(2131099851));
    this.viewHolder.content = ((TextView)this.contentView.findViewById(2131099852));
    this.viewHolder.time = ((TextView)this.contentView.findViewById(2131099853));
  }

  private class Holder
  {
    RatingBar comment_score;
    TextView content;
    TextView nickName;
    ImageView picture;
    TextView time;
    TextView version;

    private Holder()
    {
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.item.CommentItem
 * JD-Core Version:    0.6.2
 */