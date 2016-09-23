.class public Lcom/market2345/common/util/ApplicationUtils;
.super Ljava/lang/Object;
.source "ApplicationUtils.java"


# static fields
.field public static ACTIVITY_HIGHT:I = 0x0

.field public static ACTIVITY_TOP_HIGHT:I = 0x0

.field public static ACTIVITY_WIDTH:I = 0x0

.field protected static final DATE_TIME_LASTMODIFIED:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field protected static final DATE_TIME_NOT_TODAY_FORMAT:Ljava/lang/String; = "MM-dd"

.field protected static final DATE_TIME_TODAY:Ljava/lang/String; = "\u4eca\u5929 HH:mm"

.field protected static final DATE_TIME_YESTERDAY:Ljava/lang/String; = "\u6628\u5929 HH:mm"

.field private static final ENLARGE:I = 0xc8

.field private static final MyDENSITY_XHIGH:I = 0x140

.field private static TAG:Ljava/lang/String;

.field public static isServiceStart:Z

.field public static isfavDateChange:Z

.field public static isnigh:Ljava/lang/Boolean;

.field private static mFaviconSize:I

.field private static mFaviconSizeForBookmarks:I

.field private static mImageButtonSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 65
    const-string v0, "ApplicationUtils"

    sput-object v0, Lcom/market2345/common/util/ApplicationUtils;->TAG:Ljava/lang/String;

    .line 67
    sput v2, Lcom/market2345/common/util/ApplicationUtils;->mFaviconSize:I

    .line 69
    sput v2, Lcom/market2345/common/util/ApplicationUtils;->mImageButtonSize:I

    .line 71
    sput v2, Lcom/market2345/common/util/ApplicationUtils;->mFaviconSizeForBookmarks:I

    .line 516
    sput v1, Lcom/market2345/common/util/ApplicationUtils;->ACTIVITY_HIGHT:I

    .line 518
    sput v1, Lcom/market2345/common/util/ApplicationUtils;->ACTIVITY_WIDTH:I

    .line 520
    sput v1, Lcom/market2345/common/util/ApplicationUtils;->ACTIVITY_TOP_HIGHT:I

    .line 1221
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/market2345/common/util/ApplicationUtils;->isnigh:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UrlencodeToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 214
    if-nez p0, :cond_0

    .line 216
    const-string v1, ""

    .line 227
    :goto_0
    return-object v1

    .line 221
    :cond_0
    :try_start_0
    const-string v2, "utf-8"

    invoke-static {p0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 223
    .local v1, "stringinfo":Ljava/lang/String;
    goto :goto_0

    .line 225
    .end local v1    # "stringinfo":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    move-object v1, p0

    .line 227
    goto :goto_0
.end method

.method public static changeToUrlencode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 188
    if-nez p0, :cond_0

    .line 190
    const-string v0, ""

    .line 202
    :goto_0
    return-object v0

    .line 195
    :cond_0
    :try_start_0
    const-string v2, "gbk"

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 198
    .local v0, "changBefore":Ljava/lang/String;
    goto :goto_0

    .line 200
    .end local v0    # "changBefore":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/Exception;
    move-object v0, p0

    .line 202
    goto :goto_0
.end method

.method public static checkCardState(Landroid/content/Context;Z)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showMessage"    # Z

    .prologue
    .line 124
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "status":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "sssString":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, "sddir":Ljava/io/File;
    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 134
    const-string v4, "shared"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    const-string v0, "SD\u4e0d\u53ef\u7528"

    .line 143
    .local v0, "messageId":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_0

    .line 145
    const-string v4, "SD\u9519\u8bef"

    invoke-static {p0, v4}, Lcom/market2345/common/util/ApplicationUtils;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    :cond_0
    const/4 v4, 0x0

    .line 153
    .end local v0    # "messageId":Ljava/lang/String;
    :goto_1
    return v4

    .line 140
    :cond_1
    const-string v0, "SD\u9519\u8bef"

    .restart local v0    # "messageId":Ljava/lang/String;
    goto :goto_0

    .line 153
    .end local v0    # "messageId":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static copy(Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/CharSequence;

    .prologue
    .line 1505
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 1507
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 1508
    .local v0, "cmb":Landroid/content/ClipboardManager;
    const/4 v1, 0x0

    invoke-static {v1, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1514
    .end local v0    # "cmb":Landroid/content/ClipboardManager;
    :goto_0
    return-void

    .line 1510
    :cond_0
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1511
    .local v0, "cmb":Landroid/text/ClipboardManager;
    invoke-virtual {v0, p0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 609
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 610
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static enlargeClickArea(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 951
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 952
    .local v0, "parent":Landroid/view/ViewParent;
    const-class v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 975
    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    .line 956
    check-cast v1, Landroid/view/View;

    .line 957
    .local v1, "parentView":Landroid/view/View;
    new-instance v2, Lcom/market2345/common/util/ApplicationUtils$1;

    invoke-direct {v2, p0, v1}, Lcom/market2345/common/util/ApplicationUtils$1;-><init>(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static formatFileSizeToArr(J)[Ljava/lang/String;
    .locals 12
    .param p0, "fileSize"    # J

    .prologue
    const-wide/16 v8, 0x400

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1363
    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/String;

    .line 1364
    .local v1, "srt":[Ljava/lang/String;
    const-string v0, ""

    .line 1365
    .local v0, "fileSizeString":Ljava/lang/String;
    const-string v4, ""

    .line 1367
    .local v4, "unit":Ljava/lang/String;
    cmp-long v5, p0, v8

    if-gtz v5, :cond_0

    .line 1369
    const-string v0, "1"

    .line 1370
    const-string v4, "KB"

    .line 1398
    :goto_0
    aput-object v0, v1, v10

    .line 1399
    aput-object v4, v1, v11

    .line 1400
    return-object v1

    .line 1372
    :cond_0
    const-wide/32 v6, 0xc8000

    cmp-long v5, p0, v6

    if-gtz v5, :cond_1

    .line 1374
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    div-long v6, p0, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1375
    const-string v4, "KB"

    goto :goto_0

    .line 1377
    :cond_1
    const-wide/32 v6, 0x32000000

    cmp-long v5, p0, v6

    if-gtz v5, :cond_2

    .line 1379
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%.2f"

    new-array v7, v11, [Ljava/lang/Object;

    long-to-float v8, p0

    const/high16 v9, 0x49800000    # 1048576.0f

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1380
    const-string v4, "MB"

    goto :goto_0

    .line 1385
    :cond_2
    long-to-float v5, p0

    const/high16 v6, 0x4e800000

    div-float/2addr v5, v6

    float-to-double v2, v5

    .line 1386
    .local v2, "size":D
    const-wide/high16 v6, 0x4089000000000000L    # 800.0

    cmpg-double v5, v2, v6

    if-gtz v5, :cond_3

    .line 1388
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%.2f"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1389
    const-string v4, "GB"

    goto/16 :goto_0

    .line 1393
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%.2f"

    new-array v7, v11, [Ljava/lang/Object;

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1394
    const-string v4, "TB"

    goto/16 :goto_0
.end method

.method public static formatFileSizeToString(J)Ljava/lang/String;
    .locals 12
    .param p0, "fileSize"    # J

    .prologue
    const-wide/16 v10, 0x400

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 1330
    const-string v0, ""

    .line 1332
    .local v0, "fileSizeString":Ljava/lang/String;
    cmp-long v1, p0, v10

    if-gtz v1, :cond_0

    .line 1334
    const-string v0, "1KB"

    .line 1358
    :goto_0
    return-object v0

    .line 1336
    :cond_0
    const-wide/32 v4, 0xc8000

    cmp-long v1, p0, v4

    if-gtz v1, :cond_1

    .line 1338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-long v4, p0, v10

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "KB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1340
    :cond_1
    const-wide/32 v4, 0x32000000

    cmp-long v1, p0, v4

    if-gtz v1, :cond_2

    .line 1342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%.2f"

    new-array v5, v6, [Ljava/lang/Object;

    long-to-float v6, p0

    const/high16 v7, 0x49800000    # 1048576.0f

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "MB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1347
    :cond_2
    long-to-float v1, p0

    const/high16 v4, 0x4e800000

    div-float/2addr v1, v4

    float-to-double v2, v1

    .line 1348
    .local v2, "size":D
    const-wide/high16 v4, 0x4089000000000000L    # 800.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_3

    .line 1350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%.2f"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "GB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1354
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%.2f"

    new-array v5, v6, [Ljava/lang/Object;

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "TB"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getApplicationMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1112
    const/4 v1, 0x0

    .line 1113
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1114
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1119
    return-object v1
.end method

.method public static getCurrentDateTime()V
    .locals 10

    .prologue
    .line 1124
    new-instance v6, Landroid/text/format/Time;

    const-string v8, "GMT+8"

    invoke-direct {v6, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1125
    .local v6, "time":Landroid/text/format/Time;
    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    .line 1126
    iget v7, v6, Landroid/text/format/Time;->year:I

    .line 1127
    .local v7, "year":I
    iget v3, v6, Landroid/text/format/Time;->month:I

    .line 1128
    .local v3, "month":I
    iget v0, v6, Landroid/text/format/Time;->monthDay:I

    .line 1129
    .local v0, "day":I
    iget v2, v6, Landroid/text/format/Time;->minute:I

    .line 1130
    .local v2, "minute":I
    iget v1, v6, Landroid/text/format/Time;->hour:I

    .line 1131
    .local v1, "hour":I
    iget v4, v6, Landroid/text/format/Time;->second:I

    .line 1132
    .local v4, "sec":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5f53\u524d\u65f6\u95f4\u4e3a\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u5e74 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u6708 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u65e5 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u65f6 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u5206 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u79d2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1133
    .local v5, "timde":Ljava/lang/String;
    return-void
.end method

.method public static getFaviconSizeForBookmarks(Landroid/app/Activity;)I
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v3, 0x10

    .line 81
    sget v1, Lcom/market2345/common/util/ApplicationUtils;->mFaviconSizeForBookmarks:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 83
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 84
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 86
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v1, :sswitch_data_0

    .line 105
    sput v3, Lcom/market2345/common/util/ApplicationUtils;->mFaviconSizeForBookmarks:I

    .line 109
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    :cond_0
    :goto_0
    sget v1, Lcom/market2345/common/util/ApplicationUtils;->mFaviconSizeForBookmarks:I

    return v1

    .line 89
    .restart local v0    # "metrics":Landroid/util/DisplayMetrics;
    :sswitch_0
    const/16 v1, 0xc

    sput v1, Lcom/market2345/common/util/ApplicationUtils;->mFaviconSizeForBookmarks:I

    goto :goto_0

    .line 93
    :sswitch_1
    sput v3, Lcom/market2345/common/util/ApplicationUtils;->mFaviconSizeForBookmarks:I

    goto :goto_0

    .line 97
    :sswitch_2
    const/16 v1, 0x18

    sput v1, Lcom/market2345/common/util/ApplicationUtils;->mFaviconSizeForBookmarks:I

    goto :goto_0

    .line 101
    :sswitch_3
    const/16 v1, 0x24

    sput v1, Lcom/market2345/common/util/ApplicationUtils;->mFaviconSizeForBookmarks:I

    goto :goto_0

    .line 86
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getFeedBackDeviceInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1460
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1463
    .local v0, "feedback":Lcom/google/gson/JsonObject;
    const-string v1, "providersName"

    invoke-static {}, Lcom/market2345/common/util/ApplicationUtils;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    const-string v1, "networkType"

    invoke-static {p0}, Lcom/market2345/common/util/ApplicationUtils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    const-string v1, "brand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    const-string v1, "release"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    const-string v1, "appVersionCode"

    const-string v2, "3.0.242702"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "urlString"    # Ljava/lang/String;

    .prologue
    .line 316
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 317
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 320
    .local v0, "conn":Ljava/net/URLConnection;
    const-string v8, "Content-Disposition"

    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "fileHeader":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 324
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 325
    const-string v8, "filename"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 326
    .local v4, "index":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_0

    .line 328
    const-string v8, "filename"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 330
    .local v5, "name":Ljava/lang/String;
    const-string v8, "\'"

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\""

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "%20"

    const-string v10, " "

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 332
    invoke-static {v5}, Lcom/market2345/common/util/ApplicationUtils;->UrlencodeToString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 351
    .end local v0    # "conn":Ljava/net/URLConnection;
    .end local v2    # "fileHeader":Ljava/lang/String;
    .end local v4    # "index":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "url":Ljava/net/URL;
    :goto_0
    return-object v5

    .line 337
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 342
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v8, "/"

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "fileName":Ljava/lang/String;
    const-string v8, "?"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 344
    .local v6, "queryParamStart":I
    if-lez v6, :cond_1

    .line 346
    const/4 v8, 0x0

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 349
    :cond_1
    const-string v8, "%20"

    const-string v9, " "

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\'"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\""

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 350
    invoke-static {v3}, Lcom/market2345/common/util/ApplicationUtils;->UrlencodeToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .line 351
    goto :goto_0
.end method

.method public static getFilesize(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "urlString"    # Ljava/lang/String;

    .prologue
    .line 356
    const/4 v2, -0x1

    .line 359
    .local v2, "nFileLength":I
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 360
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 361
    .local v1, "httpConnection":Ljava/net/HttpURLConnection;
    const-string v5, "Content-type"

    const-string v6, "application/x-java-serialized-object"

    invoke-virtual {v1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 363
    .local v3, "responseCode":I
    const/16 v5, 0x190

    if-lt v3, v5, :cond_0

    .line 366
    const-string v5, "0"

    .line 397
    .end local v1    # "httpConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "responseCode":I
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return-object v5

    .line 369
    .restart local v1    # "httpConnection":Ljava/net/HttpURLConnection;
    .restart local v3    # "responseCode":I
    .restart local v4    # "url":Ljava/net/URL;
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 397
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 392
    .end local v1    # "httpConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "responseCode":I
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 395
    const-string v5, "0"

    goto :goto_0
.end method

.method public static getFilesize(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 426
    const/4 v2, -0x1

    .line 431
    .local v2, "nFileLength":I
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 432
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 433
    .local v1, "httpConnection":Ljava/net/HttpURLConnection;
    const-string v5, "Content-type"

    const-string v6, "application/x-java-serialized-object"

    invoke-virtual {v1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 435
    .local v3, "responseCode":I
    const/16 v5, 0x190

    if-lt v3, v5, :cond_0

    .line 438
    const-string v5, "\u672a\u77e5"

    .line 448
    .end local v1    # "httpConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "responseCode":I
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return-object v5

    .line 441
    .restart local v1    # "httpConnection":Ljava/net/HttpURLConnection;
    .restart local v3    # "responseCode":I
    .restart local v4    # "url":Ljava/net/URL;
    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 448
    int-to-long v6, v2

    invoke-static {p1, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 443
    .end local v1    # "httpConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "responseCode":I
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 446
    const-string v5, "\u672a\u77e5"

    goto :goto_0
.end method

.method public static getFormatDateTimeFromUnixTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "unixtime"    # Ljava/lang/String;
    .param p1, "formatString"    # Ljava/lang/String;

    .prologue
    .line 874
    if-nez p1, :cond_0

    .line 876
    const-string p1, "MM-dd"

    .line 878
    :cond_0
    const-string v5, ""

    .line 881
    .local v5, "tmpdatestr":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 882
    .local v7, "unixtimeInt":I
    if-eqz v7, :cond_2

    .line 884
    new-instance v4, Ljava/sql/Timestamp;

    int-to-long v10, v7

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-direct {v4, v10, v11}, Ljava/sql/Timestamp;-><init>(J)V

    .line 886
    .local v4, "tmpdate":Ljava/sql/Timestamp;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 887
    .local v0, "c":Ljava/util/Calendar;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit16 v8, v9, -0x76c

    .line 888
    .local v8, "year":I
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 889
    .local v3, "month":I
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 891
    .local v1, "day":I
    invoke-virtual {v4}, Ljava/sql/Timestamp;->getYear()I

    move-result v9

    if-ne v8, v9, :cond_3

    invoke-virtual {v4}, Ljava/sql/Timestamp;->getMonth()I

    move-result v9

    if-ne v3, v9, :cond_3

    invoke-virtual {v4}, Ljava/sql/Timestamp;->getDate()I

    move-result v9

    if-ne v1, v9, :cond_3

    .line 893
    const-string p1, "\u4eca\u5929 HH:mm"

    .line 899
    :cond_1
    :goto_0
    new-instance v6, Ljava/text/SimpleDateFormat;

    invoke-direct {v6, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 900
    .local v6, "tmpfmt":Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 907
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "day":I
    .end local v3    # "month":I
    .end local v4    # "tmpdate":Ljava/sql/Timestamp;
    .end local v6    # "tmpfmt":Ljava/text/SimpleDateFormat;
    .end local v7    # "unixtimeInt":I
    .end local v8    # "year":I
    :cond_2
    :goto_1
    return-object v5

    .line 895
    .restart local v0    # "c":Ljava/util/Calendar;
    .restart local v1    # "day":I
    .restart local v3    # "month":I
    .restart local v4    # "tmpdate":Ljava/sql/Timestamp;
    .restart local v7    # "unixtimeInt":I
    .restart local v8    # "year":I
    :cond_3
    invoke-virtual {v4}, Ljava/sql/Timestamp;->getYear()I

    move-result v9

    if-ne v8, v9, :cond_1

    invoke-virtual {v4}, Ljava/sql/Timestamp;->getMonth()I

    move-result v9

    if-ne v3, v9, :cond_1

    invoke-virtual {v4}, Ljava/sql/Timestamp;->getDate()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    if-ne v1, v9, :cond_1

    .line 897
    const-string p1, "\u6628\u5929 HH:mm"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 903
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "day":I
    .end local v3    # "month":I
    .end local v4    # "tmpdate":Ljava/sql/Timestamp;
    .end local v7    # "unixtimeInt":I
    .end local v8    # "year":I
    :catch_0
    move-exception v2

    .line 905
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getFormatDownloads(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "totalDowns"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x9

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1406
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1407
    const-string v2, "0\u4e0b\u8f7d"

    .line 1421
    :goto_0
    return-object v2

    .line 1409
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1410
    .local v0, "length":I
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 1411
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const v3, 0x461c4000    # 10000.0f

    div-float v1, v2, v3

    .line 1412
    .local v1, "times":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%.1f"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e07\u4e0b\u8f7d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1413
    .end local v1    # "times":F
    :cond_1
    const/4 v2, 0x4

    if-ge v2, v0, :cond_2

    if-ge v0, v3, :cond_2

    .line 1414
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v1, v2, 0x2710

    .line 1415
    .local v1, "times":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e07\u4e0b\u8f7d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1416
    .end local v1    # "times":I
    :cond_2
    if-ne v0, v3, :cond_3

    .line 1417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4ebf\u4e0b\u8f7d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1418
    :cond_3
    const/16 v2, 0xa

    if-lt v0, v2, :cond_4

    .line 1419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, -0x8

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4ebf\u4e0b\u8f7d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 1421
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e0b\u8f7d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public static getImageFromAssetFile(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1242
    const/4 v2, 0x0

    .line 1245
    .local v2, "inStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 1246
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1255
    .local v1, "image":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 1259
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1267
    .end local v1    # "image":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v1

    .line 1261
    .restart local v1    # "image":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1249
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "image":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v3

    .line 1255
    if-eqz v2, :cond_1

    .line 1259
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1267
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1261
    :catch_2
    move-exception v0

    .line 1263
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1255
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 1259
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1264
    :cond_2
    :goto_2
    throw v3

    .line 1261
    :catch_3
    move-exception v0

    .line 1263
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getLastModifiedFomat(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "unixtime"    # Ljava/lang/String;

    .prologue
    .line 918
    const-string v2, ""

    .line 921
    .local v2, "tmpdatestr":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 922
    .local v4, "unixtimeInt":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 924
    new-instance v1, Ljava/sql/Timestamp;

    invoke-direct {v1, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    .line 925
    .local v1, "tmpdate":Ljava/sql/Timestamp;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 926
    .local v3, "tmpfmt":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 933
    .end local v1    # "tmpdate":Ljava/sql/Timestamp;
    .end local v3    # "tmpfmt":Ljava/text/SimpleDateFormat;
    .end local v4    # "unixtimeInt":J
    :cond_0
    :goto_0
    return-object v2

    .line 929
    :catch_0
    move-exception v0

    .line 931
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 749
    const/4 v2, 0x0

    .line 750
    .local v2, "result":Ljava/lang/String;
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 751
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 752
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 754
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 755
    .local v4, "type":I
    packed-switch v4, :pswitch_data_0

    .end local v4    # "type":I
    :cond_0
    :goto_0
    move-object v5, v2

    .line 791
    :goto_1
    return-object v5

    .line 758
    .restart local v4    # "type":I
    :pswitch_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 759
    .local v3, "subtype":I
    packed-switch v3, :pswitch_data_1

    .line 780
    const-string v5, "UNKNOWN"

    goto :goto_1

    .line 766
    :pswitch_1
    const-string v5, "2G"

    goto :goto_1

    .line 776
    :pswitch_2
    const-string v5, "3G"

    goto :goto_1

    .line 778
    :pswitch_3
    const-string v5, "4G"

    goto :goto_1

    .line 783
    .end local v3    # "subtype":I
    :pswitch_4
    const-string v2, "WiFi"

    .line 784
    goto :goto_0

    .line 755
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 759
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getProcessNameByPID(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pid"    # I

    .prologue
    .line 1486
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1488
    .local v1, "manager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1490
    .local v2, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p1, :cond_0

    .line 1492
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 1495
    .end local v2    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v3

    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.method public static getProviderName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1430
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/market2345/MarketApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1431
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1432
    .local v0, "IMSI":Ljava/lang/String;
    const-string v1, ""

    .line 1433
    .local v1, "providersName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1435
    const-string v3, "46000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1437
    :cond_0
    const-string v1, "\u4e2d\u56fd\u79fb\u52a8"

    .line 1448
    :cond_1
    :goto_0
    return-object v1

    .line 1439
    :cond_2
    const-string v3, "46001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1441
    const-string v1, "\u4e2d\u56fd\u8054\u901a"

    goto :goto_0

    .line 1443
    :cond_3
    const-string v3, "46003"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1445
    const-string v1, "\u4e2d\u56fd\u7535\u4fe1"

    goto :goto_0
.end method

.method public static getScreenHight(Landroid/app/Activity;)I
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 530
    sget v1, Lcom/market2345/common/util/ApplicationUtils;->ACTIVITY_HIGHT:I

    if-nez v1, :cond_0

    sget v1, Lcom/market2345/common/util/ApplicationUtils;->ACTIVITY_HIGHT:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 532
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 533
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 534
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/market2345/common/util/ApplicationUtils;->ACTIVITY_HIGHT:I

    .line 535
    sget v1, Lcom/market2345/common/util/ApplicationUtils;->ACTIVITY_HIGHT:I

    .line 539
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :goto_0
    return v1

    :cond_0
    sget v1, Lcom/market2345/common/util/ApplicationUtils;->ACTIVITY_HIGHT:I

    goto :goto_0
.end method

.method public static getScreenWidth()I
    .locals 1

    .prologue
    .line 580
    sget v0, Lcom/market2345/common/util/ApplicationUtils;->ACTIVITY_WIDTH:I

    return v0
.end method

.method public static getScreenWidth(Landroid/app/Activity;)I
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 565
    sget v1, Lcom/market2345/common/util/ApplicationUtils;->ACTIVITY_WIDTH:I

    if-nez v1, :cond_0

    sget v1, Lcom/market2345/common/util/ApplicationUtils;->ACTIVITY_WIDTH:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 567
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 568
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 569
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/market2345/common/util/ApplicationUtils;->ACTIVITY_WIDTH:I

    .line 570
    sget v1, Lcom/market2345/common/util/ApplicationUtils;->ACTIVITY_WIDTH:I

    .line 574
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :goto_0
    return v1

    :cond_0
    sget v1, Lcom/market2345/common/util/ApplicationUtils;->ACTIVITY_WIDTH:I

    goto :goto_0
.end method

.method public static getSdkVersion()I
    .locals 1

    .prologue
    .line 679
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getStartPage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    const/4 v0, 0x0

    .line 256
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/app/Activity;)I
    .locals 3
    .param p0, "mContext"    # Landroid/app/Activity;

    .prologue
    .line 551
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 552
    .local v0, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 553
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 554
    .local v1, "statusBarHeight":I
    return v1
.end method

.method private static getStringFromRawResource(Landroid/content/Context;I)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceId"    # I

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 270
    const/4 v4, 0x0

    .line 272
    .local v4, "result":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 273
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 275
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v5, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v1, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 281
    .local v3, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 283
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 286
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v6, "ApplicationUtils"

    const-string v7, "Unable to load resource %s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 301
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 308
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return-object v4

    .line 294
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 296
    :catch_1
    move-exception v0

    .line 298
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "ApplicationUtils"

    const-string v7, "Unable to load resource %s: %s"

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 296
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 298
    const-string v6, "ApplicationUtils"

    const-string v7, "Unable to load resource %s: %s"

    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 292
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 294
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 299
    :goto_3
    throw v6

    .line 296
    :catch_3
    move-exception v0

    .line 298
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "ApplicationUtils"

    const-string v8, "Unable to load resource %s: %s"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 305
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const-string v4, ""

    goto :goto_2
.end method

.method public static getTopBarHight(Landroid/app/Activity;)I
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 591
    sget v1, Lcom/market2345/common/util/ApplicationUtils;->ACTIVITY_TOP_HIGHT:I

    if-nez v1, :cond_0

    sget v1, Lcom/market2345/common/util/ApplicationUtils;->ACTIVITY_TOP_HIGHT:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 593
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 594
    .local v0, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 595
    iget v1, v0, Landroid/graphics/Rect;->top:I

    sput v1, Lcom/market2345/common/util/ApplicationUtils;->ACTIVITY_TOP_HIGHT:I

    .line 596
    sget v1, Lcom/market2345/common/util/ApplicationUtils;->ACTIVITY_TOP_HIGHT:I

    .line 600
    .end local v0    # "frame":Landroid/graphics/Rect;
    :goto_0
    return v1

    :cond_0
    sget v1, Lcom/market2345/common/util/ApplicationUtils;->ACTIVITY_TOP_HIGHT:I

    goto :goto_0
.end method

.method public static getUrlContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "urlString"    # Ljava/lang/String;

    .prologue
    .line 405
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 406
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 407
    .local v2, "httpConnection":Ljava/net/HttpURLConnection;
    const-string v5, "Content-type"

    const-string v6, "application/x-java-serialized-object"

    invoke-virtual {v2, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 409
    .local v3, "responseCode":I
    const/16 v5, 0x190

    if-lt v3, v5, :cond_0

    .line 411
    const-string v0, ""

    .line 420
    .end local v2    # "httpConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "responseCode":I
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return-object v0

    .line 413
    .restart local v2    # "httpConnection":Ljava/net/HttpURLConnection;
    .restart local v3    # "responseCode":I
    .restart local v4    # "url":Ljava/net/URL;
    :cond_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 415
    .local v0, "MIME":Ljava/lang/String;
    goto :goto_0

    .line 417
    .end local v0    # "MIME":Ljava/lang/String;
    .end local v2    # "httpConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "responseCode":I
    .end local v4    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 419
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 420
    const-string v0, ""

    goto :goto_0
.end method

.method public static getVersion(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 655
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 657
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 659
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 662
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static hideIme(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 938
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 939
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 940
    return-void
.end method

.method public static isMobileNetwork(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 732
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 733
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 734
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 736
    const/4 v2, 0x1

    .line 738
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;Z)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alert"    # Z

    .prologue
    const/4 v3, 0x0

    .line 691
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 692
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_2

    .line 694
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 695
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    .line 697
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 699
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_1

    .line 701
    const/4 v3, 0x1

    .line 710
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_0
    :goto_1
    return v3

    .line 697
    .restart local v1    # "i":I
    .restart local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 706
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_2
    if-eqz p1, :cond_0

    .line 708
    const v4, 0x7f0b00f3

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public static isUrl(Ljava/lang/String;)Z
    .locals 5
    .param p0, "pInput"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 837
    if-nez p0, :cond_0

    .line 855
    :goto_0
    return v3

    .line 842
    :cond_0
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 845
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 849
    :cond_1
    const-string v2, "^(http|https|ftp)\\://([a-zA-Z0-9\\.\\-]+(\\:[a-zA-Z0-9\\.&%\\$\\-]+)*@)?((25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1]{1}[0-9]{2}|[1-9]{1}[0-9]{1}|[0-9])|([a-zA-Z0-9\\-]+\\.)*[a-zA-Z0-9\\-]+\\.[a-zA-Z]{2,4})(\\:[0-9]+)?(/[^/][a-zA-Z0-9\\.\\,\\?\\\'\\\\/\\+&%\\$\\=~_\\-@]*)*$"

    .line 853
    .local v2, "regEx":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 854
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 855
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    goto :goto_0
.end method

.method public static isUrlSimple(Ljava/lang/String;)Z
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 802
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 818
    :cond_0
    :goto_0
    return v1

    .line 807
    :cond_1
    const-string v2, "\\."

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "a":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 818
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isWifiNetwork(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 721
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 722
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 723
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 727
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 618
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 619
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private static saveFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "ff"    # Ljava/io/InputStream;
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1020
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/market2345/Constants;->ImageCacheDir:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1021
    .local v1, "dirFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1023
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1025
    :cond_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/market2345/Constants;->ImageCacheDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v4, "saveimageFile":Ljava/io/File;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 1031
    .local v0, "bs":[B
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1033
    .local v3, "os":Ljava/io/OutputStream;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 1035
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 1037
    :cond_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 1038
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 1039
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static savePic2SD(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 988
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 989
    .local v3, "string2url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 990
    .local v2, "pichttpURLConnection":Ljava/net/URLConnection;
    const/16 v4, 0xbb8

    invoke-virtual {v2, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 991
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 992
    .local v1, "ff":Ljava/io/InputStream;
    invoke-static {p0}, Lcom/market2345/common/util/ApplicationUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/market2345/common/util/ApplicationUtils;->saveFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 1007
    .end local v1    # "ff":Ljava/io/InputStream;
    .end local v2    # "pichttpURLConnection":Ljava/net/URLConnection;
    .end local v3    # "string2url":Ljava/net/URL;
    :goto_0
    return-object v4

    .line 995
    :catch_0
    move-exception v0

    .line 997
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 1007
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 999
    :catch_1
    move-exception v0

    .line 1001
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1003
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1005
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static shareImage(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "imagepathString"    # Ljava/lang/String;

    .prologue
    .line 625
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 627
    .local v0, "imageFile":Ljava/io/File;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 628
    .local v1, "shareIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 629
    const-string v2, "android.intent.extra.STREAM"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 631
    const-string v2, "android.intent.extra.TEXT"

    const-string v3, "\u5206\u4eab"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    const-string v2, "android.intent.extra.SUBJECT"

    const-string v3, "\u5206\u4eab"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    :try_start_0
    const-string v2, "\u5206\u4eab"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :goto_0
    return-void

    .line 639
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static showIme(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1050
    new-instance v0, Lcom/market2345/common/util/ApplicationUtils$2;

    invoke-direct {v0, p0}, Lcom/market2345/common/util/ApplicationUtils$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/market2345/common/util/ApplicationUtils$2;->start()V

    .line 1074
    return-void
.end method

.method public static showToastLong(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "infoString"    # Ljava/lang/String;

    .prologue
    .line 497
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 498
    return-void
.end method

.method public static showToastLong_test(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "infoString"    # Ljava/lang/String;

    .prologue
    .line 513
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 514
    return-void
.end method

.method public static showToastShort(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "infoString"    # Ljava/lang/String;

    .prologue
    .line 492
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 493
    return-void
.end method

.method public static showToastShort_test(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "infoString"    # Ljava/lang/String;

    .prologue
    .line 508
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 509
    return-void
.end method
