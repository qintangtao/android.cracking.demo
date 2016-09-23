package com.youqicai.AppStore.card;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.hsg.sdk.common.imagecache.ImageFetcher;
import com.hsg.sdk.common.imagecache.ImageWorker.SimpleProcessCallback;
import com.youqicai.AppStore.CategoryListsActivity;
import com.youqicai.AppStore.entity.Category;
import com.youqicai.AppStore.entity.ChildCategory;
import java.util.ArrayList;
import java.util.Iterator;

public class CategoryCard extends LinearLayout
{
  private Category category;
  private View contentView;
  private Holder holder;
  protected Context mContext;
  protected LayoutInflater mInflater;

  public CategoryCard(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mInflater = ((LayoutInflater)this.mContext.getSystemService("layout_inflater"));
    initCard();
  }

  private void setLayout()
  {
    final Category localCategory = this.category;
    while (true)
    {
      int i;
      int j;
      try
      {
        setImage(this.holder.appIcon, localCategory.getIconUrl(), 2130837555);
        setTextView(localCategory.getCategoryName(), this.holder.appName);
        this.holder.layoutSort.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            Intent localIntent = new Intent(CategoryCard.this.mContext, CategoryListsActivity.class);
            localIntent.putExtra("category", localCategory);
            localIntent.putExtra("position", 0);
            CategoryCard.this.mContext.startActivity(localIntent);
          }
        });
        i = 0;
        ArrayList localArrayList = localCategory.getChildList();
        Iterator localIterator = this.holder.childHolderList.iterator();
        if (localIterator.hasNext())
        {
          ChildHolder localChildHolder = (ChildHolder)localIterator.next();
          j = 0;
          if (j >= 2)
            break label265;
          if (localArrayList.size() > j + i * 2)
          {
            ChildCategory localChildCategory = (ChildCategory)localArrayList.get(j + i * 2);
            final int k = j + i * 2;
            ((TextView)localChildHolder.appNameList.get(j)).setText(localChildCategory.getTagName());
            ((TextView)localChildHolder.appNameList.get(j)).setTag(localChildCategory);
            ((TextView)localChildHolder.appNameList.get(j)).setOnClickListener(new View.OnClickListener()
            {
              public void onClick(View paramAnonymousView)
              {
                Intent localIntent = new Intent(CategoryCard.this.mContext, CategoryListsActivity.class);
                localIntent.putExtra("category", localCategory);
                localIntent.putExtra("position", 1 + k);
                CategoryCard.this.mContext.startActivity(localIntent);
              }
            });
          }
          else
          {
            ((TextView)localChildHolder.appNameList.get(j)).setText("");
            ((TextView)localChildHolder.appNameList.get(j)).setOnClickListener(new View.OnClickListener()
            {
              public void onClick(View paramAnonymousView)
              {
              }
            });
          }
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      return;
      label265: i++;
      continue;
      j++;
    }
  }

  public void applyCard(Object paramObject)
  {
    int i;
    if (paramObject != null)
    {
      this.category = ((Category)paramObject);
      i = 1;
    }
    try
    {
      if (this.category.getChildList().size() % 2 == 0);
      label42: int k;
      for (i = this.category.getChildList().size() / 2; ; i = k + 1)
      {
        this.holder.childLayout.removeAllViews();
        this.holder.childHolderList.clear();
        for (int j = 0; j < i; j++)
        {
          ChildHolder localChildHolder = new ChildHolder(null);
          View localView = this.mInflater.inflate(2130903091, null);
          LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
          this.holder.childLayout.addView(localView, localLayoutParams);
          localChildHolder.appNameList.add((TextView)localView.findViewById(2131099845));
          localChildHolder.appNameList.add((TextView)localView.findViewById(2131099846));
          this.holder.childHolderList.add(localChildHolder);
        }
        k = this.category.getChildList().size() / 2;
      }
      setLayout();
      return;
    }
    catch (Exception localException)
    {
      break label42;
    }
  }

  protected void initCard()
  {
    this.contentView = this.mInflater.inflate(2130903082, null);
    addView(this.contentView, new ViewGroup.LayoutParams(-1, -2));
    this.holder = new Holder(null);
    this.holder.layoutSort = ((RelativeLayout)this.contentView.findViewById(2131099842));
    this.holder.appName = ((TextView)this.holder.layoutSort.findViewById(2131099843));
    this.holder.appIcon = ((ImageView)this.holder.layoutSort.findViewById(2131099813));
    this.holder.childLayout = ((LinearLayout)this.contentView.findViewById(2131099676));
    this.holder.layoutSort.setBackgroundColor(this.mContext.getResources().getColor(2131165214));
  }

  public void setImage(ImageView paramImageView, String paramString, int paramInt)
  {
    if (paramImageView == null)
      return;
    if (paramInt != -1)
      paramImageView.setImageResource(paramInt);
    ImageFetcher.getInstance(this.mContext.getApplicationContext()).loadImage(paramString, paramImageView, new ImageWorker.SimpleProcessCallback()
    {
      public void onMemoryOver(BitmapDrawable paramAnonymousBitmapDrawable)
      {
        super.onMemoryOver(paramAnonymousBitmapDrawable);
      }

      public void onTaskOver(Drawable paramAnonymousDrawable)
      {
        super.onTaskOver(paramAnonymousDrawable);
      }
    });
  }

  protected void setTextView(String paramString, TextView paramTextView)
  {
    if ((paramString != null) && (paramTextView != null))
      paramTextView.setText(paramString);
  }

  private class ChildHolder
  {
    ArrayList<TextView> appNameList = new ArrayList();

    private ChildHolder()
    {
    }
  }

  private class Holder
  {
    ImageView appIcon;
    TextView appName;
    ArrayList<CategoryCard.ChildHolder> childHolderList = new ArrayList();
    LinearLayout childLayout;
    RelativeLayout layoutSort;

    private Holder()
    {
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.card.CategoryCard
 * JD-Core Version:    0.6.2
 */