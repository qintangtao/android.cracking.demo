package com.android.uiautomator.core;

import android.util.SparseArray;
import android.view.accessibility.AccessibilityNodeInfo;

public class UiSelector
{
  static final int SELECTOR_CHECKED = 15;
  static final int SELECTOR_CHILD = 19;
  static final int SELECTOR_CLASS = 4;
  static final int SELECTOR_CLASS_REGEX = 26;
  static final int SELECTOR_CLICKABLE = 14;
  static final int SELECTOR_CONTAINER = 20;
  static final int SELECTOR_CONTAINS_DESCRIPTION = 7;
  static final int SELECTOR_CONTAINS_TEXT = 3;
  static final int SELECTOR_COUNT = 23;
  static final int SELECTOR_DESCRIPTION = 5;
  static final int SELECTOR_DESCRIPTION_REGEX = 27;
  static final int SELECTOR_ENABLED = 10;
  static final int SELECTOR_FOCUSABLE = 12;
  static final int SELECTOR_FOCUSED = 11;
  static final int SELECTOR_ID = 17;
  static final int SELECTOR_INDEX = 8;
  static final int SELECTOR_INSTANCE = 9;
  static final int SELECTOR_LONG_CLICKABLE = 24;
  static final int SELECTOR_NIL = 0;
  static final int SELECTOR_PACKAGE_NAME = 18;
  static final int SELECTOR_PACKAGE_NAME_REGEX = 28;
  static final int SELECTOR_PARENT = 22;
  static final int SELECTOR_PATTERN = 21;
  static final int SELECTOR_SCROLLABLE = 13;
  static final int SELECTOR_SELECTED = 16;
  static final int SELECTOR_START_DESCRIPTION = 6;
  static final int SELECTOR_START_TEXT = 2;
  static final int SELECTOR_TEXT = 1;
  static final int SELECTOR_TEXT_REGEX = 25;
  private SparseArray<Object> mSelectorAttributes = new SparseArray();

  public UiSelector()
  {
  }

  UiSelector(UiSelector paramUiSelector)
  {
    this.mSelectorAttributes = paramUiSelector.cloneSelector().mSelectorAttributes;
  }

  private UiSelector buildSelector(int paramInt, Object paramObject)
  {
    UiSelector localUiSelector = new UiSelector(this);
    if ((paramInt == 19) || (paramInt == 22))
    {
      localUiSelector.getLastSubSelector().mSelectorAttributes.put(paramInt, paramObject);
      return localUiSelector;
    }
    localUiSelector.mSelectorAttributes.put(paramInt, paramObject);
    return localUiSelector;
  }

  private UiSelector containerSelector(UiSelector paramUiSelector)
  {
    return buildSelector(20, paramUiSelector);
  }

  private UiSelector getLastSubSelector()
  {
    if (this.mSelectorAttributes.indexOfKey(19) >= 0)
    {
      UiSelector localUiSelector2 = (UiSelector)this.mSelectorAttributes.get(19);
      if (localUiSelector2.getLastSubSelector() == null)
        return localUiSelector2;
      return localUiSelector2.getLastSubSelector();
    }
    if (this.mSelectorAttributes.indexOfKey(22) >= 0)
    {
      UiSelector localUiSelector1 = (UiSelector)this.mSelectorAttributes.get(22);
      if (localUiSelector1.getLastSubSelector() == null)
        return localUiSelector1;
      return localUiSelector1.getLastSubSelector();
    }
    return this;
  }

  private boolean matchOrUpdateInstance()
  {
    int i = this.mSelectorAttributes.indexOfKey(9);
    int j = 0;
    if (i > 0)
      j = ((Integer)this.mSelectorAttributes.get(9)).intValue();
    int k = this.mSelectorAttributes.indexOfKey(23);
    int m = 0;
    if (k > 0)
      m = ((Integer)this.mSelectorAttributes.get(23)).intValue();
    if (j == m)
      return true;
    if (j > m)
      this.mSelectorAttributes.put(23, Integer.valueOf(m + 1));
    return false;
  }

  static UiSelector patternBuilder(UiSelector paramUiSelector)
  {
    if (!paramUiSelector.hasPatternSelector())
      paramUiSelector = new UiSelector().patternSelector(paramUiSelector);
    return paramUiSelector;
  }

