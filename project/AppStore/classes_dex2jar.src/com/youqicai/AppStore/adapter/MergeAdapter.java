package com.youqicai.AppStore.adapter;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.SectionIndexer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class MergeAdapter extends BaseAdapter
  implements SectionIndexer
{
  protected PieceStateRoster pieces = new PieceStateRoster(null);

  public void addAdapter(ListAdapter paramListAdapter)
  {
    this.pieces.add(paramListAdapter);
    paramListAdapter.registerDataSetObserver(new CascadeDataSetObserver(null));
  }

  public void addView(View paramView)
  {
    addView(paramView, false);
  }

  public void addView(View paramView, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList(1);
    localArrayList.add(paramView);
    addViews(localArrayList, paramBoolean);
  }

  public void addViews(List<View> paramList)
  {
    addViews(paramList, false);
  }

  public void addViews(List<View> paramList, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      addAdapter(new EnabledSackAdapter(paramList));
      return;
    }
    addAdapter(new SackOfViewsAdapter(paramList));
  }

  public boolean areAllItemsEnabled()
  {
    return false;
  }

  public ListAdapter getAdapter(int paramInt)
  {
    Iterator localIterator = getPieces().iterator();
    while (localIterator.hasNext())
    {
      ListAdapter localListAdapter = (ListAdapter)localIterator.next();
      int i = localListAdapter.getCount();
      if (paramInt < i)
        return localListAdapter;
      paramInt -= i;
    }
    return null;
  }

  public int getCount()
  {
    int i = 0;
    Iterator localIterator = getPieces().iterator();
    while (localIterator.hasNext())
      i += ((ListAdapter)localIterator.next()).getCount();
    return i;
  }

  public Object getItem(int paramInt)
  {
    Iterator localIterator = getPieces().iterator();
    while (localIterator.hasNext())
    {
      ListAdapter localListAdapter = (ListAdapter)localIterator.next();
      int i = localListAdapter.getCount();
      if (paramInt < i)
        return localListAdapter.getItem(paramInt);
      paramInt -= i;
    }
    return null;
  }

  public long getItemId(int paramInt)
  {
    Iterator localIterator = getPieces().iterator();
    while (localIterator.hasNext())
    {
      ListAdapter localListAdapter = (ListAdapter)localIterator.next();
      int i = localListAdapter.getCount();
      if (paramInt < i)
        return localListAdapter.getItemId(paramInt);
      paramInt -= i;
    }
    return -1L;
  }

  public int getItemViewType(int paramInt)
  {
    int i = 0;
    int j = -1;
    Iterator localIterator = this.pieces.getRawPieces().iterator();
    while (true)
    {
      PieceState localPieceState;
      int k;
      if (localIterator.hasNext())
      {
        localPieceState = (PieceState)localIterator.next();
        if (!localPieceState.isActive)
          break label87;
        k = localPieceState.adapter.getCount();
        if (paramInt < k)
          j = i + localPieceState.adapter.getItemViewType(paramInt);
      }
      else
      {
        return j;
      }
      paramInt -= k;
      label87: i += localPieceState.adapter.getViewTypeCount();
    }
  }

  protected List<ListAdapter> getPieces()
  {
    return this.pieces.getPieces();
  }

  public int getPositionForSection(int paramInt)
  {
    int i = 0;
    Iterator localIterator = getPieces().iterator();
    while (localIterator.hasNext())
    {
      ListAdapter localListAdapter = (ListAdapter)localIterator.next();
      if ((localListAdapter instanceof SectionIndexer))
      {
        Object[] arrayOfObject = ((SectionIndexer)localListAdapter).getSections();
        int j = 0;
        if (arrayOfObject != null)
          j = arrayOfObject.length;
        if (paramInt < j)
          return i + ((SectionIndexer)localListAdapter).getPositionForSection(paramInt);
        if (arrayOfObject != null)
          paramInt -= j;
      }
      i += localListAdapter.getCount();
    }
    return 0;
  }

  public int getSectionForPosition(int paramInt)
  {
    int i = 0;
    Iterator localIterator = getPieces().iterator();
    while (true)
    {
      boolean bool1 = localIterator.hasNext();
      int j = 0;
      ListAdapter localListAdapter;
      int k;
      if (bool1)
      {
        localListAdapter = (ListAdapter)localIterator.next();
        k = localListAdapter.getCount();
        if (paramInt >= k)
          break label87;
        boolean bool2 = localListAdapter instanceof SectionIndexer;
        j = 0;
        if (bool2)
          j = i + ((SectionIndexer)localListAdapter).getSectionForPosition(paramInt);
      }
      return j;
      label87: if ((localListAdapter instanceof SectionIndexer))
      {
        Object[] arrayOfObject = ((SectionIndexer)localListAdapter).getSections();
        if (arrayOfObject != null)
          i += arrayOfObject.length;
      }
      paramInt -= k;
    }
  }

  public Object[] getSections()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = getPieces().iterator();
    while (localIterator.hasNext())
    {
      ListAdapter localListAdapter = (ListAdapter)localIterator.next();
      if ((localListAdapter instanceof SectionIndexer))
      {
        Object[] arrayOfObject = ((SectionIndexer)localListAdapter).getSections();
        if (arrayOfObject != null)
          Collections.addAll(localArrayList, arrayOfObject);
      }
    }
    if (localArrayList.size() == 0)
      return new String[0];
    return localArrayList.toArray(new Object[0]);
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Iterator localIterator = getPieces().iterator();
    while (localIterator.hasNext())
    {
      ListAdapter localListAdapter = (ListAdapter)localIterator.next();
      int i = localListAdapter.getCount();
      if (paramInt < i)
        return localListAdapter.getView(paramInt, paramView, paramViewGroup);
      paramInt -= i;
    }
    return null;
  }

  public int getViewTypeCount()
  {
    int i = 0;
    Iterator localIterator = this.pieces.getRawPieces().iterator();
    while (localIterator.hasNext())
      i += ((PieceState)localIterator.next()).adapter.getViewTypeCount();
    return Math.max(i, 1);
  }

  public boolean isEnabled(int paramInt)
  {
    Iterator localIterator = getPieces().iterator();
    while (localIterator.hasNext())
    {
      ListAdapter localListAdapter = (ListAdapter)localIterator.next();
      int i = localListAdapter.getCount();
      if (paramInt < i)
        return localListAdapter.isEnabled(paramInt);
      paramInt -= i;
    }
    return false;
  }

  public void setActive(View paramView, boolean paramBoolean)
  {
    this.pieces.setActive(paramView, paramBoolean);
    notifyDataSetChanged();
  }

  public void setActive(ListAdapter paramListAdapter, boolean paramBoolean)
  {
    this.pieces.setActive(paramListAdapter, paramBoolean);
    notifyDataSetChanged();
  }

  private class CascadeDataSetObserver extends DataSetObserver
  {
    private CascadeDataSetObserver()
    {
    }

    public void onChanged()
    {
      MergeAdapter.this.notifyDataSetChanged();
    }

    public void onInvalidated()
    {
      MergeAdapter.this.notifyDataSetInvalidated();
    }
  }

  private static class EnabledSackAdapter extends SackOfViewsAdapter
  {
    public EnabledSackAdapter(List<View> paramList)
    {
      super();
    }

    public boolean areAllItemsEnabled()
    {
      return true;
    }

    public boolean isEnabled(int paramInt)
    {
      return true;
    }
  }

  private static class PieceState
  {
    ListAdapter adapter;
    boolean isActive = true;

    PieceState(ListAdapter paramListAdapter, boolean paramBoolean)
    {
      this.adapter = paramListAdapter;
      this.isActive = paramBoolean;
    }
  }

  private static class PieceStateRoster
  {
    protected ArrayList<ListAdapter> active = null;
    protected ArrayList<MergeAdapter.PieceState> pieces = new ArrayList();

    void add(ListAdapter paramListAdapter)
    {
      this.pieces.add(new MergeAdapter.PieceState(paramListAdapter, true));
    }

    List<ListAdapter> getPieces()
    {
      if (this.active == null)
      {
        this.active = new ArrayList();
        Iterator localIterator = this.pieces.iterator();
        while (localIterator.hasNext())
        {
          MergeAdapter.PieceState localPieceState = (MergeAdapter.PieceState)localIterator.next();
          if (localPieceState.isActive)
            this.active.add(localPieceState.adapter);
        }
      }
      return this.active;
    }

    List<MergeAdapter.PieceState> getRawPieces()
    {
      return this.pieces;
    }

    void setActive(View paramView, boolean paramBoolean)
    {
      Iterator localIterator = this.pieces.iterator();
      while (localIterator.hasNext())
      {
        MergeAdapter.PieceState localPieceState = (MergeAdapter.PieceState)localIterator.next();
        if (((localPieceState.adapter instanceof SackOfViewsAdapter)) && (((SackOfViewsAdapter)localPieceState.adapter).hasView(paramView)))
        {
          localPieceState.isActive = paramBoolean;
          this.active = null;
        }
      }
    }

    void setActive(ListAdapter paramListAdapter, boolean paramBoolean)
    {
      Iterator localIterator = this.pieces.iterator();
      while (localIterator.hasNext())
      {
        MergeAdapter.PieceState localPieceState = (MergeAdapter.PieceState)localIterator.next();
        if (localPieceState.adapter == paramListAdapter)
        {
          localPieceState.isActive = paramBoolean;
          this.active = null;
        }
      }
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.AppStore.adapter.MergeAdapter
 * JD-Core Version:    0.6.2
 */