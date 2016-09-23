package com.jh.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class LetterView extends View
{
  private HashMap<String, Integer> alphaIndexer = new HashMap();
  String[] b = { "?", "#", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z" };
  int choose = -1;
  Rect destination;
  private int height;
  private List<? extends IPY> items;
  private Bitmap letter_bg;
  private int offset;
  OnTouchingLetterChangedListener onTouchingLetterChangedListener;
  private int padding;
  Paint paint = new Paint();
  Bitmap search;
  Bitmap search_click;
  Bitmap search_select;
  boolean showBkg = false;
  private int singleHeight;
  private int singleLetterWidth;
  Rect src;
  int totalHeight = 0;
  private int width;

  public LetterView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public LetterView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public LetterView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private void init()
  {
    this.letter_bg = BitmapFactory.decodeResource(getContext().getResources(), 2130837508);
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inScaled = false;
    this.search = BitmapFactory.decodeResource(getResources(), 2130837509, localOptions);
    this.search_click = BitmapFactory.decodeResource(getResources(), 2130837510, localOptions);
    this.search_select = BitmapFactory.decodeResource(getResources(), 2130837511, localOptions);
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    float f = paramMotionEvent.getY() - this.padding;
    int j = this.choose;
    OnTouchingLetterChangedListener localOnTouchingLetterChangedListener = this.onTouchingLetterChangedListener;
    int k = (int)(f * this.b.length / this.totalHeight);
    switch (i)
    {
    default:
    case 0:
    case 2:
      do
      {
        do
        {
          return true;
          this.showBkg = true;
        }
        while ((j == k) || (localOnTouchingLetterChangedListener == null) || (k < 0) || (k >= this.b.length));
        localOnTouchingLetterChangedListener.onTouchingLetterChanged(this.b[k]);
        this.choose = k;
        invalidate();
        return true;
      }
      while ((j == k) || (localOnTouchingLetterChangedListener == null) || (k < 0) || (k >= this.b.length));
      localOnTouchingLetterChangedListener.onTouchingLetterChanged(this.b[k]);
      this.choose = k;
      invalidate();
      return true;
    case 1:
    }
    this.showBkg = false;
    this.choose = -1;
    invalidate();
    return true;
  }

  public HashMap<String, Integer> getAlphaIndexer()
  {
    return this.alphaIndexer;
  }

  public int getAlphaPosition(String paramString)
  {
    if (hasAlpha(paramString))
      return ((Integer)this.alphaIndexer.get(paramString)).intValue();
    return -1;
  }

  public int getOffset()
  {
    return this.offset;
  }

  public boolean hasAlpha(String paramString)
  {
    return this.alphaIndexer.containsKey(paramString);
  }

  public boolean isSearchString(String paramString)
  {
    return paramString.equalsIgnoreCase("?");
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (this.src == null)
    {
      this.height = (-6 + getHeight());
      this.width = getWidth();
      this.singleLetterWidth = 0;
      this.singleHeight = (this.height / this.b.length);
      this.totalHeight = (this.b.length * this.singleHeight);
      this.padding = (3 + (this.height - this.totalHeight) / 2);
      this.src = new Rect();
      this.destination = new Rect();
    }
    this.src.top = 0;
    this.src.bottom = (this.src.top + this.letter_bg.getHeight());
    this.src.left = 0;
    this.src.right = this.letter_bg.getWidth();
    this.destination.left = (this.width / 2 - this.letter_bg.getWidth() / 2);
    this.destination.top = 0;
    this.destination.bottom = getHeight();
    this.destination.right = (this.destination.left + this.letter_bg.getWidth());
    if (this.showBkg)
    {
      paramCanvas.drawBitmap(this.letter_bg, this.src, this.destination, this.paint);
      this.paint.setColor(-1);
    }
    int i;
    while (true)
    {
      i = 0;
      if (i < this.b.length)
        break;
      return;
      paramCanvas.drawColor(Color.parseColor("#00000000"));
      this.paint.setColor(-7829368);
    }
    label304: float f1;
    float f2;
    if (this.showBkg)
    {
      this.paint.setColor(-1);
      this.paint.setTextSize(this.singleHeight);
      this.singleLetterWidth = ((int)this.paint.measureText(this.b[5]));
      this.paint.setAntiAlias(true);
      if (i == this.choose)
      {
        this.paint.setColor(Color.parseColor("#3399ff"));
        this.paint.setFakeBoldText(true);
      }
      f1 = this.width / 2 - this.paint.measureText(this.b[i]) / 2.0F;
      f2 = this.padding + i * this.singleHeight + this.singleHeight;
      if (i != 0)
        break label679;
      this.src.top = 0;
      this.src.bottom = (this.src.top + this.search.getHeight());
      this.src.left = 0;
      this.src.right = this.search.getWidth();
      this.destination.left = (this.width / 2 - this.search.getWidth() / 2);
      this.destination.top = (this.padding + Math.max(this.singleHeight / 2 - this.search.getHeight() / 2, 0));
      this.destination.bottom = (this.destination.top + this.singleHeight);
      this.destination.right = (this.destination.left + Math.max(this.search.getWidth(), this.singleLetterWidth));
      if (!this.showBkg)
        break label656;
      if (this.choose != 0)
        break label633;
      paramCanvas.drawBitmap(this.search_select, this.src, this.destination, this.paint);
    }
    while (true)
    {
      this.paint.reset();
      i++;
      break;
      this.paint.setColor(-6710887);
      break label304;
      label633: paramCanvas.drawBitmap(this.search, this.src, this.destination, this.paint);
      continue;
      label656: paramCanvas.drawBitmap(this.search_click, this.src, this.destination, this.paint);
      continue;
      label679: paramCanvas.drawText(this.b[i], f1, f2, this.paint);
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return super.onTouchEvent(paramMotionEvent);
  }

  public void refreshAlpha()
  {
    this.alphaIndexer.clear();
    this.alphaIndexer.put("?", Integer.valueOf(0));
    int i = 0;
    Iterator localIterator = this.items.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      IPY localIPY = (IPY)localIterator.next();
      if (i >= this.offset)
      {
        String str = localIPY.getTitle();
        if (!this.alphaIndexer.containsKey(str))
          this.alphaIndexer.put(str, Integer.valueOf(i));
      }
      i++;
    }
  }

  public void setItems(List<? extends IPY> paramList)
  {
    this.items = paramList;
    if (paramList != null)
      refreshAlpha();
  }

  public void setOffset(int paramInt)
  {
    this.offset = paramInt;
  }

  public void setOnTouchingLetterChangedListener(OnTouchingLetterChangedListener paramOnTouchingLetterChangedListener)
  {
    this.onTouchingLetterChangedListener = paramOnTouchingLetterChangedListener;
  }

  public void setTextSize(float paramFloat)
  {
    this.paint.setTextSize(20.0F * paramFloat);
  }

  public static abstract interface IPY
  {
    public abstract String getTitle();
  }

  public static abstract interface OnTouchingLetterChangedListener
  {
    public abstract void onTouchingLetterChanged(String paramString);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.view.LetterView
 * JD-Core Version:    0.6.2
 */