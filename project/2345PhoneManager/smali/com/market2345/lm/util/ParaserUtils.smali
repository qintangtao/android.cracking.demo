.class public Lcom/market2345/lm/util/ParaserUtils;
.super Ljava/lang/Object;
.source "ParaserUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/lm/bean/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parser(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/lm/bean/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/market2345/lm/util/ParaserUtils;->parser2List(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static parser2List(Ljava/lang/String;Z)Ljava/util/List;
    .locals 13
    .param p0, "result"    # Ljava/lang/String;
    .param p1, "encode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/lm/bean/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 52
    if-eqz p1, :cond_0

    .line 57
    :try_start_0
    const-string v9, "GBK"

    invoke-static {p0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, "strGBK":Ljava/lang/String;
    const-string v9, "utf-8"

    invoke-static {v7, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 59
    .local v8, "strUTF8":Ljava/lang/String;
    move-object p0, v8

    .line 67
    .end local v7    # "strGBK":Ljava/lang/String;
    .end local v8    # "strUTF8":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v1, "appLists":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/bean/AppInfo;>;"
    const-string v9, "\\|\\|\\|"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "split":[Ljava/lang/String;
    aget-object v9, v6, v12

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 74
    aget-object v9, v6, v11

    const-string v10, "\\|\\|"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "appStrLists":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v9, v3

    if-ge v5, v9, :cond_1

    .line 77
    new-instance v0, Lcom/market2345/lm/bean/AppInfo;

    invoke-direct {v0}, Lcom/market2345/lm/bean/AppInfo;-><init>()V

    .line 78
    .local v0, "appInfo":Lcom/market2345/lm/bean/AppInfo;
    aget-object v9, v3, v5

    const-string v10, "\\|"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "appStrInfo":[Ljava/lang/String;
    aget-object v9, v2, v12

    invoke-virtual {v0, v9}, Lcom/market2345/lm/bean/AppInfo;->setAppName(Ljava/lang/String;)V

    .line 80
    aget-object v9, v2, v11

    invoke-virtual {v0, v9}, Lcom/market2345/lm/bean/AppInfo;->setPackageName(Ljava/lang/String;)V

    .line 81
    const/4 v9, 0x2

    aget-object v9, v2, v9

    invoke-virtual {v0, v9}, Lcom/market2345/lm/bean/AppInfo;->setAppSize(Ljava/lang/String;)V

    .line 82
    const/4 v9, 0x3

    aget-object v9, v2, v9

    invoke-virtual {v0, v9}, Lcom/market2345/lm/bean/AppInfo;->setVersionName(Ljava/lang/String;)V

    .line 83
    const/4 v9, 0x4

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/market2345/lm/bean/AppInfo;->setLastestVersionCode(I)V

    .line 84
    const/4 v9, 0x5

    aget-object v9, v2, v9

    invoke-virtual {v0, v9}, Lcom/market2345/lm/bean/AppInfo;->setApkUrl(Ljava/lang/String;)V

    .line 85
    const/4 v9, 0x6

    aget-object v9, v2, v9

    invoke-virtual {v0, v9}, Lcom/market2345/lm/bean/AppInfo;->setAppIconUrl(Ljava/lang/String;)V

    .line 86
    const/4 v9, 0x7

    aget-object v9, v2, v9

    invoke-virtual {v0, v9}, Lcom/market2345/lm/bean/AppInfo;->setDescription(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, v11}, Lcom/market2345/lm/bean/AppInfo;->setUnionSoftware(Z)V

    .line 89
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 61
    .end local v0    # "appInfo":Lcom/market2345/lm/bean/AppInfo;
    .end local v1    # "appLists":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/bean/AppInfo;>;"
    .end local v2    # "appStrInfo":[Ljava/lang/String;
    .end local v3    # "appStrLists":[Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "split":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 63
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 96
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "appLists":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/bean/AppInfo;>;"
    .restart local v6    # "split":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method
