.class public Lcom/market2345/lm/util/ChannelUtil;
.super Ljava/lang/Object;
.source "ChannelUtil.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "META-INF/channel_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDisappearFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileStr"    # Ljava/lang/String;

    .prologue
    .line 213
    const/4 v1, 0x0

    .line 216
    .local v1, "isExist":Z
    :try_start_0
    invoke-static {p0, p1}, Lcom/market2345/lm/util/ChannelUtil;->getDisappearFileExist(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 232
    :goto_0
    return v1

    .line 227
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkLM(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 379
    const-string v3, "META-INF/channel_m-"

    invoke-static {p0, v3}, Lcom/market2345/lm/util/ChannelUtil;->getChannelStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 382
    invoke-static {}, Lcom/market2345/lm/util/ChannelUtil;->checkLoacal()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "local":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    const/4 v2, 0x0

    .line 397
    .end local v0    # "local":Ljava/lang/String;
    :goto_0
    return v2

    .line 389
    .restart local v0    # "local":Ljava/lang/String;
    :cond_0
    sput-object v0, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    goto :goto_0

    .line 395
    .end local v0    # "local":Ljava/lang/String;
    :cond_1
    sput-object v1, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    .line 396
    const-string v3, ".lmcode"

    invoke-static {v1, v3}, Lcom/market2345/lm/util/ChannelUtil;->saveLMcodeLocal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static checkLoacal()Ljava/lang/String;
    .locals 10

    .prologue
    .line 172
    const-string v5, ""

    .line 173
    .local v5, "lmCode":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, ".lmcode"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    .local v2, "f":Ljava/io/File;
    const/4 v3, 0x0

    .line 175
    .local v3, "in":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 179
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    .end local v3    # "in":Ljava/io/FileInputStream;
    .local v4, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v7, v8

    new-array v0, v7, [B

    .line 181
    .local v0, "datas":[B
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v4, v0, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    .line 182
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    .end local v5    # "lmCode":Ljava/lang/String;
    .local v6, "lmCode":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 198
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    move-object v5, v6

    .line 208
    .end local v0    # "datas":[B
    .end local v6    # "lmCode":Ljava/lang/String;
    .restart local v5    # "lmCode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 200
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v5    # "lmCode":Ljava/lang/String;
    .restart local v0    # "datas":[B
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "lmCode":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    move-object v5, v6

    .line 203
    .end local v6    # "lmCode":Ljava/lang/String;
    .restart local v5    # "lmCode":Ljava/lang/String;
    goto :goto_0

    .line 184
    .end local v0    # "datas":[B
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 186
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    if-eqz v3, :cond_0

    .line 198
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 200
    :catch_2
    move-exception v1

    .line 202
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 188
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 190
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 194
    if-eqz v3, :cond_0

    .line 198
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 200
    :catch_4
    move-exception v1

    .line 202
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 194
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v3, :cond_1

    .line 198
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 203
    :cond_1
    :goto_4
    throw v7

    .line 200
    :catch_5
    move-exception v1

    .line 202
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 194
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 188
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 184
    .end local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v5    # "lmCode":Ljava/lang/String;
    .restart local v0    # "datas":[B
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "lmCode":Ljava/lang/String;
    :cond_2
    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "lmCode":Ljava/lang/String;
    .restart local v5    # "lmCode":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getChannelStr(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const-string v4, ""

    .line 40
    .local v4, "result":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 41
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 44
    .local v5, "sourceDir":Ljava/lang/String;
    const/4 v2, 0x0

    .line 45
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    const/4 v6, 0x0

    .line 48
    .local v6, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipFile;

    invoke-direct {v7, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .local v7, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 51
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 53
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 54
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "META-INF/channel_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 56
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "META-INF/channel_"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 68
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    :cond_1
    if-eqz v7, :cond_4

    .line 72
    :try_start_2
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .line 81
    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_2
    :goto_0
    return-object v4

    .line 74
    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 77
    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 61
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 63
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v4, 0x0

    .line 64
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 68
    if-eqz v6, :cond_2

    .line 72
    :try_start_4
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 74
    :catch_2
    move-exception v1

    .line 76
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v6, :cond_3

    .line 72
    :try_start_5
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 77
    :cond_3
    :goto_3
    throw v8

    .line 74
    :catch_3
    move-exception v1

    .line 76
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 68
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 61
    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v1

    move-object v6, v7

    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_1

    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_4
    move-object v6, v7

    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_0
.end method

.method public static getChannelStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channelprefix"    # Ljava/lang/String;

    .prologue
    .line 293
    const/4 v4, 0x0

    .line 294
    .local v4, "result":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 295
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 298
    .local v5, "sourceDir":Ljava/lang/String;
    const/4 v2, 0x0

    .line 299
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    const/4 v6, 0x0

    .line 302
    .local v6, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipFile;

    invoke-direct {v7, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .local v7, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 305
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 307
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 308
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 310
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 322
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    :cond_1
    if-eqz v7, :cond_4

    .line 326
    :try_start_2
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .line 353
    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_2
    :goto_0
    return-object v4

    .line 328
    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 331
    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 315
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 317
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v4, 0x0

    .line 318
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 322
    if-eqz v6, :cond_2

    .line 326
    :try_start_4
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 328
    :catch_2
    move-exception v1

    .line 330
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 322
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v6, :cond_3

    .line 326
    :try_start_5
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 331
    :cond_3
    :goto_3
    throw v8

    .line 328
    :catch_3
    move-exception v1

    .line 330
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 322
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 315
    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v1

    move-object v6, v7

    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_1

    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_4
    move-object v6, v7

    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_0
.end method

.method public static getChannelStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v3, 0x0

    .line 89
    .local v3, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 90
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    const/4 v4, 0x0

    .line 93
    .local v4, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v4    # "zipfile":Ljava/util/zip/ZipFile;
    .local v5, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 96
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 98
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 99
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "META-INF/channel_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 101
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "META-INF/channel_"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 113
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    :cond_1
    if-eqz v5, :cond_4

    .line 117
    :try_start_2
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 126
    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v4    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_2
    :goto_0
    return-object v3

    .line 119
    .end local v4    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 122
    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v4    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 106
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 108
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v3, 0x0

    .line 109
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    if-eqz v4, :cond_2

    .line 117
    :try_start_4
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 119
    :catch_2
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v4, :cond_3

    .line 117
    :try_start_5
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 122
    :cond_3
    :goto_3
    throw v6

    .line 119
    :catch_3
    move-exception v0

    .line 121
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 113
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v4    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 106
    .end local v4    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v4    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_1

    .end local v4    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_4
    move-object v4, v5

    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v4    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_0
.end method

.method public static getChannelUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    sget-object v0, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-static {p0}, Lcom/market2345/lm/util/ChannelUtil;->checkLM(Landroid/content/Context;)Z

    .line 286
    :cond_0
    sget-object v0, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    return-object v0
.end method

.method public static getDisappearFileExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileStr"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 238
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 239
    .local v5, "sourceDir":Ljava/lang/String;
    const/4 v4, 0x0

    .line 241
    .local v4, "isExist":Z
    const/4 v2, 0x0

    .line 242
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    const/4 v6, 0x0

    .line 245
    .local v6, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipFile;

    invoke-direct {v7, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .local v7, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 248
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 250
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 251
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 253
    const-string v8, "disapear"

    sput-object v8, Lcom/market2345/lm/util/GlobalParams;->UNION_DISAPEAR:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    const/4 v4, 0x1

    .line 266
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    :cond_1
    if-eqz v7, :cond_4

    .line 270
    :try_start_2
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .line 279
    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_2
    :goto_0
    return v4

    .line 272
    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 275
    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 259
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 262
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    if-eqz v6, :cond_2

    .line 270
    :try_start_4
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 272
    :catch_2
    move-exception v1

    .line 274
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 266
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v6, :cond_3

    .line 270
    :try_start_5
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 275
    :cond_3
    :goto_3
    throw v8

    .line 272
    :catch_3
    move-exception v1

    .line 274
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 266
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 259
    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v1

    move-object v6, v7

    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_1

    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_4
    move-object v6, v7

    .end local v7    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_0
.end method

.method public static isUnionShouldShow(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    sget-object v1, Lcom/market2345/lm/util/GlobalParams;->UIDNEW:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    const-string v1, "META-INF/channel_m-"

    invoke-static {p0, v1}, Lcom/market2345/lm/util/ChannelUtil;->getChannelStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    invoke-static {}, Lcom/market2345/lm/util/ChannelUtil;->checkLoacal()Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    const-string v1, "noid"

    sput-object v1, Lcom/market2345/lm/util/GlobalParams;->UIDNEW:Ljava/lang/String;

    .line 148
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v1, "noid"

    sget-object v2, Lcom/market2345/lm/util/GlobalParams;->UIDNEW:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 150
    const/4 v1, 0x0

    .line 165
    :goto_1
    return v1

    .line 144
    .restart local v0    # "result":Ljava/lang/String;
    :cond_2
    sput-object v0, Lcom/market2345/lm/util/GlobalParams;->UIDNEW:Ljava/lang/String;

    goto :goto_0

    .line 154
    .end local v0    # "result":Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/market2345/lm/util/GlobalParams;->UNION_DISAPEAR:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 156
    const-string v1, "META-INF/disappear_union"

    invoke-static {p0, v1}, Lcom/market2345/lm/util/ChannelUtil;->checkDisappearFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 158
    const-string v1, "disapear"

    sput-object v1, Lcom/market2345/lm/util/GlobalParams;->UNION_DISAPEAR:Ljava/lang/String;

    .line 165
    :cond_4
    :goto_2
    const-string v1, "nodisapear"

    sget-object v2, Lcom/market2345/lm/util/GlobalParams;->UNION_DISAPEAR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    .line 162
    :cond_5
    const-string v1, "nodisapear"

    sput-object v1, Lcom/market2345/lm/util/GlobalParams;->UNION_DISAPEAR:Ljava/lang/String;

    goto :goto_2
.end method

.method public static saveLMcodeLocal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "values"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 358
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 362
    .local v1, "f":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 363
    .local v2, "out":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 364
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 365
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 375
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 371
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 373
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
