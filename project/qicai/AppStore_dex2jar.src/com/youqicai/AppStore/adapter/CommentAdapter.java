package com.youqicai.AppStore.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.youqicai.AppStore.entity.Comment;
import com.youqicai.AppStore.item.BaseItemView;
import com.youqicai.AppStore.item.CommentItem;
import java.util.ArrayList;
import java.util.List;

public class CommentAdapter extends BaseAdapter
{
  private List<Comment> commentList = new ArrayList();
  private Context mContext;

  public CommentAdapter(Context paramContext)
  {
    this.mContext = paramContext;
  }

  public void addComment(Comment paramComment)
  {
    if (this.commentList == null)
      this.commentList = new ArrayList();
    if (!this.commentList.contains(paramComment))
      this.commentList.add(paramComment);
  }

  public int getCount()
  {
    return this.commentList.size();
  }

  public Object getItem(int paramInt)
  {
    return this.commentList.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      paramView = new CommentItem(this.mContext);
    ((BaseItemView)paramView).applyData(this.commentList.get(paramInt));
    return paramView;
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.adapter.CommentAdapter
 * JD-Core Version:    0.6.2
 */