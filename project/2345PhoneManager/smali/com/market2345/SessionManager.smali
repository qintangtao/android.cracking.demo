.class public Lcom/market2345/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"

# interfaces
.implements Lcom/market2345/datacenter/MarketObserver;


# static fields
.field public static final ADD_OR_REMOVE_DOWNLOAD:Ljava/lang/String; = "pref.add.new.download"

.field public static final DISCONNECT_PC:Ljava/lang/String; = "pref.disconnect.pc"

.field public static final DOWNLOADING_COUNT:Ljava/lang/String; = "pref.downloading.count"

.field public static final DOWNLOADING_LIST:Ljava/lang/String; = "pref.downloading.list"

.field public static final DOWNLOAD_LOAD_COMPLETED:Ljava/lang/String; = "pref.download.load.completed"

.field public static final DOWNLOAD_NOTIFY_URI:Ljava/lang/String; = "pref.download.notify.uri"

.field public static final DOWNLOAD_STATUS_CHANGE:Ljava/lang/String; = "pref.download.status.change"

.field public static final INSTALLED_REMOVE_FILE:Ljava/lang/String; = "pref.installed.remove.file"

.field public static final MANAGE_DEL_DIALOG:Ljava/lang/String; = "pref.show.del.dialog"

.field public static final PC_TRANSFER_FILE:Ljava/lang/String; = "pref.pc.transfer.file"

.field public static final P_CATEGORY_VERSION:Ljava/lang/String; = "pref.category.version"

.field public static final P_CLEAR_CACHE:Ljava/lang/String; = "auto_clear_cache"

.field public static final P_CURRENT_VERSION:Ljava/lang/String; = "pref.current.version"

.field public static final P_DEFAULT_CHARGE_TYPE:Ljava/lang/String; = "pref.charge.defaultChargeType"

.field public static final P_IGNORE_NUM:Ljava/lang/String; = "pref.ignore.num"

.field public static final P_INSTALL_APP:Ljava/lang/String; = "pref.app.install"

.field public static final P_ISLOGIN:Ljava/lang/String; = "pref.isLogin"

.field public static final P_LPNS_BINDED_DEVID:Ljava/lang/String; = "pref.lpns.binded.devid"

.field public static final P_LPNS_IS_BINDED:Ljava/lang/String; = "pref.lpns.is.binded"

.field public static final P_MARKET_PASSWORD:Ljava/lang/String; = "pref.market.password"

.field public static final P_MARKET_USERNAME:Ljava/lang/String; = "pref.market.username"

.field public static final P_NO_APP_FILTER:Ljava/lang/String; = "no_app_filter"

.field public static final P_OS_VERSION:Ljava/lang/String; = "pref.os.version"

.field public static final P_REMEMBER_PASSWORD:Ljava/lang/String; = "pref.remember.password"

.field public static final P_REMOVE_APP:Ljava/lang/String; = "pref.app.remove"

.field public static final P_SCREEN_SIZE:Ljava/lang/String; = "pref.screen.size"

.field public static final P_UPDATE_AVAILABIE:Ljava/lang/String; = "pref.update.available"

.field public static final P_UPDATE_DESC:Ljava/lang/String; = "pref.update.desc"

.field public static final P_UPDATE_LEVEL:Ljava/lang/String; = "pref.update.level"

.field public static final P_UPDATE_URI:Ljava/lang/String; = "pref.update.uri"

.field public static final P_UPDATE_VERSION_CODE:Ljava/lang/String; = "pref.update.version.code"

.field public static final P_UPDATE_VERSION_NAME:Ljava/lang/String; = "pref.update.version.name"

.field public static final P_UPGRADE_NUM:Ljava/lang/String; = "pref.upgrade.num"

.field public static final P_USER_COOKIES:Ljava/lang/String; = "pref.cookies"

.field public static final VARIFY_MD5_END:Ljava/lang/String; = "pref.varify.md5.end"