  static UiSelector patternBuilder(UiSelector paramUiSelector1, UiSelector paramUiSelector2)
  {
    return new UiSelector(new UiSelector().containerSelector(paramUiSelector1).patternSelector(paramUiSelector2));
  }

  private UiSelector patternSelector(UiSelector paramUiSelector)
  {
    return buildSelector(21, paramUiSelector);
  }

  public UiSelector checked(boolean paramBoolean)
  {
    return buildSelector(15, Boolean.valueOf(paramBoolean));
  }

  public UiSelector childSelector(UiSelector paramUiSelector)
  {
    return buildSelector(19, paramUiSelector);
  }

  public <T> UiSelector className(Class<T> paramClass)
  {
    return buildSelector(4, paramClass.getName());
  }

  public UiSelector className(String paramString)
  {
    return buildSelector(4, paramString);
  }

  public UiSelector classNameMatches(String paramString)
  {
    return buildSelector(26, paramString);
  }

  public UiSelector clickable(boolean paramBoolean)
  {
    return buildSelector(14, Boolean.valueOf(paramBoolean));
  }

  protected UiSelector cloneSelector()
  {
    UiSelector localUiSelector = new UiSelector();
    localUiSelector.mSelectorAttributes = this.mSelectorAttributes.clone();
    if (hasChildSelector())
      localUiSelector.mSelectorAttributes.put(19, new UiSelector(getChildSelector()));
    if (hasParentSelector())
      localUiSelector.mSelectorAttributes.put(22, new UiSelector(getParentSelector()));
    if (hasPatternSelector())
      localUiSelector.mSelectorAttributes.put(21, new UiSelector(getPatternSelector()));
    return localUiSelector;
  }

  public UiSelector description(String paramString)
  {
    return buildSelector(5, paramString);
  }

  public UiSelector descriptionContains(String paramString)
  {
    return buildSelector(7, paramString);
  }

  public UiSelector descriptionMatches(String paramString)
  {
    return buildSelector(27, paramString);
  }

  public UiSelector descriptionStartsWith(String paramString)
  {
    return buildSelector(6, paramString);
  }

