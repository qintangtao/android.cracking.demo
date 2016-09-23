.class public Lcom/market2345/dumpclean/ScanHelp;
.super Ljava/lang/Object;
.source "ScanHelp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/dumpclean/ScanHelp$IScanResult;
    }
.end annotation


# static fields
.field public static final APK_FIAL:Ljava/lang/String; = "\u65e0\u7528\u5b89\u88c5\u5305"

.field public static final CACHE_JUNK:Ljava/lang/String; = "\u7f13\u5b58\u5783\u573e"

.field public static final ONE_DAY_LONG:J = 0x5265c00L

.field public static final RAM_QUICKEN:Ljava/lang/String; = "\u5185\u5b58\u52a0\u901f"

.field private static final SCAN_FILE_OVER:I = 0x6

.field public static final STATE_ALL_SELECT:I = 0x1

.field public static final STATE_HALF_SELECT:I = 0x2

.field public static final STATE_UNALL_SELECT:I = 0x0

.field public static final SYATEM_CACHE:Ljava/lang/String; = "\u7cfb\u7edf\u7f13\u5b58"

.field private static final TAG:Ljava/lang/String; = "ScanHelp"

.field public static final UNINSTALL_REMAIN:Ljava/lang/String; = "\u5378\u8f7d\u6b8b\u7559"

.field private static final WeiXin_Match:Ljava/lang/String; = "********************************"

.field private static final WeiXin_PackageName:Ljava/lang/String; = "com.tencent.mm"

.field private static final filterDir1:Ljava/lang/String; = "/2345\u624b\u673a\u52a9\u624b/"

.field private static final filterDir2:Ljava/lang/String; = "/2345ZSDownload/"

.field private static mInstance:Lcom/market2345/dumpclean/ScanHelp; = null

.field private static final selectSql:Ljava/lang/String; = "select a.encrypted_file_path,a.encrypted_file_desp,a.encrypted_file_tip,a.proposal,b.encrypted_pck_name,b.encrypted_app_name,b.encrypted_tip from file_table as a join package_table as b on a.pck_name_id = b._id where b.encrypted_pck_name = ?"


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private apkFileDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkChild;",
            ">;"
        }
    .end annotation
.end field

.field private apkSize:J

.field private cacheDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkChild;",
            ">;"
        }
    .end annotation
.end field

.field private cacheSize:J

.field private cacheSystemDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;",
            ">;"
        }
    .end annotation
.end field

.field private cacheSystemSize:J

.field private clearManager:Lcom/market2345/clearStrategy/ClearManager;

.field private collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/market2345/model/InstalledApp;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkGroup;",
            ">;"
        }
    .end annotation
.end field

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private iScanResult:Lcom/market2345/dumpclean/ScanHelp$IScanResult;

.field private isRun:Z

.field private lastTime:J

.field private outSdPath:Ljava/lang/String;

.field private pm:Landroid/content/pm/PackageManager;

.field private queryAll:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/TrustMode;",
            ">;"
        }
    .end annotation
.end field

.field private ramDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkChild;",
            ">;"
        }
    .end annotation
.end field

.field private ramSize:J

.field private residualDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkChild;",
            ">;"
        }
    .end annotation
.end field

.field private residualSize:J

.field private sdPath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-wide v0, p0, Lcom/market2345/dumpclean/ScanHelp;->ramSize:J

    .line 95
    iput-wide v0, p0, Lcom/market2345/dumpclean/ScanHelp;->lastTime:J

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->context:Landroid/content/Context;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/dumpclean/ScanHelp;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/ScanHelp;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/dumpclean/ScanHelp;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/ScanHelp;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/market2345/dumpclean/ScanHelp;->scanSize()V

    return-void
.end method