.field public static final WIFI_PC_LINK:Ljava/lang/String; = "pref.wifi.pc.link.status"

.field private static mInstance:Lcom/market2345/SessionManager;

.field private static final sApplyMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUpdateThread:Ljava/lang/Thread;

.field private mPreference:Landroid/content/SharedPreferences;

.field private mUpdateQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/market2345/SessionManager;->findApplyMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/market2345/SessionManager;->sApplyMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/market2345/SessionManager;->mUpdateQueue:Ljava/util/LinkedList;

    .line 125
    monitor-enter p0

    .line 127
    :try_start_0
    iput-object p1, p0, Lcom/market2345/SessionManager;->mContext:Landroid/content/Context;

    .line 128
    iget-object v0, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/market2345/SessionManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    .line 132
    :cond_0
    monitor-exit p0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/market2345/SessionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/SessionManager;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/market2345/SessionManager;->writePreference()V

    return-void
.end method

.method public static apply(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 164
    sget-object v0, Lcom/market2345/SessionManager;->sApplyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 168
    :try_start_0
    sget-object v0, Lcom/market2345/SessionManager;->sApplyMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 180
    :cond_0
    :goto_1
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 171
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static findApplyMethod()Ljava/lang/reflect/Method;
    .locals 4

    .prologue
    .line 150
    :try_start_0
    const-class v0, Landroid/content/SharedPreferences$Editor;

    .line 151
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/content/SharedPreferences$Editor;>;"
    const-string v2, "apply"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 158
    :goto_0
    return-object v2

    .line 153
    :catch_0
    move-exception v1

    .line 156
    .local v1, "unused":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 158
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;)Lcom/market2345/SessionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    sget-object v0, Lcom/market2345/SessionManager;->mInstance:Lcom/market2345/SessionManager;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/market2345/SessionManager;

    invoke-direct {v0, p0}, Lcom/market2345/SessionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/market2345/SessionManager;->mInstance:Lcom/market2345/SessionManager;

    .line 141
    :cond_0
    sget-object v0, Lcom/market2345/SessionManager;->mInstance:Lcom/market2345/SessionManager;

    return-object v0
.end method

.method private isPreferenceNull()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private writePreference()V
    .locals 5

    .prologue
    .line 293
    iget-object v3, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 295
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/market2345/SessionManager;->mUpdateQueue:Ljava/util/LinkedList;

    monitor-enter v4

    .line 297
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/market2345/SessionManager;->mUpdateQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 301
    iget-object v3, p0, Lcom/market2345/SessionManager;->mUpdateQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 304
    .local v2, "updateItem":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 306
    .local v1, "key":Ljava/lang/String;
    const-string v3, "pref.market.username"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "pref.market.password"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 308
    :cond_1
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 324
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "updateItem":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 310
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "updateItem":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    :try_start_1
    const-string v3, "pref.isLogin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "pref.lpns.is.binded"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "pref.update.available"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 312
    :cond_3
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 314
    :cond_4
    const-string v3, "pref.screen.size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "pref.os.version"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "pref.lpns.binded.devid"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "pref.update.desc"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "pref.update.uri"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "pref.update.version.name"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "pref.charge.defaultChargeType"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 317
    :cond_5
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 319
    :cond_6
    const-string v3, "pref.update.version.code"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "pref.update.level"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "pref.upgrade.num"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "pref.current.version"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    :cond_7
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 324
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "updateItem":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_8
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    invoke-static {v0}, Lcom/market2345/SessionManager;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 327
    return-void
.end method

.method private writePreferenceSlowly()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/market2345/SessionManager;->mCurrentUpdateThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/market2345/SessionManager;->mCurrentUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 239
    :cond_0
    new-instance v0, Lcom/market2345/SessionManager$1;

    invoke-direct {v0, p0}, Lcom/market2345/SessionManager$1;-><init>(Lcom/market2345/SessionManager;)V

    iput-object v0, p0, Lcom/market2345/SessionManager;->mCurrentUpdateThread:Ljava/lang/Thread;

    .line 261
    iget-object v0, p0, Lcom/market2345/SessionManager;->mCurrentUpdateThread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 262
    iget-object v0, p0, Lcom/market2345/SessionManager;->mCurrentUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    .line 195
    sput-object v0, Lcom/market2345/SessionManager;->mInstance:Lcom/market2345/SessionManager;

    .line 196
    return-void
