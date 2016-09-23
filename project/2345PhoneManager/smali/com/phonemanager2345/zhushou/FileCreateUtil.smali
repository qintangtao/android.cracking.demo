.class public Lcom/phonemanager2345/zhushou/FileCreateUtil;
.super Ljava/lang/Object;
.source "FileCreateUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method private static creatFile(Ljava/io/File;Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;Ljava/lang/String;Z)Ljava/io/File;
    .locals 11
    .param p0, "sdcard"    # Ljava/io/File;
    .param p1, "type"    # Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "rename"    # Z

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "dir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v8, "2345\u624b\u673a\u52a9\u624b"

    invoke-direct {v4, p0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .local v4, "pdir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 83
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 85
    :cond_0
    sget-object v8, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->APK:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    if-ne p1, v8, :cond_1

    .line 87
    new-instance v1, Ljava/io/File;

    .end local v1    # "dir":Ljava/io/File;
    const-string v8, "apk"

    invoke-direct {v1, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    .restart local v1    # "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 90
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 93
    :cond_1
    sget-object v8, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->PHOTO:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    if-ne p1, v8, :cond_2

    .line 95
    new-instance v1, Ljava/io/File;

    .end local v1    # "dir":Ljava/io/File;
    const-string v8, "photo"

    invoke-direct {v1, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    .restart local v1    # "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 98
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 101
    :cond_2
    sget-object v8, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->WALLPAPER:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    if-ne p1, v8, :cond_3

    .line 103
    new-instance v1, Ljava/io/File;

    .end local v1    # "dir":Ljava/io/File;
    const-string v8, "wallpaper"

    invoke-direct {v1, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .restart local v1    # "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 106
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 109
    :cond_3
    sget-object v8, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->OTHERIMAGE:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    if-ne p1, v8, :cond_4

    .line 111
    new-instance v1, Ljava/io/File;

    .end local v1    # "dir":Ljava/io/File;
    const-string v8, "otherimage"

    invoke-direct {v1, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .restart local v1    # "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    .line 114
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 117
    :cond_4
    sget-object v8, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->RING:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    if-ne p1, v8, :cond_5

    .line 119
    new-instance v1, Ljava/io/File;

    .end local v1    # "dir":Ljava/io/File;
    const-string v8, "ring"

    invoke-direct {v1, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    .restart local v1    # "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 125
    :cond_5
    sget-object v8, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->AUDIO:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    if-ne p1, v8, :cond_7

    .line 127
    new-instance v1, Ljava/io/File;

    .end local v1    # "dir":Ljava/io/File;
    const-string v8, "music"

    invoke-direct {v1, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    .restart local v1    # "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_7

    .line 130
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 131
    .local v0, "b":Z
    if-eqz v0, :cond_6

    .line 133
    const-string v8, "mkdir"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_6
    const-string v8, "mkdir"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v0    # "b":Z
    :cond_7
    sget-object v8, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->VIDEO:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    if-ne p1, v8, :cond_8

    .line 140
    new-instance v1, Ljava/io/File;

    .end local v1    # "dir":Ljava/io/File;
    const-string v8, "video"

    invoke-direct {v1, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    .restart local v1    # "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_8

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 146
    :cond_8
    sget-object v8, Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;->RECEIVE_FILE:Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;

    if-ne p1, v8, :cond_a

    .line 148
    new-instance v1, Ljava/io/File;

    .end local v1    # "dir":Ljava/io/File;
    const-string v8, "receive"

    invoke-direct {v1, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    .restart local v1    # "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_a

    .line 151
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 152
    .restart local v0    # "b":Z
    if-eqz v0, :cond_9

    .line 154
    const-string v8, "mkdir"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_9
    const-string v8, "mkdir"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v0    # "b":Z
    :cond_a
    if-eqz v1, :cond_d

    .line 161
    const/4 v3, 0x0

    .line 163
    .local v3, "i":I
    const-string v8, "."

    invoke-virtual {p2, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 164
    .local v5, "posi":I
    const/4 v8, 0x0

    invoke-virtual {p2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, "temp":Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "prifx":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_b

    if-nez p3, :cond_c

    .line 180
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "i":I
    .end local v5    # "posi":I
    .end local v6    # "prifx":Ljava/lang/String;
    .end local v7    # "temp":Ljava/lang/String;
    :cond_b
    :goto_1
    return-object v2

    .line 175
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "i":I
    .restart local v5    # "posi":I
    .restart local v6    # "prifx":Ljava/lang/String;
    .restart local v7    # "temp":Ljava/lang/String;
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 176
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 180
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "i":I
    .end local v5    # "posi":I
    .end local v6    # "prifx":Ljava/lang/String;
    .end local v7    # "temp":Ljava/lang/String;
    :cond_d
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static creatSdcardFromfstabFile()Ljava/io/File;
    .locals 9

    .prologue
    .line 44
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v7, "/etc/vold.fstab"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v5, "mountFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 47
    new-instance v6, Ljava/util/Scanner;

    invoke-direct {v6, v5}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 48
    .local v6, "scanner":Ljava/util/Scanner;
    :cond_0
    invoke-virtual {v6}, Ljava/util/Scanner;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 50
    invoke-virtual {v6}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "line":Ljava/lang/String;
    const-string v7, "dev_mount"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 53
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "lineElements":[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x3

    if-le v7, v8, :cond_0

    .line 56
    const/4 v7, 0x1

    aget-object v1, v4, v7

    .line 57
    .local v1, "element":Ljava/lang/String;
    const-string v7, "sdcard"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 59
    new-instance v2, Ljava/io/File;

    const/4 v7, 0x2

    aget-object v7, v4, v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    if-eqz v7, :cond_0

    .line 74
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "lineElements":[Ljava/lang/String;
    .end local v6    # "scanner":Ljava/util/Scanner;
    :goto_0
    return-object v2

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createFile(Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;Ljava/lang/String;Z)Ljava/io/File;
    .locals 4
    .param p0, "type"    # Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rename"    # Z

    .prologue
    .line 23
    const/4 v1, 0x0

    .line 24
    .local v1, "temp":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-static {v2, p0, p1, p2}, Lcom/phonemanager2345/zhushou/FileCreateUtil;->creatFile(Ljava/io/File;Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 37
    :cond_0
    :goto_0
    return-object v1

    .line 31
    :cond_1
    invoke-static {}, Lcom/phonemanager2345/zhushou/FileCreateUtil;->creatSdcardFromfstabFile()Ljava/io/File;

    move-result-object v0

    .line 32
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 34
    invoke-static {v0, p0, p1, p2}, Lcom/phonemanager2345/zhushou/FileCreateUtil;->creatFile(Ljava/io/File;Lcom/phonemanager2345/zhushou/FileCreateUtil$FILE_TYPE;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method
