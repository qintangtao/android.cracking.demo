.class public Lcom/market2345/log/DownloadLog;
.super Ljava/lang/Object;
.source "DownloadLog.java"


# static fields
.field public static final DOWNLOAD_SUCCESS:I = 0x2

.field public static final INSTALL_SUCCESS:I = 0x4

.field public static final START_DOWNLOAD:I = 0x1

.field public static final START_INSTALL:I = 0x3

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/market2345/log/DownloadLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/log/DownloadLog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(ILcom/market2345/download/DownloadInfo;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/market2345/log/DownloadLog;->downloadEvent(ILcom/market2345/download/DownloadInfo;)V

    return-void
.end method

.method public static downloadEvent(IJ)V
    .locals 1
    .param p0, "type"    # I
    .param p1, "downloadId"    # J

    .prologue
    .line 63
    new-instance v0, Lcom/market2345/log/DownloadLog$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/market2345/log/DownloadLog$1;-><init>(JI)V

    invoke-virtual {v0}, Lcom/market2345/log/DownloadLog$1;->start()V

    .line 86
    return-void
.end method

.method private static downloadEvent(ILcom/market2345/download/DownloadInfo;)V
    .locals 34
    .param p0, "type"    # I
    .param p1, "downloadInfo"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 122
    if-nez p1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/download/DownloadInfo;->mSid:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-nez v29, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/download/DownloadInfo;->mSid:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v29

    if-lez v29, :cond_0

    .line 135
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .local v27, "values":Landroid/content/ContentValues;
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 137
    .local v18, "mac":Ljava/lang/String;
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 138
    .local v16, "imei":Ljava/lang/String;
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, "androidId":Ljava/lang/String;
    sget-object v9, Lcom/market2345/MarketApplication;->channel:Ljava/lang/String;

    .line 141
    .local v9, "channel":Ljava/lang/String;
    const-string v29, "soft_id"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/download/DownloadInfo;->mSid:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v29, "mac"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v29, "imei"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v29, "android_id"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v29, "type"

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    const-string v29, "is_update"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/market2345/download/DownloadInfo;->mIsUpdate:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    const-string v29, "platform"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/download/DownloadInfo;->mPlatform:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v29, "version"

    const-string v30, "3.0.242702"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v29, "vercode"

    const/16 v30, 0x26

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string v29, "channel"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v29, "softName"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/download/DownloadInfo;->mTitle:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v29, "sourceFrom"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/market2345/download/DownloadInfo;->mSourceFrom:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v29, "download_id"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "i"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/market2345/download/DownloadInfo;->mId:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "v"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const/16 v31, 0x78

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v29, "reported"

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/market2345/MarketApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    sget-object v30, Lcom/market2345/common/util/DownloadReportProvider;->DOWNLOAD_REPORT_URL:Landroid/net/Uri;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v26

    .line 157
    .local v26, "uri":Landroid/net/Uri;
    if-eqz v26, :cond_2

    invoke-static/range {v26 .. v26}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 158
    .local v14, "id":J
    :goto_1
    const-wide/16 v30, 0x0

    cmp-long v29, v14, v30

    if-lez v29, :cond_0

    .line 160
    invoke-static {}, Lcom/market2345/http/HttpRequestUtil;->getInstace()Lcom/market2345/http/HttpRequestUtil;

    move-result-object v12

    .line 161
    .local v12, "httpRequestUtil":Lcom/market2345/http/HttpRequestUtil;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v19, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v29, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "softId"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/download/DownloadInfo;->mSid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-direct/range {v29 .. v31}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v29, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "mac"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v29, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "imei"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v29, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "deviceId"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v29, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "type"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v29, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "platform"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/download/DownloadInfo;->mPlatform:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-direct/range {v29 .. v31}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v29, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "softName"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/download/DownloadInfo;->mTitle:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-direct/range {v29 .. v31}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v29, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "sourceFrom"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget v0, v0, Lcom/market2345/download/DownloadInfo;->mSourceFrom:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v29, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "version"

    const-string v31, "3.0.242702"

    invoke-direct/range {v29 .. v31}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v29, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "vercode"

    const-string v31, "38"

    invoke-direct/range {v29 .. v31}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v29, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "channel"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v29, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "is_update"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget v0, v0, Lcom/market2345/download/DownloadInfo;->mIsUpdate:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v8, "builder":Ljava/lang/StringBuilder;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/http/message/BasicNameValuePair;

    .line 178
    .local v7, "basicNameValuePair":Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v7}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 130
    .end local v6    # "androidId":Ljava/lang/String;
    .end local v7    # "basicNameValuePair":Lorg/apache/http/message/BasicNameValuePair;
    .end local v8    # "builder":Ljava/lang/StringBuilder;
    .end local v9    # "channel":Ljava/lang/String;
    .end local v12    # "httpRequestUtil":Lcom/market2345/http/HttpRequestUtil;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "id":J
    .end local v16    # "imei":Ljava/lang/String;
    .end local v18    # "mac":Ljava/lang/String;
    .end local v19    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v26    # "uri":Landroid/net/Uri;
    .end local v27    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v11

    .line 131
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 157
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v6    # "androidId":Ljava/lang/String;
    .restart local v9    # "channel":Ljava/lang/String;
    .restart local v16    # "imei":Ljava/lang/String;
    .restart local v18    # "mac":Ljava/lang/String;
    .restart local v26    # "uri":Landroid/net/Uri;
    .restart local v27    # "values":Landroid/content/ContentValues;
    :cond_2
    const-wide/16 v14, -0x1

    goto/16 :goto_1

    .line 180
    .restart local v8    # "builder":Ljava/lang/StringBuilder;
    .restart local v12    # "httpRequestUtil":Lcom/market2345/http/HttpRequestUtil;
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "id":J
    .restart local v19    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 181
    .local v24, "sign":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/market2345/common/util/Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/market2345/common/util/Utils;->strCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 182
    .local v10, "code":Ljava/lang/String;
    const/16 v29, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 183
    new-instance v29, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "sign"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :try_start_1
    const-string v29, "http://zhushou.2345.com/index.php?c=log&d=down"

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lcom/market2345/http/HttpRequestUtil;->sentPostRequestReturnString(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v20

    .line 187
    .local v20, "res":Ljava/lang/String;
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 188
    .local v17, "json":Lorg/json/JSONObject;
    const-string v29, "code"

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 189
    .local v21, "responseCode":I
    if-nez v21, :cond_0

    .line 190
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 191
    .local v25, "updateValues":Landroid/content/ContentValues;
    const-string v29, "reported"

    const/16 v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string v28, "_id = ?"

    .line 193
    .local v28, "where":Ljava/lang/String;
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v29, 0x0

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v23, v29

    .line 194
    .local v23, "selectionArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/market2345/MarketApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    sget-object v30, Lcom/market2345/common/util/DownloadReportProvider;->DOWNLOAD_REPORT_URL:Landroid/net/Uri;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    move-object/from16 v3, v28

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v22

    .line 195
    .local v22, "rows":I
    sget-object v29, Lcom/market2345/log/DownloadLog;->TAG:Ljava/lang/String;

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "DownloadLog downloadEvent:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "*"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "*"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/market2345/download/DownloadInfo;->mId:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "*"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "platform:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/download/DownloadInfo;->mPlatform:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/market2345/base/log/L;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 197
    .end local v17    # "json":Lorg/json/JSONObject;
    .end local v20    # "res":Ljava/lang/String;
    .end local v21    # "responseCode":I
    .end local v22    # "rows":I
    .end local v23    # "selectionArgs":[Ljava/lang/String;
    .end local v25    # "updateValues":Landroid/content/ContentValues;
    .end local v28    # "where":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 198
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static downloadEvent(ILjava/lang/String;)V
    .locals 1
    .param p0, "type"    # I
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Lcom/market2345/log/DownloadLog$2;

    invoke-direct {v0, p1, p0}, Lcom/market2345/log/DownloadLog$2;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/market2345/log/DownloadLog$2;->start()V

    .line 117
    return-void
.end method

.method public static downloadEvent(Lcom/market2345/log/DownloadReport;)V
    .locals 19
    .param p0, "report"    # Lcom/market2345/log/DownloadReport;

    .prologue
    .line 213
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/log/DownloadReport;->softId:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/log/DownloadReport;->softId:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-gtz v15, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v4

    .line 217
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/market2345/http/HttpRequestUtil;->getInstace()Lcom/market2345/http/HttpRequestUtil;

    move-result-object v5

    .line 222
    .local v5, "httpRequestUtil":Lcom/market2345/http/HttpRequestUtil;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v8, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "softId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/log/DownloadReport;->softId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "mac"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/log/DownloadReport;->mac:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/log/DownloadReport;->imei:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "deviceId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/log/DownloadReport;->androidId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "type"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/log/DownloadReport;->downloadType:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "platform"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/log/DownloadReport;->platform:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "softName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/log/DownloadReport;->softName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "sourceFrom"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/log/DownloadReport;->sourceFrom:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/log/DownloadReport;->version:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "vercode"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/log/DownloadReport;->vercode:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "channel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/log/DownloadReport;->channel:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "is_update"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/log/DownloadReport;->isUpdate:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 239
    .local v1, "basicNameValuePair":Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v1}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 241
    .end local v1    # "basicNameValuePair":Lorg/apache/http/message/BasicNameValuePair;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 242
    .local v12, "sign":Ljava/lang/String;
    invoke-static {v12}, Lcom/market2345/common/util/Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/market2345/common/util/Utils;->strCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, "code":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 244
    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "sign"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :try_start_1
    const-string v15, "http://zhushou.2345.com/index.php?c=log&d=down"

    invoke-virtual {v5, v15, v8}, Lcom/market2345/http/HttpRequestUtil;->sentPostRequestReturnString(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v9

    .line 248
    .local v9, "res":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 249
    .local v7, "json":Lorg/json/JSONObject;
    const-string v15, "code"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 250
    .local v10, "responseCode":I
    if-nez v10, :cond_3

    .line 251
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 252
    .local v13, "updateValues":Landroid/content/ContentValues;
    const-string v15, "reported"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 253
    const-string v14, "_id = ?"

    .line 254
    .local v14, "where":Ljava/lang/String;
    const/4 v15, 0x1

    new-array v11, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/log/DownloadReport;->id:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v11, v15

    .line 255
    .local v11, "selectionArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/market2345/MarketApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Lcom/market2345/common/util/DownloadReportProvider;->DOWNLOAD_REPORT_URL:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13, v14, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 257
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "updateValues":Landroid/content/ContentValues;
    .end local v14    # "where":Ljava/lang/String;
    :cond_3
    sget-object v15, Lcom/market2345/log/DownloadLog;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "***DownloadLog downloadEvent:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "*"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/log/DownloadReport;->softId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "*"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/log/DownloadReport;->downloadType:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/market2345/base/log/L;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 258
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v9    # "res":Ljava/lang/String;
    .end local v10    # "responseCode":I
    :catch_1
    move-exception v4

    .line 259
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
