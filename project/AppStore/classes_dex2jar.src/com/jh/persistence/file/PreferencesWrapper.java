package com.jh.persistence.file;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class PreferencesWrapper
{
  private SharedPreferences.Editor editor;
  private SharedPreferences preference;

  protected PreferencesWrapper(String paramString, Context paramContext)
  {
    this.preference = paramContext.getSharedPreferences(paramString, 0);
    this.editor = this.preference.edit();
  }

  public void clear()
  {
    this.editor.clear().commit();
  }

  public void commit()
  {
    this.editor.commit();
  }

  public boolean contains(String paramString)
  {
    return this.preference.contains(paramString);
  }

  public boolean getBoolean(String paramString, boolean paramBoolean)
  {
    return this.preference.getBoolean(paramString, paramBoolean);
  }

  public float getFloat(String paramString, float paramFloat)
  {
    return this.preference.getFloat(paramString, paramFloat);
  }

  public int getInt(String paramString, int paramInt)
  {
    return this.preference.getInt(paramString, paramInt);
  }

  public long getLong(String paramString, long paramLong)
  {
    return this.preference.getLong(paramString, paramLong);
  }

  public String getString(String paramString1, String paramString2)
  {
    return this.preference.getString(paramString1, paramString2);
  }

  public void putBoolean(String paramString, boolean paramBoolean)
  {
    this.editor.putBoolean(paramString, paramBoolean);
  }

  public void putInt(String paramString, int paramInt)
  {
    this.editor.putInt(paramString, paramInt);
  }

  public void putString(String paramString1, String paramString2)
  {
    this.editor.putString(paramString1, paramString2);
  }

  public void remove(String paramString)
  {
    this.editor.remove(paramString);
  }

  public void saveBoolean(String paramString, boolean paramBoolean)
  {
    this.editor.putBoolean(paramString, paramBoolean).commit();
  }

  public void saveInt(String paramString, int paramInt)
  {
    this.editor.putInt(paramString, paramInt).commit();
  }

  public void saveLong(String paramString, long paramLong)
  {
    this.editor.putLong(paramString, paramLong).commit();
  }

  public void saveString(String paramString1, String paramString2)
  {
    this.editor.putString(paramString1, paramString2).commit();
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.persistence.file.PreferencesWrapper
 * JD-Core Version:    0.6.2
 */