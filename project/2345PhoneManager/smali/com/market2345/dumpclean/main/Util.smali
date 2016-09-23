.class public Lcom/market2345/dumpclean/main/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asynchronousDeleteFolder(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 347
    new-instance v0, Lcom/market2345/dumpclean/main/Util$2;

    invoke-direct {v0, p0}, Lcom/market2345/dumpclean/main/Util$2;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/market2345/dumpclean/main/Util$2;->start()V

    .line 365
    return-void
.end method

.method public static asynchronousDeleteFolderNoContainOuterFolder(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 321
    new-instance v0, Lcom/market2345/dumpclean/main/Util$1;

    invoke-direct {v0, p0}, Lcom/market2345/dumpclean/main/Util$1;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/market2345/dumpclean/main/Util$1;->start()V

    .line 338
    return-void
.end method

.method public static asynchronousDeleteFolders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/market2345/dumpclean/main/Util$3;

    invoke-direct {v0, p0}, Lcom/market2345/dumpclean/main/Util$3;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/market2345/dumpclean/main/Util$3;->start()V

    .line 393
    return-void
.end method

.method public static beforehandMeasuredViewHeight(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 75
    if-nez p0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 79
    .local v1, "w":I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 80
    .local v0, "h":I
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public static copyAssetData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetsFileName"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 297
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 298
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 300
    .local v4, "output":Ljava/io/FileOutputStream;
    const/16 v6, 0x2800

    new-array v0, v6, [B

    .line 301
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 302
    .local v1, "count":I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 303
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    .end local v0    # "buf":[B
    .end local v1    # "count":I
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 308
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 311
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return v5

    .line 305
    .restart local v0    # "buf":[B
    .restart local v1    # "count":I
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 306
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 311
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public static delete(Ljava/io/File;)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 257
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 258
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 259
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 262
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_2

    array-length v5, v2

    if-lez v5, :cond_2

    .line 263
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 264
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Lcom/market2345/dumpclean/main/Util;->delete(Ljava/io/File;)V

    .line 263
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 267
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    .end local v2    # "files":[Ljava/io/File;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static deleteNotContainFolder(Ljava/io/File;)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 231
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 235
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 246
    :catch_0
    move-exception v5

    goto :goto_0

    .line 237
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 238
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v5, v1

    if-eqz v5, :cond_0

    .line 241
    move-object v0, v1

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 242
    .local v3, "item":Ljava/io/File;
    invoke-static {v3}, Lcom/market2345/dumpclean/main/Util;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .locals 8
    .param p0, "fileSize"    # J

    .prologue
    .line 84
    const-string v1, ""

    .line 85
    .local v1, "fileSizeString":Ljava/lang/String;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#0.00"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "decimalFormat":Ljava/text/DecimalFormat;
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    .line 87
    const-string v1, "0.00KB"

    .line 97
    :goto_0
    return-object v1

    .line 88
    :cond_0
    const-wide/16 v2, 0x3e8

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 90
    :cond_1
    const-wide/32 v2, 0xfa000

    cmp-long v2, p0, v2

    if-gez v2, :cond_2

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 92
    :cond_2
    const-wide/32 v2, 0x3e800000

    cmp-long v2, p0, v2

    if-gez v2, :cond_3

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 95
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static formatFileSizeToPic(J)Ljava/lang/String;
    .locals 8
    .param p0, "fileSize"    # J

    .prologue
    .line 101
    const-string v1, ""

    .line 102
    .local v1, "fileSizeString":Ljava/lang/String;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#0.00"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "decimalFormat":Ljava/text/DecimalFormat;
    const-wide/32 v2, 0x3e800000

    cmp-long v2, p0, v2

    if-ltz v2, :cond_0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    :goto_0
    return-object v1

    .line 105
    :cond_0
    const-wide/32 v2, 0xfa000

    cmp-long v2, p0, v2

    if-ltz v2, :cond_1

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 108
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v4, p0

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCurrentTopActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 403
    :try_start_0
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 404
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 405
    .local v1, "cn":Landroid/content/ComponentName;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 408
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "cn":Landroid/content/ComponentName;
    :goto_0
    return-object v3

    .line 407
    :catch_0
    move-exception v2

    .line 408
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_0
.end method

.method public static getExtSDCardPaths()Ljava/util/List;
    .locals 18
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
    .line 145
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v14, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "extFileStatus":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 148
    .local v4, "extFile":Ljava/io/File;
    const-string v17, "unmounted"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 150
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    .line 156
    .local v16, "runtime":Ljava/lang/Runtime;
    const-string v17, "mount"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v15

    .line 157
    .local v15, "process":Ljava/lang/Process;
    invoke-virtual {v15}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 158
    .local v6, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 159
    .local v7, "isr":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 160
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 161
    .local v9, "line":Ljava/lang/String;
    const/4 v11, 0x1

    .line 162
    .local v11, "mountPathIndex":I
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 164
    const-string v17, "fat"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "fuse"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "storage"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    :cond_2
    const-string v17, "secure"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "asec"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "firmware"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "shell"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "obb"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "legacy"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 170
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 171
    .local v13, "parts":[Ljava/lang/String;
    array-length v8, v13

    .line 172
    .local v8, "length":I
    if-ge v11, v8, :cond_1

    .line 175
    aget-object v10, v13, v11

    .line 176
    .local v10, "mountPath":Ljava/lang/String;
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v17, "data"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "Data"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 179
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v12, "mountRoot":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual {v12}, Ljava/io/File;->canWrite()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 183
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 184
    .local v3, "equalsToPrimarySD":Z
    if-nez v3, :cond_1

    .line 187
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 189
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "equalsToPrimarySD":Z
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .end local v8    # "length":I
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "mountPath":Ljava/lang/String;
    .end local v11    # "mountPathIndex":I
    .end local v12    # "mountRoot":Ljava/io/File;
    .end local v13    # "parts":[Ljava/lang/String;
    .end local v15    # "process":Ljava/lang/Process;
    .end local v16    # "runtime":Ljava/lang/Runtime;
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 193
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    return-object v14
.end method

.method public static getFileFolderTotalSize(Ljava/io/File;)J
    .locals 10
    .param p0, "fileDir"    # Ljava/io/File;

    .prologue
    .line 51
    const-wide/16 v6, 0x0

    .line 52
    .local v6, "totalSize":J
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 53
    :cond_0
    const-wide/16 v8, 0x0

    .line 66
    :goto_0
    return-wide v8

    .line 55
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 56
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 58
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 59
    .local v2, "fileList":[Ljava/io/File;
    if-eqz v2, :cond_3

    .line 60
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 61
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Lcom/market2345/dumpclean/main/Util;->getFileFolderTotalSize(Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "fileList":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    move-wide v8, v6

    .line 66
    goto :goto_0
.end method

.method public static getFileListCount(Ljava/lang/String;)I
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v1

    .line 205
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    goto :goto_0
.end method

.method public static getFileSizeAndUnit(J)[Ljava/lang/String;
    .locals 10
    .param p0, "size"    # J

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 413
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gez v4, :cond_0

    .line 414
    const-wide/16 p0, 0x0

    .line 416
    :cond_0
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    .line 417
    .local v1, "result":[Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/market2345/dumpclean/main/Util;->formatFileSize(J)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "formatFileSize":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-lt v4, v5, :cond_2

    .line 419
    const/4 v4, 0x4

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "strSize":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, "strUnit":Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 422
    const-string v4, "."

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 424
    :cond_1
    aput-object v2, v1, v7

    .line 425
    aput-object v3, v1, v8

    .line 431
    .end local v2    # "strSize":Ljava/lang/String;
    .end local v3    # "strUnit":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 427
    :cond_2
    const-string v4, "wdh"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "formatFileSize:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string v4, "0.00"

    aput-object v4, v1, v7

    .line 429
    const-string v4, "KB"

    aput-object v4, v1, v8

    goto :goto_0
.end method

.method public static getOutSDPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 114
    const/4 v3, 0x0

    .line 115
    .local v3, "outPath":Ljava/lang/String;
    invoke-static {}, Lcom/market2345/dumpclean/main/Util;->getExtSDCardPaths()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 116
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 117
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "outPath":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 119
    .restart local v3    # "outPath":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/market2345/dumpclean/main/Util;->getSDPath()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "external":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 121
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    return-object v3
.end method

.method public static getPathFileSize(Ljava/lang/String;)J
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "file":Ljava/io/File;
    const-wide/16 v2, 0x0

    .line 39
    .local v2, "fileSizes":J
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-static {v0}, Lcom/market2345/dumpclean/main/Util;->getFileFolderTotalSize(Ljava/io/File;)J

    move-result-wide v2

    .line 46
    :cond_0
    :goto_0
    return-wide v2

    .line 42
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getRootPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 135
    .local v0, "sdCardExist":Z
    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 436
    const/4 v5, 0x0

    .line 438
    .local v5, "y":I
    :try_start_0
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 439
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 440
    .local v3, "obj":Ljava/lang/Object;
    const-string v6, "status_bar_height"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 441
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 442
    .local v4, "x":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 447
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "x":I
    :goto_0
    return v5

    .line 443
    :catch_0
    move-exception v1

    .line 445
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSpannableString(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0xf

    const/4 v5, 0x4

    const/16 v4, 0x21

    const/4 v3, 0x1

    .line 283
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 284
    .local v0, "msp":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, v6, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 285
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v2, 0x17

    invoke-direct {v1, v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v5, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 286
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, v6, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 287
    return-object v0
.end method
