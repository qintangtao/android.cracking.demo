.class public Lcom/market2345/startup/StartupUtils;
.super Ljava/lang/Object;
.source "StartupUtils.java"


# static fields
.field public static final BOOT_STARTUP_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_BOOT_COMPLETED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeStartupState(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Z
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "cls"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 32
    const-string v1, "$"

    const-string v2, "\\$"

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "pm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v1, "enable "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v3}, Lcom/market2345/util/ShellUtils;->execCommand(Ljava/lang/String;ZZ)Lcom/market2345/util/ShellUtils$CommandResult;

    move-result-object v1

    iget v1, v1, Lcom/market2345/util/ShellUtils$CommandResult;->result:I

    if-nez v1, :cond_1

    .line 39
    invoke-static {p1, p0, p2, p3}, Lcom/market2345/startup/StartupUtils;->checkWorking(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 43
    :goto_1
    return v1

    .line 35
    :cond_0
    const-string v1, "disable "

    goto :goto_0

    .line 43
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static checkRootPermission()Z
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/market2345/util/ShellUtils;->checkRootPermission()Z

    move-result v0

    return v0
.end method

.method private static checkWorking(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "state"    # Z
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "cls"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 121
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    .line 123
    .local v1, "flag":I
    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 125
    :cond_0
    const/4 v3, 0x0

    .line 132
    .local v3, "result":Z
    :goto_0
    if-ne v3, p0, :cond_2

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 129
    .end local v3    # "result":Z
    :cond_1
    const/4 v3, 0x1

    .restart local v3    # "result":Z
    goto :goto_0

    .line 132
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getStartupLists(Landroid/content/Context;)Ljava/util/List;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/model/StartupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 49
    if-nez p0, :cond_0

    .line 51
    const/4 v7, 0x0

    .line 113
    :goto_0
    return-object v7

    .line 54
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/market2345/model/StartupInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 57
    .local v9, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v5, "intent":Landroid/content/Intent;
    const/16 v12, 0x200

    invoke-virtual {v9, v5, v12}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 63
    .local v10, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 66
    .local v11, "ri":Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 70
    new-instance v4, Lcom/market2345/model/StartupInfo;

    invoke-direct {v4}, Lcom/market2345/model/StartupInfo;-><init>()V

    .line 71
    .local v4, "info":Lcom/market2345/model/StartupInfo;
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v4, Lcom/market2345/model/StartupInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 72
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v4, Lcom/market2345/model/StartupInfo;->appName:Ljava/lang/String;

    .line 73
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v12, v4, Lcom/market2345/model/StartupInfo;->packageName:Ljava/lang/String;

    .line 74
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v12, v4, Lcom/market2345/model/StartupInfo;->bootClass:Ljava/lang/String;

    .line 76
    new-instance v0, Landroid/content/ComponentName;

    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v12, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 78
    .local v2, "flag":I
    const/4 v12, 0x2

    if-eq v2, v12, :cond_2

    const/4 v12, 0x3

    if-ne v2, v12, :cond_3

    .line 80
    :cond_2
    const/4 v12, 0x0

    iput-boolean v12, v4, Lcom/market2345/model/StartupInfo;->isStartup:Z

    .line 87
    :goto_2
    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 89
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "flag":I
    .end local v4    # "info":Lcom/market2345/model/StartupInfo;
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 84
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "flag":I
    .restart local v4    # "info":Lcom/market2345/model/StartupInfo;
    :cond_3
    const/4 v12, 0x1

    :try_start_1
    iput-boolean v12, v4, Lcom/market2345/model/StartupInfo;->isStartup:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 94
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "flag":I
    .end local v4    # "info":Lcom/market2345/model/StartupInfo;
    .end local v11    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/StartupInfo;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 97
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/market2345/model/StartupInfo;>;>;"
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 99
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/model/StartupInfo;

    .line 100
    .restart local v4    # "info":Lcom/market2345/model/StartupInfo;
    iget-boolean v12, v4, Lcom/market2345/model/StartupInfo;->isStartup:Z

    if-eqz v12, :cond_5

    .line 102
    invoke-interface {v7, v14, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 106
    :cond_5
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 110
    .end local v4    # "info":Lcom/market2345/model/StartupInfo;
    :cond_6
    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 111
    const/4 v8, 0x0

    .line 113
    goto/16 :goto_0
.end method
