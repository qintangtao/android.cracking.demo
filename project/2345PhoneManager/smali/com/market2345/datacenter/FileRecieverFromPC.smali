.class Lcom/market2345/datacenter/FileRecieverFromPC;
.super Ljava/lang/Object;
.source "FileRecieverFromPC.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field context:Landroid/content/Context;

.field private fileCount:I

.field private files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/FileFromPC;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/market2345/datacenter/FileRecieverFromPC;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/datacenter/FileRecieverFromPC;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method deleteFileById([I[Ljava/lang/String;Z)V
    .locals 2
    .param p1, "ids"    # [I
    .param p2, "files"    # [Ljava/lang/String;
    .param p3, "deleFile"    # Z

    .prologue
    .line 126
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/market2345/datacenter/FileRecieverFromPC$2;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/market2345/datacenter/FileRecieverFromPC$2;-><init>(Lcom/market2345/datacenter/FileRecieverFromPC;Z[Ljava/lang/String;[I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 155
    return-void
.end method

.method protected declared-synchronized fillData()V
    .locals 21

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/datacenter/FileRecieverFromPC;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/market2345/common/util/MarketProvider;->RECEIVER_URL:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 67
    .local v8, "c":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 122
    :goto_0
    monitor-exit p0

    return-void

    .line 70
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/datacenter/FileRecieverFromPC;->files:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 71
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v16, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 73
    const/4 v9, 0x0

    .line 74
    .local v9, "count":I
    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 75
    .local v14, "id":I
    const-string v2, "path"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 76
    .local v19, "path":I
    const-string v2, "filename"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 77
    .local v18, "name":I
    const-string v2, "modify"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 78
    .local v17, "modify":I
    const-string v2, "size"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 79
    .local v20, "size":I
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    new-instance v12, Lcom/market2345/model/FileFromPC;

    invoke-direct {v12}, Lcom/market2345/model/FileFromPC;-><init>()V

    .line 82
    .local v12, "fp":Lcom/market2345/model/FileFromPC;
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/market2345/model/FileFromPC;->id:I

    .line 83
    move/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/market2345/model/FileFromPC;->fileName:Ljava/lang/String;

    .line 84
    move/from16 v0, v19

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/market2345/model/FileFromPC;->filePath:Ljava/lang/String;

    .line 85
    move/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/market2345/model/FileFromPC;->fileSize:J

    .line 86
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/market2345/model/FileFromPC;->lastModify:J

    .line 87
    iget-object v2, v12, Lcom/market2345/model/FileFromPC;->filePath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 89
    new-instance v11, Ljava/io/File;

    iget-object v2, v12, Lcom/market2345/model/FileFromPC;->filePath:Ljava/lang/String;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v11, "f":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/datacenter/FileRecieverFromPC;->files:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 98
    :cond_1
    iget v2, v12, Lcom/market2345/model/FileFromPC;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 66
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "count":I
    .end local v11    # "f":Ljava/io/File;
    .end local v12    # "fp":Lcom/market2345/model/FileFromPC;
    .end local v14    # "id":I
    .end local v16    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "modify":I
    .end local v18    # "name":I
    .end local v19    # "path":I
    .end local v20    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 103
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v9    # "count":I
    .restart local v12    # "fp":Lcom/market2345/model/FileFromPC;
    .restart local v14    # "id":I
    .restart local v16    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17    # "modify":I
    .restart local v18    # "name":I
    .restart local v19    # "path":I
    .restart local v20    # "size":I
    :cond_2
    :try_start_2
    iget v2, v12, Lcom/market2345/model/FileFromPC;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    .end local v12    # "fp":Lcom/market2345/model/FileFromPC;
    :cond_3
    move-object/from16 v0, p0

    iput v9, v0, Lcom/market2345/datacenter/FileRecieverFromPC;->fileCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/datacenter/FileRecieverFromPC;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 116
    new-instance v10, Lcom/market2345/filebrowser/MediaBulkDeleter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/datacenter/FileRecieverFromPC;->context:Landroid/content/Context;

    sget-object v3, Lcom/market2345/common/util/MarketProvider;->RECEIVER_URL:Landroid/net/Uri;

    invoke-direct {v10, v2, v3}, Lcom/market2345/filebrowser/MediaBulkDeleter;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 117
    .local v10, "deleter":Lcom/market2345/filebrowser/MediaBulkDeleter;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 119
    .local v15, "ida":Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-virtual {v10, v2, v3, v4}, Lcom/market2345/filebrowser/MediaBulkDeleter;->delete(JLjava/lang/String;)V

    goto :goto_3

    .line 121
    .end local v15    # "ida":Ljava/lang/Integer;
    :cond_4
    invoke-virtual {v10}, Lcom/market2345/filebrowser/MediaBulkDeleter;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 111
    .end local v10    # "deleter":Lcom/market2345/filebrowser/MediaBulkDeleter;
    .end local v13    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method getFileCount()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/market2345/datacenter/FileRecieverFromPC;->fileCount:I

    return v0
.end method

.method declared-synchronized getFiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/FileFromPC;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/market2345/datacenter/FileRecieverFromPC;->files:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method init(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/market2345/datacenter/FileRecieverFromPC;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object p2, p0, Lcom/market2345/datacenter/FileRecieverFromPC;->context:Landroid/content/Context;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/datacenter/FileRecieverFromPC;->files:Ljava/util/ArrayList;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/datacenter/FileRecieverFromPC;->fileCount:I

    .line 38
    invoke-virtual {p0}, Lcom/market2345/datacenter/FileRecieverFromPC;->fillData()V

    .line 39
    new-instance v0, Lcom/market2345/datacenter/FileRecieverFromPC$1;

    iget-object v1, p0, Lcom/market2345/datacenter/FileRecieverFromPC;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/market2345/datacenter/FileRecieverFromPC$1;-><init>(Lcom/market2345/datacenter/FileRecieverFromPC;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/market2345/datacenter/FileRecieverFromPC;->mObserver:Landroid/database/ContentObserver;

    .line 46
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/market2345/common/util/MarketProvider;->RECEIVER_URL:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/market2345/datacenter/FileRecieverFromPC;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 47
    return-void
.end method

.method public setFiles(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/FileFromPC;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/FileFromPC;>;"
    iput-object p1, p0, Lcom/market2345/datacenter/FileRecieverFromPC;->files:Ljava/util/ArrayList;

    .line 62
    return-void
.end method
