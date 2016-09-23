.class public Lcom/market2345/cacheclean/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Ljava/io/File;)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 113
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 117
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 130
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 132
    :cond_1
    return-void

    .line 119
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 122
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-lez v5, :cond_0

    .line 124
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 126
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Lcom/market2345/cacheclean/Util;->clear(Ljava/io/File;)V

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static copyAssetData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetsFileName"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 142
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 143
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

    .line 144
    .local v4, "output":Ljava/io/FileOutputStream;
    const/16 v6, 0x2800

    new-array v0, v6, [B

    .line 145
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 146
    .local v1, "count":I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 148
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    .end local v0    # "buf":[B
    .end local v1    # "count":I
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 158
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return v5

    .line 150
    .restart local v0    # "buf":[B
    .restart local v1    # "count":I
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 151
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public static getClearSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 172
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "clear_size"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
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
    .line 239
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v14, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 241
    .local v5, "extFileStatus":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 242
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

    .line 244
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    .line 251
    .local v16, "runtime":Ljava/lang/Runtime;
    const-string v17, "mount"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v15

    .line 252
    .local v15, "process":Ljava/lang/Process;
    invoke-virtual {v15}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 253
    .local v6, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 254
    .local v7, "isr":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 255
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 256
    .local v9, "line":Ljava/lang/String;
    const/4 v11, 0x1

    .line 257
    .local v11, "mountPathIndex":I
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 260
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

    .line 265
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 266
    .local v13, "parts":[Ljava/lang/String;
    array-length v8, v13

    .line 267
    .local v8, "length":I
    if-ge v11, v8, :cond_1

    .line 271
    aget-object v10, v13, v11

    .line 272
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

    .line 276
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
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

    .line 281
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 282
    .local v3, "equalsToPrimarySD":Z
    if-nez v3, :cond_1

    .line 286
    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 289
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

    .line 292
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 294
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    return-object v14
.end method

.method public static getFileFolderTotalSize(Ljava/io/File;)J
    .locals 6
    .param p0, "fileDir"    # Ljava/io/File;

    .prologue
    .line 65
    const-wide/16 v2, 0x0

    .line 66
    .local v2, "totalSize":J
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 69
    .local v1, "fileList":[Ljava/io/File;
    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    .line 71
    const/4 v0, 0x0

    .local v0, "fileIndex":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 73
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    aget-object v4, v1, v0

    invoke-static {v4}, Lcom/market2345/cacheclean/Util;->getFileFolderTotalSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 71
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_1

    .line 84
    .end local v0    # "fileIndex":I
    .end local v1    # "fileList":[Ljava/io/File;
    :cond_1
    return-wide v2
.end method

.method public static getLaseCleanDate(Landroid/content/Context;J)J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentTime"    # J

    .prologue
    .line 191
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 192
    .local v4, "sp":Landroid/content/SharedPreferences;
    const-string v5, "clear_date"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 193
    .local v2, "laseTime":J
    sub-long v0, p1, v2

    .line 195
    .local v0, "dur":J
    return-wide v0
.end method

.method public static getOutSDPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    const/4 v3, 0x0

    .line 200
    .local v3, "outPath":Ljava/lang/String;
    invoke-static {}, Lcom/market2345/cacheclean/Util;->getExtSDCardPaths()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 201
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 203
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "outPath":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 205
    .restart local v3    # "outPath":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/market2345/cacheclean/Util;->getSDPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "external":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 208
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    return-object v3
.end method

.method public static getPathSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v1, ""

    .line 38
    .local v1, "flieSizesString":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "file":Ljava/io/File;
    const-wide/16 v2, 0x0

    .line 40
    .local v2, "fileSizes":J
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    invoke-static {v0}, Lcom/market2345/cacheclean/Util;->getFileFolderTotalSize(Ljava/io/File;)J

    move-result-wide v2

    .line 51
    :cond_0
    :goto_0
    invoke-static {v2, v3}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v1

    .line 52
    return-object v1

    .line 46
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getSDPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "sdDir":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 224
    .local v0, "sdCardExist":Z
    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    :goto_0
    return-object v1

    .line 231
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static installApk(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 97
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 101
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 108
    .end local v0    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 106
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static setClearDate(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 178
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "clear_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    return-void
.end method

.method public static setClearSize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 164
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 165
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "clear_size"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    return-void
.end method
