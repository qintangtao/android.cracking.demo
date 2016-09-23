.class public Lcom/market2345/lm/activity/AppInstallReportUtil;
.super Ljava/lang/Object;
.source "AppInstallReportUtil.java"


# static fields
.field public static final RESULT_OK:Ljava/lang/String; = "{\"code\":0}"

.field public static final UPDATE_LM_APP:I = 0x1

.field public static executor:Ljava/util/concurrent/ExecutorService;

.field private static wh:I

.field private static wm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 67
    sput v0, Lcom/market2345/lm/activity/AppInstallReportUtil;->wm:I

    .line 68
    sput v0, Lcom/market2345/lm/activity/AppInstallReportUtil;->wh:I

    .line 75
    sget-object v0, Lcom/market2345/MarketApplication;->channel:Ljava/lang/String;

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/market2345/lm/activity/AppInstallReportUtil;->executor:Ljava/util/concurrent/ExecutorService;

    .line 78
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/lm/activity/ReportInfo;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/lm/activity/ReportInfo;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/market2345/lm/activity/AppInstallReportUtil;->sendData(Lcom/market2345/lm/activity/ReportInfo;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-static {p0}, Lcom/market2345/lm/activity/AppInstallReportUtil;->sendLMUpdateUnReportedLog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-static {p0}, Lcom/market2345/lm/activity/AppInstallReportUtil;->sendLMUnReportedLog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-static {p0, p1, p2, p3}, Lcom/market2345/lm/activity/AppInstallReportUtil;->sendUpdate(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method

.method private static fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "buffer"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 505
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    invoke-virtual {p2, p0, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :goto_0
    return-void

    .line 508
    :cond_0
    const-string v0, ""

    invoke-virtual {p2, p0, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 513
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 514
    .local v2, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 516
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "mac":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 518
    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 520
    :cond_0
    return-object v1
.end method

.method private static getSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 524
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 525
    :cond_0
    const/4 v3, 0x0

    .line 534
    :goto_0
    return-object v3

    .line 528
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 529
    .local v0, "keyBytes":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "HmacSHA1"

    invoke-direct {v4, v0, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 530
    .local v4, "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "HmacSHA1"

    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 531
    .local v1, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v1, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 532
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    .line 533
    .local v2, "rawHmac":[B
    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 534
    .local v3, "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static reportLMUpdate(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "versionName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 481
    sget-object v0, Lcom/market2345/MarketApplication;->channel:Ljava/lang/String;

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/market2345/lm/activity/AppInstallReportUtil;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 482
    sget-object v0, Lcom/market2345/lm/activity/AppInstallReportUtil;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/market2345/lm/activity/AppInstallReportUtil$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/market2345/lm/activity/AppInstallReportUtil$3;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 501
    :cond_0
    return-void
.end method

.method public static varargs reportLianMengAppInstall(Landroid/content/Context;[Lcom/market2345/lm/activity/ReportInfo;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "infos"    # [Lcom/market2345/lm/activity/ReportInfo;

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/market2345/lm/activity/AppInstallReportUtil$1;

    invoke-direct {v1, p1, p0}, Lcom/market2345/lm/activity/AppInstallReportUtil$1;-><init>([Lcom/market2345/lm/activity/ReportInfo;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 94
    return-void
.end method

.method public static reportUnReportedLog(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/datacenter/DataCenterObserver;->getMarketHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/market2345/lm/activity/AppInstallReportUtil$2;

    invoke-direct {v1, p0}, Lcom/market2345/lm/activity/AppInstallReportUtil$2;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    return-void
.end method

.method private static saveUnReportUpdateInfos(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 466
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 467
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 468
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "update_content"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    sget-object v2, Lcom/market2345/common/util/MarketProvider;->REPORT_LM_UPDATE_URL:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 470
    return-void
.end method

.method private static sendData(Lcom/market2345/lm/activity/ReportInfo;Landroid/content/Context;)V
    .locals 44
    .param p0, "rinfo"    # Lcom/market2345/lm/activity/ReportInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/lm/activity/ReportInfo;->installed:Z

    move/from16 v38, v0

    if-eqz v38, :cond_0

    const-string v38, "com.service.usbhelper"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/lm/activity/ReportInfo;->packageName:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 186
    invoke-static/range {p1 .. p1}, Lcom/startup/usbhelper/StartUpHelper;->init(Landroid/content/Context;)V

    .line 189
    :cond_0
    const/4 v7, 0x0

    .line 198
    .local v7, "appid":Ljava/lang/String;
    const-string v21, "Android"

    .line 206
    .local v21, "os":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v38

    if-nez v38, :cond_3

    .line 207
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/lm/activity/ReportInfo;->id:I

    move/from16 v38, v0

    if-gez v38, :cond_1

    .line 208
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    .line 209
    .local v35, "values":Landroid/content/ContentValues;
    const-string v38, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/lm/activity/ReportInfo;->packageName:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v39, "installed"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/lm/activity/ReportInfo;->installed:Z

    move/from16 v38, v0

    if-eqz v38, :cond_2

    const/16 v38, 0x1

    :goto_0
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    const-string v38, "sourcefrom"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/lm/activity/ReportInfo;->sourceFrom:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    sget-object v39, Lcom/market2345/common/util/MarketProvider;->REPORT_URL:Landroid/net/Uri;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 366
    .end local v35    # "values":Landroid/content/ContentValues;
    :cond_1
    :goto_1
    return-void

    .line 210
    .restart local v35    # "values":Landroid/content/ContentValues;
    :cond_2
    const/16 v38, 0x2

    goto :goto_0

    .line 216
    .end local v35    # "values":Landroid/content/ContentValues;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    .line 218
    .local v26, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/lm/activity/ReportInfo;->packageName:Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x80

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 219
    .local v17, "info":Landroid/content/pm/PackageInfo;
    invoke-static/range {v17 .. v17}, Lcom/market2345/common/util/Utils;->getAppID(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 223
    .end local v17    # "info":Landroid/content/pm/PackageInfo;
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_1

    .line 227
    invoke-static/range {p1 .. p1}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getICCID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 228
    .local v14, "iccid":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 229
    .local v15, "imei":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 230
    .local v16, "imsi":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 231
    .local v19, "mac":Ljava/lang/String;
    sget-object v20, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 232
    .local v20, "model":Ljava/lang/String;
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    const-wide/16 v42, 0x3e8

    div-long v40, v40, v42

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 234
    .local v33, "time":Ljava/lang/String;
    sget-object v10, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 235
    .local v10, "device":Ljava/lang/String;
    sget-object v22, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 237
    .local v22, "os_version":Ljava/lang/String;
    sget v38, Lcom/market2345/lm/activity/AppInstallReportUtil;->wm:I

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_4

    sget v38, Lcom/market2345/lm/activity/AppInstallReportUtil;->wh:I

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_5

    .line 238
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v38

    const-string v39, "window"

    invoke-virtual/range {v38 .. v39}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/view/WindowManager;

    .line 239
    .local v37, "winm":Landroid/view/WindowManager;
    invoke-interface/range {v37 .. v37}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/Display;->getWidth()I

    move-result v38

    sput v38, Lcom/market2345/lm/activity/AppInstallReportUtil;->wm:I

    .line 240
    invoke-interface/range {v37 .. v37}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/Display;->getHeight()I

    move-result v38

    sput v38, Lcom/market2345/lm/activity/AppInstallReportUtil;->wh:I

    .line 242
    .end local v37    # "winm":Landroid/view/WindowManager;
    :cond_5
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    sget v39, Lcom/market2345/lm/activity/AppInstallReportUtil;->wm:I

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " * "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sget v39, Lcom/market2345/lm/activity/AppInstallReportUtil;->wh:I

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 243
    .local v29, "resolution":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/market2345/common/util/ApplicationUtils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "access":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/lm/activity/ReportInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 246
    .local v25, "pkg":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v5

    .line 247
    .local v5, "app":Lcom/market2345/model/InstalledApp;
    if-eqz v5, :cond_1

    .line 249
    iget-object v6, v5, Lcom/market2345/model/InstalledApp;->versionName:Ljava/lang/String;

    .line 250
    .local v6, "app_version":Ljava/lang/String;
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v5, Lcom/market2345/model/InstalledApp;->versionCode:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 252
    .local v36, "version_code":Ljava/lang/String;
    new-instance v8, Lcom/google/gson/JsonObject;

    invoke-direct {v8}, Lcom/google/gson/JsonObject;-><init>()V

    .line 253
    .local v8, "buffer":Lcom/google/gson/JsonObject;
    const-string v38, "appid"

    move-object/from16 v0, v38

    invoke-static {v0, v7, v8}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 254
    sget-object v38, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_6

    .line 255
    invoke-static/range {p1 .. p1}, Lcom/market2345/lm/util/ChannelUtil;->checkLM(Landroid/content/Context;)Z

    .line 257
    :cond_6
    const-string v38, "cid"

    sget-object v39, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-static {v0, v1, v8}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 258
    const-string v38, "iccid"

    move-object/from16 v0, v38

    invoke-static {v0, v14, v8}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 259
    const-string v38, "imei"

    move-object/from16 v0, v38

    invoke-static {v0, v15, v8}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 260
    const-string v38, "imsi"

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-static {v0, v1, v8}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 261
    const-string v38, "mac"

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 262
    const-string v38, "mark"

    const-string v39, "1"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-static {v0, v1, v8}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 263
    const-string v38, "model"

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 264
    const-string v38, "time"

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-static {v0, v1, v8}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 266
    const-string v38, "device"

    move-object/from16 v0, v38

    invoke-static {v0, v10, v8}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 267
    const-string v38, "os"

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 268
    const-string v38, "os_version"

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 269
    const-string v38, "resolution"

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-static {v0, v1, v8}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 270
    const-string v38, "access"

    move-object/from16 v0, v38

    invoke-static {v0, v4, v8}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 271
    const-string v38, "package"

    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 272
    const-string v38, "app_version"

    move-object/from16 v0, v38

    invoke-static {v0, v6, v8}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 273
    const-string v38, "version_code"

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-static {v0, v1, v8}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 274
    const-string v38, "client_version"

    const-string v39, "3.0.242702"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-static {v0, v1, v8}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 275
    const-string v39, "install_status"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/lm/activity/ReportInfo;->installed:Z

    move/from16 v38, v0

    if-eqz v38, :cond_7

    const/16 v38, 0x1

    :goto_3
    move-object/from16 v0, v40

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v40, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-static {v0, v1, v8}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 276
    const-string v38, "source_from"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/lm/activity/ReportInfo;->sourceFrom:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ""

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-static {v0, v1, v8}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 280
    const-string v34, "http://app.50bang.org/api/?api=soft_zhushou_input"

    .line 282
    .local v34, "url":Ljava/lang/String;
    :try_start_1
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 283
    .local v9, "client":Lorg/apache/http/client/HttpClient;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v23, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-virtual {v8}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v30

    .line 285
    .local v30, "result":Ljava/lang/String;
    const-string v38, "NeA==Sv#i8wMDg.G9+M#j30M08rVst0"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/market2345/common/util/Utils;->strCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 286
    .local v32, "strCode":Ljava/lang/String;
    new-instance v38, Lorg/apache/http/message/BasicNameValuePair;

    const-string v39, "content"

    const/16 v40, 0x0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v41

    add-int/lit8 v41, v41, -0x1

    move-object/from16 v0, v32

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v38 .. v40}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v12, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v38, "UTF-8"

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-direct {v12, v0, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 288
    .local v12, "entity":Lorg/apache/http/HttpEntity;
    new-instance v28, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 289
    .local v28, "request":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 290
    move-object/from16 v0, v28

    invoke-interface {v9, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 291
    .local v13, "httpPostResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v38

    const/16 v39, 0xc8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_e

    .line 292
    invoke-static {v13}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v18

    .line 293
    .local v18, "lastResult":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_c

    .line 294
    new-instance v24, Lcom/google/gson/JsonParser;

    invoke-direct/range {v24 .. v24}, Lcom/google/gson/JsonParser;-><init>()V

    .line 295
    .local v24, "parser":Lcom/google/gson/JsonParser;
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v31

    .line 296
    .local v31, "rsd":Lcom/google/gson/JsonObject;
    const-string v38, "code"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_a

    .line 297
    const-string v38, "code"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v27

    .line 298
    .local v27, "r":I
    if-eqz v27, :cond_9

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/lm/activity/ReportInfo;->id:I

    move/from16 v38, v0

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1

    .line 300
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    .line 301
    .restart local v35    # "values":Landroid/content/ContentValues;
    const-string v38, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/lm/activity/ReportInfo;->packageName:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v39, "installed"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/lm/activity/ReportInfo;->installed:Z

    move/from16 v38, v0

    if-eqz v38, :cond_8

    const/16 v38, 0x1

    :goto_4
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    const-string v38, "sourcefrom"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/lm/activity/ReportInfo;->sourceFrom:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    sget-object v39, Lcom/market2345/common/util/MarketProvider;->REPORT_URL:Landroid/net/Uri;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    .line 338
    .end local v9    # "client":Lorg/apache/http/client/HttpClient;
    .end local v12    # "entity":Lorg/apache/http/HttpEntity;
    .end local v13    # "httpPostResponse":Lorg/apache/http/HttpResponse;
    .end local v18    # "lastResult":Ljava/lang/String;
    .end local v23    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v24    # "parser":Lcom/google/gson/JsonParser;
    .end local v27    # "r":I
    .end local v28    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v30    # "result":Ljava/lang/String;
    .end local v31    # "rsd":Lcom/google/gson/JsonObject;
    .end local v32    # "strCode":Ljava/lang/String;
    .end local v35    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v11

    .line 339
    .local v11, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v11}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 340
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/lm/activity/ReportInfo;->id:I

    move/from16 v38, v0

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1

    .line 341
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    .line 342
    .restart local v35    # "values":Landroid/content/ContentValues;
    const-string v38, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/lm/activity/ReportInfo;->packageName:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v39, "installed"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/lm/activity/ReportInfo;->installed:Z

    move/from16 v38, v0

    if-eqz v38, :cond_10

    const/16 v38, 0x1

    :goto_5
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    const-string v38, "sourcefrom"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/lm/activity/ReportInfo;->sourceFrom:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    sget-object v39, Lcom/market2345/common/util/MarketProvider;->REPORT_URL:Landroid/net/Uri;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_1

    .line 220
    .end local v4    # "access":Ljava/lang/String;
    .end local v5    # "app":Lcom/market2345/model/InstalledApp;
    .end local v6    # "app_version":Ljava/lang/String;
    .end local v8    # "buffer":Lcom/google/gson/JsonObject;
    .end local v10    # "device":Ljava/lang/String;
    .end local v11    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v14    # "iccid":Ljava/lang/String;
    .end local v15    # "imei":Ljava/lang/String;
    .end local v16    # "imsi":Ljava/lang/String;
    .end local v19    # "mac":Ljava/lang/String;
    .end local v20    # "model":Ljava/lang/String;
    .end local v22    # "os_version":Ljava/lang/String;
    .end local v25    # "pkg":Ljava/lang/String;
    .end local v29    # "resolution":Ljava/lang/String;
    .end local v33    # "time":Ljava/lang/String;
    .end local v34    # "url":Ljava/lang/String;
    .end local v35    # "values":Landroid/content/ContentValues;
    .end local v36    # "version_code":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 221
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 275
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "access":Ljava/lang/String;
    .restart local v5    # "app":Lcom/market2345/model/InstalledApp;
    .restart local v6    # "app_version":Ljava/lang/String;
    .restart local v8    # "buffer":Lcom/google/gson/JsonObject;
    .restart local v10    # "device":Ljava/lang/String;
    .restart local v14    # "iccid":Ljava/lang/String;
    .restart local v15    # "imei":Ljava/lang/String;
    .restart local v16    # "imsi":Ljava/lang/String;
    .restart local v19    # "mac":Ljava/lang/String;
    .restart local v20    # "model":Ljava/lang/String;
    .restart local v22    # "os_version":Ljava/lang/String;
    .restart local v25    # "pkg":Ljava/lang/String;
    .restart local v29    # "resolution":Ljava/lang/String;
    .restart local v33    # "time":Ljava/lang/String;
    .restart local v36    # "version_code":Ljava/lang/String;
    :cond_7
    const/16 v38, 0x2

    goto/16 :goto_3

    .line 302
    .restart local v9    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v12    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v13    # "httpPostResponse":Lorg/apache/http/HttpResponse;
    .restart local v18    # "lastResult":Ljava/lang/String;
    .restart local v23    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v24    # "parser":Lcom/google/gson/JsonParser;
    .restart local v27    # "r":I
    .restart local v28    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v30    # "result":Ljava/lang/String;
    .restart local v31    # "rsd":Lcom/google/gson/JsonObject;
    .restart local v32    # "strCode":Ljava/lang/String;
    .restart local v34    # "url":Ljava/lang/String;
    .restart local v35    # "values":Landroid/content/ContentValues;
    :cond_8
    const/16 v38, 0x2

    goto/16 :goto_4

    .line 307
    .end local v35    # "values":Landroid/content/ContentValues;
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/lm/activity/ReportInfo;->id:I

    move/from16 v38, v0

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_1

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    sget-object v39, Lcom/market2345/common/util/MarketProvider;->REPORT_URL:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/lm/activity/ReportInfo;->id:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    invoke-static/range {v39 .. v41}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v39

    const/16 v40, 0x0

    const/16 v41, 0x0

    invoke-virtual/range {v38 .. v41}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 347
    .end local v9    # "client":Lorg/apache/http/client/HttpClient;
    .end local v12    # "entity":Lorg/apache/http/HttpEntity;
    .end local v13    # "httpPostResponse":Lorg/apache/http/HttpResponse;
    .end local v18    # "lastResult":Ljava/lang/String;
    .end local v23    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v24    # "parser":Lcom/google/gson/JsonParser;
    .end local v27    # "r":I
    .end local v28    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v30    # "result":Ljava/lang/String;
    .end local v31    # "rsd":Lcom/google/gson/JsonObject;
    .end local v32    # "strCode":Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 348
    .local v11, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v11}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 349
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/lm/activity/ReportInfo;->id:I

    move/from16 v38, v0

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1

    .line 350
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    .line 351
    .restart local v35    # "values":Landroid/content/ContentValues;
    const-string v38, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/lm/activity/ReportInfo;->packageName:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v39, "installed"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/lm/activity/ReportInfo;->installed:Z

    move/from16 v38, v0

    if-eqz v38, :cond_11

    const/16 v38, 0x1

    :goto_6
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    const-string v38, "sourcefrom"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/lm/activity/ReportInfo;->sourceFrom:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    sget-object v39, Lcom/market2345/common/util/MarketProvider;->REPORT_URL:Landroid/net/Uri;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_1

    .line 312
    .end local v11    # "e":Lorg/apache/http/client/ClientProtocolException;
    .end local v35    # "values":Landroid/content/ContentValues;
    .restart local v9    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v12    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v13    # "httpPostResponse":Lorg/apache/http/HttpResponse;
    .restart local v18    # "lastResult":Ljava/lang/String;
    .restart local v23    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v24    # "parser":Lcom/google/gson/JsonParser;
    .restart local v28    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v30    # "result":Ljava/lang/String;
    .restart local v31    # "rsd":Lcom/google/gson/JsonObject;
    .restart local v32    # "strCode":Ljava/lang/String;
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/lm/activity/ReportInfo;->id:I

    move/from16 v38, v0

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1

    .line 313
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    .line 314
    .restart local v35    # "values":Landroid/content/ContentValues;
    const-string v38, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/lm/activity/ReportInfo;->packageName:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v39, "installed"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/lm/activity/ReportInfo;->installed:Z

    move/from16 v38, v0

    if-eqz v38, :cond_b

    const/16 v38, 0x1

    :goto_7
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    const-string v38, "sourcefrom"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/lm/activity/ReportInfo;->sourceFrom:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    sget-object v39, Lcom/market2345/common/util/MarketProvider;->REPORT_URL:Landroid/net/Uri;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 356
    .end local v9    # "client":Lorg/apache/http/client/HttpClient;
    .end local v12    # "entity":Lorg/apache/http/HttpEntity;
    .end local v13    # "httpPostResponse":Lorg/apache/http/HttpResponse;
    .end local v18    # "lastResult":Ljava/lang/String;
    .end local v23    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v24    # "parser":Lcom/google/gson/JsonParser;
    .end local v28    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v30    # "result":Ljava/lang/String;
    .end local v31    # "rsd":Lcom/google/gson/JsonObject;
    .end local v32    # "strCode":Ljava/lang/String;
    .end local v35    # "values":Landroid/content/ContentValues;
    :catch_3
    move-exception v11

    .line 357
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 358
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/lm/activity/ReportInfo;->id:I

    move/from16 v38, v0

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1

    .line 359
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    .line 360
    .restart local v35    # "values":Landroid/content/ContentValues;
    const-string v38, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/lm/activity/ReportInfo;->packageName:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v39, "installed"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/lm/activity/ReportInfo;->installed:Z

    move/from16 v38, v0

    if-eqz v38, :cond_12

    const/16 v38, 0x1

    :goto_8
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    const-string v38, "sourcefrom"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/lm/activity/ReportInfo;->sourceFrom:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 363
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    sget-object v39, Lcom/market2345/common/util/MarketProvider;->REPORT_URL:Landroid/net/Uri;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_1

    .line 315
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v9    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v12    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v13    # "httpPostResponse":Lorg/apache/http/HttpResponse;
    .restart local v18    # "lastResult":Ljava/lang/String;
    .restart local v23    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v24    # "parser":Lcom/google/gson/JsonParser;
    .restart local v28    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v30    # "result":Ljava/lang/String;
    .restart local v31    # "rsd":Lcom/google/gson/JsonObject;
    .restart local v32    # "strCode":Ljava/lang/String;
    :cond_b
    const/16 v38, 0x2

    goto/16 :goto_7

    .line 321
    .end local v24    # "parser":Lcom/google/gson/JsonParser;
    .end local v31    # "rsd":Lcom/google/gson/JsonObject;
    .end local v35    # "values":Landroid/content/ContentValues;
    :cond_c
    :try_start_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/lm/activity/ReportInfo;->id:I

    move/from16 v38, v0

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1

    .line 322
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    .line 323
    .restart local v35    # "values":Landroid/content/ContentValues;
    const-string v38, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/lm/activity/ReportInfo;->packageName:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v39, "installed"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/lm/activity/ReportInfo;->installed:Z

    move/from16 v38, v0

    if-eqz v38, :cond_d

    const/16 v38, 0x1

    :goto_9
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v38, "sourcefrom"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/lm/activity/ReportInfo;->sourceFrom:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    sget-object v39, Lcom/market2345/common/util/MarketProvider;->REPORT_URL:Landroid/net/Uri;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_1

    .line 324
    :cond_d
    const/16 v38, 0x2

    goto :goto_9

    .line 330
    .end local v18    # "lastResult":Ljava/lang/String;
    .end local v35    # "values":Landroid/content/ContentValues;
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/lm/activity/ReportInfo;->id:I

    move/from16 v38, v0

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_1

    .line 331
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    .line 332
    .restart local v35    # "values":Landroid/content/ContentValues;
    const-string v38, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/lm/activity/ReportInfo;->packageName:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v39, "installed"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/lm/activity/ReportInfo;->installed:Z

    move/from16 v38, v0

    if-eqz v38, :cond_f

    const/16 v38, 0x1

    :goto_a
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    const-string v38, "sourcefrom"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/lm/activity/ReportInfo;->sourceFrom:I

    move/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    sget-object v39, Lcom/market2345/common/util/MarketProvider;->REPORT_URL:Landroid/net/Uri;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 333
    :cond_f
    const/16 v38, 0x2

    goto :goto_a

    .line 343
    .end local v9    # "client":Lorg/apache/http/client/HttpClient;
    .end local v12    # "entity":Lorg/apache/http/HttpEntity;
    .end local v13    # "httpPostResponse":Lorg/apache/http/HttpResponse;
    .end local v23    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v28    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v30    # "result":Ljava/lang/String;
    .end local v32    # "strCode":Ljava/lang/String;
    .local v11, "e":Ljava/io/UnsupportedEncodingException;
    :cond_10
    const/16 v38, 0x2

    goto/16 :goto_5

    .line 352
    .local v11, "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_11
    const/16 v38, 0x2

    goto/16 :goto_6

    .line 361
    .local v11, "e":Ljava/lang/Exception;
    :cond_12
    const/16 v38, 0x2

    goto/16 :goto_8
.end method

.method private static sendLMUnReportedLog(Landroid/content/Context;)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v14, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/market2345/common/util/MarketProvider;->REPORT_URL:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 147
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 148
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 149
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 150
    .local v8, "index_id":I
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 151
    .local v9, "index_source_from":I
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 152
    .local v13, "pack":I
    const-string v0, "installed"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 153
    .local v12, "installed":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v11, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/activity/ReportInfo;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    new-instance v10, Lcom/market2345/lm/activity/ReportInfo;

    invoke-direct {v10}, Lcom/market2345/lm/activity/ReportInfo;-><init>()V

    .line 156
    .local v10, "info":Lcom/market2345/lm/activity/ReportInfo;
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/market2345/lm/activity/ReportInfo;->id:I

    .line 157
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/market2345/lm/activity/ReportInfo;->packageName:Ljava/lang/String;

    .line 158
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v14, :cond_1

    move v0, v14

    :goto_1
    iput-boolean v0, v10, Lcom/market2345/lm/activity/ReportInfo;->installed:Z

    .line 159
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/market2345/lm/activity/ReportInfo;->sourceFrom:I

    .line 160
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 167
    .end local v8    # "index_id":I
    .end local v9    # "index_source_from":I
    .end local v10    # "info":Lcom/market2345/lm/activity/ReportInfo;
    .end local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/activity/ReportInfo;>;"
    .end local v12    # "installed":I
    .end local v13    # "pack":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 158
    .restart local v8    # "index_id":I
    .restart local v9    # "index_source_from":I
    .restart local v10    # "info":Lcom/market2345/lm/activity/ReportInfo;
    .restart local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/activity/ReportInfo;>;"
    .restart local v12    # "installed":I
    .restart local v13    # "pack":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 162
    .end local v10    # "info":Lcom/market2345/lm/activity/ReportInfo;
    :cond_2
    :try_start_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/market2345/lm/activity/ReportInfo;

    .line 163
    .restart local v10    # "info":Lcom/market2345/lm/activity/ReportInfo;
    invoke-static {v10, p0}, Lcom/market2345/lm/activity/AppInstallReportUtil;->sendData(Lcom/market2345/lm/activity/ReportInfo;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 167
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "index_id":I
    .end local v9    # "index_source_from":I
    .end local v10    # "info":Lcom/market2345/lm/activity/ReportInfo;
    .end local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/activity/ReportInfo;>;"
    .end local v12    # "installed":I
    .end local v13    # "pack":I
    :cond_3
    if-eqz v6, :cond_4

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_4
    return-void
.end method

.method private static sendLMUpdateUnReportedLog(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/market2345/common/util/MarketProvider;->REPORT_LM_UPDATE_URL:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 122
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 123
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 124
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 125
    .local v8, "index_id":I
    const-string v0, "update_content"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 126
    .local v9, "index_update_content":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v11, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/bean/LMUpdateInfo;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    new-instance v10, Lcom/market2345/lm/bean/LMUpdateInfo;

    invoke-direct {v10}, Lcom/market2345/lm/bean/LMUpdateInfo;-><init>()V

    .line 129
    .local v10, "info":Lcom/market2345/lm/bean/LMUpdateInfo;
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v10, Lcom/market2345/lm/bean/LMUpdateInfo;->id:J

    .line 130
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/market2345/lm/bean/LMUpdateInfo;->content:Ljava/lang/String;

    .line 131
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 138
    .end local v8    # "index_id":I
    .end local v9    # "index_update_content":I
    .end local v10    # "info":Lcom/market2345/lm/bean/LMUpdateInfo;
    .end local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/bean/LMUpdateInfo;>;"
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 133
    .restart local v8    # "index_id":I
    .restart local v9    # "index_update_content":I
    .restart local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/bean/LMUpdateInfo;>;"
    :cond_1
    :try_start_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/market2345/lm/bean/LMUpdateInfo;

    .line 134
    .restart local v10    # "info":Lcom/market2345/lm/bean/LMUpdateInfo;
    invoke-static {v10, p0}, Lcom/market2345/lm/activity/AppInstallReportUtil;->sendUnReportUpdateInfo(Lcom/market2345/lm/bean/LMUpdateInfo;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 138
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "index_id":I
    .end local v9    # "index_update_content":I
    .end local v10    # "info":Lcom/market2345/lm/bean/LMUpdateInfo;
    .end local v11    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/bean/LMUpdateInfo;>;"
    :cond_2
    if-eqz v6, :cond_3

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_3
    return-void
.end method

.method private static sendUnReportUpdateInfo(Lcom/market2345/lm/bean/LMUpdateInfo;Landroid/content/Context;)V
    .locals 15
    .param p0, "info"    # Lcom/market2345/lm/bean/LMUpdateInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 370
    const-string v10, "http://app.50bang.org/api/?api=soft_zhushou_update"

    .line 371
    .local v10, "url":Ljava/lang/String;
    iget-object v8, p0, Lcom/market2345/lm/bean/LMUpdateInfo;->content:Ljava/lang/String;

    .line 373
    .local v8, "result":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 374
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v5, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    const-string v11, "NeA==Sv#i8wMDg.G9+M#j30M08rVst0"

    invoke-static {v8, v11}, Lcom/market2345/common/util/Utils;->strCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 376
    .local v9, "strCode":Ljava/lang/String;
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "content"

    const/4 v13, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v11, "UTF-8"

    invoke-direct {v2, v5, v11}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 378
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v6, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 379
    .local v6, "request":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v6, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 380
    invoke-interface {v0, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 381
    .local v3, "httpPostResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_0

    .line 382
    invoke-static {v3}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v4

    .line 383
    .local v4, "lastResult":Ljava/lang/String;
    const-string v11, "{\"code\":0}"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 384
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 385
    .local v7, "resolver":Landroid/content/ContentResolver;
    sget-object v11, Lcom/market2345/common/util/MarketProvider;->REPORT_LM_UPDATE_URL:Landroid/net/Uri;

    iget-wide v12, p0, Lcom/market2345/lm/bean/LMUpdateInfo;->id:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v12, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "httpPostResponse":Lorg/apache/http/HttpResponse;
    .end local v4    # "lastResult":Ljava/lang/String;
    .end local v5    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v6    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "resolver":Landroid/content/ContentResolver;
    .end local v9    # "strCode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v1

    .line 389
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static sendUnReportedLog()V
    .locals 27

    .prologue
    .line 539
    const-string v5, "reported = ?"

    .line 541
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v6, v2

    .line 543
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/MarketApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/market2345/common/util/DownloadReportProvider;->DOWNLOAD_REPORT_URL:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 545
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 546
    const/4 v2, -0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 547
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 548
    .local v14, "id":I
    const-string v2, "soft_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 549
    .local v22, "softId":I
    const-string v2, "mac"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 550
    .local v17, "mac":I
    const-string v2, "android_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 551
    .local v15, "imei":I
    const-string v2, "imei"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 552
    .local v8, "androidId":I
    const-string v2, "type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 553
    .local v12, "downloadType":I
    const-string v2, "platform"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 554
    .local v18, "platform":I
    const-string v2, "softName"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 555
    .local v23, "softName":I
    const-string v2, "sourceFrom"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 557
    .local v24, "sourceFrom":I
    const-string v2, "version"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 558
    .local v26, "version":I
    const-string v2, "vercode"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 559
    .local v25, "vercode":I
    const-string v2, "channel"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 560
    .local v10, "channel":I
    const-string v2, "download_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 561
    .local v11, "downloadId":I
    const-string v2, "reported"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 562
    .local v21, "reported":I
    const-string v2, "is_update"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 564
    .local v16, "isUpdate":I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v20, "reportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/log/DownloadReport;>;"
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 566
    new-instance v19, Lcom/market2345/log/DownloadReport;

    invoke-direct/range {v19 .. v19}, Lcom/market2345/log/DownloadReport;-><init>()V

    .line 567
    .local v19, "report":Lcom/market2345/log/DownloadReport;
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v19

    iput v2, v0, Lcom/market2345/log/DownloadReport;->id:I

    .line 568
    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/market2345/log/DownloadReport;->softId:Ljava/lang/String;

    .line 569
    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/market2345/log/DownloadReport;->mac:Ljava/lang/String;

    .line 570
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/market2345/log/DownloadReport;->imei:Ljava/lang/String;

    .line 571
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/market2345/log/DownloadReport;->androidId:Ljava/lang/String;

    .line 572
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v19

    iput v2, v0, Lcom/market2345/log/DownloadReport;->downloadType:I

    .line 573
    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/market2345/log/DownloadReport;->platform:Ljava/lang/String;

    .line 574
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/market2345/log/DownloadReport;->softName:Ljava/lang/String;

    .line 575
    move/from16 v0, v24

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v19

    iput v2, v0, Lcom/market2345/log/DownloadReport;->sourceFrom:I

    .line 576
    move/from16 v0, v26

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/market2345/log/DownloadReport;->version:Ljava/lang/String;

    .line 577
    move/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v19

    iput v2, v0, Lcom/market2345/log/DownloadReport;->vercode:I

    .line 578
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/market2345/log/DownloadReport;->channel:Ljava/lang/String;

    .line 579
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/market2345/log/DownloadReport;->downloadId:Ljava/lang/String;

    .line 580
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v19

    iput v2, v0, Lcom/market2345/log/DownloadReport;->reported:I

    .line 581
    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v19

    iput v2, v0, Lcom/market2345/log/DownloadReport;->isUpdate:I

    .line 583
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 592
    .end local v8    # "androidId":I
    .end local v10    # "channel":I
    .end local v11    # "downloadId":I
    .end local v12    # "downloadType":I
    .end local v14    # "id":I
    .end local v15    # "imei":I
    .end local v16    # "isUpdate":I
    .end local v17    # "mac":I
    .end local v18    # "platform":I
    .end local v19    # "report":Lcom/market2345/log/DownloadReport;
    .end local v20    # "reportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/log/DownloadReport;>;"
    .end local v21    # "reported":I
    .end local v22    # "softId":I
    .end local v23    # "softName":I
    .end local v24    # "sourceFrom":I
    .end local v25    # "vercode":I
    .end local v26    # "version":I
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_0

    .line 593
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v2

    .line 586
    .restart local v8    # "androidId":I
    .restart local v10    # "channel":I
    .restart local v11    # "downloadId":I
    .restart local v12    # "downloadType":I
    .restart local v14    # "id":I
    .restart local v15    # "imei":I
    .restart local v16    # "isUpdate":I
    .restart local v17    # "mac":I
    .restart local v18    # "platform":I
    .restart local v20    # "reportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/log/DownloadReport;>;"
    .restart local v21    # "reported":I
    .restart local v22    # "softId":I
    .restart local v23    # "softName":I
    .restart local v24    # "sourceFrom":I
    .restart local v25    # "vercode":I
    .restart local v26    # "version":I
    :cond_1
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/market2345/log/DownloadReport;

    .line 587
    .restart local v19    # "report":Lcom/market2345/log/DownloadReport;
    invoke-static/range {v19 .. v19}, Lcom/market2345/log/DownloadLog;->downloadEvent(Lcom/market2345/log/DownloadReport;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 592
    .end local v8    # "androidId":I
    .end local v10    # "channel":I
    .end local v11    # "downloadId":I
    .end local v12    # "downloadType":I
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "id":I
    .end local v15    # "imei":I
    .end local v16    # "isUpdate":I
    .end local v17    # "mac":I
    .end local v18    # "platform":I
    .end local v19    # "report":Lcom/market2345/log/DownloadReport;
    .end local v20    # "reportList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/log/DownloadReport;>;"
    .end local v21    # "reported":I
    .end local v22    # "softId":I
    .end local v23    # "softName":I
    .end local v24    # "sourceFrom":I
    .end local v25    # "vercode":I
    .end local v26    # "version":I
    :cond_2
    if-eqz v9, :cond_3

    .line 593
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 598
    :cond_3
    return-void
.end method

.method private static sendUpdate(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 28
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "versionName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 398
    const/4 v4, 0x0

    .line 399
    .local v4, "appid":Ljava/lang/String;
    const/4 v10, 0x0

    .line 400
    .local v10, "iccid":Ljava/lang/String;
    const/4 v11, 0x0

    .line 401
    .local v11, "imei":Ljava/lang/String;
    const/4 v12, 0x0

    .line 402
    .local v12, "imsi":Ljava/lang/String;
    const/4 v15, 0x0

    .line 403
    .local v15, "mac":Ljava/lang/String;
    const/16 v21, 0x0

    .line 404
    .local v21, "update_version_code_old":Ljava/lang/String;
    const/16 v22, 0x0

    .line 407
    .local v22, "update_version_name_old":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 409
    .local v17, "pm":Landroid/content/pm/PackageManager;
    const/16 v24, 0x100

    :try_start_0
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 410
    .local v13, "info":Landroid/content/pm/PackageInfo;
    invoke-static {v13}, Lcom/market2345/common/util/Utils;->getAppID(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v4

    .line 411
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v13, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ""

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 412
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v22, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .end local v13    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 463
    :cond_0
    :goto_1
    return-void

    .line 413
    :catch_0
    move-exception v7

    .line 414
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 419
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getICCID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 420
    invoke-static/range {p3 .. p3}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 421
    invoke-static/range {p3 .. p3}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 422
    invoke-static/range {p3 .. p3}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 424
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 425
    .local v5, "buffer":Lcom/google/gson/JsonObject;
    const-string v24, "appid"

    move-object/from16 v0, v24

    invoke-static {v0, v4, v5}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 426
    sget-object v24, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 427
    invoke-static/range {p3 .. p3}, Lcom/market2345/lm/util/ChannelUtil;->checkLM(Landroid/content/Context;)Z

    .line 429
    :cond_2
    const-string v24, "cid"

    sget-object v25, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 430
    const-string v24, "iccid"

    move-object/from16 v0, v24

    invoke-static {v0, v10, v5}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 431
    const-string v24, "imei"

    move-object/from16 v0, v24

    invoke-static {v0, v11, v5}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 432
    const-string v24, "imsi"

    move-object/from16 v0, v24

    invoke-static {v0, v12, v5}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 433
    const-string v24, "mac"

    move-object/from16 v0, v24

    invoke-static {v0, v15, v5}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 434
    const-string v24, "update_time"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 435
    const-string v24, "update_version_code_new"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 436
    const-string v24, "update_version_name_new"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 437
    const-string v24, "update_version_code_old"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 438
    const-string v24, "update_version_name_old"

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 439
    const-string v24, "client_version"

    const-string v25, "3.0.242702"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Lcom/market2345/lm/activity/AppInstallReportUtil;->fillData(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 441
    const-string v23, "http://app.50bang.org/api/?api=soft_zhushou_update"

    .line 442
    .local v23, "url":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v19

    .line 444
    .local v19, "result":Ljava/lang/String;
    :try_start_1
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 445
    .local v6, "client":Lorg/apache/http/client/HttpClient;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v16, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    const-string v24, "NeA==Sv#i8wMDg.G9+M#j30M08rVst0"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/market2345/common/util/Utils;->strCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 447
    .local v20, "strCode":Ljava/lang/String;
    new-instance v24, Lorg/apache/http/message/BasicNameValuePair;

    const-string v25, "content"

    const/16 v26, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v24, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v8, v0, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 449
    .local v8, "entity":Lorg/apache/http/HttpEntity;
    new-instance v18, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 450
    .local v18, "request":Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 451
    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 452
    .local v9, "httpPostResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v24

    const/16 v25, 0xc8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 453
    invoke-static {v9}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v14

    .line 454
    .local v14, "lastResult":Ljava/lang/String;
    const-string v24, "{\"code\":0}"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 455
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/market2345/lm/activity/AppInstallReportUtil;->saveUnReportUpdateInfos(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 460
    .end local v6    # "client":Lorg/apache/http/client/HttpClient;
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v9    # "httpPostResponse":Lorg/apache/http/HttpResponse;
    .end local v14    # "lastResult":Ljava/lang/String;
    .end local v16    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v18    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v20    # "strCode":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 461
    .local v7, "e":Ljava/lang/Exception;
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/market2345/lm/activity/AppInstallReportUtil;->saveUnReportUpdateInfos(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 458
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v8    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v9    # "httpPostResponse":Lorg/apache/http/HttpResponse;
    .restart local v16    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v18    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v20    # "strCode":Ljava/lang/String;
    :cond_3
    :try_start_2
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/market2345/lm/activity/AppInstallReportUtil;->saveUnReportUpdateInfos(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method
