.class public Lcom/market2345/lazyload/FileCache;
.super Ljava/lang/Object;
.source "FileCache.java"


# instance fields
.field private applicationContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/lazyload/FileCache;->applicationContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private checkSize(Ljava/io/File;)J
    .locals 8
    .param p1, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 93
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 94
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 95
    .local v2, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 96
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method private testOByte(Ljava/io/File;)Z
    .locals 5
    .param p1, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 109
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "test.txt"

    invoke-direct {v1, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    .local v1, "f":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 111
    .local v2, "out":Ljava/io/FileOutputStream;
    const-string v4, "test"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 112
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 113
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    const/4 v3, 0x1

    .line 120
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "test":Z
    :goto_0
    return v3

    .line 116
    .end local v3    # "test":Z
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    .restart local v3    # "test":Z
    goto :goto_0
.end method


# virtual methods
.method checkAndGeneratorbyMD5(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method checkByHasecode(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, "filename":Ljava/lang/String;
    iget-object v4, p0, Lcom/market2345/lazyload/FileCache;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 34
    .local v0, "cacheDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .local v1, "check":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 52
    .end local v1    # "check":Ljava/io/File;
    .local v2, "check":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 40
    .end local v2    # "check":Ljava/lang/Object;
    .restart local v1    # "check":Ljava/io/File;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 42
    new-instance v0, Ljava/io/File;

    .end local v0    # "cacheDir":Ljava/io/File;
    sget-object v4, Lcom/market2345/Constants;->ImageCacheDir:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .restart local v0    # "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    new-instance v1, Ljava/io/File;

    .end local v1    # "check":Ljava/io/File;
    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .restart local v1    # "check":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v1

    .line 48
    .restart local v2    # "check":Ljava/lang/Object;
    goto :goto_0

    .end local v2    # "check":Ljava/lang/Object;
    :cond_1
    move-object v2, v1

    .line 52
    .restart local v2    # "check":Ljava/lang/Object;
    goto :goto_0
.end method

.method generatorByHashcode(Ljava/lang/String;I)Ljava/io/File;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    const v6, 0x186a0

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "filename":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    new-instance v0, Ljava/io/File;

    sget-object v4, Lcom/market2345/Constants;->ImageCacheDir:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    invoke-direct {p0, v0}, Lcom/market2345/lazyload/FileCache;->checkSize(Ljava/io/File;)J

    move-result-wide v4

    add-int/2addr v6, p2

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 67
    invoke-direct {p0, v0}, Lcom/market2345/lazyload/FileCache;->testOByte(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v2, "generator":Ljava/io/File;
    move-object v3, v2

    .line 88
    .end local v2    # "generator":Ljava/io/File;
    .local v3, "generator":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 74
    .end local v3    # "generator":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    invoke-direct {p0, v0}, Lcom/market2345/lazyload/FileCache;->checkSize(Ljava/io/File;)J

    move-result-wide v4

    add-int/2addr v6, p2

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 78
    invoke-direct {p0, v0}, Lcom/market2345/lazyload/FileCache;->testOByte(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v2    # "generator":Ljava/io/File;
    move-object v3, v2

    .line 81
    .restart local v3    # "generator":Ljava/lang/Object;
    goto :goto_0

    .line 86
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v2    # "generator":Ljava/io/File;
    .end local v3    # "generator":Ljava/lang/Object;
    :cond_1
    iget-object v4, p0, Lcom/market2345/lazyload/FileCache;->applicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 87
    .restart local v0    # "cacheDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v2    # "generator":Ljava/io/File;
    move-object v3, v2

    .line 88
    .restart local v3    # "generator":Ljava/lang/Object;
    goto :goto_0
.end method
