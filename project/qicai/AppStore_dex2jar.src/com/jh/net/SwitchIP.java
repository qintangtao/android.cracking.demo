package com.jh.net;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import com.jh.app.util.RunnableExecutor;
import com.jh.common.app.application.AppSystem;
import com.jh.net.bean.RequestRecoder;
import com.jh.net.bean.ResultDTO;
import com.jh.net.bean.WebSiteCDTO;
import com.jh.net.db.SwitchIpDBHelper;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;

public class SwitchIP
{
  static RunnableExecutor executor = new RunnableExecutor(1);
  static GetWebIP getIPservice;
  static HashMap<String, Queue<RequestRecoder>> sum;
  Context context;

  public SwitchIP(Context paramContext)
  {
    this.context = paramContext;
  }

  private boolean needUpdateStatusToFail(Queue<RequestRecoder> paramQueue, String paramString)
  {
    long l = 0L;
    int i = paramQueue.size();
    RequestRecoder[] arrayOfRequestRecoder = new RequestRecoder[i];
    for (int j = 0; ; j++)
    {
      if (j >= i)
      {
        if ((i <= 5) || (l / i <= 0.2D))
          break;
        sum.remove(paramString);
        return true;
      }
      arrayOfRequestRecoder[j] = ((RequestRecoder)paramQueue.poll());
      if (arrayOfRequestRecoder[j].getStatus() == 1)
        l += 1L;
    }
    if ((i >= 3) && (arrayOfRequestRecoder[(i - 1)].getStatus() == 1) && (arrayOfRequestRecoder[(i - 2)].getStatus() == 1))
    {
      sum.remove(paramString);
      return true;
    }
    return false;
  }

