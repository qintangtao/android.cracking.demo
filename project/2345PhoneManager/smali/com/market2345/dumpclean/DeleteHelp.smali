.class public Lcom/market2345/dumpclean/DeleteHelp;
.super Ljava/lang/Object;
.source "DeleteHelp.java"


# static fields
.field private static notCleanPackages:[Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.lockscreen2345"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.service.usbhelper.service.HelperService"

    aput-object v2, v0, v1

    sput-object v0, Lcom/market2345/dumpclean/DeleteHelp;->notCleanPackages:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/market2345/dumpclean/DeleteHelp;->context:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/dumpclean/DeleteHelp;Ljava/util/List;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/DeleteHelp;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/market2345/dumpclean/DeleteHelp;->checkDefaultSelect(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/market2345/dumpclean/DeleteHelp;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/DeleteHelp;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/market2345/dumpclean/DeleteHelp;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/dumpclean/DeleteHelp;Lcom/market2345/dumpclean/mode/JunkChildCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/DeleteHelp;
    .param p1, "x1"    # Lcom/market2345/dumpclean/mode/JunkChildCache;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/market2345/dumpclean/DeleteHelp;->deleteJunkChildCache(Lcom/market2345/dumpclean/mode/JunkChildCache;)V

    return-void
.end method

.method static synthetic access$300(Lcom/market2345/dumpclean/DeleteHelp;Lcom/market2345/dumpclean/mode/JunkChildResidual;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/DeleteHelp;
    .param p1, "x1"    # Lcom/market2345/dumpclean/mode/JunkChildResidual;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/market2345/dumpclean/DeleteHelp;->deleteJunkChildResidual(Lcom/market2345/dumpclean/mode/JunkChildResidual;)V

    return-void
.end method

.method static synthetic access$400(Lcom/market2345/dumpclean/DeleteHelp;Lcom/market2345/dumpclean/mode/JunkChildApk;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/DeleteHelp;
    .param p1, "x1"    # Lcom/market2345/dumpclean/mode/JunkChildApk;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/market2345/dumpclean/DeleteHelp;->deleteJunkChildApk(Lcom/market2345/dumpclean/mode/JunkChildApk;)V

    return-void
.end method

.method private checkDefaultSelect(Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkGroup;>;"
    const/4 v8, 0x1

    .line 96
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/dumpclean/mode/JunkGroup;

    .line 97
    .local v4, "group":Lcom/market2345/dumpclean/mode/JunkGroup;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 98
    invoke-virtual {v4}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v3

    .line 99
    .local v3, "childs":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 100
    .local v2, "child":Lcom/market2345/dumpclean/mode/JunkChild;
    instance-of v9, v2, Lcom/market2345/dumpclean/mode/JunkChildCache;

    if-nez v9, :cond_2

    .line 101
    invoke-virtual {v2}, Lcom/market2345/dumpclean/mode/JunkChild;->getDefaultSelect()Z

    move-result v9

    if-nez v9, :cond_1

    .line 119
    .end local v2    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    .end local v3    # "childs":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    .end local v4    # "group":Lcom/market2345/dumpclean/mode/JunkGroup;
    :goto_0
    return v8

    .line 105
    .restart local v2    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    .restart local v3    # "childs":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    .restart local v4    # "group":Lcom/market2345/dumpclean/mode/JunkGroup;
    :cond_2
    instance-of v9, v2, Lcom/market2345/dumpclean/mode/JunkChildCache;

    if-eqz v9, :cond_1

    .line 106
    check-cast v2, Lcom/market2345/dumpclean/mode/JunkChildCache;

    .end local v2    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    iget-object v1, v2, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    .line 107
    .local v1, "ccs":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    .line 108
    .local v0, "cc":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    invoke-virtual {v0}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->getDefaultSelect()Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    .line 119
    .end local v0    # "cc":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    .end local v1    # "ccs":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    .end local v3    # "childs":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    .end local v4    # "group":Lcom/market2345/dumpclean/mode/JunkGroup;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_4
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private checkSelect(Ljava/util/List;I)Z
    .locals 5
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkChild;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "childs":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    const/4 v3, 0x1

    .line 226
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 227
    .local v0, "child":Lcom/market2345/dumpclean/mode/JunkChild;
    instance-of v4, v0, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 228
    check-cast v2, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    .line 229
    .local v2, "ram":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    invoke-virtual {v2}, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->getSelect()I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-object v4, v2, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->app:Lcom/market2345/model/InstalledApp;

    iget v4, v4, Lcom/market2345/model/InstalledApp;->uid:I

    if-ne p2, v4, :cond_0

    .line 234
    .end local v0    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    .end local v2    # "ram":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private cleanSystemCache()V
    .locals 7

    .prologue
    .line 170
    iget-object v2, p0, Lcom/market2345/dumpclean/DeleteHelp;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 172
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "freeStorageAndNotify"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/pm/IPackageDataObserver;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 173
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/market2345/dumpclean/DeleteHelp$2;

    invoke-direct {v4, p0}, Lcom/market2345/dumpclean/DeleteHelp$2;-><init>(Lcom/market2345/dumpclean/DeleteHelp;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private deleteJunkChildApk(Lcom/market2345/dumpclean/mode/JunkChildApk;)V
    .locals 2
    .param p1, "apk"    # Lcom/market2345/dumpclean/mode/JunkChildApk;

    .prologue
    .line 124
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/market2345/dumpclean/mode/JunkChildApk;->path:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-virtual {p1}, Lcom/market2345/dumpclean/mode/JunkChildApk;->getSelect()I

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/market2345/dumpclean/mode/JunkChildApk;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/market2345/dumpclean/main/Util;->delete(Ljava/io/File;)V

    goto :goto_0
.end method

.method private deleteJunkChildCache(Lcom/market2345/dumpclean/mode/JunkChildCache;)V
    .locals 6
    .param p1, "cache"    # Lcom/market2345/dumpclean/mode/JunkChildCache;

    .prologue
    .line 146
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    const-string v4, "com.android.system.cache"

    iget-object v5, p1, Lcom/market2345/dumpclean/mode/JunkChildCache;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 150
    invoke-virtual {p1}, Lcom/market2345/dumpclean/mode/JunkChildCache;->getSelect()I

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/market2345/dumpclean/DeleteHelp;->cleanSystemCache()V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v1, p1, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    .line 158
    .local v1, "childOfChilds":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    .line 159
    .local v0, "childOfChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    iget-object v3, v0, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->path:Ljava/lang/String;

    .line 160
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->getSelect()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 163
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/market2345/dumpclean/main/Util;->deleteNotContainFolder(Ljava/io/File;)V

    goto :goto_1
.end method

.method private deleteJunkChildResidual(Lcom/market2345/dumpclean/mode/JunkChildResidual;)V
    .locals 3
    .param p1, "residual"    # Lcom/market2345/dumpclean/mode/JunkChildResidual;

    .prologue
    .line 134
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/market2345/dumpclean/mode/JunkChildResidual;->paths:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/market2345/dumpclean/mode/JunkChildResidual;->paths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 143
    :cond_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p1}, Lcom/market2345/dumpclean/mode/JunkChildResidual;->getSelect()I

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, p1, Lcom/market2345/dumpclean/mode/JunkChildResidual;->paths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 141
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/market2345/dumpclean/main/Util;->delete(Ljava/io/File;)V

    goto :goto_0
.end method

.method private isNotClean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v1

    .line 255
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v2, Lcom/market2345/dumpclean/DeleteHelp;->notCleanPackages:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 256
    sget-object v2, Lcom/market2345/dumpclean/DeleteHelp;->notCleanPackages:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    const/4 v1, 0x1

    goto :goto_0

    .line 255
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public deleteAll(Ljava/util/List;J)V
    .locals 2
    .param p2, "selectSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkGroup;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkGroup;>;"
    new-instance v0, Lcom/market2345/dumpclean/DeleteHelp$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/market2345/dumpclean/DeleteHelp$1;-><init>(Lcom/market2345/dumpclean/DeleteHelp;Ljava/util/List;J)V

    invoke-virtual {v0}, Lcom/market2345/dumpclean/DeleteHelp$1;->start()V

    .line 87
    return-void
.end method

.method public filterApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v0, 0x1

    .line 239
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 243
    :cond_1
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 248
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public killBackgroundProcess(Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;)V
    .locals 1
    .param p1, "ram"    # Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    .prologue
    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v0, "item":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/DeleteHelp;->killBackgroundProcess(Ljava/util/List;)V

    .line 224
    return-void
.end method

.method public killBackgroundProcess(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkChild;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "childs":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    iget-object v9, p0, Lcom/market2345/dumpclean/DeleteHelp;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 187
    .local v7, "pm":Landroid/content/pm/PackageManager;
    iget-object v9, p0, Lcom/market2345/dumpclean/DeleteHelp;->context:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 189
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    .line 190
    .local v8, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    iget-object v9, p0, Lcom/market2345/dumpclean/DeleteHelp;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "currentName":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 193
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 195
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v4, :cond_0

    iget-object v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 199
    :try_start_0
    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 200
    .local v5, "packname":Ljava/lang/String;
    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 201
    .local v6, "pid":I
    const/4 v9, 0x0

    invoke-virtual {v7, v5, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v1, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 202
    .local v1, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget v9, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, p1, v9}, Lcom/market2345/dumpclean/DeleteHelp;->checkSelect(Ljava/util/List;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 203
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/DeleteHelp;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-direct {p0, v5}, Lcom/market2345/dumpclean/DeleteHelp;->isNotClean(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 205
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    .end local v1    # "appinfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "packname":Ljava/lang/String;
    .end local v6    # "pid":I
    :catch_0
    move-exception v9

    goto :goto_0

    .line 219
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return-void
.end method