.method static synthetic access$200(Lcom/market2345/dumpclean/ScanHelp;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/ScanHelp;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/market2345/dumpclean/ScanHelp;->scanAll()V

    return-void
.end method

.method static synthetic access$300(Lcom/market2345/dumpclean/ScanHelp;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/ScanHelp;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/dumpclean/ScanHelp;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/ScanHelp;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheSystemDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$514(Lcom/market2345/dumpclean/ScanHelp;J)J
    .locals 3
    .param p0, "x0"    # Lcom/market2345/dumpclean/ScanHelp;
    .param p1, "x1"    # J

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheSystemSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheSystemSize:J

    return-wide v0
.end method

.method private callCleanActivity(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1336
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->iScanResult:Lcom/market2345/dumpclean/ScanHelp$IScanResult;

    if-nez v0, :cond_1

    .line 1351
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 1339
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/market2345/dumpclean/ScanHelp;->lastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market2345/dumpclean/ScanHelp;->lastTime:J

    .line 1342
    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->iScanResult:Lcom/market2345/dumpclean/ScanHelp$IScanResult;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {v0, p1}, Lcom/market2345/dumpclean/ScanHelp$IScanResult;->scanning(Ljava/lang/String;)V

    goto :goto_0

    .line 1344
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1345
    iget-object v1, p0, Lcom/market2345/dumpclean/ScanHelp;->iScanResult:Lcom/market2345/dumpclean/ScanHelp$IScanResult;

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/market2345/dumpclean/ScanHelp$IScanResult;->scanState(I)V

    .line 1346
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->iScanResult:Lcom/market2345/dumpclean/ScanHelp$IScanResult;

    goto :goto_0
.end method

.method private check2345Filer(Ljava/lang/String;)Z
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 1076
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1094
    :cond_0
    :goto_0
    return v1

    .line 1079
    :cond_1
    const-string v5, "/2345\u624b\u673a\u52a9\u624b/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "/2345ZSDownload/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move v1, v4

    .line 1080
    goto :goto_0

    .line 1082
    :cond_2
    iget-object v5, p0, Lcom/market2345/dumpclean/ScanHelp;->pm:Landroid/content/pm/PackageManager;

    invoke-direct {p0, v5, p1}, Lcom/market2345/dumpclean/ScanHelp;->getApkInfoFromPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/market2345/dumpclean/mode/JunkChildApk;

    move-result-object v0

    .line 1083
    .local v0, "apk":Lcom/market2345/dumpclean/mode/JunkChildApk;
    iget v5, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;->installedType:I

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;->installedType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 1085
    :cond_3
    iput v4, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;->select:I

    move v1, v4

    .line 1086
    goto :goto_0

    .line 1089
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1090
    .local v2, "currentTime":J
    iget-wide v6, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;->fileTime:J

    sub-long v6, v2, v6

    const-wide/32 v8, 0x5265c00

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    .line 1093
    iput v4, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;->select:I

    move v1, v4

    .line 1094
    goto :goto_0
.end method

.method private checkLastScanTime()Z
    .locals 4

    .prologue
    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/MarketApplication;->getLastScanTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1770

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkPackageNameExists(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return v2

    .line 1170
    :cond_1
    iget-object v3, p0, Lcom/market2345/dumpclean/ScanHelp;->collection:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/InstalledApp;

    .line 1171
    .local v0, "app":Lcom/market2345/model/InstalledApp;
    iget-object v3, v0, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1172
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkPathExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 900
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 922
    :cond_0
    :goto_0
    return v2

    .line 903
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 905
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    goto :goto_0

    .line 907
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 908
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    move v2, v3

    .line 909
    goto :goto_0
.end method

.method private checkPathExistNotContainFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 875
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 890
    :cond_1
    :goto_0
    return v2

    .line 878
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 880
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_1

    .line 882
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 883
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_3

    array-length v4, v1

    if-gtz v4, :cond_1

    :cond_3
    move v2, v3

    .line 886
    goto :goto_0

    .end local v1    # "files":[Ljava/io/File;
    :cond_4
    move v2, v3

    .line 890
    goto :goto_0
.end method

.method private checkSDState()Z
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->sdPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->outSdPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    const/4 v0, 0x0

    .line 1281
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkTrust(Ljava/lang/String;)Z
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1147
    iget-object v3, p0, Lcom/market2345/dumpclean/ScanHelp;->queryAll:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/market2345/dumpclean/ScanHelp;->queryAll:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1155
    :cond_0
    :goto_0
    return v2

    .line 1150
    :cond_1
    iget-object v3, p0, Lcom/market2345/dumpclean/ScanHelp;->queryAll:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/TrustMode;

    .line 1151
    .local v1, "trustMode":Lcom/market2345/dumpclean/TrustMode;
    iget-object v3, v1, Lcom/market2345/dumpclean/TrustMode;->path:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1152
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private doType(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I
    .locals 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # I

    .prologue
    .line 982
    const/16 v5, 0x2000

    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 984
    .local v1, "pakageinfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 985
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 986
    .local v3, "pi_packageName":Ljava/lang/String;
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 988
    .local v4, "pi_versionCode":I
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 990
    if-ne p3, v4, :cond_1

    .line 991
    const/4 v5, 0x0

    .line 999
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "pi_packageName":Ljava/lang/String;
    .end local v4    # "pi_versionCode":I
    :goto_0
    return v5

    .line 992
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pi_packageName":Ljava/lang/String;
    .restart local v4    # "pi_versionCode":I
    :cond_1
    if-le p3, v4, :cond_2

    .line 993
    const/4 v5, 0x2

    goto :goto_0

    .line 994
    :cond_2
    if-ge p3, v4, :cond_0

    .line 995
    const/4 v5, 0x3

    goto :goto_0

    .line 999
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "pi_packageName":Ljava/lang/String;
    .end local v4    # "pi_versionCode":I
    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method private findApkFile(Ljava/io/File;Z)V
    .locals 18
    .param p1, "file"    # Ljava/io/File;
    .param p2, "onlySize"    # Z

    .prologue
    .line 1004
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/market2345/dumpclean/ScanHelp;->isRun:Z

    if-nez v14, :cond_1

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1007
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->canWrite()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1010
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/market2345/dumpclean/ScanHelp;->callCleanActivity(Ljava/lang/Object;)V

    .line 1012
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/market2345/dumpclean/ScanHelp;->checkTrust(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 1015
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1016
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1017
    .local v10, "name_s":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 1018
    .local v11, "path":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".apk"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/market2345/dumpclean/ScanHelp;->check2345Filer(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1019
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 1020
    .local v12, "size":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/market2345/dumpclean/ScanHelp;->apkSize:J

    add-long/2addr v14, v12

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/market2345/dumpclean/ScanHelp;->apkSize:J

    .line 1021
    if-nez p2, :cond_0

    .line 1022
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/market2345/dumpclean/ScanHelp;->callCleanActivity(Ljava/lang/Object;)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/dumpclean/ScanHelp;->pm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/market2345/dumpclean/ScanHelp;->getApkInfoFromPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/market2345/dumpclean/mode/JunkChildApk;

    move-result-object v2

    .line 1026
    .local v2, "apk":Lcom/market2345/dumpclean/mode/JunkChildApk;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    iput-wide v14, v2, Lcom/market2345/dumpclean/mode/JunkChildApk;->fileTime:J

    .line 1027
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/market2345/dumpclean/mode/JunkChildApk;->path:Ljava/lang/String;

    .line 1028
    iput-wide v12, v2, Lcom/market2345/dumpclean/mode/JunkChildApk;->size:J

    .line 1029
    iget v14, v2, Lcom/market2345/dumpclean/mode/JunkChildApk;->installedType:I

    if-nez v14, :cond_2

    .line 1030
    const/4 v14, 0x1

    iput v14, v2, Lcom/market2345/dumpclean/mode/JunkChildApk;->select:I

    .line 1039
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/dumpclean/ScanHelp;->apkFileDatas:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1032
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1033
    .local v4, "currentTime":J
    iget-wide v14, v2, Lcom/market2345/dumpclean/mode/JunkChildApk;->fileTime:J

    sub-long v14, v4, v14

    const-wide/32 v16, 0x5265c00

    cmp-long v14, v14, v16

    if-gez v14, :cond_3

    .line 1034
    const/4 v14, 0x0

    iput v14, v2, Lcom/market2345/dumpclean/mode/JunkChildApk;->select:I

    goto :goto_1

    .line 1036
    :cond_3
    const/4 v14, 0x1

    iput v14, v2, Lcom/market2345/dumpclean/mode/JunkChildApk;->select:I

    goto :goto_1

    .line 1049
    .end local v2    # "apk":Lcom/market2345/dumpclean/mode/JunkChildApk;
    .end local v4    # "currentTime":J
    .end local v10    # "name_s":Ljava/lang/String;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "size":J
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/market2345/dumpclean/ScanHelp;->isRun:Z

    if-eqz v14, :cond_0

    .line 1052
    const/4 v14, 0x6

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/market2345/common/util/Utils;->isFileDirOver(Ljava/io/File;I)Z

    move-result v14

    if-nez v14, :cond_0

    .line 1056
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 1057
    .local v7, "files":[Ljava/io/File;
    if-eqz v7, :cond_0

    array-length v14, v7

    if-lez v14, :cond_0

    .line 1058
    move-object v3, v7

    .local v3, "arr$":[Ljava/io/File;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v9, :cond_0

    aget-object v6, v3, v8

    .line 1059
    .local v6, "file_str":Ljava/io/File;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/market2345/dumpclean/ScanHelp;->isRun:Z

    if-eqz v14, :cond_0

    .line 1061
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v6, v1}, Lcom/market2345/dumpclean/ScanHelp;->findApkFile(Ljava/io/File;Z)V

    .line 1058
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private getApkFile(Z)V
    .locals 2
    .param p1, "onlySize"    # Z

    .prologue
    .line 851
    iget-object v1, p0, Lcom/market2345/dumpclean/ScanHelp;->sdPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 852
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 853
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, v0, p1}, Lcom/market2345/dumpclean/ScanHelp;->findApkFile(Ljava/io/File;Z)V

    .line 857
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/market2345/dumpclean/ScanHelp;->outSdPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 858
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/market2345/dumpclean/ScanHelp;->outSdPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 859
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 860
    invoke-direct {p0, v0, p1}, Lcom/market2345/dumpclean/ScanHelp;->findApkFile(Ljava/io/File;Z)V

    .line 864
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/market2345/dumpclean/ScanHelp;->callCleanActivity(Ljava/lang/Object;)V

    .line 865
    return-void
.end method

.method private getApkFileSelectSize()J
    .locals 8

    .prologue
    .line 1226
    const-wide/16 v4, 0x0

    .line 1227
    .local v4, "size":J
    iget-object v3, p0, Lcom/market2345/dumpclean/ScanHelp;->apkFileDatas:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/market2345/dumpclean/ScanHelp;->apkFileDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1228
    iget-object v3, p0, Lcom/market2345/dumpclean/ScanHelp;->apkFileDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkChild;

    .local v1, "child":Lcom/market2345/dumpclean/mode/JunkChild;
    move-object v0, v1

    .line 1229
    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChildApk;

    .line 1230
    .local v0, "apk":Lcom/market2345/dumpclean/mode/JunkChildApk;
    invoke-virtual {v0}, Lcom/market2345/dumpclean/mode/JunkChildApk;->getSelect()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 1231
    iget-wide v6, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;->size:J

    add-long/2addr v4, v6

    goto :goto_0

    .line 1235
    .end local v0    # "apk":Lcom/market2345/dumpclean/mode/JunkChildApk;
    .end local v1    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-wide v4
.end method

.method private getApkInfoFromPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/market2345/dumpclean/mode/JunkChildApk;
    .locals 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 1101
    new-instance v0, Lcom/market2345/dumpclean/mode/JunkChildApk;

    invoke-direct {v0}, Lcom/market2345/dumpclean/mode/JunkChildApk;-><init>()V

    .line 1102
    .local v0, "apk":Lcom/market2345/dumpclean/mode/JunkChildApk;
    const/4 v2, 0x0

    .line 1103
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_0

    .line 1104
    const/4 v3, 0x1

    invoke-virtual {p1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1106
    :cond_0
    if-eqz v2, :cond_2

    .line 1107
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1113
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iput-object p2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 1114
    iput-object p2, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1115
    invoke-virtual {v1, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;->name:Ljava/lang/String;

    .line 1116
    invoke-virtual {v1, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 1117
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v3, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;->packageName:Ljava/lang/String;

    .line 1118
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;->versionName:Ljava/lang/String;

    .line 1119
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;->versionCode:I

    .line 1121
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-direct {p0, p1, v3, v4}, Lcom/market2345/dumpclean/ScanHelp;->doType(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;->installedType:I

    .line 1129
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1130
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;->fileTime:J

    .line 1132
    :cond_1
    return-object v0

    .line 1123
    :cond_2
    const-string v3, "\u672a\u77e5"

    iput-object v3, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;->name:Ljava/lang/String;

    .line 1124
    const-string v3, "\u672a\u77e5"

    iput-object v3, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;->packageName:Ljava/lang/String;

    .line 1125
    const-string v3, "\u672a\u77e5"

    iput-object v3, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;->versionName:Ljava/lang/String;

    .line 1126
    const/4 v3, 0x0

    iput v3, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;->versionCode:I

    .line 1127
    const/4 v3, 0x4

    iput v3, v0, Lcom/market2345/dumpclean/mode/JunkChildApk;->installedType:I

    goto :goto_0
.end method

.method private getAppCache(Z)V
    .locals 32
    .param p1, "onlySize"    # Z

    .prologue
    .line 502
    invoke-direct/range {p0 .. p0}, Lcom/market2345/dumpclean/ScanHelp;->getMMPathMatch()Ljava/util/List;

    move-result-object v18

    .line 503
    .local v18, "mm_path_matchs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v28

    if-eqz v28, :cond_1

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/market2345/datacenter/DataCenterObserver;->getUserInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v27

    .line 506
    .local v27, "userApps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/market2345/model/InstalledApp;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/model/InstalledApp;

    .line 507
    .local v4, "app":Lcom/market2345/model/InstalledApp;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/dumpclean/ScanHelp;->isRun:Z

    move/from16 v28, v0

    if-nez v28, :cond_2

    .line 621
    .end local v4    # "app":Lcom/market2345/model/InstalledApp;
    .end local v27    # "userApps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/market2345/model/InstalledApp;>;"
    :cond_1
    :goto_1
    return-void

    .line 509
    .restart local v4    # "app":Lcom/market2345/model/InstalledApp;
    .restart local v27    # "userApps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/market2345/model/InstalledApp;>;"
    :cond_2
    iget-object v0, v4, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/market2345/dumpclean/ScanHelp;->checkTrust(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 511
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v22, "result":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    iget-object v0, v4, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/market2345/dumpclean/ScanHelp;->callCleanActivity(Ljava/lang/Object;)V

    .line 513
    const-string v28, "ScanHelp"

    const-string v29, "ScanHelp#getAppCache"

    invoke-static/range {v28 .. v29}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->context:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/market2345/util/SecurityAppInfo;->getSolidKey(Landroid/content/Context;)[B

    move-result-object v23

    .line 515
    .local v23, "solidKey":[B
    if-nez v23, :cond_4

    .line 616
    .end local v4    # "app":Lcom/market2345/model/InstalledApp;
    .end local v22    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    .end local v23    # "solidKey":[B
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/market2345/dumpclean/ScanHelp;->scanADSDK(Z)V

    .line 618
    const/16 v28, 0x2

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/market2345/dumpclean/ScanHelp;->callCleanActivity(Ljava/lang/Object;)V

    goto :goto_1

    .line 518
    .restart local v4    # "app":Lcom/market2345/model/InstalledApp;
    .restart local v22    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    .restart local v23    # "solidKey":[B
    :cond_4
    iget-object v0, v4, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v28 .. v29}, Lcom/market2345/common/util/Utils;->strCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 519
    .local v8, "encryptedName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v28, v0

    const-string v29, "select a.encrypted_file_path,a.encrypted_file_desp,a.encrypted_file_tip,a.proposal,b.encrypted_pck_name,b.encrypted_app_name,b.encrypted_tip from file_table as a join package_table as b on a.pck_name_id = b._id where b.encrypted_pck_name = ?"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v8, v30, v31

    invoke-virtual/range {v28 .. v30}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 520
    .local v10, "filePathCursor":Landroid/database/Cursor;
    const-wide/16 v24, 0x0

    .line 521
    .local v24, "size":J
    const-string v26, ""

    .line 522
    .local v26, "tip":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v28

    if-eqz v28, :cond_b

    .line 524
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/dumpclean/ScanHelp;->isRun:Z

    move/from16 v28, v0

    if-nez v28, :cond_6

    .line 525
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 528
    :cond_6
    const-string v28, "encrypted_file_path"

    move-object/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/market2345/clearStrategy/ClearManager;->decrptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 529
    .local v9, "filePath":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/market2345/dumpclean/main/Util;->getRootPath()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/market2345/dumpclean/ScanHelp;->checkTrust(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_5

    .line 532
    const-string v28, "encrypted_file_desp"

    move-object/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/market2345/clearStrategy/ClearManager;->decrptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 533
    .local v14, "filename":Ljava/lang/String;
    const-string v28, "encrypted_file_tip"

    move-object/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/market2345/clearStrategy/ClearManager;->decrptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 534
    .local v11, "fileTip":Ljava/lang/String;
    const-string v28, "proposal"

    move-object/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 535
    .local v21, "proposal":I
    const-string v28, "encrypted_tip"

    move-object/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/market2345/clearStrategy/ClearManager;->decrptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 536
    const-string v28, "com.tencent.mm"

    iget-object v0, v4, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 537
    const-string v28, "********************************"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_9

    if-eqz v18, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_9

    .line 539
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v15, v0, :cond_5

    .line 540
    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 541
    .local v20, "path":Ljava/lang/String;
    const-string v28, "********************************"

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 542
    .local v19, "newFilePath":Ljava/lang/String;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->sdPath:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/market2345/dumpclean/ScanHelp;->getPathFileSize(Ljava/lang/String;)J

    move-result-wide v12

    .line 543
    .local v12, "fileSize":J
    add-long v24, v24, v12

    .line 544
    if-nez p1, :cond_7

    const-wide/16 v28, 0x0

    cmp-long v28, v12, v28

    if-lez v28, :cond_7

    .line 545
    new-instance v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    invoke-direct {v6}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;-><init>()V

    .line 546
    .local v6, "cacheChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    const/16 v28, 0x1

    move/from16 v0, v28

    iput v0, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->type:I

    .line 547
    iput-object v11, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->fileTip:Ljava/lang/String;

    .line 548
    move/from16 v0, v21

    iput v0, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->select:I

    .line 549
    iput-wide v12, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->size:J

    .line 550
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 551
    iput-object v14, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->name:Ljava/lang/String;

    .line 555
    :goto_4
    iget-object v0, v4, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-object v0, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->packageName:Ljava/lang/String;

    .line 556
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->sdPath:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    iput-object v0, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->path:Ljava/lang/String;

    .line 557
    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    .end local v6    # "cacheChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 553
    .restart local v6    # "cacheChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    :cond_8
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    add-int/lit8 v29, v15, 0x1

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    iput-object v0, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->name:Ljava/lang/String;

    goto :goto_4

    .line 564
    .end local v6    # "cacheChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    .end local v12    # "fileSize":J
    .end local v15    # "i":I
    .end local v19    # "newFilePath":Ljava/lang/String;
    .end local v20    # "path":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->sdPath:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v9}, Lcom/market2345/dumpclean/ScanHelp;->checkPathExistNotContainFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 565
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->sdPath:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 572
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/market2345/dumpclean/ScanHelp;->getPathFileSize(Ljava/lang/String;)J

    move-result-wide v12

    .line 573
    .restart local v12    # "fileSize":J
    const-wide/16 v28, 0x0

    cmp-long v28, v12, v28

    if-eqz v28, :cond_5

    .line 576
    add-long v24, v24, v12

    .line 577
    if-nez p1, :cond_5

    .line 578
    new-instance v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    invoke-direct {v6}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;-><init>()V

    .line 579
    .restart local v6    # "cacheChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    const/16 v28, 0x1

    move/from16 v0, v28

    iput v0, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->type:I

    .line 580
    iput-object v11, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->fileTip:Ljava/lang/String;

    .line 581
    move/from16 v0, v21

    iput v0, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->select:I

    .line 582
    iput-wide v12, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->size:J

    .line 583
    iput-object v14, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->name:Ljava/lang/String;

    .line 584
    iget-object v0, v4, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-object v0, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->packageName:Ljava/lang/String;

    .line 585
    iput-object v9, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->path:Ljava/lang/String;

    .line 587
    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 566
    .end local v6    # "cacheChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    .end local v12    # "fileSize":J
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->outSdPath:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->outSdPath:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v9}, Lcom/market2345/dumpclean/ScanHelp;->checkPathExistNotContainFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 567
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->outSdPath:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    .line 592
    .end local v9    # "filePath":Ljava/lang/String;
    .end local v11    # "fileTip":Ljava/lang/String;
    .end local v14    # "filename":Ljava/lang/String;
    .end local v21    # "proposal":I
    :cond_b
    const-wide/16 v28, 0x0

    cmp-long v28, v24, v28

    if-lez v28, :cond_e

    .line 593
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/market2345/dumpclean/ScanHelp;->cacheSize:J

    move-wide/from16 v28, v0

    add-long v28, v28, v24

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/market2345/dumpclean/ScanHelp;->cacheSize:J

    .line 594
    if-nez p1, :cond_e

    .line 595
    new-instance v5, Lcom/market2345/dumpclean/mode/JunkChildCache;

    invoke-direct {v5}, Lcom/market2345/dumpclean/mode/JunkChildCache;-><init>()V

    .line 596
    .local v5, "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    .line 597
    const/16 v28, 0x1

    move/from16 v0, v28

    iput v0, v5, Lcom/market2345/dumpclean/mode/JunkChildCache;->select:I

    .line 598
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    .line 599
    .local v7, "childOfChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    invoke-virtual {v7}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->getSelect()I

    move-result v28

    if-nez v28, :cond_c

    .line 600
    const/16 v28, 0x0

    move/from16 v0, v28

    iput v0, v5, Lcom/market2345/dumpclean/mode/JunkChildCache;->select:I

    .line 605
    .end local v7    # "childOfChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    :cond_d
    move-wide/from16 v0, v24

    iput-wide v0, v5, Lcom/market2345/dumpclean/mode/JunkChildCache;->size:J

    .line 606
    move-object/from16 v0, v26

    iput-object v0, v5, Lcom/market2345/dumpclean/mode/JunkChildCache;->tip:Ljava/lang/String;

    .line 607
    iget-object v0, v4, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-object v0, v5, Lcom/market2345/dumpclean/mode/JunkChildCache;->packageName:Ljava/lang/String;

    .line 608
    iget-object v0, v4, Lcom/market2345/model/InstalledApp;->appName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iput-object v0, v5, Lcom/market2345/dumpclean/mode/JunkChildCache;->name:Ljava/lang/String;

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->cacheDatas:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    .end local v5    # "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_e
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private getAppFromUid(I)Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 961
    iget-object v3, p0, Lcom/market2345/dumpclean/ScanHelp;->collection:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/model/InstalledApp;

    .line 962
    .local v2, "item":Lcom/market2345/model/InstalledApp;
    iget v3, v2, Lcom/market2345/model/InstalledApp;->uid:I

    if-ne v3, p1, :cond_0

    .line 963
    new-instance v1, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    invoke-direct {v1, v2}, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;-><init>(Lcom/market2345/model/InstalledApp;)V

    .line 965
    .local v1, "iaar":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    const/4 v3, 0x1

    iput v3, v1, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->select:I

    .line 966
    iget-object v3, v2, Lcom/market2345/model/InstalledApp;->appName:Ljava/lang/String;

    iput-object v3, v1, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->name:Ljava/lang/String;

    .line 971
    .end local v1    # "iaar":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    .end local v2    # "item":Lcom/market2345/model/InstalledApp;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAppResidual(Z)V
    .locals 23
    .param p1, "onlySize"    # Z

    .prologue
    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    .line 730
    const-string v16, "select * from package_table where type=0"

    .line 731
    .local v16, "sql":Ljava/lang/String;
    const-string v17, "select * from file_table where pck_name_id= ?"

    .line 732
    .local v17, "sql2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v18

    if-nez v18, :cond_0

    .line 733
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->clearManager:Lcom/market2345/clearStrategy/ClearManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/market2345/clearStrategy/ClearManager;->openClearDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 736
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 737
    .local v6, "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    if-eqz v6, :cond_a

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 738
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/dumpclean/ScanHelp;->isRun:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 739
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 797
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v16    # "sql":Ljava/lang/String;
    .end local v17    # "sql2":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 742
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "sql":Ljava/lang/String;
    .restart local v17    # "sql2":Ljava/lang/String;
    :cond_3
    const-string v18, "encrypted_app_name"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/market2345/clearStrategy/ClearManager;->decrptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 743
    .local v5, "appName":Ljava/lang/String;
    const-string v18, "encrypted_pck_name"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/market2345/clearStrategy/ClearManager;->decrptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 745
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/market2345/dumpclean/ScanHelp;->checkPackageNameExists(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 749
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/market2345/dumpclean/ScanHelp;->checkTrust(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 752
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/market2345/dumpclean/ScanHelp;->callCleanActivity(Ljava/lang/Object;)V

    .line 753
    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 754
    .local v4, "_id":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v18

    if-nez v18, :cond_4

    .line 755
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->clearManager:Lcom/market2345/clearStrategy/ClearManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/market2345/clearStrategy/ClearManager;->openClearDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 758
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 759
    .local v7, "cursor2":Landroid/database/Cursor;
    const-wide/16 v14, 0x0

    .line 760
    .local v14, "size":J
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 761
    .local v12, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 762
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/dumpclean/ScanHelp;->isRun:Z

    move/from16 v18, v0

    if-nez v18, :cond_6

    .line 763
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 766
    :cond_6
    const-string v18, "encrypted_file_path"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/market2345/clearStrategy/ClearManager;->decrptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 767
    .local v8, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->sdPath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/market2345/dumpclean/ScanHelp;->checkPathExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 768
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->sdPath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 774
    :goto_3
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/market2345/dumpclean/ScanHelp;->getPathFileSize(Ljava/lang/String;)J

    move-result-wide v10

    .line 776
    .local v10, "fileSize":J
    add-long/2addr v14, v10

    .line 777
    goto :goto_2

    .line 769
    .end local v10    # "fileSize":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->outSdPath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/market2345/dumpclean/ScanHelp;->checkPathExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 770
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->outSdPath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 778
    .end local v8    # "filePath":Ljava/lang/String;
    :cond_8
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_9

    .line 779
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/market2345/dumpclean/ScanHelp;->residualSize:J

    move-wide/from16 v18, v0

    add-long v18, v18, v14

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/market2345/dumpclean/ScanHelp;->residualSize:J

    .line 780
    if-nez p1, :cond_9

    .line 781
    new-instance v13, Lcom/market2345/dumpclean/mode/JunkChildResidual;

    invoke-direct {v13}, Lcom/market2345/dumpclean/mode/JunkChildResidual;-><init>()V

    .line 782
    .local v13, "residual":Lcom/market2345/dumpclean/mode/JunkChildResidual;
    iput-object v5, v13, Lcom/market2345/dumpclean/mode/JunkChildResidual;->name:Ljava/lang/String;

    .line 783
    iput-object v12, v13, Lcom/market2345/dumpclean/mode/JunkChildResidual;->paths:Ljava/util/List;

    .line 784
    iput-wide v14, v13, Lcom/market2345/dumpclean/mode/JunkChildResidual;->size:J

    .line 785
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v13, Lcom/market2345/dumpclean/mode/JunkChildResidual;->select:I

    .line 786
    iput-object v9, v13, Lcom/market2345/dumpclean/mode/JunkChildResidual;->packageName:Ljava/lang/String;

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->residualDatas:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    .end local v13    # "residual":Lcom/market2345/dumpclean/mode/JunkChildResidual;
    :cond_9
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 792
    .end local v4    # "_id":I
    .end local v5    # "appName":Ljava/lang/String;
    .end local v7    # "cursor2":Landroid/database/Cursor;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v12    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "size":J
    :cond_a
    if-eqz v6, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 793
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->clearManager:Lcom/market2345/clearStrategy/ClearManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/market2345/clearStrategy/ClearManager;->closeClearDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 795
    const/16 v18, 0x6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/market2345/dumpclean/ScanHelp;->callCleanActivity(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private getCacheSelectSize()J
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 1183
    const-wide/16 v6, 0x0

    .line 1184
    .local v6, "size":J
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheDatas:Ljava/util/List;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheDatas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 1185
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheDatas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 1186
    .local v1, "child":Lcom/market2345/dumpclean/mode/JunkChild;
    instance-of v8, v1, Lcom/market2345/dumpclean/mode/JunkChildCache;

    if-eqz v8, :cond_0

    move-object v0, v1

    .line 1187
    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChildCache;

    .line 1188
    .local v0, "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    const-string v8, "com.android.system.cache"

    iget-object v9, v0, Lcom/market2345/dumpclean/mode/JunkChildCache;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1189
    invoke-virtual {v0}, Lcom/market2345/dumpclean/mode/JunkChildCache;->getSelect()I

    move-result v8

    if-ne v8, v10, :cond_0

    iget-wide v8, v0, Lcom/market2345/dumpclean/mode/JunkChildCache;->size:J

    add-long/2addr v6, v8

    goto :goto_0

    .line 1191
    :cond_1
    iget-object v3, v0, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    .line 1192
    .local v3, "childOfChilds":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    .line 1193
    .local v2, "childOfChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    invoke-virtual {v2}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->getSelect()I

    move-result v8

    if-ne v8, v10, :cond_2

    iget-wide v8, v2, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->size:J

    add-long/2addr v6, v8

    goto :goto_1

    .line 1201
    .end local v0    # "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    .end local v1    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    .end local v2    # "childOfChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    .end local v3    # "childOfChilds":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    return-wide v6
.end method

.method private getContainFromUid(I)Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 943
    iget-object v3, p0, Lcom/market2345/dumpclean/ScanHelp;->ramDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 944
    .local v1, "item":Lcom/market2345/dumpclean/mode/JunkChild;
    instance-of v3, v1, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 945
    check-cast v2, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    .line 946
    .local v2, "ram":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    invoke-virtual {v2}, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->getApp()Lcom/market2345/model/InstalledApp;

    move-result-object v3

    iget v3, v3, Lcom/market2345/model/InstalledApp;->uid:I

    if-ne v3, p1, :cond_0

    .line 951
    .end local v1    # "item":Lcom/market2345/dumpclean/mode/JunkChild;
    .end local v2    # "ram":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getFileFolderTotalSize(Ljava/io/File;)J
    .locals 10
    .param p1, "fileDir"    # Ljava/io/File;

    .prologue
    .line 1309
    const-wide/16 v6, 0x0

    .line 1310
    .local v6, "totalSize":J
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1311
    :cond_0
    const-wide/16 v8, 0x0

    .line 1332
    :goto_0
    return-wide v8

    .line 1313
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/market2345/dumpclean/ScanHelp;->callCleanActivity(Ljava/lang/Object;)V

    .line 1314
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1315
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    goto :goto_0

    .line 1316
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1317
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1318
    .local v2, "fileList":[Ljava/io/File;
    if-eqz v2, :cond_5

    .line 1319
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v1, v0, v3

    .line 1320
    .local v1, "file":Ljava/io/File;
    iget-boolean v5, p0, Lcom/market2345/dumpclean/ScanHelp;->isRun:Z

    if-nez v5, :cond_3

    move-wide v8, v6

    .line 1321
    goto :goto_0

    .line 1323
    :cond_3
    invoke-static {v1}, Lcom/market2345/common/util/Utils;->isFileDirOver10(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-wide v8, v6

    .line 1325
    goto :goto_0

    .line 1327
    :cond_4
    invoke-direct {p0, v1}, Lcom/market2345/dumpclean/ScanHelp;->getFileFolderTotalSize(Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 1319
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileList":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_5
    move-wide v8, v6

    .line 1332
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/market2345/dumpclean/ScanHelp;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    sget-object v0, Lcom/market2345/dumpclean/ScanHelp;->mInstance:Lcom/market2345/dumpclean/ScanHelp;

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/market2345/dumpclean/ScanHelp;->mInstance:Lcom/market2345/dumpclean/ScanHelp;

    .line 108
    :cond_0
    new-instance v0, Lcom/market2345/dumpclean/ScanHelp;

    invoke-direct {v0, p0}, Lcom/market2345/dumpclean/ScanHelp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/market2345/dumpclean/ScanHelp;->mInstance:Lcom/market2345/dumpclean/ScanHelp;

    .line 109
    sget-object v0, Lcom/market2345/dumpclean/ScanHelp;->mInstance:Lcom/market2345/dumpclean/ScanHelp;

    return-object v0
.end method

.method private getMMPathMatch()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 711
    .local v0, "MMPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/market2345/dumpclean/main/Util;->getRootPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/tencent/MicroMsg/"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 713
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 714
    .local v3, "files":[Ljava/io/File;
    move-object v1, v3

    .local v1, "arr$":[Ljava/io/File;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v5, v1, v4

    .line 715
    .local v5, "item":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_0

    .line 716
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 720
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "item":Ljava/io/File;
    .end local v6    # "len$":I
    :cond_1
    return-object v0
.end method

.method private getPathFileSize(Ljava/lang/String;)J
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1291
    const-wide/16 v2, 0x0

    .line 1292
    .local v2, "fileSizes":J
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1294
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1295
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1296
    invoke-direct {p0, v0}, Lcom/market2345/dumpclean/ScanHelp;->getFileFolderTotalSize(Ljava/io/File;)J

    move-result-wide v2

    :cond_0
    :goto_0
    move-wide v4, v2

    .line 1303
    .end local v2    # "fileSizes":J
    .local v4, "fileSizes":J
    :goto_1
    return-wide v4

    .line 1297
    .end local v4    # "fileSizes":J
    .restart local v2    # "fileSizes":J
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1298
    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 1302
    :catch_0
    move-exception v1

    .local v1, "th":Ljava/lang/Throwable;
    move-wide v4, v2

    .line 1303
    .end local v2    # "fileSizes":J
    .restart local v4    # "fileSizes":J
    goto :goto_1
.end method

.method private getRAMCache(Z)V
    .locals 14
    .param p1, "onlySize"    # Z

    .prologue
    .line 805
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sget-wide v12, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->lastCleanTime:J

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x2bf20

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    .line 807
    const-wide/16 v10, 0x7d0

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 808
    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/market2345/dumpclean/ScanHelp;->callCleanActivity(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 809
    :catch_0
    move-exception v2

    .line 810
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 814
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-object v10, p0, Lcom/market2345/dumpclean/ScanHelp;->context:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    iput-object v10, p0, Lcom/market2345/dumpclean/ScanHelp;->am:Landroid/app/ActivityManager;

    .line 815
    invoke-direct {p0}, Lcom/market2345/dumpclean/ScanHelp;->getRAPI()Ljava/util/List;

    move-result-object v0

    .line 816
    .local v0, "RAPIS":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 817
    .local v8, "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v10, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/market2345/dumpclean/ScanHelp;->callCleanActivity(Ljava/lang/Object;)V

    .line 818
    iget-boolean v10, p0, Lcom/market2345/dumpclean/ScanHelp;->isRun:Z

    if-eqz v10, :cond_0

    .line 819
    iget v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 820
    .local v9, "uid":I
    const/4 v10, 0x1

    new-array v6, v10, [I

    const/4 v10, 0x0

    iget v11, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    aput v11, v6, v10

    .line 821
    .local v6, "myMempid":[I
    iget-object v10, p0, Lcom/market2345/dumpclean/ScanHelp;->am:Landroid/app/ActivityManager;

    invoke-virtual {v10, v6}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v5

    .line 822
    .local v5, "memoryInfo":[Landroid/os/Debug$MemoryInfo;
    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-virtual {v10}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v10

    mul-int/lit16 v4, v10, 0x400

    .line 823
    .local v4, "memSize":I
    if-nez p1, :cond_4

    .line 824
    invoke-direct {p0, v9}, Lcom/market2345/dumpclean/ScanHelp;->getContainFromUid(I)Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    move-result-object v7

    .line 825
    .local v7, "ram":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    if-nez v7, :cond_3

    .line 826
    invoke-direct {p0, v9}, Lcom/market2345/dumpclean/ScanHelp;->getAppFromUid(I)Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    move-result-object v1

    .line 827
    .local v1, "app":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    if-eqz v1, :cond_2

    if-lez v4, :cond_2

    .line 828
    int-to-long v10, v4

    iput-wide v10, v1, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->size:J

    .line 829
    iget-wide v10, p0, Lcom/market2345/dumpclean/ScanHelp;->ramSize:J

    int-to-long v12, v4

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/market2345/dumpclean/ScanHelp;->ramSize:J

    .line 830
    iget-object v10, p0, Lcom/market2345/dumpclean/ScanHelp;->ramDatas:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 833
    .end local v1    # "app":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    :cond_3
    iget-wide v10, p0, Lcom/market2345/dumpclean/ScanHelp;->ramSize:J

    int-to-long v12, v4

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/market2345/dumpclean/ScanHelp;->ramSize:J

    .line 834
    iget-wide v10, v7, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->size:J

    int-to-long v12, v4

    add-long/2addr v10, v12

    iput-wide v10, v7, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->size:J

    goto :goto_1

    .line 837
    .end local v7    # "ram":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    :cond_4
    iget-wide v10, p0, Lcom/market2345/dumpclean/ScanHelp;->ramSize:J

    int-to-long v12, v4

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/market2345/dumpclean/ScanHelp;->ramSize:J

    goto :goto_1

    .line 842
    .end local v4    # "memSize":I
    .end local v5    # "memoryInfo":[Landroid/os/Debug$MemoryInfo;
    .end local v6    # "myMempid":[I
    .end local v8    # "rapi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v9    # "uid":I
    :cond_5
    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/market2345/dumpclean/ScanHelp;->callCleanActivity(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private getRAPI()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 931
    iget-object v1, p0, Lcom/market2345/dumpclean/ScanHelp;->am:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 932
    .local v0, "mRunningPros":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    return-object v0
.end method

.method private getResidualSelectSize()J
    .locals 8

    .prologue
    .line 1208
    const-wide/16 v4, 0x0

    .line 1209
    .local v4, "size":J
    iget-object v3, p0, Lcom/market2345/dumpclean/ScanHelp;->residualDatas:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/market2345/dumpclean/ScanHelp;->residualDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1210
    iget-object v3, p0, Lcom/market2345/dumpclean/ScanHelp;->residualDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 1211
    .local v0, "child":Lcom/market2345/dumpclean/mode/JunkChild;
    instance-of v3, v0, Lcom/market2345/dumpclean/mode/JunkChildResidual;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 1212
    check-cast v2, Lcom/market2345/dumpclean/mode/JunkChildResidual;

    .line 1213
    .local v2, "residual":Lcom/market2345/dumpclean/mode/JunkChildResidual;
    invoke-virtual {v2}, Lcom/market2345/dumpclean/mode/JunkChildResidual;->getSelect()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 1214
    iget-wide v6, v2, Lcom/market2345/dumpclean/mode/JunkChildResidual;->size:J

    add-long/2addr v4, v6

    goto :goto_0

    .line 1219
    .end local v0    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "residual":Lcom/market2345/dumpclean/mode/JunkChildResidual;
    :cond_1
    return-wide v4
.end method

.method private getSystemCache()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 458
    iget-object v3, p0, Lcom/market2345/dumpclean/ScanHelp;->collection:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/InstalledApp;

    .line 459
    .local v0, "app":Lcom/market2345/model/InstalledApp;
    iget-object v3, v0, Lcom/market2345/model/InstalledApp;->appName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/market2345/dumpclean/ScanHelp;->callCleanActivity(Ljava/lang/Object;)V

    .line 460
    iget-boolean v3, p0, Lcom/market2345/dumpclean/ScanHelp;->isRun:Z

    if-nez v3, :cond_0

    .line 494
    .end local v0    # "app":Lcom/market2345/model/InstalledApp;
    :goto_1
    return-void

    .line 461
    .restart local v0    # "app":Lcom/market2345/model/InstalledApp;
    :cond_0
    iget-object v3, p0, Lcom/market2345/dumpclean/ScanHelp;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getPackageSizeInfo"

    new-array v5, v9, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v8

    const-class v6, Landroid/content/pm/IPackageStatsObserver;

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 462
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/market2345/dumpclean/ScanHelp;->pm:Landroid/content/pm/PackageManager;

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    aput-object v5, v4, v8

    new-instance v5, Lcom/market2345/dumpclean/ScanHelp$4;

    invoke-direct {v5, p0, v0}, Lcom/market2345/dumpclean/ScanHelp$4;-><init>(Lcom/market2345/dumpclean/ScanHelp;Lcom/market2345/model/InstalledApp;)V

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 493
    .end local v0    # "app":Lcom/market2345/model/InstalledApp;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/market2345/dumpclean/ScanHelp;->callCleanActivity(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private initCacheDataList(Lcom/market2345/dumpclean/mode/JunkChildCache;)V
    .locals 8
    .param p1, "child"    # Lcom/market2345/dumpclean/mode/JunkChildCache;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 338
    iget-object v3, p1, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    .line 339
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 340
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    .line 341
    .local v1, "childOfChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->getSelect()I

    move-result v4

    if-ne v5, v4, :cond_3

    .line 343
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    .line 344
    .local v0, "cc":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    invoke-virtual {v0}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->getSelect()I

    move-result v4

    if-nez v4, :cond_0

    .line 345
    invoke-virtual {p1, v7}, Lcom/market2345/dumpclean/mode/JunkChildCache;->setSelect(I)V

    .line 361
    .end local v0    # "cc":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    .end local v1    # "childOfChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    return-void

    .line 349
    .restart local v1    # "childOfChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual {p1, v5}, Lcom/market2345/dumpclean/mode/JunkChildCache;->setSelect(I)V

    goto :goto_0

    .line 352
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    .line 353
    .restart local v0    # "cc":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    invoke-virtual {v0}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->getSelect()I

    move-result v4

    if-ne v5, v4, :cond_4

    .line 354
    invoke-virtual {p1, v7}, Lcom/market2345/dumpclean/mode/JunkChildCache;->setSelect(I)V

    goto :goto_0

    .line 358
    .end local v0    # "cc":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    :cond_5
    invoke-virtual {p1, v6}, Lcom/market2345/dumpclean/mode/JunkChildCache;->setSelect(I)V

    goto :goto_0
.end method

.method private initCacheDatas()V
    .locals 3

    .prologue
    .line 323
    iget-object v2, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheDatas:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 325
    .local v0, "child":Lcom/market2345/dumpclean/mode/JunkChild;
    instance-of v2, v0, Lcom/market2345/dumpclean/mode/JunkChildCache;

    if-eqz v2, :cond_0

    .line 326
    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChildCache;

    .end local v0    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    invoke-direct {p0, v0}, Lcom/market2345/dumpclean/ScanHelp;->initCacheDataList(Lcom/market2345/dumpclean/mode/JunkChildCache;)V

    goto :goto_0

    .line 330
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private initData()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 376
    invoke-static {}, Lcom/market2345/dumpclean/main/Util;->getSDPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->sdPath:Ljava/lang/String;

    .line 377
    invoke-static {}, Lcom/market2345/dumpclean/main/Util;->getOutSDPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->outSdPath:Ljava/lang/String;

    .line 378
    new-instance v0, Lcom/market2345/dumpclean/CleanTrustDBManager;

    iget-object v1, p0, Lcom/market2345/dumpclean/ScanHelp;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/market2345/dumpclean/CleanTrustDBManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/market2345/dumpclean/CleanTrustDBManager;->queryAll()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->queryAll:Ljava/util/List;

    .line 379
    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->pm:Landroid/content/pm/PackageManager;

    .line 380
    iput-wide v2, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheSystemSize:J

    .line 381
    iput-wide v2, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheSize:J

    .line 382
    iput-wide v2, p0, Lcom/market2345/dumpclean/ScanHelp;->residualSize:J

    .line 383
    iput-wide v2, p0, Lcom/market2345/dumpclean/ScanHelp;->apkSize:J

    .line 384
    iput-wide v2, p0, Lcom/market2345/dumpclean/ScanHelp;->ramSize:J

    .line 385
    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->collection:Ljava/util/Collection;

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->datas:Ljava/util/List;

    .line 387
    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheDatas:Ljava/util/List;

    .line 389
    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheSystemDatas:Ljava/util/List;

    .line 391
    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheSystemDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->residualDatas:Ljava/util/List;

    .line 393
    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->residualDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->apkFileDatas:Ljava/util/List;

    .line 395
    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->apkFileDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->ramDatas:Ljava/util/List;

    .line 397
    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->ramDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 398
    new-instance v0, Lcom/market2345/clearStrategy/ClearManager;

    iget-object v1, p0, Lcom/market2345/dumpclean/ScanHelp;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/market2345/clearStrategy/ClearManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->clearManager:Lcom/market2345/clearStrategy/ClearManager;

    .line 400
    return-void
.end method

.method private initDataFromScan()V
    .locals 12

    .prologue
    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 221
    .local v6, "start":J
    :try_start_0
    invoke-direct {p0}, Lcom/market2345/dumpclean/ScanHelp;->getSystemCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/market2345/dumpclean/ScanHelp;->getRAMCache(Z)V

    .line 226
    invoke-direct {p0}, Lcom/market2345/dumpclean/ScanHelp;->checkSDState()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 227
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/market2345/dumpclean/ScanHelp;->getAppCache(Z)V

    .line 228
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/market2345/dumpclean/ScanHelp;->getAppResidual(Z)V

    .line 230
    :cond_0
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/market2345/dumpclean/ScanHelp;->getApkFile(Z)V

    .line 232
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->residualDatas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 233
    new-instance v3, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-direct {v3}, Lcom/market2345/dumpclean/mode/JunkGroup;-><init>()V

    .line 234
    .local v3, "group2":Lcom/market2345/dumpclean/mode/JunkGroup;
    const-string v8, "\u5378\u8f7d\u6b8b\u7559"

    invoke-virtual {v3, v8}, Lcom/market2345/dumpclean/mode/JunkGroup;->setName(Ljava/lang/String;)V

    .line 235
    iget-wide v8, p0, Lcom/market2345/dumpclean/ScanHelp;->residualSize:J

    invoke-virtual {v3, v8, v9}, Lcom/market2345/dumpclean/mode/JunkGroup;->setSize(J)V

    .line 236
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->residualDatas:Ljava/util/List;

    invoke-virtual {v3, v8}, Lcom/market2345/dumpclean/mode/JunkGroup;->setChildrenItems(Ljava/util/List;)V

    .line 237
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->datas:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .end local v3    # "group2":Lcom/market2345/dumpclean/mode/JunkGroup;
    :cond_1
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->apkFileDatas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 240
    new-instance v4, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-direct {v4}, Lcom/market2345/dumpclean/mode/JunkGroup;-><init>()V

    .line 241
    .local v4, "group3":Lcom/market2345/dumpclean/mode/JunkGroup;
    const-string v8, "\u65e0\u7528\u5b89\u88c5\u5305"

    invoke-virtual {v4, v8}, Lcom/market2345/dumpclean/mode/JunkGroup;->setName(Ljava/lang/String;)V

    .line 242
    iget-wide v8, p0, Lcom/market2345/dumpclean/ScanHelp;->apkSize:J

    invoke-virtual {v4, v8, v9}, Lcom/market2345/dumpclean/mode/JunkGroup;->setSize(J)V

    .line 243
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->apkFileDatas:Ljava/util/List;

    invoke-virtual {v4, v8}, Lcom/market2345/dumpclean/mode/JunkGroup;->setChildrenItems(Ljava/util/List;)V

    .line 244
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->datas:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v4    # "group3":Lcom/market2345/dumpclean/mode/JunkGroup;
    :cond_2
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheSystemDatas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 247
    new-instance v0, Lcom/market2345/dumpclean/mode/JunkChildCache;

    invoke-direct {v0}, Lcom/market2345/dumpclean/mode/JunkChildCache;-><init>()V

    .line 248
    .local v0, "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    const/4 v8, 0x1

    iput v8, v0, Lcom/market2345/dumpclean/mode/JunkChildCache;->select:I

    .line 249
    iget-wide v8, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheSystemSize:J

    iput-wide v8, v0, Lcom/market2345/dumpclean/mode/JunkChildCache;->size:J

    .line 250
    const-string v8, "\u5efa\u8bae\u6e05\u7406"

    iput-object v8, v0, Lcom/market2345/dumpclean/mode/JunkChildCache;->tip:Ljava/lang/String;

    .line 251
    const-string v8, "\u7cfb\u7edf\u7f13\u5b58"

    iput-object v8, v0, Lcom/market2345/dumpclean/mode/JunkChildCache;->name:Ljava/lang/String;

    .line 253
    const-string v8, "com.android.system.cache"

    iput-object v8, v0, Lcom/market2345/dumpclean/mode/JunkChildCache;->packageName:Ljava/lang/String;

    .line 254
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheSystemDatas:Ljava/util/List;

    new-instance v9, Lcom/market2345/dumpclean/ScanHelp$2;

    invoke-direct {v9, p0}, Lcom/market2345/dumpclean/ScanHelp$2;-><init>(Lcom/market2345/dumpclean/ScanHelp;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 268
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheSystemDatas:Ljava/util/List;

    iput-object v8, v0, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    .line 269
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheDatas:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 272
    .end local v0    # "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    :cond_3
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheDatas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 273
    new-instance v2, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-direct {v2}, Lcom/market2345/dumpclean/mode/JunkGroup;-><init>()V

    .line 274
    .local v2, "group1":Lcom/market2345/dumpclean/mode/JunkGroup;
    const-string v8, "\u7f13\u5b58\u5783\u573e"

    invoke-virtual {v2, v8}, Lcom/market2345/dumpclean/mode/JunkGroup;->setName(Ljava/lang/String;)V

    .line 275
    iget-wide v8, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheSize:J

    iget-wide v10, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheSystemSize:J

    add-long/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Lcom/market2345/dumpclean/mode/JunkGroup;->setSize(J)V

    .line 276
    invoke-direct {p0}, Lcom/market2345/dumpclean/ScanHelp;->initCacheDatas()V

    .line 277
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheDatas:Ljava/util/List;

    invoke-virtual {v2, v8}, Lcom/market2345/dumpclean/mode/JunkGroup;->setChildrenItems(Ljava/util/List;)V

    .line 278
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->datas:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 281
    .end local v2    # "group1":Lcom/market2345/dumpclean/mode/JunkGroup;
    :cond_4
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->ramDatas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 282
    new-instance v5, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-direct {v5}, Lcom/market2345/dumpclean/mode/JunkGroup;-><init>()V

    .line 283
    .local v5, "group4":Lcom/market2345/dumpclean/mode/JunkGroup;
    const-string v8, "\u5185\u5b58\u52a0\u901f"

    invoke-virtual {v5, v8}, Lcom/market2345/dumpclean/mode/JunkGroup;->setName(Ljava/lang/String;)V

    .line 284
    iget-wide v8, p0, Lcom/market2345/dumpclean/ScanHelp;->ramSize:J

    invoke-virtual {v5, v8, v9}, Lcom/market2345/dumpclean/mode/JunkGroup;->setSize(J)V

    .line 285
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->ramDatas:Ljava/util/List;

    invoke-virtual {v5, v8}, Lcom/market2345/dumpclean/mode/JunkGroup;->setChildrenItems(Ljava/util/List;)V

    .line 286
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/market2345/dumpclean/mode/JunkGroup;->setSelect(I)V

    .line 287
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->ramDatas:Ljava/util/List;

    new-instance v9, Lcom/market2345/dumpclean/ScanHelp$3;

    invoke-direct {v9, p0}, Lcom/market2345/dumpclean/ScanHelp$3;-><init>(Lcom/market2345/dumpclean/ScanHelp;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 305
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->datas:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 308
    .end local v5    # "group4":Lcom/market2345/dumpclean/mode/JunkGroup;
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    const-wide/16 v10, 0x1770

    cmp-long v8, v8, v10

    if-gtz v8, :cond_6

    iget-boolean v8, p0, Lcom/market2345/dumpclean/ScanHelp;->isRun:Z

    if-eqz v8, :cond_6

    .line 310
    const-wide/16 v8, 0x1770

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 315
    :cond_6
    :goto_1
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/market2345/dumpclean/ScanHelp;->setRun(Z)V

    .line 316
    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/market2345/dumpclean/ScanHelp;->callCleanActivity(Ljava/lang/Object;)V

    .line 317
    return-void

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 311
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 312
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private initDataFromStatic()V
    .locals 12

    .prologue
    .line 406
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/market2345/MarketApplication;->getJunkDataList()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->datas:Ljava/util/List;

    .line 407
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->datas:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->datas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 408
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->datas:Ljava/util/List;

    .line 409
    invoke-direct {p0}, Lcom/market2345/dumpclean/ScanHelp;->initDataFromScan()V

    .line 455
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->datas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/dumpclean/mode/JunkGroup;

    .line 412
    .local v4, "group":Lcom/market2345/dumpclean/mode/JunkGroup;
    const-string v8, "\u5185\u5b58\u52a0\u901f"

    invoke-virtual {v4}, Lcom/market2345/dumpclean/mode/JunkGroup;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 413
    invoke-virtual {v4}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->ramDatas:Ljava/util/List;

    .line 414
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->ramDatas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 415
    .local v2, "child":Lcom/market2345/dumpclean/mode/JunkChild;
    iget-wide v8, p0, Lcom/market2345/dumpclean/ScanHelp;->ramSize:J

    iget-wide v10, v2, Lcom/market2345/dumpclean/mode/JunkChild;->size:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/market2345/dumpclean/ScanHelp;->ramSize:J

    goto :goto_1

    .line 417
    .end local v2    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v8, "\u65e0\u7528\u5b89\u88c5\u5305"

    invoke-virtual {v4}, Lcom/market2345/dumpclean/mode/JunkGroup;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 418
    invoke-virtual {v4}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->apkFileDatas:Ljava/util/List;

    .line 419
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->apkFileDatas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 420
    .restart local v2    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    iget-wide v8, p0, Lcom/market2345/dumpclean/ScanHelp;->apkSize:J

    iget-wide v10, v2, Lcom/market2345/dumpclean/mode/JunkChild;->size:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/market2345/dumpclean/ScanHelp;->apkSize:J

    goto :goto_2

    .line 422
    .end local v2    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    const-string v8, "\u5378\u8f7d\u6b8b\u7559"

    invoke-virtual {v4}, Lcom/market2345/dumpclean/mode/JunkGroup;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 423
    invoke-virtual {v4}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->residualDatas:Ljava/util/List;

    .line 424
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->residualDatas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 425
    .restart local v2    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    iget-wide v8, p0, Lcom/market2345/dumpclean/ScanHelp;->residualSize:J

    iget-wide v10, v2, Lcom/market2345/dumpclean/mode/JunkChild;->size:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/market2345/dumpclean/ScanHelp;->residualSize:J

    goto :goto_3

    .line 427
    .end local v2    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    const-string v8, "\u7f13\u5b58\u5783\u573e"

    invoke-virtual {v4}, Lcom/market2345/dumpclean/mode/JunkGroup;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 428
    invoke-virtual {v4}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheDatas:Ljava/util/List;

    .line 430
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheDatas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 431
    .restart local v2    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    instance-of v8, v2, Lcom/market2345/dumpclean/mode/JunkChildCache;

    if-eqz v8, :cond_6

    move-object v0, v2

    .line 432
    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChildCache;

    .line 433
    .local v0, "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    const-string v8, "com.android.system.cache"

    iget-object v9, v0, Lcom/market2345/dumpclean/mode/JunkChildCache;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 434
    iget-object v8, v0, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    iput-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheSystemDatas:Ljava/util/List;

    .line 435
    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheSystemDatas:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    .line 436
    .local v1, "cc":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    iget-wide v8, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheSystemSize:J

    iget-wide v10, v1, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->size:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheSystemSize:J

    goto :goto_5

    .line 440
    .end local v1    # "cc":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_7
    iget-wide v8, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheSize:J

    iget-wide v10, v0, Lcom/market2345/dumpclean/mode/JunkChildCache;->size:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheSize:J

    goto :goto_4

    .line 446
    .end local v0    # "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    .end local v2    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    .end local v4    # "group":Lcom/market2345/dumpclean/mode/JunkGroup;
    :cond_8
    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/market2345/dumpclean/ScanHelp;->callCleanActivity(Ljava/lang/Object;)V

    .line 448
    const-wide/16 v8, 0x3e8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_6
    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/market2345/dumpclean/ScanHelp;->callCleanActivity(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 449
    :catch_0
    move-exception v3

    .line 450
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6
.end method

.method private scanADSDK(Z)V
    .locals 28
    .param p1, "flag"    # Z

    .prologue
    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 630
    const-string v20, "select * from package_table where type=1"

    .line 631
    .local v20, "sql":Ljava/lang/String;
    const-string v21, "select * from file_table where pck_name_id= ?"

    .line 632
    .local v21, "sql2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v23

    if-nez v23, :cond_0

    .line 633
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->clearManager:Lcom/market2345/clearStrategy/ClearManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/market2345/clearStrategy/ClearManager;->openClearDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 636
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 637
    .local v9, "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-eqz v23, :cond_4

    .line 638
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/dumpclean/ScanHelp;->isRun:Z

    move/from16 v23, v0

    if-nez v23, :cond_3

    .line 639
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 707
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v20    # "sql":Ljava/lang/String;
    .end local v21    # "sql2":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 642
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v20    # "sql":Ljava/lang/String;
    .restart local v21    # "sql2":Ljava/lang/String;
    :cond_3
    const-string v23, "encrypted_app_name"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/market2345/clearStrategy/ClearManager;->decrptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 643
    .local v5, "appName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 705
    .end local v5    # "appName":Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 646
    .restart local v5    # "appName":Ljava/lang/String;
    :cond_5
    const-string v23, "encrypted_pck_name"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/market2345/clearStrategy/ClearManager;->decrptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 647
    .local v16, "packageName":Ljava/lang/String;
    const-string v23, "encrypted_tip"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/market2345/clearStrategy/ClearManager;->decrptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 648
    .local v22, "tip":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/market2345/dumpclean/ScanHelp;->checkTrust(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 651
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/market2345/dumpclean/ScanHelp;->callCleanActivity(Ljava/lang/Object;)V

    .line 652
    const-string v23, "_id"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 653
    .local v4, "_id":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v23

    if-nez v23, :cond_6

    .line 654
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->clearManager:Lcom/market2345/clearStrategy/ClearManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/market2345/clearStrategy/ClearManager;->openClearDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 658
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v7, "childCacheOfChilds":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 660
    .local v10, "cursor2":Landroid/database/Cursor;
    const-wide/16 v18, 0x0

    .line 661
    .local v18, "size":J
    :cond_7
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 662
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/dumpclean/ScanHelp;->isRun:Z

    move/from16 v23, v0

    if-nez v23, :cond_8

    .line 663
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 666
    :cond_8
    const-string v23, "encrypted_file_path"

    move-object/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/market2345/clearStrategy/ClearManager;->decrptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 667
    .local v11, "filePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->sdPath:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v11}, Lcom/market2345/dumpclean/ScanHelp;->checkPathExistNotContainFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 668
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->sdPath:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 674
    :goto_3
    const-string v23, "encrypted_file_desp"

    move-object/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/market2345/clearStrategy/ClearManager;->decrptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 675
    .local v15, "filename":Ljava/lang/String;
    const-string v23, "encrypted_file_tip"

    move-object/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/market2345/clearStrategy/ClearManager;->decrptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 676
    .local v14, "fileTip":Ljava/lang/String;
    const-string v23, "proposal"

    move-object/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 677
    .local v17, "proposal":I
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/market2345/dumpclean/ScanHelp;->getPathFileSize(Ljava/lang/String;)J

    move-result-wide v12

    .line 678
    .local v12, "fileSize":J
    new-instance v8, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    invoke-direct {v8}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;-><init>()V

    .line 679
    .local v8, "childOfChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v8, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->type:I

    .line 680
    iput-object v14, v8, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->fileTip:Ljava/lang/String;

    .line 681
    move/from16 v0, v17

    iput v0, v8, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->select:I

    .line 682
    iput-wide v12, v8, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->size:J

    .line 683
    iput-object v15, v8, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->name:Ljava/lang/String;

    .line 684
    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->packageName:Ljava/lang/String;

    .line 685
    iput-object v11, v8, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->path:Ljava/lang/String;

    .line 686
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    add-long v18, v18, v12

    .line 689
    goto/16 :goto_2

    .line 669
    .end local v8    # "childOfChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    .end local v12    # "fileSize":J
    .end local v14    # "fileTip":Ljava/lang/String;
    .end local v15    # "filename":Ljava/lang/String;
    .end local v17    # "proposal":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->outSdPath:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v11}, Lcom/market2345/dumpclean/ScanHelp;->checkPathExistNotContainFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 670
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->outSdPath:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    .line 690
    .end local v11    # "filePath":Ljava/lang/String;
    :cond_a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_b

    .line 691
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/market2345/dumpclean/ScanHelp;->cacheSize:J

    move-wide/from16 v24, v0

    add-long v24, v24, v18

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/market2345/dumpclean/ScanHelp;->cacheSize:J

    .line 692
    if-nez p1, :cond_b

    .line 693
    new-instance v6, Lcom/market2345/dumpclean/mode/JunkChildCache;

    invoke-direct {v6}, Lcom/market2345/dumpclean/mode/JunkChildCache;-><init>()V

    .line 694
    .local v6, "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    iput-object v5, v6, Lcom/market2345/dumpclean/mode/JunkChildCache;->name:Ljava/lang/String;

    .line 695
    move-wide/from16 v0, v18

    iput-wide v0, v6, Lcom/market2345/dumpclean/mode/JunkChildCache;->size:J

    .line 696
    const/16 v23, 0x1

    move/from16 v0, v23

    iput v0, v6, Lcom/market2345/dumpclean/mode/JunkChildCache;->select:I

    .line 697
    move-object/from16 v0, v16

    iput-object v0, v6, Lcom/market2345/dumpclean/mode/JunkChildCache;->packageName:Ljava/lang/String;

    .line 698
    move-object/from16 v0, v22

    iput-object v0, v6, Lcom/market2345/dumpclean/mode/JunkChildCache;->tip:Ljava/lang/String;

    .line 699
    iput-object v7, v6, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/dumpclean/ScanHelp;->cacheDatas:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    .end local v6    # "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    :cond_b
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private scanAll()V
    .locals 1

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/market2345/dumpclean/ScanHelp;->initData()V

    .line 366
    invoke-direct {p0}, Lcom/market2345/dumpclean/ScanHelp;->checkLastScanTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/market2345/dumpclean/ScanHelp;->initDataFromStatic()V

    .line 372
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/market2345/dumpclean/ScanHelp;->initDataFromScan()V

    goto :goto_0
.end method

.method private scanSize()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 173
    invoke-direct {p0}, Lcom/market2345/dumpclean/ScanHelp;->initData()V

    .line 175
    :try_start_0
    invoke-direct {p0}, Lcom/market2345/dumpclean/ScanHelp;->getSystemCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    invoke-direct {p0, v8}, Lcom/market2345/dumpclean/ScanHelp;->getAppCache(Z)V

    .line 180
    invoke-direct {p0, v8}, Lcom/market2345/dumpclean/ScanHelp;->getAppResidual(Z)V

    .line 181
    invoke-direct {p0, v8}, Lcom/market2345/dumpclean/ScanHelp;->getRAMCache(Z)V

    .line 182
    invoke-direct {p0, v8}, Lcom/market2345/dumpclean/ScanHelp;->getApkFile(Z)V

    .line 183
    invoke-virtual {p0}, Lcom/market2345/dumpclean/ScanHelp;->getTotalSize()J

    move-result-wide v4

    .line 184
    .local v4, "size":J
    const-wide/32 v2, 0x6400000

    .line 185
    .local v2, "setSize":J
    iget-object v6, p0, Lcom/market2345/dumpclean/ScanHelp;->context:Landroid/content/Context;

    const-string v7, "clean_size_set"

    invoke-static {v6, v7, v8}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->getLaseSet(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 187
    .local v1, "setSizeIndex":I
    if-nez v1, :cond_2

    .line 188
    const-wide/32 v2, 0x3200000

    .line 196
    :cond_0
    :goto_1
    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    .line 197
    iget-object v6, p0, Lcom/market2345/dumpclean/ScanHelp;->context:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/market2345/dumpclean/main/Util;->formatFileSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/market2345/dumpclean/alert/CleanAlert;->notify(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    :cond_1
    return-void

    .line 176
    .end local v1    # "setSizeIndex":I
    .end local v2    # "setSize":J
    .end local v4    # "size":J
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "setSizeIndex":I
    .restart local v2    # "setSize":J
    .restart local v4    # "size":J
    :cond_2
    if-ne v1, v8, :cond_3

    .line 190
    const-wide/32 v2, 0x6400000

    goto :goto_1

    .line 191
    :cond_3
    const/4 v6, 0x2

    if-ne v1, v6, :cond_4

    .line 192
    const-wide/32 v2, 0x12c00000

    goto :goto_1

    .line 193
    :cond_4
    const/4 v6, 0x3

    if-ne v1, v6, :cond_0

    .line 194
    const-wide/32 v2, 0x1f400000

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->clearManager:Lcom/market2345/clearStrategy/ClearManager;

    iget-object v1, p0, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lcom/market2345/clearStrategy/ClearManager;->closeClearDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1263
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1268
    :try_start_0
    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1272
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1275
    return-void

    .line 1272
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->datas:Ljava/util/List;

    return-object v0
.end method

.method public getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getRAMSelectSize()J
    .locals 8

    .prologue
    .line 1242
    const-wide/16 v4, 0x0

    .line 1243
    .local v4, "size":J
    iget-object v3, p0, Lcom/market2345/dumpclean/ScanHelp;->ramDatas:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/market2345/dumpclean/ScanHelp;->ramDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1244
    iget-object v3, p0, Lcom/market2345/dumpclean/ScanHelp;->ramDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChild;

    .local v0, "child":Lcom/market2345/dumpclean/mode/JunkChild;
    move-object v2, v0

    .line 1245
    check-cast v2, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    .line 1246
    .local v2, "ram":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    invoke-virtual {v2}, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->getSelect()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 1247
    iget-wide v6, v2, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->size:J

    add-long/2addr v4, v6

    goto :goto_0

    .line 1251
    .end local v0    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "ram":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    :cond_1
    return-wide v4
.end method

.method public getTotalSelectSize()J
    .locals 4

    .prologue
    .line 1255
    invoke-direct {p0}, Lcom/market2345/dumpclean/ScanHelp;->getCacheSelectSize()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/market2345/dumpclean/ScanHelp;->getResidualSelectSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-direct {p0}, Lcom/market2345/dumpclean/ScanHelp;->getApkFileSelectSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/market2345/dumpclean/ScanHelp;->getRAMSelectSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 4

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheSystemSize:J

    iget-wide v2, p0, Lcom/market2345/dumpclean/ScanHelp;->cacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/market2345/dumpclean/ScanHelp;->residualSize:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/market2345/dumpclean/ScanHelp;->apkSize:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/market2345/dumpclean/ScanHelp;->ramSize:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public isRun()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/market2345/dumpclean/ScanHelp;->isRun:Z

    return v0
.end method

.method public setDatas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkGroup;>;"
    iput-object p1, p0, Lcom/market2345/dumpclean/ScanHelp;->datas:Ljava/util/List;

    .line 134
    return-void
.end method

.method public setDb(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/market2345/dumpclean/ScanHelp;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 118
    return-void
.end method

.method public setRun(Z)V
    .locals 0
    .param p1, "isRun"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/market2345/dumpclean/ScanHelp;->isRun:Z

    .line 126
    return-void
.end method

.method public setiScanResult(Lcom/market2345/dumpclean/ScanHelp$IScanResult;)V
    .locals 0
    .param p1, "iScanResult"    # Lcom/market2345/dumpclean/ScanHelp$IScanResult;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/market2345/dumpclean/ScanHelp;->iScanResult:Lcom/market2345/dumpclean/ScanHelp$IScanResult;

    .line 138
    return-void
.end method

.method public declared-synchronized startScan(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/market2345/dumpclean/ScanHelp;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v0

    .line 147
    .local v0, "manager":Lcom/market2345/notificationmanage/NotificationManager2345;
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/market2345/notificationmanage/NotificationManager2345;->cancelNotification(I)V

    .line 148
    new-instance v1, Lcom/market2345/dumpclean/ScanHelp$1;

    invoke-direct {v1, p0, p1}, Lcom/market2345/dumpclean/ScanHelp$1;-><init>(Lcom/market2345/dumpclean/ScanHelp;Z)V

    .line 168
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 146
    .end local v0    # "manager":Lcom/market2345/notificationmanage/NotificationManager2345;
    .end local v1    # "thread":Ljava/lang/Thread;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
