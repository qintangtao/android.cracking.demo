.class public Lcom/market2345/util/CheckAppMoveUtil;
.super Ljava/lang/Object;
.source "CheckAppMoveUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSupportMoveAppToSdcard()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v7, 0x0

    .line 24
    sget-object v11, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v12, "Xiaomi"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 84
    .local v9, "sdkVersion":I
    :cond_0
    :goto_0
    return v7

    .line 28
    .end local v9    # "sdkVersion":I
    :cond_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .restart local v9    # "sdkVersion":I
    const/16 v11, 0x8

    if-le v9, v11, :cond_0

    .line 34
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    const-string v12, "mounted"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 36
    const/4 v7, 0x0

    .line 37
    .local v7, "result":Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 40
    .local v6, "path":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v11, "/etc/vold.fstab"

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v5, "mountFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 43
    new-instance v8, Ljava/util/Scanner;

    invoke-direct {v8, v5}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 44
    .local v8, "scanner":Ljava/util/Scanner;
    :cond_2
    :goto_1
    invoke-virtual {v8}, Ljava/util/Scanner;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 46
    invoke-virtual {v8}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "line":Ljava/lang/String;
    const-string v11, "dev_mount"

    invoke-virtual {v3, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 49
    const-string v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "lineElements":[Ljava/lang/String;
    array-length v11, v4

    const/4 v12, 0x3

    if-le v11, v12, :cond_2

    .line 52
    const/4 v11, 0x1

    aget-object v1, v4, v11

    .line 53
    .local v1, "element":Ljava/lang/String;
    const-string v11, "sdcard"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 55
    const/4 v11, 0x2

    aget-object v11, v4, v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 56
    if-nez v7, :cond_2

    .line 58
    new-instance v10, Ljava/io/File;

    const/4 v11, 0x2

    aget-object v11, v4, v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v10, "temp":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 60
    .local v2, "fs":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 62
    array-length v11, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v11, v13, :cond_2

    .line 64
    const/4 v7, 0x1

    goto :goto_1

    .line 74
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "fs":[Ljava/io/File;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "lineElements":[Ljava/lang/String;
    .end local v5    # "mountFile":Ljava/io/File;
    .end local v8    # "scanner":Ljava/util/Scanner;
    .end local v10    # "temp":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getTotalMemory(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const-string v9, "/proc/meminfo"

    .line 94
    .local v9, "str1":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 97
    .local v4, "initial_memory":J
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 98
    .local v7, "localFileReader":Ljava/io/FileReader;
    new-instance v6, Ljava/io/BufferedReader;

    const/16 v11, 0x2000

    invoke-direct {v6, v7, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 99
    .local v6, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 101
    .local v10, "str2":Ljava/lang/String;
    const-string v11, "\\s+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "arrayOfString":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v8, v0, v2

    .line 104
    .local v8, "num":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\t"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v8    # "num":Ljava/lang/String;
    :cond_0
    const/4 v11, 0x1

    aget-object v11, v1, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    mul-int/lit16 v11, v11, 0x400

    int-to-long v4, v11

    .line 108
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "arrayOfString":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "localFileReader":Ljava/io/FileReader;
    .end local v10    # "str2":Ljava/lang/String;
    :goto_1
    invoke-static {p1, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 111
    :catch_0
    move-exception v11

    goto :goto_1
.end method