  private void printSum(String paramString1, String paramString2)
  {
    Iterator localIterator = ((Queue)sum.get(paramString1)).iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      RequestRecoder localRequestRecoder = (RequestRecoder)localIterator.next();
      Log.i("sum", localRequestRecoder.getResponse() + ":" + localRequestRecoder.getStatus() + ":" + paramString1 + ":" + sum.size() + ":" + ":" + paramString2);
    }
  }

  public static void setGetIPservice(GetWebIP paramGetWebIP)
  {
    getIPservice = paramGetWebIP;
  }

  // ERROR //
  protected void addRequestRecord(String paramString, org.apache.http.HttpResponse paramHttpResponse, java.io.IOException paramIOException)
  {
    // Byte code:
    //   0: getstatic 112	com/jh/net/SwitchIP:getIPservice	Lcom/jh/net/GetWebIP;
    //   3: ifnonnull +4 -> 7
    //   6: return
    //   7: aload_1
    //   8: invokestatic 120	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   11: astore 4
    //   13: new 76	java/lang/StringBuilder
    //   16: dup
    //   17: aload 4
    //   19: invokevirtual 123	android/net/Uri:getScheme	()Ljava/lang/String;
    //   22: invokestatic 126	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   25: invokespecial 88	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   28: ldc 128
    //   30: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: aload 4
    //   35: invokevirtual 131	android/net/Uri:getAuthority	()Ljava/lang/String;
    //   38: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: ldc 133
    //   43: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   49: astore 5
    //   51: aload_2
    //   52: ifnonnull +332 -> 384
    //   55: bipush 156
    //   57: istore 6
    //   59: getstatic 112	com/jh/net/SwitchIP:getIPservice	Lcom/jh/net/GetWebIP;
    //   62: invokeinterface 138 1 0
    //   67: astore 7
    //   69: aload_0
    //   70: getfield 28	com/jh/net/SwitchIP:context	Landroid/content/Context;
    //   73: invokestatic 144	com/jh/net/db/SwitchIpDBHelper:getInstance	(Landroid/content/Context;)Lcom/jh/net/db/SwitchIpDBHelper;
    //   76: astore 8
    //   78: ldc 146
    //   80: aload 7
    //   82: invokevirtual 150	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   85: ifne +30 -> 115
    //   88: aload_0
    //   89: monitorenter
    //   90: aload_0
    //   91: aload 7
    //   93: invokevirtual 154	com/jh/net/SwitchIP:hasSaved	(Ljava/lang/String;)Z
    //   96: ifne +17 -> 113
    //   99: getstatic 23	com/jh/net/SwitchIP:executor	Lcom/jh/app/util/RunnableExecutor;
    //   102: new 156	com/jh/net/SwitchIP$NeedFirstQuest
    //   105: dup
    //   106: aload_0
    //   107: invokespecial 159	com/jh/net/SwitchIP$NeedFirstQuest:<init>	(Lcom/jh/net/SwitchIP;)V
    //   110: invokevirtual 163	com/jh/app/util/RunnableExecutor:executeTask	(Ljava/lang/Runnable;)V
    //   113: aload_0
    //   114: monitorexit
    //   115: getstatic 42	com/jh/net/SwitchIP:sum	Ljava/util/HashMap;
    //   118: ifnonnull +25 -> 143
    //   121: ldc 2
    //   123: monitorenter
    //   124: getstatic 42	com/jh/net/SwitchIP:sum	Ljava/util/HashMap;
    //   127: ifnonnull +13 -> 140
    //   130: new 44	java/util/HashMap
    //   133: dup
    //   134: invokespecial 164	java/util/HashMap:<init>	()V
    //   137: putstatic 42	com/jh/net/SwitchIP:sum	Ljava/util/HashMap;
    //   140: ldc 2
    //   142: monitorexit
    //   143: ldc 2
    //   145: monitorenter
    //   146: iload 6
    //   148: sipush 500
    //   151: if_icmpge +7 -> 158
    //   154: aload_3
    //   155: ifnull +320 -> 475
    //   158: new 38	com/jh/net/bean/RequestRecoder
    //   161: dup
    //   162: invokespecial 165	com/jh/net/bean/RequestRecoder:<init>	()V
    //   165: astore 9
    //   167: aload 9
    //   169: iconst_1
    //   170: invokevirtual 168	com/jh/net/bean/RequestRecoder:setStatus	(I)V
    //   173: aload 9
    //   175: iload 6
    //   177: invokevirtual 171	com/jh/net/bean/RequestRecoder:setResponse	(I)V
    //   180: getstatic 42	com/jh/net/SwitchIP:sum	Ljava/util/HashMap;
    //   183: aload 5
    //   185: invokevirtual 60	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   188: ifnull +227 -> 415
    //   191: getstatic 42	com/jh/net/SwitchIP:sum	Ljava/util/HashMap;
    //   194: aload 5
    //   196: invokevirtual 60	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   199: checkcast 32	java/util/Queue
    //   202: invokeinterface 36 1 0
    //   207: ifle +208 -> 415
    //   210: getstatic 42	com/jh/net/SwitchIP:sum	Ljava/util/HashMap;
    //   213: aload 5
    //   215: invokevirtual 60	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   218: checkcast 32	java/util/Queue
    //   221: astore 11
    //   223: aload 11
    //   225: invokeinterface 36 1 0
    //   230: bipush 19
    //   232: if_icmple +11 -> 243
    //   235: aload 11
    //   237: invokeinterface 52 1 0
    //   242: pop
    //   243: aload 11
    //   245: aload 9
    //   247: invokeinterface 174 2 0
    //   252: pop
    //   253: getstatic 42	com/jh/net/SwitchIP:sum	Ljava/util/HashMap;
    //   256: aload 5
    //   258: aload 11
    //   260: invokevirtual 178	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   263: pop
    //   264: aload_0
    //   265: aload 5
    //   267: ldc 180
    //   269: invokespecial 182	com/jh/net/SwitchIP:printSum	(Ljava/lang/String;Ljava/lang/String;)V
    //   272: new 184	java/util/LinkedList
    //   275: dup
    //   276: invokespecial 185	java/util/LinkedList:<init>	()V
    //   279: astore 14
    //   281: aload 11
    //   283: invokeinterface 64 1 0
    //   288: astore 15
    //   290: aload 15
    //   292: invokeinterface 70 1 0
    //   297: ifne +159 -> 456
    //   300: aload_0
    //   301: aload 14
    //   303: aload 5
    //   305: invokespecial 187	com/jh/net/SwitchIP:needUpdateStatusToFail	(Ljava/util/Queue;Ljava/lang/String;)Z
    //   308: ifeq +27 -> 335
    //   311: aload 8
    //   313: aload 5
    //   315: aload 7
    //   317: new 76	java/lang/StringBuilder
    //   320: dup
    //   321: iload 6
    //   323: invokestatic 85	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   326: invokespecial 88	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   329: invokevirtual 102	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   332: invokevirtual 191	com/jh/net/db/SwitchIpDBHelper:updateStatusToFail	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   335: aload 8
    //   337: aload 5
    //   339: aload 7
    //   341: invokevirtual 195	com/jh/net/db/SwitchIpDBHelper:queryNeedQuestByDomain	(Ljava/lang/String;Ljava/lang/String;)Z
    //   344: ifeq +28 -> 372
    //   347: getstatic 112	com/jh/net/SwitchIP:getIPservice	Lcom/jh/net/GetWebIP;
    //   350: ifnull +22 -> 372
    //   353: getstatic 23	com/jh/net/SwitchIP:executor	Lcom/jh/app/util/RunnableExecutor;
    //   356: new 197	com/jh/net/SwitchIP$SaveToDBVersion2
    //   359: dup
    //   360: aload_0
    //   361: aload 5
    //   363: iload 6
    //   365: aconst_null
    //   366: invokespecial 200	com/jh/net/SwitchIP$SaveToDBVersion2:<init>	(Lcom/jh/net/SwitchIP;Ljava/lang/String;ILcom/jh/net/SwitchIP$SaveToDBVersion2;)V
    //   369: invokevirtual 163	com/jh/app/util/RunnableExecutor:executeTask	(Ljava/lang/Runnable;)V
    //   372: ldc 2
    //   374: monitorexit
    //   375: return
    //   376: astore 10
    //   378: ldc 2
    //   380: monitorexit
    //   381: aload 10
    //   383: athrow
    //   384: aload_2
    //   385: invokeinterface 206 1 0
    //   390: invokeinterface 211 1 0
    //   395: istore 6
    //   397: goto -338 -> 59
    //   400: astore 29
    //   402: aload_0
    //   403: monitorexit
    //   404: aload 29
    //   406: athrow
    //   407: astore 28
    //   409: ldc 2
    //   411: monitorexit
    //   412: aload 28
    //   414: athrow
    //   415: new 184	java/util/LinkedList
    //   418: dup
    //   419: invokespecial 185	java/util/LinkedList:<init>	()V
    //   422: astore 11
    //   424: aload 11
    //   426: aload 9
    //   428: invokeinterface 174 2 0
    //   433: pop
    //   434: getstatic 42	com/jh/net/SwitchIP:sum	Ljava/util/HashMap;
    //   437: aload 5
    //   439: aload 11
    //   441: invokevirtual 178	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   444: pop
    //   445: aload_0
    //   446: aload 5
    //   448: ldc 213
    //   450: invokespecial 182	com/jh/net/SwitchIP:printSum	(Ljava/lang/String;Ljava/lang/String;)V
    //   453: goto -181 -> 272
    //   456: aload 14
    //   458: aload 15
    //   460: invokeinterface 73 1 0
    //   465: checkcast 38	com/jh/net/bean/RequestRecoder
    //   468: invokevirtual 216	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   471: pop
    //   472: goto -182 -> 290
    //   475: new 38	com/jh/net/bean/RequestRecoder
    //   478: dup
    //   479: invokespecial 165	com/jh/net/bean/RequestRecoder:<init>	()V
    //   482: astore 20
    //   484: aload 20
    //   486: iconst_0
    //   487: invokevirtual 168	com/jh/net/bean/RequestRecoder:setStatus	(I)V
    //   490: aload 20
    //   492: iload 6
    //   494: invokevirtual 171	com/jh/net/bean/RequestRecoder:setResponse	(I)V
    //   497: getstatic 42	com/jh/net/SwitchIP:sum	Ljava/util/HashMap;
    //   500: aload 5
    //   502: invokevirtual 60	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   505: ifnull +60 -> 565
    //   508: getstatic 42	com/jh/net/SwitchIP:sum	Ljava/util/HashMap;
    //   511: aload 5
    //   513: invokevirtual 60	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   516: checkcast 32	java/util/Queue
    //   519: astore 24
    //   521: aload 24
    //   523: invokeinterface 36 1 0
    //   528: bipush 19
    //   530: if_icmple +11 -> 541
    //   533: aload 24
    //   535: invokeinterface 52 1 0
    //   540: pop
    //   541: aload 24
    //   543: aload 20
    //   545: invokeinterface 174 2 0
    //   550: pop
    //   551: getstatic 42	com/jh/net/SwitchIP:sum	Ljava/util/HashMap;
    //   554: aload 5
    //   556: aload 24
    //   558: invokevirtual 178	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   561: pop
    //   562: goto -190 -> 372
    //   565: new 184	java/util/LinkedList
    //   568: dup
    //   569: invokespecial 185	java/util/LinkedList:<init>	()V
    //   572: astore 21
    //   574: aload 21
    //   576: aload 20
    //   578: invokeinterface 174 2 0
    //   583: pop
    //   584: getstatic 42	com/jh/net/SwitchIP:sum	Ljava/util/HashMap;
    //   587: aload 5
    //   589: aload 21
    //   591: invokevirtual 178	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   594: pop
    //   595: goto -223 -> 372
    //
    // Exception table:
    //   from	to	target	type
    //   158	243	376	finally
    //   243	272	376	finally
    //   272	290	376	finally
    //   290	335	376	finally
    //   335	372	376	finally
    //   372	375	376	finally
    //   378	381	376	finally
    //   415	453	376	finally
    //   456	472	376	finally
    //   475	541	376	finally
    //   541	562	376	finally
    //   565	595	376	finally
    //   90	113	400	finally
    //   113	115	400	finally
    //   402	404	400	finally
    //   124	140	407	finally
    //   140	143	407	finally
    //   409	412	407	finally
  }

  public void firstReqRunnable()
  {
    executor.executeTask(new NeedFirstQuest());
  }

  public boolean hasSaved(String paramString)
  {
    return AppSystem.getInstance().getContext().getSharedPreferences("switchip", 0).getBoolean(paramString, false);
  }

  public void saveToByCode(int paramInt)
  {
    if (paramInt != 0)
    {
      SaveToDBByCode localSaveToDBByCode = new SaveToDBByCode();
      localSaveToDBByCode.setBizCode(paramInt);
      executor.executeTask(localSaveToDBByCode);
    }
  }

  public void setSaved(String paramString)
  {
    AppSystem.getInstance().getContext().getSharedPreferences("switchip", 0).edit().putBoolean(paramString, true).commit();
  }

  class NeedFirstQuest
    implements Runnable
  {
    NeedFirstQuest()
    {
    }

    public void run()
    {
      if (SwitchIP.getIPservice == null);
      SwitchIpDBHelper localSwitchIpDBHelper;
      do
      {
        return;
        localSwitchIpDBHelper = SwitchIpDBHelper.getInstance(SwitchIP.this.context);
        Log.e("userId", SwitchIP.getIPservice.getUserId());
      }
      while (localSwitchIpDBHelper.queryExistRecoder(SwitchIP.getIPservice.getUserId()));
      Log.e("userId", "NeedFirstQuest ");
      List localList = SwitchIP.getIPservice.getAddresses("", 0, 0);
      int i = 0;
      label72: ResultDTO localResultDTO;
      if (i < localList.size())
        localResultDTO = (ResultDTO)localList.get(i);
      for (int j = 0; ; j++)
      {
        if (j >= localResultDTO.getWebSiteCDTO().size())
        {
          i++;
          break label72;
          break;
        }
        WebSiteCDTO localWebSiteCDTO = (WebSiteCDTO)localResultDTO.getWebSiteCDTO().get(j);
        localSwitchIpDBHelper.initOrInsertSwitchIPTable(localResultDTO.getBizCode(), localWebSiteCDTO.getId(), localWebSiteCDTO.getName(), localWebSiteCDTO.getDomain(), localWebSiteCDTO.getIP(), localWebSiteCDTO.getCode(), SwitchIP.getIPservice.getUserId());
      }
    }
  }

  private class SaveToDB
    implements Runnable
  {
    private String domain;
    private int responseCode;

    private SaveToDB(String paramInt, int arg3)
    {
      this.domain = paramInt;
      int i;
      this.responseCode = i;
    }

    public void run()
    {
      if (SwitchIP.getIPservice == null);
      while (true)
      {
        return;
        SwitchIpDBHelper localSwitchIpDBHelper = SwitchIpDBHelper.getInstance(SwitchIP.this.context);
        int i = localSwitchIpDBHelper.queryBizCodeByDomain(this.domain, SwitchIP.getIPservice.getUserId());
        List localList = SwitchIP.getIPservice.getAddresses(this.domain, this.responseCode, i);
        localSwitchIpDBHelper.deleteTableByBizCode(i, SwitchIP.getIPservice.getUserId());
        for (int j = 0; j < ((ResultDTO)localList.get(0)).getWebSiteCDTO().size(); j++)
        {
          WebSiteCDTO localWebSiteCDTO = (WebSiteCDTO)((ResultDTO)localList.get(0)).getWebSiteCDTO().get(j);
          localSwitchIpDBHelper.initOrInsertSwitchIPTable(((ResultDTO)localList.get(0)).getBizCode(), localWebSiteCDTO.getId(), localWebSiteCDTO.getName(), localWebSiteCDTO.getDomain(), localWebSiteCDTO.getIP(), localWebSiteCDTO.getCode(), SwitchIP.getIPservice.getUserId());
        }
      }
    }
  }

  public class SaveToDBByCode
    implements Runnable
  {
    protected int bizCode;

    public SaveToDBByCode()
    {
    }

    public void run()
    {
      if (SwitchIP.getIPservice == null);
      SwitchIpDBHelper localSwitchIpDBHelper;
      List localList;
      do
      {
        return;
        localSwitchIpDBHelper = SwitchIpDBHelper.getInstance(SwitchIP.this.context);
        localList = SwitchIP.getIPservice.getAddresses(localSwitchIpDBHelper.getListDomainInfo(this.bizCode, SwitchIP.getIPservice.getUserId()), this.bizCode);
      }
      while (localList == null);
      int i = 0;
      label66: if (i < localList.size())
        if (((ResultDTO)localList.get(i)).getBizCode() != 0)
          localSwitchIpDBHelper.deleteTableByBizCode(this.bizCode, SwitchIP.getIPservice.getUserId());
      for (int j = 0; ; j++)
      {
        if (j >= ((ResultDTO)localList.get(i)).getWebSiteCDTO().size())
        {
          i++;
          break label66;
          break;
        }
        WebSiteCDTO localWebSiteCDTO = (WebSiteCDTO)((ResultDTO)localList.get(i)).getWebSiteCDTO().get(j);
        localSwitchIpDBHelper.initOrInsertSwitchIPTable(((ResultDTO)localList.get(i)).getBizCode(), localWebSiteCDTO.getId(), localWebSiteCDTO.getName(), localWebSiteCDTO.getDomain(), localWebSiteCDTO.getIP(), localWebSiteCDTO.getCode(), SwitchIP.getIPservice.getUserId());
      }
    }

    public void setBizCode(int paramInt)
    {
      this.bizCode = paramInt;
    }
  }

  public class SaveToDBVersion2 extends SwitchIP.SaveToDBByCode
  {
    private String domain;
    private int responseCode;

    private SaveToDBVersion2(String paramInt, int arg3)
    {
      super();
      this.domain = paramInt;
      int i;
      this.responseCode = i;
    }

    public void run()
    {
      if (SwitchIP.getIPservice == null)
        return;
      this.bizCode = SwitchIpDBHelper.getInstance(SwitchIP.this.context).queryBizCodeByDomain(this.domain, SwitchIP.getIPservice.getUserId());
      super.run();
    }
  }
}

/* Location:           C:\Users\Tato\Desktop\android反编译\qicai\AppStore_dex2jar.jar
 * Qualified Name:     com.jh.net.SwitchIP
 * JD-Core Version:    0.6.2
 */