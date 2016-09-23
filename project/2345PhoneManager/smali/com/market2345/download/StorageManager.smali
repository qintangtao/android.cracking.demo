.class public Lcom/market2345/download/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# static fields
.field private static final FREQUENCY_OF_CHECKS_ON_SPACE_AVAILABILITY:I = 0x100000


# instance fields
.field private mBytesDownloadedSinceLastCheckOnSpace:I

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/download/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I

    .line 32
    iput-object p1, p0, Lcom/market2345/download/StorageManager;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private declared-synchronized findSpace(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "targetBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/download/exception/StopRequestException;
        }
    .end annotation

    .prologue
    .line 71
    monitor-enter p0

    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-nez v4, :cond_0

    .line 72
    :try_start_0
    new-instance v4, Lcom/market2345/download/exception/StopRequestException;

    const/16 v5, 0xc6

    const-string v6, "the targetBytes is 0"

    invoke-direct {v4, v5, v6}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 76
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/market2345/download/StorageManager;->getAvailableBytesAtGivenRoot(Ljava/lang/String;)J

    move-result-wide v0

    .line 78
    .local v0, "bytesAvailable":J
    cmp-long v4, v0, p3

    if-gez v4, :cond_4

    .line 79
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "apk"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .local v2, "inner":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 84
    .local v3, "parent":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 85
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    .line 86
    new-instance v4, Lcom/market2345/download/exception/StopRequestException;

    const/16 v5, 0x1ec

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unable to create external downloads directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 91
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 92
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_2

    .line 93
    new-instance v4, Lcom/market2345/download/exception/StopRequestException;

    const/16 v5, 0x1ec

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unable to create external downloads directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 99
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 100
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/market2345/download/StorageManager;->getAvailableBytesAtGivenRoot(Ljava/lang/String;)J

    move-result-wide v0

    .line 101
    cmp-long v4, v0, p3

    if-gez v4, :cond_3

    .line 102
    new-instance v4, Lcom/market2345/download/exception/StopRequestException;

    const/16 v5, 0xc6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not enough free space in the filesystem rooted at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and unable to free any more"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 106
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p2

    .line 114
    .end local v2    # "inner":Ljava/io/File;
    .end local v3    # "parent":Ljava/io/File;
    .end local p2    # "root":Ljava/lang/String;
    :cond_4
    monitor-exit p0

    return-object p2

    .line 109
    .restart local v2    # "inner":Ljava/io/File;
    .restart local v3    # "parent":Ljava/io/File;
    .restart local p2    # "root":Ljava/lang/String;
    :cond_5
    :try_start_2
    new-instance v4, Lcom/market2345/download/exception/StopRequestException;

    const/16 v5, 0xc6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not enough free space in the filesystem rooted at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and unable to free any more"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private getAvailableBytesAtGivenRoot(Ljava/lang/String;)J
    .locals 10
    .param p1, "root"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 120
    .local v4, "stat":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v6, v5

    const-wide/16 v8, 0x4

    sub-long v0, v6, v8

    .line 121
    .local v0, "availableBlocks":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v6, v5

    mul-long v2, v6, v0

    .line 122
    .local v2, "size":J
    sget-boolean v5, Lcom/market2345/download/Constants;->LOGV:Z

    if-eqz v5, :cond_0

    .line 123
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "available space (in bytes) in filesystem rooted at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    return-wide v2
.end method

.method private declared-synchronized incrementBytesDownloadedSinceLastCheckOnSpace(J)I
    .locals 3
    .param p1, "val"    # J

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/market2345/download/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/market2345/download/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I

    .line 132
    iget v0, p0, Lcom/market2345/download/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetBytesDownloadedSinceLastCheckOnSpace()V
    .locals 1

    .prologue
    .line 136
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/market2345/download/StorageManager;->mBytesDownloadedSinceLastCheckOnSpace:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method verifySpace(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/download/exception/StopRequestException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/market2345/download/StorageManager;->resetBytesDownloadedSinceLastCheckOnSpace()V

    .line 55
    if-nez p2, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/market2345/download/StorageManager;->findSpace(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method verifySpaceBeforeWritingToFile(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/download/exception/StopRequestException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p3, p4}, Lcom/market2345/download/StorageManager;->incrementBytesDownloadedSinceLastCheckOnSpace(J)I

    move-result v0

    const/high16 v1, 0x100000

    if-ge v0, v1, :cond_0

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/market2345/download/StorageManager;->verifySpace(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    goto :goto_0
.end method
