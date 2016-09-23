.class public Lcom/market2345/lm/util/AppUtils;
.super Ljava/lang/Object;
.source "AppUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApkInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/market2345/lm/bean/AppInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 70
    const/4 v0, 0x0

    .line 73
    .local v0, "appInfo":Lcom/market2345/lm/bean/AppInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 74
    .local v5, "pm":Landroid/content/pm/PackageManager;
    if-nez v5, :cond_0

    .line 76
    const/4 v1, 0x0

    .line 125
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v1

    .line 78
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 79
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_1

    .line 82
    new-instance v1, Lcom/market2345/lm/bean/AppInfo;

    invoke-direct {v1}, Lcom/market2345/lm/bean/AppInfo;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    .local v1, "appInfo":Lcom/market2345/lm/bean/AppInfo;
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/market2345/lm/bean/AppInfo;->setApkLocUrl(Ljava/lang/String;)V

    .line 84
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/market2345/lm/bean/AppInfo;->setAppName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 85
    .end local v1    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    .restart local v0    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    goto :goto_0

    .line 88
    :cond_1
    :try_start_2
    sget-object v6, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 91
    new-instance v1, Lcom/market2345/lm/bean/AppInfo;

    invoke-direct {v1}, Lcom/market2345/lm/bean/AppInfo;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    .end local v0    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    .restart local v1    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    :try_start_3
    invoke-virtual {v1, p1}, Lcom/market2345/lm/bean/AppInfo;->setApkLocUrl(Ljava/lang/String;)V

    .line 93
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/market2345/lm/bean/AppInfo;->setAppName(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v1

    .line 94
    .end local v1    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    .restart local v0    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    goto :goto_0

    .line 97
    :cond_2
    :try_start_4
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 98
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iput-object p1, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 99
    iput-object p1, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 100
    if-eqz v4, :cond_3

    .line 102
    new-instance v1, Lcom/market2345/lm/bean/AppInfo;

    invoke-direct {v1}, Lcom/market2345/lm/bean/AppInfo;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 103
    .end local v0    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    .restart local v1    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    :try_start_5
    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/market2345/lm/bean/AppInfo;->setAppName(Ljava/lang/String;)V

    .line 105
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/market2345/lm/bean/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 107
    const/4 v6, 0x3

    invoke-static {p1, v6}, Lcom/market2345/lm/util/FileUtils;->getFileSize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/market2345/lm/bean/AppInfo;->setAppSize(Ljava/lang/String;)V

    .line 109
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/market2345/lm/bean/AppInfo;->setVersionName(Ljava/lang/String;)V

    .line 111
    iget v6, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v6}, Lcom/market2345/lm/bean/AppInfo;->setCurVersionCode(I)V

    .line 113
    invoke-virtual {v1, p1}, Lcom/market2345/lm/bean/AppInfo;->setApkLocUrl(Ljava/lang/String;)V

    .line 115
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/market2345/lm/bean/AppInfo;->setAppIcon(Landroid/graphics/Bitmap;)V

    .line 118
    invoke-static {p1}, Lcom/market2345/lm/util/ChannelUtil;->getChannelStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    move v6, v7

    :goto_1
    invoke-virtual {v1, v6}, Lcom/market2345/lm/bean/AppInfo;->setUnionSoftware(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v0, v1

    .end local v1    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v0    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    :cond_3
    :goto_2
    move-object v1, v0

    .line 125
    goto/16 :goto_0

    .line 118
    .end local v0    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    .restart local v1    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    .restart local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 121
    .end local v1    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v0    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 121
    .end local v0    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    .restart local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    .restart local v0    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    goto :goto_3
.end method

.method public static getApkInfos(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dirPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/lm/bean/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "apkLists":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/bean/AppInfo;>;"
    if-nez p2, :cond_1

    .line 59
    :cond_0
    return-void

    .line 35
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .local v2, "f":Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 38
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 39
    .local v4, "files":[Ljava/io/File;
    const/4 v0, 0x0

    .line 40
    .local v0, "apkInfo":Lcom/market2345/lm/bean/AppInfo;
    move-object v1, v4

    .local v1, "arr$":[Ljava/io/File;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v1, v5

    .line 42
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 44
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, p2}, Lcom/market2345/lm/util/AppUtils;->getApkInfos(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 40
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 50
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/market2345/lm/util/AppUtils;->getApkInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/market2345/lm/bean/AppInfo;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_2

    .line 53
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static handleSDCardApps(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/lm/bean/AppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/lm/bean/AppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/lm/bean/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "sdCardApps":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/bean/AppInfo;>;"
    .local p1, "unionApps":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/bean/AppInfo;>;"
    .local p2, "otherApps":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/bean/AppInfo;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 166
    :cond_0
    return-void

    .line 142
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/lm/bean/AppInfo;

    .line 144
    .local v2, "sdCardApp":Lcom/market2345/lm/bean/AppInfo;
    invoke-virtual {v2}, Lcom/market2345/lm/bean/AppInfo;->isUnionSoftware()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/lm/bean/AppInfo;

    .line 149
    .local v3, "unionApp":Lcom/market2345/lm/bean/AppInfo;
    invoke-virtual {v2}, Lcom/market2345/lm/bean/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 152
    invoke-virtual {v2}, Lcom/market2345/lm/bean/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/market2345/lm/bean/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 154
    invoke-virtual {v2}, Lcom/market2345/lm/bean/AppInfo;->getCurVersionCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/market2345/lm/bean/AppInfo;->setCurVersionCode(I)V

    .line 155
    invoke-virtual {v2}, Lcom/market2345/lm/bean/AppInfo;->getApkLocUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/market2345/lm/bean/AppInfo;->setApkLocUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 163
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "unionApp":Lcom/market2345/lm/bean/AppInfo;
    :cond_4
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
