.class public Lcom/market2345/update/UpdateUtils;
.super Ljava/lang/Object;
.source "UpdateUtils.java"

# interfaces
.implements Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/update/UpdateUtils$UpdateListener;
    }
.end annotation


# static fields
.field public static final SHOW_UPDATE_DEFAULT:I = 0x0

.field public static final SHOW_UPDATE_DIALOG:I = 0x1

.field public static final SHOW_WIFI_UPDATE_DIALOG:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field public static final UPDATE_DOWNLOADING:I = 0x3

.field public static UPDATE_PATH:Ljava/lang/String; = null

.field private static final UPDATE_SP:Ljava/lang/String; = "update_sp"

.field private static final UPDATING_KEY:Ljava/lang/String; = "updating_key"

.field private static instance:Lcom/market2345/update/UpdateUtils;


# instance fields
.field private httpUtils:Lcom/lidroid/xutils/HttpUtils;

.field private isDownloading:Z

.field private mAboutClick:Z

.field private mContext:Landroid/content/Context;

.field private mUpdateListener:Lcom/market2345/update/UpdateUtils$UpdateListener;

.field private nm:Landroid/app/NotificationManager;

.field private notification:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const-class v1, Lcom/market2345/update/UpdateUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/market2345/update/UpdateUtils;->TAG:Ljava/lang/String;

    .line 40
    const/4 v1, 0x0

    sput-object v1, Lcom/market2345/update/UpdateUtils;->UPDATE_PATH:Ljava/lang/String;

    .line 43
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    sget-object v1, Lcom/market2345/Constants;->DEFAULT_MARKET_SUBDIR:Ljava/lang/String;

    sput-object v1, Lcom/market2345/update/UpdateUtils;->UPDATE_PATH:Ljava/lang/String;

    .line 51
    .local v0, "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 46
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v0

    .line 47
    .restart local v0    # "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/market2345/update/UpdateUtils;->UPDATE_PATH:Ljava/lang/String;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v0, p0, Lcom/market2345/update/UpdateUtils;->mAboutClick:Z

    .line 60
    iput-boolean v0, p0, Lcom/market2345/update/UpdateUtils;->isDownloading:Z

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method static synthetic access$002(Lcom/market2345/update/UpdateUtils;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/update/UpdateUtils;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/market2345/update/UpdateUtils;->isDownloading:Z

    return p1
.end method

.method static synthetic access$100(Lcom/market2345/update/UpdateUtils;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/update/UpdateUtils;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/update/UpdateUtils;Lcom/market2345/update/UpdateInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/update/UpdateUtils;
    .param p1, "x1"    # Lcom/market2345/update/UpdateInfo;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/market2345/update/UpdateUtils;->downloadFinished(Lcom/market2345/update/UpdateInfo;)V

    return-void
.end method

.method private download(Lcom/market2345/update/UpdateInfo;Z)V
    .locals 7
    .param p1, "info"    # Lcom/market2345/update/UpdateInfo;
    .param p2, "showDownLoadProgress"    # Z

    .prologue
    const/4 v4, 0x0

    .line 347
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    if-eqz p1, :cond_0

    .line 355
    iget-boolean v0, p0, Lcom/market2345/update/UpdateUtils;->isDownloading:Z

    if-nez v0, :cond_0

    .line 359
    new-instance v6, Ljava/io/File;

    sget-object v0, Lcom/market2345/update/UpdateUtils;->UPDATE_PATH:Ljava/lang/String;

    iget-object v1, p1, Lcom/market2345/update/UpdateInfo;->filename:Ljava/lang/String;

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .local v6, "file":Ljava/io/File;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/common/util/Utils;->getLocalFileMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/market2345/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 368
    :cond_2
    new-instance v0, Lcom/lidroid/xutils/HttpUtils;

    invoke-direct {v0}, Lcom/lidroid/xutils/HttpUtils;-><init>()V

    iput-object v0, p0, Lcom/market2345/update/UpdateUtils;->httpUtils:Lcom/lidroid/xutils/HttpUtils;

    .line 369
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->httpUtils:Lcom/lidroid/xutils/HttpUtils;

    iget-object v1, p1, Lcom/market2345/update/UpdateInfo;->downurl:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/market2345/update/UpdateUtils;->UPDATE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/market2345/update/UpdateInfo;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v5, Lcom/market2345/update/UpdateUtils$1;

    invoke-direct {v5, p0, p2, p1}, Lcom/market2345/update/UpdateUtils$1;-><init>(Lcom/market2345/update/UpdateUtils;ZLcom/market2345/update/UpdateInfo;)V

    invoke-virtual/range {v0 .. v5}, Lcom/lidroid/xutils/HttpUtils;->download(Ljava/lang/String;Ljava/lang/String;ZZLcom/lidroid/xutils/http/callback/RequestCallBack;)Lcom/lidroid/xutils/http/HttpHandler;

    goto :goto_0
.end method

.method private downloadFinished(Lcom/market2345/update/UpdateInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/market2345/update/UpdateInfo;

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/market2345/update/UpdateUtils;->downloadFinished()V

    .line 460
    invoke-virtual {p0, p1}, Lcom/market2345/update/UpdateUtils;->showInstallDialog(Lcom/market2345/update/UpdateInfo;)V

    .line 461
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/market2345/update/UpdateUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    sget-object v0, Lcom/market2345/update/UpdateUtils;->instance:Lcom/market2345/update/UpdateUtils;

    if-nez v0, :cond_1

    .line 76
    const-class v1, Lcom/market2345/update/UpdateUtils;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lcom/market2345/update/UpdateUtils;->instance:Lcom/market2345/update/UpdateUtils;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/market2345/update/UpdateUtils;

    invoke-direct {v0, p0}, Lcom/market2345/update/UpdateUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/market2345/update/UpdateUtils;->instance:Lcom/market2345/update/UpdateUtils;

    .line 80
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    sget-object v0, Lcom/market2345/update/UpdateUtils;->instance:Lcom/market2345/update/UpdateUtils;

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getUpdateInfoFromLocal()Lcom/market2345/update/UpdateInfo;
    .locals 3

    .prologue
    .line 258
    iget-object v1, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/market2345/util/SPUtil;->getLatestUpdateInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/market2345/http/ApiResponseFactory;->parseUpdate(Landroid/content/Context;Ljava/lang/String;Z)Lcom/market2345/update/UpdateInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getUpdateStatus(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 539
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 540
    const-string v1, "update_sp"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 544
    .local v0, "sp":Landroid/content/SharedPreferences;
    :goto_0
    const-string v1, "updating_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 542
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    const-string v1, "update_sp"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .restart local v0    # "sp":Landroid/content/SharedPreferences;
    goto :goto_0
.end method

.method private handleResult(Lcom/market2345/update/UpdateInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/market2345/update/UpdateInfo;

    .prologue
    const/4 v6, 0x0

    .line 124
    iget-object v3, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/market2345/util/SPUtil;->setLatestCheckUpdateDate(Landroid/content/Context;J)V

    .line 126
    const/16 v0, 0x26

    .line 127
    .local v0, "curVersionCode":I
    iget v3, p1, Lcom/market2345/update/UpdateInfo;->version:I

    if-le v3, v0, :cond_1

    .line 129
    iget-object v3, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/market2345/util/SPUtil;->getIgnoreVersion(Landroid/content/Context;I)I

    move-result v3

    iget v4, p1, Lcom/market2345/update/UpdateInfo;->version:I

    if-eq v3, v4, :cond_1

    .line 131
    iget-object v3, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    iget v4, p1, Lcom/market2345/update/UpdateInfo;->version:I

    invoke-static {v3, v4, v0}, Lcom/market2345/util/SPUtil;->isFirstCheckTip(Landroid/content/Context;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 133
    iget-object v3, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/market2345/common/util/NetworkUtils;->getNetworkType(Landroid/content/Context;Z)I

    move-result v2

    .line 134
    .local v2, "type":I
    const/4 v3, 0x1

    if-ne v3, v2, :cond_2

    .line 135
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/market2345/update/UpdateUtils;->UPDATE_PATH:Ljava/lang/String;

    iget-object v4, p1, Lcom/market2345/update/UpdateInfo;->filename:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/market2345/common/util/Utils;->getLocalFileMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/market2345/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/notificationmanage/NotificationManager2345;->notifyInstall2345()V

    .line 143
    :cond_0
    invoke-direct {p0, p1, v6}, Lcom/market2345/update/UpdateUtils;->download(Lcom/market2345/update/UpdateInfo;Z)V

    .line 171
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "type":I
    :cond_1
    :goto_0
    return-void

    .line 146
    .restart local v2    # "type":I
    :cond_2
    if-nez v2, :cond_1

    .line 148
    invoke-virtual {p0, p1}, Lcom/market2345/update/UpdateUtils;->showUpdateDialog(Lcom/market2345/update/UpdateInfo;)V

    .line 150
    iget-object v3, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/notificationmanage/NotificationManager2345;->notifyUpdate2345()V

    goto :goto_0

    .line 154
    .end local v2    # "type":I
    :cond_3
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/market2345/update/UpdateUtils;->UPDATE_PATH:Ljava/lang/String;

    iget-object v4, p1, Lcom/market2345/update/UpdateInfo;->filename:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .restart local v1    # "file":Ljava/io/File;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/market2345/common/util/Utils;->getLocalFileMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/market2345/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 158
    iget-object v3, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/notificationmanage/NotificationManager2345;->notifyInstall2345()V

    goto :goto_0

    .line 160
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 162
    iget-object v3, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/notificationmanage/NotificationManager2345;->notifyUpdate2345()V

    goto :goto_0

    .line 166
    :cond_5
    iget-object v3, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/notificationmanage/NotificationManager2345;->notifyUpdate2345()V

    goto :goto_0
.end method

.method private handleResultForAbout(Lcom/market2345/update/UpdateInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/market2345/update/UpdateInfo;

    .prologue
    const/4 v4, 0x1

    .line 174
    const/16 v0, 0x26

    .line 175
    .local v0, "curVersionCode":I
    iget v2, p1, Lcom/market2345/update/UpdateInfo;->version:I

    if-le v2, v0, :cond_2

    .line 176
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/market2345/update/UpdateUtils;->UPDATE_PATH:Ljava/lang/String;

    iget-object v3, p1, Lcom/market2345/update/UpdateInfo;->filename:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/common/util/Utils;->getLocalFileMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/market2345/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    invoke-virtual {p0, p1}, Lcom/market2345/update/UpdateUtils;->showInstallDialog(Lcom/market2345/update/UpdateInfo;)V

    .line 193
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 182
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 184
    invoke-direct {p0, p1, v4}, Lcom/market2345/update/UpdateUtils;->download(Lcom/market2345/update/UpdateInfo;Z)V

    goto :goto_0

    .line 188
    :cond_1
    invoke-direct {p0, p1, v4}, Lcom/market2345/update/UpdateUtils;->download(Lcom/market2345/update/UpdateInfo;Z)V

    goto :goto_0

    .line 191
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    iget-object v2, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    const-string v3, "\u5df2\u662f\u6700\u65b0\u7248\u672c!"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static isUpdateStatusDefault(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 548
    invoke-static {p0}, Lcom/market2345/update/UpdateUtils;->getUpdateStatus(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setUpdateStatus(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # I

    .prologue
    .line 529
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 530
    const-string v1, "update_sp"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 534
    .local v0, "sp":Landroid/content/SharedPreferences;
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "updating_key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 535
    return-void

    .line 532
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    const-string v1, "update_sp"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .restart local v0    # "sp":Landroid/content/SharedPreferences;
    goto :goto_0
.end method

.method private showNotify()V
    .locals 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->nm:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->notification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->nm:Landroid/app/NotificationManager;

    const/16 v1, 0x80

    iget-object v2, p0, Lcom/market2345/update/UpdateUtils;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/market2345/notificationmanage/NotificationManager2345;->cancelNotification(I)V

    .line 451
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/market2345/notificationmanage/NotificationManager2345;->cancelNotification(I)V

    .line 452
    return-void
.end method


# virtual methods
.method public aboutUpdateClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 105
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/market2345/update/UpdateUtils;->setUpdateStatus(Landroid/content/Context;I)V

    .line 106
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/market2345/notificationmanage/NotificationManager2345;->cancelNotification(I)V

    .line 107
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/market2345/notificationmanage/NotificationManager2345;->cancelNotification(I)V

    .line 109
    iget-boolean v0, p0, Lcom/market2345/update/UpdateUtils;->isDownloading:Z

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 113
    :cond_0
    iput-boolean v2, p0, Lcom/market2345/update/UpdateUtils;->mAboutClick:Z

    .line 119
    invoke-virtual {p0, v2, v2}, Lcom/market2345/update/UpdateUtils;->update(ZZ)V

    goto :goto_0
.end method

.method public downloadFinished()V
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/market2345/update/UpdateUtils;->setUpdateStatus(Landroid/content/Context;I)V

    .line 466
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/market2345/notificationmanage/NotificationManager2345;->cancelNotification(I)V

    .line 467
    return-void
.end method

.method public downloadNow(Lcom/market2345/update/UpdateInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/market2345/update/UpdateInfo;

    .prologue
    .line 228
    if-nez p1, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/market2345/update/UpdateUtils;->getUpdateInfoFromLocal()Lcom/market2345/update/UpdateInfo;

    move-result-object p1

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/market2345/update/UpdateInfo;->downurl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/market2345/update/UpdateInfo;->filename:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/market2345/update/UpdateInfo;->version:I

    const/16 v1, 0x26

    if-le v0, v1, :cond_1

    .line 233
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/market2345/update/UpdateUtils;->download(Lcom/market2345/update/UpdateInfo;Z)V

    .line 234
    invoke-virtual {p0, p1}, Lcom/market2345/update/UpdateUtils;->install(Lcom/market2345/update/UpdateInfo;)V

    .line 237
    :cond_1
    return-void
.end method

.method public install(Lcom/market2345/update/UpdateInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/market2345/update/UpdateInfo;

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/market2345/update/UpdateUtils;->getUpdateInfoFromLocal()Lcom/market2345/update/UpdateInfo;

    move-result-object p1

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/market2345/update/UpdateInfo;->filename:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p1, Lcom/market2345/update/UpdateInfo;->version:I

    const/16 v2, 0x26

    if-le v1, v2, :cond_1

    .line 245
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/market2345/update/UpdateUtils;->UPDATE_PATH:Ljava/lang/String;

    iget-object v2, p1, Lcom/market2345/update/UpdateInfo;->filename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/common/util/Utils;->getLocalFileMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/market2345/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/market2345/common/util/Utils;->installApk(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 255
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 250
    .restart local v0    # "file":Ljava/io/File;
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 251
    iget-object v1, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    const-string v2, "\u6587\u4ef6\u5df2\u635f\u574f\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d!"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public notifiDownloading2345()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 421
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/market2345/update/UpdateUtils;->setUpdateStatus(Landroid/content/Context;I)V

    .line 423
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/market2345/update/UpdateUtils;->nm:Landroid/app/NotificationManager;

    .line 424
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f0202ef

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d2345\u624b\u673a\u52a9\u624b\u6700\u65b0\u7248"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/market2345/update/UpdateUtils;->notification:Landroid/app/Notification;

    .line 425
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->notification:Landroid/app/Notification;

    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f030096

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 427
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f090324

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v6, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 428
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f090321

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "HH:mm"

    invoke-static {v2, v3, v4}, Lcom/market2345/common/util/DateFormatUtils;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f090323

    const-string v2, "0%   "

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 433
    invoke-direct {p0}, Lcom/market2345/update/UpdateUtils;->showNotify()V

    .line 434
    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 498
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->mUpdateListener:Lcom/market2345/update/UpdateUtils$UpdateListener;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->mUpdateListener:Lcom/market2345/update/UpdateUtils$UpdateListener;

    invoke-interface {v0}, Lcom/market2345/update/UpdateUtils$UpdateListener;->onUpdateFinished()V

    .line 502
    :cond_0
    iput-boolean v2, p0, Lcom/market2345/update/UpdateUtils;->isDownloading:Z

    .line 504
    iget-boolean v0, p0, Lcom/market2345/update/UpdateUtils;->mAboutClick:Z

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    const-string v1, "\u5df2\u662f\u6700\u65b0\u7248\u672c!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 507
    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->mUpdateListener:Lcom/market2345/update/UpdateUtils$UpdateListener;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->mUpdateListener:Lcom/market2345/update/UpdateUtils$UpdateListener;

    invoke-interface {v0}, Lcom/market2345/update/UpdateUtils$UpdateListener;->onUpdateFinished()V

    .line 485
    :cond_0
    const-string v0, "http://update.app.2345.com/index.php"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/market2345/update/UpdateInfo;

    if-eqz v0, :cond_1

    .line 487
    iget-boolean v0, p0, Lcom/market2345/update/UpdateUtils;->mAboutClick:Z

    if-eqz v0, :cond_2

    .line 488
    check-cast p2, Lcom/market2345/update/UpdateInfo;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/market2345/update/UpdateUtils;->handleResultForAbout(Lcom/market2345/update/UpdateInfo;)V

    .line 494
    :cond_1
    :goto_0
    return-void

    .line 490
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2
    check-cast p2, Lcom/market2345/update/UpdateInfo;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/market2345/update/UpdateUtils;->handleResult(Lcom/market2345/update/UpdateInfo;)V

    goto :goto_0
.end method

.method public registerUpdateListener(Lcom/market2345/update/UpdateUtils$UpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/market2345/update/UpdateUtils$UpdateListener;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/market2345/update/UpdateUtils;->mUpdateListener:Lcom/market2345/update/UpdateUtils$UpdateListener;

    .line 472
    return-void
.end method

.method public showInstallDialog(Lcom/market2345/update/UpdateInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/market2345/update/UpdateInfo;

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/market2345/update/UpdateUtils;->getUpdateInfoFromLocal()Lcom/market2345/update/UpdateInfo;

    move-result-object p1

    .line 214
    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/market2345/update/UpdateInfo;->filename:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/market2345/update/UpdateInfo;->updatelog:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p1, Lcom/market2345/update/UpdateInfo;->version:I

    const/16 v3, 0x26

    if-le v2, v3, :cond_1

    .line 215
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/market2345/update/UpdateUtils;->UPDATE_PATH:Ljava/lang/String;

    iget-object v3, p1, Lcom/market2345/update/UpdateInfo;->filename:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/market2345/update/UpdateUtils;->getUpdateStatus(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1

    .line 217
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    const-class v3, Lcom/market2345/update/UpdateDialogActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "dialog_update"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    const-string v2, "is_about_click"

    iget-boolean v3, p0, Lcom/market2345/update/UpdateUtils;->mAboutClick:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 220
    const-string v2, "update_info"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 221
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 222
    iget-object v2, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 225
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public showUpdateDialog(Lcom/market2345/update/UpdateInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/market2345/update/UpdateInfo;

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/market2345/update/UpdateUtils;->getUpdateInfoFromLocal()Lcom/market2345/update/UpdateInfo;

    move-result-object p1

    .line 200
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/market2345/update/UpdateInfo;->updatelog:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p1, Lcom/market2345/update/UpdateInfo;->version:I

    const/16 v2, 0x26

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/market2345/update/UpdateUtils;->getUpdateStatus(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_1

    .line 201
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    const-class v2, Lcom/market2345/update/UpdateDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "dialog_update"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    const-string v1, "update_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 204
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 207
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public unRegisterUpdateListener()V
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/update/UpdateUtils;->mUpdateListener:Lcom/market2345/update/UpdateUtils$UpdateListener;

    .line 476
    return-void
.end method

.method public update(ZZ)V
    .locals 2
    .param p1, "isShowToast"    # Z
    .param p2, "isAboutClick"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-boolean v0, p0, Lcom/market2345/update/UpdateUtils;->isDownloading:Z

    if-nez v0, :cond_0

    .line 95
    iput-boolean p2, p0, Lcom/market2345/update/UpdateUtils;->mAboutClick:Z

    .line 97
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->mUpdateListener:Lcom/market2345/update/UpdateUtils$UpdateListener;

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->mUpdateListener:Lcom/market2345/update/UpdateUtils$UpdateListener;

    invoke-interface {v0}, Lcom/market2345/update/UpdateUtils$UpdateListener;->onUpdateStart()V

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, p0, v1}, Lcom/market2345/http/MarketAPI;->checkUpdate(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public updateNotification(I)V
    .locals 4
    .param p1, "percent"    # I

    .prologue
    .line 437
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->nm:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->notification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f090324

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 439
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v1, 0x7f090323

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 441
    invoke-direct {p0}, Lcom/market2345/update/UpdateUtils;->showNotify()V

    .line 443
    :cond_0
    return-void
.end method
