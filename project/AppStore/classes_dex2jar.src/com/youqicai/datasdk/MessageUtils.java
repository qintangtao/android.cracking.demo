package com.youqicai.datasdk;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.Calendar;

public class MessageUtils
{
  public static long deleteManyMsg(Context paramContext, String paramString)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramString);
      StringBuilder localStringBuilder = new StringBuilder();
      for (int i = 0; i < localArrayList.size(); i++)
      {
        localStringBuilder.append("'");
        localStringBuilder.append((String)localArrayList.get(i));
        localStringBuilder.append("'");
        localStringBuilder.append(",");
      }
      String str = localStringBuilder.toString().substring(0, -1 + localStringBuilder.length());
      int j = DBProvider.getDBProvider().delete("statistics", "_id in ( " + str + " )", null);
      long l = j;
      return l;
    }
    finally
    {
    }
  }

  public static ArrayList<MessageModel> getEventMsg(Context paramContext)
  {
    try
    {
      ArrayList localArrayList2;
      if (DBProvider.getDBProvider().getCount("statistics") > 0)
        localArrayList2 = getEventMsg(paramContext, null, null);
      for (ArrayList localArrayList1 = localArrayList2; ; localArrayList1 = new ArrayList())
        return localArrayList1;
    }
    finally
    {
    }
  }

  private static ArrayList<MessageModel> getEventMsg(Context paramContext, String paramString, String[] paramArrayOfString)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      Cursor localCursor = DBProvider.getDBProvider().query("statistics", new String[] { "_id", "time", "data" }, paramString, paramArrayOfString, null);
      while (true)
        if (localCursor != null)
          try
          {
            if (localCursor.moveToNext())
            {
              String str = localCursor.getString(0);
              localCursor.getString(1);
              MessageModel localMessageModel = new MessageModel();
              localMessageModel.data = localCursor.getString(2);
              localMessageModel.id = str;
              localArrayList.add(localMessageModel);
            }
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
      while (true)
      {
        return localArrayList;
        if (localCursor != null)
          localCursor.close();
      }
    }
    finally
    {
    }
  }

  public static void insertMsg(Context paramContext, String paramString)
  {
    while (true)
    {
      try
      {
        boolean bool = TextUtils.isEmpty(paramString);
        if (bool)
          return;
        if (NetworkStatus.getInstance().isConnected())
        {
          Log.e("doll --MessageUtils --- ", "NetworkStatus.getInstance().isConnected()  ==== " + NetworkStatus.getInstance().isConnected());
          HttpController.getInstance().sendData(paramContext, paramString);
          continue;
        }
      }
      finally
      {
      }
      int i = Calendar.getInstance().get(6);
      DBProvider localDBProvider = DBProvider.getDBProvider();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("time", Integer.valueOf(i));
      localContentValues.put("data", paramString);
      long l = localDBProvider.insert("statistics", localContentValues);
      Log.e("doll --MessageUtils --- ", " insertMsg " + l + " count =  " + localDBProvider.getCount("statistics"));
    }
  }

  public static void insertMsg(Context paramContext, String paramString, int paramInt)
  {
    while (true)
    {
      try
      {
        boolean bool = TextUtils.isEmpty(paramString);
        if (bool)
          return;
        if (NetworkStatus.getInstance().isConnected())
        {
          HttpController.getInstance().sendData(paramContext, paramString, paramInt);
          continue;
        }
      }
      finally
      {
      }
      int i = Calendar.getInstance().get(6);
      DBProvider localDBProvider = DBProvider.getDBProvider();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("time", Integer.valueOf(i));
      localContentValues.put("data", paramString);
      long l = localDBProvider.insert("statistics", localContentValues);
      Log.e("doll --MessageUtils --- ", " insertMsg " + l + " count =  " + localDBProvider.getCount("statistics"));
    }
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.youqicai.datasdk.MessageUtils
 * JD-Core Version:    0.6.2
 */