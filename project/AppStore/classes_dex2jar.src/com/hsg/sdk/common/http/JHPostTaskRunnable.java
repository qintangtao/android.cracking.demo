package com.hsg.sdk.common.http;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.hsg.sdk.common.util.Logg;
import com.hsg.sdk.common.util.TextUtil;

public class JHPostTaskRunnable
  implements Runnable
{
  private final int ERROR = 1;
  private final int RESULT = 0;
  private final String TAG = "Http Connect";
  private ErrorMsg errorMsg;
  private Handler mHandler = new Handler(Looper.getMainLooper())
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default:
      case 0:
      case 1:
      }
      do
      {
        do
          return;
        while (JHPostTaskRunnable.this.taskEntity.resultCallBack == null);
        JHPostTaskRunnable.this.taskEntity.resultCallBack.onResult(JHPostTaskRunnable.this.taskEntity);
        return;
      }
      while (JHPostTaskRunnable.this.taskEntity.resultCallBack == null);
      JHPostTaskRunnable.this.taskEntity.resultCallBack.onError(JHPostTaskRunnable.this.taskEntity);
    }
  };
  private HttpManager mHttpMgr = null;
  private TaskEntity taskEntity;

  public JHPostTaskRunnable(TaskEntity paramTaskEntity)
  {
    this.taskEntity = paramTaskEntity;
    this.mHttpMgr = HttpManager.getHttpClient();
  }

  private void dealResult(String paramString)
  {
    if (paramString == null)
    {
      this.errorMsg = new ErrorMsg();
      this.errorMsg.errorMessage = "no data";
      this.taskEntity.errorMsg = this.errorMsg;
      this.mHandler.sendEmptyMessage(1);
      Logg.d("Http Connect", "no data");
      return;
    }
    String str = TextUtil.replaceSpecialChar(paramString);
    if (this.taskEntity.parseInfo != null);
    for (this.taskEntity.outObject = this.taskEntity.parseInfo.parseInBackgroud(str); ; this.taskEntity.outObject = str)
    {
      this.mHandler.sendEmptyMessage(0);
      return;
    }
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == null);
    JHPostTaskRunnable localJHPostTaskRunnable;
    do
    {
      do
        return false;
      while (!(paramObject instanceof JHPostTaskRunnable));
      localJHPostTaskRunnable = (JHPostTaskRunnable)paramObject;
    }
    while (hashCode() != localJHPostTaskRunnable.hashCode());
    return true;
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 49	com/hsg/sdk/common/http/JHPostTaskRunnable:taskEntity	Lcom/hsg/sdk/common/http/TaskEntity;
    //   4: ifnonnull +51 -> 55
    //   7: ldc 26
    //   9: ldc 121
    //   11: invokestatic 84	com/hsg/sdk/common/util/Logg:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   14: aload_0
    //   15: new 61	com/hsg/sdk/common/http/ErrorMsg
    //   18: dup
    //   19: invokespecial 62	com/hsg/sdk/common/http/ErrorMsg:<init>	()V
    //   22: putfield 64	com/hsg/sdk/common/http/JHPostTaskRunnable:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   25: aload_0
    //   26: getfield 64	com/hsg/sdk/common/http/JHPostTaskRunnable:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   29: ldc 121
    //   31: putfield 69	com/hsg/sdk/common/http/ErrorMsg:errorMessage	Ljava/lang/String;
    //   34: aload_0
    //   35: getfield 49	com/hsg/sdk/common/http/JHPostTaskRunnable:taskEntity	Lcom/hsg/sdk/common/http/TaskEntity;
    //   38: aload_0
    //   39: getfield 64	com/hsg/sdk/common/http/JHPostTaskRunnable:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   42: putfield 72	com/hsg/sdk/common/http/TaskEntity:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   45: aload_0
    //   46: getfield 47	com/hsg/sdk/common/http/JHPostTaskRunnable:mHandler	Landroid/os/Handler;
    //   49: iconst_1
    //   50: invokevirtual 78	android/os/Handler:sendEmptyMessage	(I)Z
    //   53: pop
    //   54: return
    //   55: aload_0
    //   56: getfield 49	com/hsg/sdk/common/http/JHPostTaskRunnable:taskEntity	Lcom/hsg/sdk/common/http/TaskEntity;
    //   59: getfield 124	com/hsg/sdk/common/http/TaskEntity:baseUrl	Ljava/lang/String;
    //   62: ifnull +18 -> 80
    //   65: aload_0
    //   66: getfield 49	com/hsg/sdk/common/http/JHPostTaskRunnable:taskEntity	Lcom/hsg/sdk/common/http/TaskEntity;
    //   69: getfield 124	com/hsg/sdk/common/http/TaskEntity:baseUrl	Ljava/lang/String;
    //   72: ldc 126
    //   74: invokevirtual 130	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   77: ifeq +51 -> 128
    //   80: ldc 26
    //   82: ldc 132
    //   84: invokestatic 84	com/hsg/sdk/common/util/Logg:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   87: aload_0
    //   88: new 61	com/hsg/sdk/common/http/ErrorMsg
    //   91: dup
    //   92: invokespecial 62	com/hsg/sdk/common/http/ErrorMsg:<init>	()V
    //   95: putfield 64	com/hsg/sdk/common/http/JHPostTaskRunnable:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   98: aload_0
    //   99: getfield 64	com/hsg/sdk/common/http/JHPostTaskRunnable:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   102: ldc 132
    //   104: putfield 69	com/hsg/sdk/common/http/ErrorMsg:errorMessage	Ljava/lang/String;
    //   107: aload_0
    //   108: getfield 49	com/hsg/sdk/common/http/JHPostTaskRunnable:taskEntity	Lcom/hsg/sdk/common/http/TaskEntity;
    //   111: aload_0
    //   112: getfield 64	com/hsg/sdk/common/http/JHPostTaskRunnable:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   115: putfield 72	com/hsg/sdk/common/http/TaskEntity:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   118: aload_0
    //   119: getfield 47	com/hsg/sdk/common/http/JHPostTaskRunnable:mHandler	Landroid/os/Handler;
    //   122: iconst_1
    //   123: invokevirtual 78	android/os/Handler:sendEmptyMessage	(I)Z
    //   126: pop
    //   127: return
    //   128: aload_0
    //   129: getfield 49	com/hsg/sdk/common/http/JHPostTaskRunnable:taskEntity	Lcom/hsg/sdk/common/http/TaskEntity;
    //   132: getfield 135	com/hsg/sdk/common/http/TaskEntity:jhPostParams	Ljava/lang/String;
    //   135: ifnonnull +12 -> 147
    //   138: aload_0
    //   139: getfield 49	com/hsg/sdk/common/http/JHPostTaskRunnable:taskEntity	Lcom/hsg/sdk/common/http/TaskEntity;
    //   142: ldc 126
    //   144: putfield 135	com/hsg/sdk/common/http/TaskEntity:jhPostParams	Ljava/lang/String;
    //   147: ldc 26
    //   149: new 137	java/lang/StringBuilder
    //   152: dup
    //   153: ldc 139
    //   155: invokespecial 141	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   158: aload_0
    //   159: getfield 49	com/hsg/sdk/common/http/JHPostTaskRunnable:taskEntity	Lcom/hsg/sdk/common/http/TaskEntity;
    //   162: getfield 124	com/hsg/sdk/common/http/TaskEntity:baseUrl	Ljava/lang/String;
    //   165: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   171: invokestatic 84	com/hsg/sdk/common/util/Logg:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   174: ldc 26
    //   176: new 137	java/lang/StringBuilder
    //   179: dup
    //   180: ldc 151
    //   182: invokespecial 141	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   185: aload_0
    //   186: getfield 49	com/hsg/sdk/common/http/JHPostTaskRunnable:taskEntity	Lcom/hsg/sdk/common/http/TaskEntity;
    //   189: getfield 135	com/hsg/sdk/common/http/TaskEntity:jhPostParams	Ljava/lang/String;
    //   192: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   198: invokestatic 84	com/hsg/sdk/common/util/Logg:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   201: invokestatic 157	com/jh/common/bean/ContextDTO:getWebClient	()Lcom/jh/net/JHHttpClient;
    //   204: astore 11
    //   206: aload 11
    //   208: sipush 30000
    //   211: invokevirtual 163	com/jh/net/JHHttpClient:setConnectTimeout	(I)V
    //   214: aload 11
    //   216: sipush 30000
    //   219: invokevirtual 166	com/jh/net/JHHttpClient:setReadTimeout	(I)V
    //   222: aload_0
    //   223: aload 11
    //   225: aload_0
    //   226: getfield 49	com/hsg/sdk/common/http/JHPostTaskRunnable:taskEntity	Lcom/hsg/sdk/common/http/TaskEntity;
    //   229: getfield 124	com/hsg/sdk/common/http/TaskEntity:baseUrl	Ljava/lang/String;
    //   232: aload_0
    //   233: getfield 49	com/hsg/sdk/common/http/JHPostTaskRunnable:taskEntity	Lcom/hsg/sdk/common/http/TaskEntity;
    //   236: getfield 135	com/hsg/sdk/common/http/TaskEntity:jhPostParams	Ljava/lang/String;
    //   239: invokevirtual 170	com/jh/net/JHHttpClient:request	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   242: invokespecial 172	com/hsg/sdk/common/http/JHPostTaskRunnable:dealResult	(Ljava/lang/String;)V
    //   245: return
    //   246: astore 9
    //   248: ldc 26
    //   250: new 137	java/lang/StringBuilder
    //   253: dup
    //   254: ldc 174
    //   256: invokespecial 141	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   259: aload 9
    //   261: invokevirtual 177	com/jh/net/JHUnsupportedEncodingException:getMessage	()Ljava/lang/String;
    //   264: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   267: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   270: invokestatic 84	com/hsg/sdk/common/util/Logg:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   273: aload_0
    //   274: new 61	com/hsg/sdk/common/http/ErrorMsg
    //   277: dup
    //   278: invokespecial 62	com/hsg/sdk/common/http/ErrorMsg:<init>	()V
    //   281: putfield 64	com/hsg/sdk/common/http/JHPostTaskRunnable:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   284: aload_0
    //   285: getfield 64	com/hsg/sdk/common/http/JHPostTaskRunnable:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   288: aload 9
    //   290: invokevirtual 177	com/jh/net/JHUnsupportedEncodingException:getMessage	()Ljava/lang/String;
    //   293: putfield 69	com/hsg/sdk/common/http/ErrorMsg:errorMessage	Ljava/lang/String;
    //   296: aload_0
    //   297: getfield 49	com/hsg/sdk/common/http/JHPostTaskRunnable:taskEntity	Lcom/hsg/sdk/common/http/TaskEntity;
    //   300: aload_0
    //   301: getfield 64	com/hsg/sdk/common/http/JHPostTaskRunnable:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   304: putfield 72	com/hsg/sdk/common/http/TaskEntity:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   307: aload_0
    //   308: getfield 47	com/hsg/sdk/common/http/JHPostTaskRunnable:mHandler	Landroid/os/Handler;
    //   311: iconst_1
    //   312: invokevirtual 78	android/os/Handler:sendEmptyMessage	(I)Z
    //   315: pop
    //   316: return
    //   317: astore 6
    //   319: aload 6
    //   321: invokevirtual 180	java/lang/Exception:printStackTrace	()V
    //   324: goto -123 -> 201
    //   327: astore 4
    //   329: ldc 26
    //   331: new 137	java/lang/StringBuilder
    //   334: dup
    //   335: ldc 182
    //   337: invokespecial 141	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   340: aload 4
    //   342: invokevirtual 183	com/jh/net/JHNetIOException:getMessage	()Ljava/lang/String;
    //   345: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   348: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   351: invokestatic 84	com/hsg/sdk/common/util/Logg:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   354: aload_0
    //   355: new 61	com/hsg/sdk/common/http/ErrorMsg
    //   358: dup
    //   359: invokespecial 62	com/hsg/sdk/common/http/ErrorMsg:<init>	()V
    //   362: putfield 64	com/hsg/sdk/common/http/JHPostTaskRunnable:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   365: aload_0
    //   366: getfield 64	com/hsg/sdk/common/http/JHPostTaskRunnable:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   369: aload 4
    //   371: invokevirtual 183	com/jh/net/JHNetIOException:getMessage	()Ljava/lang/String;
    //   374: putfield 69	com/hsg/sdk/common/http/ErrorMsg:errorMessage	Ljava/lang/String;
    //   377: aload_0
    //   378: getfield 49	com/hsg/sdk/common/http/JHPostTaskRunnable:taskEntity	Lcom/hsg/sdk/common/http/TaskEntity;
    //   381: aload_0
    //   382: getfield 64	com/hsg/sdk/common/http/JHPostTaskRunnable:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   385: putfield 72	com/hsg/sdk/common/http/TaskEntity:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   388: aload_0
    //   389: getfield 47	com/hsg/sdk/common/http/JHPostTaskRunnable:mHandler	Landroid/os/Handler;
    //   392: iconst_1
    //   393: invokevirtual 78	android/os/Handler:sendEmptyMessage	(I)Z
    //   396: pop
    //   397: return
    //   398: astore_2
    //   399: aload_2
    //   400: invokevirtual 184	com/jh/common/bean/ContextDTO$UnInitiateException:printStackTrace	()V
    //   403: aload_0
    //   404: new 61	com/hsg/sdk/common/http/ErrorMsg
    //   407: dup
    //   408: invokespecial 62	com/hsg/sdk/common/http/ErrorMsg:<init>	()V
    //   411: putfield 64	com/hsg/sdk/common/http/JHPostTaskRunnable:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   414: aload_0
    //   415: getfield 64	com/hsg/sdk/common/http/JHPostTaskRunnable:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   418: aload_2
    //   419: invokevirtual 185	com/jh/common/bean/ContextDTO$UnInitiateException:getMessage	()Ljava/lang/String;
    //   422: putfield 69	com/hsg/sdk/common/http/ErrorMsg:errorMessage	Ljava/lang/String;
    //   425: aload_0
    //   426: getfield 49	com/hsg/sdk/common/http/JHPostTaskRunnable:taskEntity	Lcom/hsg/sdk/common/http/TaskEntity;
    //   429: aload_0
    //   430: getfield 64	com/hsg/sdk/common/http/JHPostTaskRunnable:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   433: putfield 72	com/hsg/sdk/common/http/TaskEntity:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   436: aload_0
    //   437: getfield 47	com/hsg/sdk/common/http/JHPostTaskRunnable:mHandler	Landroid/os/Handler;
    //   440: iconst_1
    //   441: invokevirtual 78	android/os/Handler:sendEmptyMessage	(I)Z
    //   444: pop
    //   445: return
    //   446: astore 7
    //   448: aload_0
    //   449: new 61	com/hsg/sdk/common/http/ErrorMsg
    //   452: dup
    //   453: invokespecial 62	com/hsg/sdk/common/http/ErrorMsg:<init>	()V
    //   456: putfield 64	com/hsg/sdk/common/http/JHPostTaskRunnable:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   459: aload_0
    //   460: getfield 64	com/hsg/sdk/common/http/JHPostTaskRunnable:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   463: aload 7
    //   465: invokevirtual 186	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   468: putfield 69	com/hsg/sdk/common/http/ErrorMsg:errorMessage	Ljava/lang/String;
    //   471: aload_0
    //   472: getfield 49	com/hsg/sdk/common/http/JHPostTaskRunnable:taskEntity	Lcom/hsg/sdk/common/http/TaskEntity;
    //   475: aload_0
    //   476: getfield 64	com/hsg/sdk/common/http/JHPostTaskRunnable:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   479: putfield 72	com/hsg/sdk/common/http/TaskEntity:errorMsg	Lcom/hsg/sdk/common/http/ErrorMsg;
    //   482: aload_0
    //   483: getfield 47	com/hsg/sdk/common/http/JHPostTaskRunnable:mHandler	Landroid/os/Handler;
    //   486: iconst_1
    //   487: invokevirtual 78	android/os/Handler:sendEmptyMessage	(I)Z
    //   490: pop
    //   491: return
    //
    // Exception table:
    //   from	to	target	type
    //   128	147	246	com/jh/net/JHUnsupportedEncodingException
    //   147	201	246	com/jh/net/JHUnsupportedEncodingException
    //   201	245	246	com/jh/net/JHUnsupportedEncodingException
    //   319	324	246	com/jh/net/JHUnsupportedEncodingException
    //   128	147	317	java/lang/Exception
    //   147	201	317	java/lang/Exception
    //   128	147	327	com/jh/net/JHNetIOException
    //   147	201	327	com/jh/net/JHNetIOException
    //   201	245	327	com/jh/net/JHNetIOException
    //   319	324	327	com/jh/net/JHNetIOException
    //   128	147	398	com/jh/common/bean/ContextDTO$UnInitiateException
    //   147	201	398	com/jh/common/bean/ContextDTO$UnInitiateException
    //   201	245	398	com/jh/common/bean/ContextDTO$UnInitiateException
    //   319	324	398	com/jh/common/bean/ContextDTO$UnInitiateException
    //   201	245	446	java/lang/Exception
    //   319	324	446	java/lang/Exception
  }
}

/* Location:           C:\Program Files (x86)\MPhoneAssistant\res\AppStore\classes_dex2jar.jar
 * Qualified Name:     com.hsg.sdk.common.http.JHPostTaskRunnable
 * JD-Core Version:    0.6.2
 */