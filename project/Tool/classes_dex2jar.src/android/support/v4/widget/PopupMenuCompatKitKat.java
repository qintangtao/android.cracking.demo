package android.support.v4.widget;

import android.view.View.OnTouchListener;
import android.widget.PopupMenu;

class PopupMenuCompatKitKat
{
  public static View.OnTouchListener getDragToOpenListener(Object paramObject)
  {
    return ((PopupMenu)paramObject).getDragToOpenListener();
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\Tool\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.widget.PopupMenuCompatKitKat
 * JD-Core Version:    0.6.2
 */