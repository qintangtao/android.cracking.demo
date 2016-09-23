package com.jh.view;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.jh.app.util.ImageFactory;
import com.jh.persistence.db.DBExcutor;
import com.jh.util.LogUtil;
import java.io.File;

public class CacheDB
{
  public static void deletePic(Context paramContext, String paramString)
  {
    Cache.getExcutor(paramContext).delete("CACHE", "HttpUrl = ?", new String[] { paramString });
  }

  public static String getLocalpicPath(Context paramContext, String paramString)
  {
    DBExcutor localDBExcutor = Cache.getExcutor(paramContext);
    Cursor localCursor = localDBExcutor.query("CACHE", null, "HttpUrl = ?", new String[] { paramString }, null, null, null);
    if (localCursor.moveToFirst())
    {
      str = localCursor.getString(localCursor.getColumnIndex("LocalPath"));
      if (str != null)
      {
        str = ImageFactory.getFilePath(str, paramContext);
        File localFile = new File(str);
        if ((!localFile.exists()) || (localFile.length() <= 0L))
          localDBExcutor.delete("CACHE", "HttpUrl = ?", new String[] { paramString });
      }
    }
    for (String str = null; ; str = null)
    {
      localCursor.close();
      return str;
      LogUtil.println("com.jh.freesms.dbservice.CacheDB  getLocalpicPath  无数据..............");
    }
  }

  public static void insertPic(Context paramContext, String paramString1, String paramString2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("HttpUrl", paramString1);
    localContentValues.put("LocalPath", paramString2);
    Cache.getExcutor(paramContext).insert("CACHE", null, localContentValues);
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.jh.view.CacheDB
 * JD-Core Version:    0.6.2
 */