.end method

.method public isFilterApps()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v2, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    const-string v3, "no_app_filter"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 186
    .local v0, "isFilter":Z
    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public readPreference()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 332
    invoke-direct {p0}, Lcom/market2345/SessionManager;->isPreferenceNull()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 374
    :goto_0
    return-object v0

    .line 337
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 338
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "pref.screen.size"

    iget-object v5, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    const-string v6, "pref.screen.size"

    const-string v7, "320#480"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const-string v4, "pref.os.version"

    iget-object v5, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    const-string v6, "pref.os.version"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v4, "pref.isLogin"

    iget-object v5, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    const-string v6, "pref.isLogin"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v4, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    const-string v5, "pref.market.username"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "username":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 344
    const-string v2, ""

    .line 346
    :cond_1
    const-string v4, "pref.market.username"

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v4, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    const-string v5, "pref.market.password"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "password":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 350
    const-string v1, ""

    .line 352
    :cond_2
    const-string v4, "pref.market.password"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v4, "auto_clear_cache"

    iget-object v5, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    const-string v6, "auto_clear_cache"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v4, "pref.lpns.is.binded"

    iget-object v5, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    const-string v6, "pref.lpns.is.binded"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v4, "pref.lpns.binded.devid"

    iget-object v5, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    const-string v6, "pref.lpns.binded.devid"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v4, "pref.update.available"

    iget-object v5, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    const-string v6, "pref.update.available"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v4, "pref.update.version.code"

    iget-object v5, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    const-string v6, "pref.update.version.code"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v4, "pref.update.level"

    iget-object v5, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    const-string v6, "pref.update.level"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v4, "pref.upgrade.num"

    iget-object v5, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    const-string v6, "pref.upgrade.num"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v4, "pref.update.desc"

    iget-object v5, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    const-string v6, "pref.update.desc"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v4, "pref.update.uri"

    iget-object v5, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    const-string v6, "pref.update.uri"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v4, "pref.update.version.name"

    iget-object v5, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    const-string v6, "pref.update.version.name"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v4, "pref.current.version"

    iget-object v5, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    const-string v6, "pref.current.version"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v4, "pref.charge.defaultChargeType"

    iget-object v5, p0, Lcom/market2345/SessionManager;->mPreference:Landroid/content/SharedPreferences;

    const-string v6, "pref.charge.defaultChargeType"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 209
    instance-of v0, p2, Landroid/util/Pair;

    if-eqz v0, :cond_1

    .line 211
    iget-object v1, p0, Lcom/market2345/SessionManager;->mUpdateQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 213
    if-eqz p2, :cond_0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/market2345/SessionManager;->mUpdateQueue:Ljava/util/LinkedList;

    check-cast p2, Landroid/util/Pair;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-direct {p0}, Lcom/market2345/SessionManager;->writePreferenceSlowly()V

    .line 220
    :cond_1
    return-void

    .line 217
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public writePreferenceQuickly()V
    .locals 2

    .prologue
    .line 273
    new-instance v0, Lcom/market2345/SessionManager$2;

    invoke-direct {v0, p0}, Lcom/market2345/SessionManager$2;-><init>(Lcom/market2345/SessionManager;)V

    iput-object v0, p0, Lcom/market2345/SessionManager;->mCurrentUpdateThread:Ljava/lang/Thread;

    .line 283
    iget-object v0, p0, Lcom/market2345/SessionManager;->mCurrentUpdateThread:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 284
    iget-object v0, p0, Lcom/market2345/SessionManager;->mCurrentUpdateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 285
    return-void
.end method
