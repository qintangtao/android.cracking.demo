.class public Lcom/market2345/lm/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final COPY_COMPLETE:Ljava/lang/String; = "copy_complete"

.field public static final SIZE_TYPE_B:I = 0x1

.field public static final SIZE_TYPE_GB:I = 0x4

.field public static final SIZE_TYPE_KB:I = 0x2

.field public static final SIZE_TYPE_MB:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FormatFileSize(J)Ljava/lang/String;
    .locals 14
    .param p0, "fileSize"    # J

    .prologue
    const-wide/16 v8, 0x400

    const/4 v7, 0x1

    const/4 v12, 0x0

    .line 204
    const-wide/16 v2, 0x400

    .line 205
    .local v2, "SIZE_KB":J
    mul-long v4, v2, v8

    .line 206
    .local v4, "SIZE_MB":J
    mul-long v0, v4, v8

    .line 208
    .local v0, "SIZE_GB":J
    cmp-long v6, p0, v2

    if-gez v6, :cond_0

    .line 210
    const-string v6, "%d B"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 222
    :goto_0
    return-object v6

    .line 212
    :cond_0
    cmp-long v6, p0, v4

    if-gez v6, :cond_1

    .line 214
    const-string v6, "%0.2f KB"

    new-array v7, v7, [Ljava/lang/Object;

    long-to-double v8, p0

    long-to-double v10, v2

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 216
    :cond_1
    cmp-long v6, p0, v0

    if-gez v6, :cond_2

    .line 218
    const-string v6, "%0.2f MB"

    new-array v7, v7, [Ljava/lang/Object;

    long-to-double v8, p0

    long-to-double v10, v4

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 222
    :cond_2
    const-string v6, "%0.2f GB"

    new-array v7, v7, [Ljava/lang/Object;

    long-to-double v8, p0

    long-to-double v10, v0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static FormatFileSize(JI)Ljava/lang/String;
    .locals 8
    .param p0, "fileSize"    # J
    .param p2, "sizeType"    # I

    .prologue
    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "size":Ljava/lang/String;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "0.00"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, "df":Ljava/text/DecimalFormat;
    packed-switch p2, :pswitch_data_0

    .line 259
    :goto_0
    return-object v1

    .line 244
    :pswitch_0
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

    .line 245
    goto :goto_0

    .line 247
    :pswitch_1
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

    .line 248
    goto :goto_0

    .line 250
    :pswitch_2
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

    .line 251
    goto :goto_0

    .line 253
    :pswitch_3
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

    .line 254
    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static IsExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 270
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static copy2SdCard(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apks"    # [Ljava/lang/String;

    .prologue
    .line 44
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "2345\u624b\u673a\u52a9\u624b/fasttransition/webapps/2345"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 51
    :cond_0
    new-instance v1, Lcom/market2345/lm/util/FileUtils$1;

    invoke-direct {v1, p1, p0, v0}, Lcom/market2345/lm/util/FileUtils$1;-><init>([Ljava/lang/String;Landroid/content/Context;Ljava/io/File;)V

    invoke-virtual {v1}, Lcom/market2345/lm/util/FileUtils$1;->start()V

    .line 88
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public static deleteDir(Ljava/io/File;)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 97
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 101
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 102
    .local v1, "files":[Ljava/io/File;
    move-object v0, v1

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 104
    .local v4, "subFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    invoke-static {v4}, Lcom/market2345/lm/util/FileUtils;->deleteDir(Ljava/io/File;)V

    .line 102
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 110
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "subFile":Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 112
    :cond_2
    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 282
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, "file":Ljava/io/File;
    invoke-static {p0}, Lcom/market2345/lm/util/FileUtils;->IsExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 287
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getDirSize(Ljava/io/File;)J
    .locals 10
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    const-wide/16 v6, 0x0

    .line 180
    .local v6, "size":J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 181
    .local v2, "files":[Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 183
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 185
    invoke-static {v1}, Lcom/market2345/lm/util/FileUtils;->getDirSize(Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 181
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {v1}, Lcom/market2345/lm/util/FileUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_1

    .line 193
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    return-wide v6
.end method

.method public static getFileSize(Ljava/io/File;)J
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const-wide/16 v2, 0x0

    .line 125
    .local v2, "size":J
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 128
    .local v0, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    int-to-long v2, v1

    .line 130
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 138
    .end local v0    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-wide v2

    .line 135
    :cond_0
    const-string v1, "FileUtils"

    const-string v4, "file does not exist"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getFileSize(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "sizeType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "file":Ljava/io/File;
    const-wide/16 v2, 0x0

    .line 157
    .local v2, "size":J
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-static {v0}, Lcom/market2345/lm/util/FileUtils;->getDirSize(Ljava/io/File;)J

    move-result-wide v2

    .line 166
    :goto_0
    invoke-static {v2, v3, p1}, Lcom/market2345/lm/util/FileUtils;->FormatFileSize(JI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 163
    :cond_0
    invoke-static {v0}, Lcom/market2345/lm/util/FileUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v2

    goto :goto_0
.end method