  String dumpToString(boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(UiSelector.class.getSimpleName() + "[");
    int i = this.mSelectorAttributes.size();
    int j = 0;
    if (j < i)
    {
      if (j > 0)
        localStringBuilder.append(", ");
      int k = this.mSelectorAttributes.keyAt(j);
      switch (k)
      {
      default:
        localStringBuilder.append("UNDEFINED=" + k + " ").append(this.mSelectorAttributes.valueAt(j));
      case 1:
      case 25:
      case 2:
      case 3:
      case 4:
      case 26:
      case 5:
      case 27:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 24:
      case 15:
      case 16:
      case 17:
      case 19:
      case 21:
      case 20:
      case 22:
      case 23:
      case 18:
      case 28:
      }
      while (true)
      {
        j++;
        break;
        localStringBuilder.append("TEXT=").append(this.mSelectorAttributes.valueAt(j));
        continue;
        localStringBuilder.append("TEXT_REGEX=").append(this.mSelectorAttributes.valueAt(j));
        continue;
        localStringBuilder.append("START_TEXT=").append(this.mSelectorAttributes.valueAt(j));
        continue;
        localStringBuilder.append("CONTAINS_TEXT=").append(this.mSelectorAttributes.valueAt(j));
        continue;
        localStringBuilder.append("CLASS=").append(this.mSelectorAttributes.valueAt(j));
        continue;
        localStringBuilder.append("CLASS_REGEX=").append(this.mSelectorAttributes.valueAt(j));
        continue;
        localStringBuilder.append("DESCRIPTION=").append(this.mSelectorAttributes.valueAt(j));
        continue;
        localStringBuilder.append("DESCRIPTION_REGEX=").append(this.mSelectorAttributes.valueAt(j));
        continue;
        localStringBuilder.append("START_DESCRIPTION=").append(this.mSelectorAttributes.valueAt(j));
        continue;
        localStringBuilder.append("CONTAINS_DESCRIPTION=").append(this.mSelectorAttributes.valueAt(j));
        continue;
        localStringBuilder.append("INDEX=").append(this.mSelectorAttributes.valueAt(j));
        continue;
        localStringBuilder.append("INSTANCE=").append(this.mSelectorAttributes.valueAt(j));
        continue;
        localStringBuilder.append("ENABLED=").append(this.mSelectorAttributes.valueAt(j));
        continue;
        localStringBuilder.append("FOCUSED=").append(this.mSelectorAttributes.valueAt(j));
        continue;
        localStringBuilder.append("FOCUSABLE=").append(this.mSelectorAttributes.valueAt(j));
        continue;
        localStringBuilder.append("SCROLLABLE=").append(this.mSelectorAttributes.valueAt(j));
        continue;
        localStringBuilder.append("CLICKABLE=").append(this.mSelectorAttributes.valueAt(j));
        continue;
        localStringBuilder.append("LONG_CLICKABLE=").append(this.mSelectorAttributes.valueAt(j));
        continue;
        localStringBuilder.append("CHECKED=").append(this.mSelectorAttributes.valueAt(j));
        continue;
        localStringBuilder.append("SELECTED=").append(this.mSelectorAttributes.valueAt(j));
        continue;
        localStringBuilder.append("ID=").append(this.mSelectorAttributes.valueAt(j));
        continue;
        if (paramBoolean)
        {
          localStringBuilder.append("CHILD=").append(this.mSelectorAttributes.valueAt(j));
        }
        else
        {
          localStringBuilder.append("CHILD[..]");
          continue;
          if (paramBoolean)
          {
            localStringBuilder.append("PATTERN=").append(this.mSelectorAttributes.valueAt(j));
          }
          else
          {
            localStringBuilder.append("PATTERN[..]");
            continue;
            if (paramBoolean)
            {
              localStringBuilder.append("CONTAINER=").append(this.mSelectorAttributes.valueAt(j));
            }
            else
            {
              localStringBuilder.append("CONTAINER[..]");
              continue;
              if (paramBoolean)
              {
                localStringBuilder.append("PARENT=").append(this.mSelectorAttributes.valueAt(j));
              }
              else
              {
                localStringBuilder.append("PARENT[..]");
                continue;
                localStringBuilder.append("COUNT=").append(this.mSelectorAttributes.valueAt(j));
                continue;
                localStringBuilder.append("PACKAGE NAME=").append(this.mSelectorAttributes.valueAt(j));
                continue;
                localStringBuilder.append("PACKAGE_NAME_REGEX=").append(this.mSelectorAttributes.valueAt(j));
              }
            }
          }
        }
      }
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }

  public UiSelector enabled(boolean paramBoolean)
  {
    return buildSelector(10, Boolean.valueOf(paramBoolean));
  }

  public UiSelector focusable(boolean paramBoolean)
  {
    return buildSelector(12, Boolean.valueOf(paramBoolean));
  }

  public UiSelector focused(boolean paramBoolean)
  {
    return buildSelector(11, Boolean.valueOf(paramBoolean));
  }

  public UiSelector fromParent(UiSelector paramUiSelector)
  {
    return buildSelector(22, paramUiSelector);
  }

  boolean getBoolean(int paramInt)
  {
    return ((Boolean)this.mSelectorAttributes.get(paramInt, Boolean.valueOf(false))).booleanValue();
  }

  UiSelector getChildSelector()
  {
    UiSelector localUiSelector1 = (UiSelector)this.mSelectorAttributes.get(19, null);
    UiSelector localUiSelector2 = null;
    if (localUiSelector1 != null)
      localUiSelector2 = new UiSelector(localUiSelector1);
    return localUiSelector2;
  }

  UiSelector getContainerSelector()
  {
    UiSelector localUiSelector1 = (UiSelector)this.mSelectorAttributes.get(20, null);
    UiSelector localUiSelector2 = null;
    if (localUiSelector1 != null)
      localUiSelector2 = new UiSelector(localUiSelector1);
    return localUiSelector2;
  }

  int getInstance()
  {
    return getInt(9);
  }

  int getInt(int paramInt)
  {
    return ((Integer)this.mSelectorAttributes.get(paramInt, Integer.valueOf(0))).intValue();
  }

  UiSelector getParentSelector()
  {
    UiSelector localUiSelector1 = (UiSelector)this.mSelectorAttributes.get(22, null);
    UiSelector localUiSelector2 = null;
    if (localUiSelector1 != null)
      localUiSelector2 = new UiSelector(localUiSelector1);
    return localUiSelector2;
  }

  UiSelector getPatternSelector()
  {
    UiSelector localUiSelector1 = (UiSelector)this.mSelectorAttributes.get(21, null);
    UiSelector localUiSelector2 = null;
    if (localUiSelector1 != null)
      localUiSelector2 = new UiSelector(localUiSelector1);
    return localUiSelector2;
  }

  String getString(int paramInt)
  {
    return (String)this.mSelectorAttributes.get(paramInt, null);
  }

  boolean hasChildSelector()
  {
    return this.mSelectorAttributes.indexOfKey(19) >= 0;
  }

  boolean hasContainerSelector()
  {
    return this.mSelectorAttributes.indexOfKey(20) >= 0;
  }

  boolean hasParentSelector()
  {
    return this.mSelectorAttributes.indexOfKey(22) >= 0;
  }

  boolean hasPatternSelector()
  {
    return this.mSelectorAttributes.indexOfKey(21) >= 0;
  }

  public UiSelector index(int paramInt)
  {
    return buildSelector(8, Integer.valueOf(paramInt));
  }

  public UiSelector instance(int paramInt)
  {
    return buildSelector(9, Integer.valueOf(paramInt));
  }

  boolean isLeaf()
  {
    return (this.mSelectorAttributes.indexOfKey(19) < 0) && (this.mSelectorAttributes.indexOfKey(22) < 0);
  }

  boolean isMatchFor(AccessibilityNodeInfo paramAccessibilityNodeInfo, int paramInt)
  {
    int i = this.mSelectorAttributes.size();
    int j = 0;
    if (j < i)
    {
      int k = this.mSelectorAttributes.keyAt(j);
      switch (k)
      {
      case 9:
      case 17:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      default:
      case 8:
      case 15:
      case 4:
      case 26:
      case 14:
      case 24:
      case 7:
      case 6:
      case 5:
      case 27:
      case 3:
      case 2:
      case 1:
      case 25:
      case 10:
      case 12:
      case 11:
      case 18:
      case 28:
      case 13:
      case 16:
      }
      do
      {
        do
        {
          CharSequence localCharSequence1;
          do
          {
            do
            {
              j++;
              break;
            }
            while (paramInt == getInt(k));
            do
            {
              CharSequence localCharSequence2;
              do
              {
                CharSequence localCharSequence3;
                do
                {
                  CharSequence localCharSequence4;
                  do
                  {
                    CharSequence localCharSequence5;
                    do
                    {
                      CharSequence localCharSequence6;
                      do
                      {
                        CharSequence localCharSequence7;
                        do
                        {
                          CharSequence localCharSequence8;
                          do
                          {
                            CharSequence localCharSequence9;
                            do
                            {
                              CharSequence localCharSequence10;
                              do
                              {
                                CharSequence localCharSequence11;
                                do
                                {
                                  CharSequence localCharSequence12;
                                  do
                                  {
                                    return false;
                                    if (paramAccessibilityNodeInfo.isChecked() == getBoolean(k))
                                      break;
                                    return false;
                                    localCharSequence12 = paramAccessibilityNodeInfo.getClassName();
                                  }
                                  while (localCharSequence12 == null);
                                  if (localCharSequence12.toString().contentEquals(getString(k)))
                                    break;
                                  return false;
                                  localCharSequence11 = paramAccessibilityNodeInfo.getClassName();
                                }
                                while (localCharSequence11 == null);
                                if (localCharSequence11.toString().matches(getString(k)))
                                  break;
                                return false;
                                if (paramAccessibilityNodeInfo.isClickable() == getBoolean(k))
                                  break;
                                return false;
                                if (paramAccessibilityNodeInfo.isLongClickable() == getBoolean(k))
                                  break;
                                return false;
                                localCharSequence10 = paramAccessibilityNodeInfo.getContentDescription();
                              }
                              while (localCharSequence10 == null);
                              if (localCharSequence10.toString().toLowerCase().contains(getString(k).toLowerCase()))
                                break;
                              return false;
                              localCharSequence9 = paramAccessibilityNodeInfo.getContentDescription();
                            }
                            while (localCharSequence9 == null);
                            if (localCharSequence9.toString().toLowerCase().startsWith(getString(k).toLowerCase()))
                              break;
                            return false;
                            localCharSequence8 = paramAccessibilityNodeInfo.getContentDescription();
                          }
                          while (localCharSequence8 == null);
                          if (localCharSequence8.toString().contentEquals(getString(k)))
                            break;
                          return false;
                          localCharSequence7 = paramAccessibilityNodeInfo.getContentDescription();
                        }
                        while (localCharSequence7 == null);
                        if (localCharSequence7.toString().matches(getString(k)))
                          break;
                        return false;
                        localCharSequence6 = paramAccessibilityNodeInfo.getText();
                      }
                      while (localCharSequence6 == null);
                      if (localCharSequence6.toString().toLowerCase().contains(getString(k).toLowerCase()))
                        break;
                      return false;
                      localCharSequence5 = paramAccessibilityNodeInfo.getText();
                    }
                    while (localCharSequence5 == null);
                    if (localCharSequence5.toString().toLowerCase().startsWith(getString(k).toLowerCase()))
                      break;
                    return false;
                    localCharSequence4 = paramAccessibilityNodeInfo.getText();
                  }
                  while (localCharSequence4 == null);
                  if (localCharSequence4.toString().contentEquals(getString(k)))
                    break;
                  return false;
                  localCharSequence3 = paramAccessibilityNodeInfo.getText();
                }
                while (localCharSequence3 == null);
                if (localCharSequence3.toString().matches(getString(k)))
                  break;
                return false;
                if (paramAccessibilityNodeInfo.isEnabled() == getBoolean(k))
                  break;
                return false;
                if (paramAccessibilityNodeInfo.isFocusable() == getBoolean(k))
                  break;
                return false;
                if (paramAccessibilityNodeInfo.isFocused() == getBoolean(k))
                  break;
                return false;
                localCharSequence2 = paramAccessibilityNodeInfo.getPackageName();
              }
              while (localCharSequence2 == null);
              if (localCharSequence2.toString().contentEquals(getString(k)))
                break;
              return false;
              localCharSequence1 = paramAccessibilityNodeInfo.getPackageName();
            }
            while (localCharSequence1 == null);
          }
          while (localCharSequence1.toString().matches(getString(k)));
          return false;
        }
        while (paramAccessibilityNodeInfo.isScrollable() == getBoolean(k));
        return false;
      }
      while (paramAccessibilityNodeInfo.isSelected() == getBoolean(k));
      return false;
    }
    return matchOrUpdateInstance();
  }

  public UiSelector longClickable(boolean paramBoolean)
  {
    return buildSelector(24, Boolean.valueOf(paramBoolean));
  }

  public UiSelector packageName(String paramString)
  {
    return buildSelector(18, paramString);
  }

  public UiSelector packageNameMatches(String paramString)
  {
    return buildSelector(28, paramString);
  }

  public UiSelector scrollable(boolean paramBoolean)
  {
    return buildSelector(13, Boolean.valueOf(paramBoolean));
  }

  public UiSelector selected(boolean paramBoolean)
  {
    return buildSelector(16, Boolean.valueOf(paramBoolean));
  }

  public UiSelector text(String paramString)
  {
    return buildSelector(1, paramString);
  }

  public UiSelector textContains(String paramString)
  {
    return buildSelector(3, paramString);
  }

  public UiSelector textMatches(String paramString)
  {
    return buildSelector(25, paramString);
  }

  public UiSelector textStartsWith(String paramString)
  {
    return buildSelector(2, paramString);
  }

  public String toString()
  {
    return dumpToString(true);
  }
}

/* Location:           C:\Users\Tato\Desktop\uiclick\classes_dex2jar.jar
 * Qualified Name:     com.android.uiautomator.core.UiSelector
 * JD-Core Version:    0.6.2
 */