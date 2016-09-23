.class public Lcom/market2345/clearStrategy/ClearDbDownloader;
.super Ljava/lang/Object;
.source "ClearDbDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/clearStrategy/ClearDbDownloader$ClearDbDownloadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClearDbDownloader"


# instance fields
.field clearDbDownloadListener:Lcom/market2345/clearStrategy/ClearDbDownloader$ClearDbDownloadListener;

.field private mContext:Landroid/content/Context;

.field private tempFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/market2345/clearStrategy/ClearDbDownloader;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/market2345/clearStrategy/ClearDbDownloader;->getTmpFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/clearStrategy/ClearDbDownloader;->tempFile:Ljava/io/File;

    .line 40
    return-void
.end method

.method private downloadClearDb(Ljava/lang/String;Ljava/io/File;)Z
    .locals 17
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "tempFile"    # Ljava/io/File;

    .prologue
    .line 67
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x8

    if-ge v12, v13, :cond_5

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 69
    .local v2, "client":Lorg/apache/http/client/HttpClient;
    :goto_0
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 70
    .local v7, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    const/4 v8, 0x0

    .line 71
    .local v8, "inputStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 72
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 74
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-interface {v2, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 75
    .local v10, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 76
    .local v11, "statusCode":I
    const/16 v12, 0xc8

    if-ne v11, v12, :cond_b

    .line 77
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 78
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 80
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/market2345/clearStrategy/ClearDbDownloader;->tempFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 81
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/market2345/clearStrategy/ClearDbDownloader;->tempFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 83
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/market2345/clearStrategy/ClearDbDownloader;->tempFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 84
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/market2345/clearStrategy/ClearDbDownloader;->tempFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 85
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/market2345/clearStrategy/ClearDbDownloader;->tempFile:Ljava/io/File;

    invoke-direct {v6, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/16 v12, 0x1fa0

    :try_start_1
    new-array v1, v12, [B

    .line 87
    .local v1, "buf":[B
    const/4 v9, -0x1

    .line 88
    .local v9, "read":I
    :goto_1
    invoke-virtual {v8, v1}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v12, -0x1

    if-eq v9, v12, :cond_6

    .line 89
    const/4 v12, 0x0

    invoke-virtual {v6, v1, v12, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_11
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 95
    .end local v1    # "buf":[B
    .end local v9    # "read":I
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 96
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    .end local v11    # "statusCode":I
    .local v3, "e":Ljava/io/IOException;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    const-string v12, "ClearDbDownloader"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "IOException--->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/market2345/messages/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    if-eqz v4, :cond_1

    .line 102
    :try_start_3
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 106
    :cond_1
    :goto_3
    if-eqz v8, :cond_2

    .line 108
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 112
    :cond_2
    :goto_4
    if-eqz v5, :cond_3

    .line 114
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    .line 118
    :cond_3
    :goto_5
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 119
    instance-of v12, v2, Landroid/net/http/AndroidHttpClient;

    if-eqz v12, :cond_4

    .line 120
    check-cast v2, Landroid/net/http/AndroidHttpClient;

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 123
    .end local v3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_6
    const/4 v12, 0x0

    :goto_7
    return v12

    .line 67
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v8    # "inputStream":Ljava/io/InputStream;
    :cond_5
    const-string v12, "Android"

    invoke-static {v12}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v2

    goto/16 :goto_0

    .line 91
    .restart local v1    # "buf":[B
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "read":I
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    .restart local v11    # "statusCode":I
    :cond_6
    const/4 v12, 0x1

    .line 100
    if-eqz v4, :cond_7

    .line 102
    :try_start_6
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 106
    :cond_7
    :goto_8
    if-eqz v8, :cond_8

    .line 108
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 112
    :cond_8
    :goto_9
    if-eqz v6, :cond_9

    .line 114
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 118
    :cond_9
    :goto_a
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 119
    instance-of v13, v2, Landroid/net/http/AndroidHttpClient;

    if-eqz v13, :cond_a

    .line 120
    check-cast v2, Landroid/net/http/AndroidHttpClient;

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_a
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 93
    .end local v1    # "buf":[B
    .end local v9    # "read":I
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    :cond_b
    :try_start_9
    const-string v12, "ClearDbDownloader"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "statusCode--->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/market2345/messages/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 100
    if-eqz v4, :cond_c

    .line 102
    :try_start_a
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 106
    :cond_c
    :goto_b
    if-eqz v8, :cond_d

    .line 108
    :try_start_b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 112
    :cond_d
    :goto_c
    if-eqz v5, :cond_e

    .line 114
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 118
    :cond_e
    :goto_d
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 119
    instance-of v12, v2, Landroid/net/http/AndroidHttpClient;

    if-eqz v12, :cond_4

    .line 120
    check-cast v2, Landroid/net/http/AndroidHttpClient;

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    goto :goto_6

    .line 97
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    .end local v11    # "statusCode":I
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    :catch_1
    move-exception v3

    .line 98
    .local v3, "e":Ljava/lang/Exception;
    :goto_e
    :try_start_d
    const-string v12, "ClearDbDownloader"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception--->"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/market2345/messages/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 100
    if-eqz v4, :cond_f

    .line 102
    :try_start_e
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 106
    :cond_f
    :goto_f
    if-eqz v8, :cond_10

    .line 108
    :try_start_f
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    .line 112
    :cond_10
    :goto_10
    if-eqz v5, :cond_11

    .line 114
    :try_start_10
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 118
    :cond_11
    :goto_11
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 119
    instance-of v12, v2, Landroid/net/http/AndroidHttpClient;

    if-eqz v12, :cond_4

    .line 120
    check-cast v2, Landroid/net/http/AndroidHttpClient;

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_6

    .line 100
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    :catchall_0
    move-exception v12

    :goto_12
    if-eqz v4, :cond_12

    .line 102
    :try_start_11
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e

    .line 106
    :cond_12
    :goto_13
    if-eqz v8, :cond_13

    .line 108
    :try_start_12
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f

    .line 112
    :cond_13
    :goto_14
    if-eqz v5, :cond_14

    .line 114
    :try_start_13
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10

    .line 118
    :cond_14
    :goto_15
    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 119
    instance-of v13, v2, Landroid/net/http/AndroidHttpClient;

    if-eqz v13, :cond_15

    .line 120
    check-cast v2, Landroid/net/http/AndroidHttpClient;

    .end local v2    # "client":Lorg/apache/http/client/HttpClient;
    invoke-virtual {v2}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_15
    throw v12

    .line 103
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "buf":[B
    .restart local v2    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "read":I
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    .restart local v11    # "statusCode":I
    :catch_2
    move-exception v13

    goto/16 :goto_8

    .line 109
    :catch_3
    move-exception v13

    goto/16 :goto_9

    .line 115
    :catch_4
    move-exception v13

    goto/16 :goto_a

    .line 103
    .end local v1    # "buf":[B
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "read":I
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v12

    goto :goto_b

    .line 109
    :catch_6
    move-exception v12

    goto :goto_c

    .line 115
    :catch_7
    move-exception v12

    goto :goto_d

    .line 103
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    .end local v11    # "statusCode":I
    .local v3, "e":Ljava/io/IOException;
    :catch_8
    move-exception v12

    goto/16 :goto_3

    .line 109
    :catch_9
    move-exception v12

    goto/16 :goto_4

    .line 115
    :catch_a
    move-exception v12

    goto/16 :goto_5

    .line 103
    .local v3, "e":Ljava/lang/Exception;
    :catch_b
    move-exception v12

    goto :goto_f

    .line 109
    :catch_c
    move-exception v12

    goto :goto_10

    .line 115
    :catch_d
    move-exception v12

    goto :goto_11

    .line 103
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_e
    move-exception v13

    goto :goto_13

    .line 109
    :catch_f
    move-exception v13

    goto :goto_14

    .line 115
    :catch_10
    move-exception v13

    goto :goto_15

    .line 100
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    .restart local v11    # "statusCode":I
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_12

    .line 97
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_11
    move-exception v3

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_e

    .line 95
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    .end local v11    # "statusCode":I
    :catch_12
    move-exception v3

    goto/16 :goto_2
.end method

.method private getTmpFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/market2345/clearStrategy/ClearDbDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "temp.temp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public downloadDb(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "tempFile"    # Ljava/io/File;
    .param p3, "md5"    # Ljava/lang/String;

    .prologue
    .line 43
    if-eqz p2, :cond_0

    .line 44
    iput-object p2, p0, Lcom/market2345/clearStrategy/ClearDbDownloader;->tempFile:Ljava/io/File;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/market2345/clearStrategy/ClearDbDownloader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/market2345/common/util/NetworkUtils;->isWifiNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/market2345/clearStrategy/ClearDbDownloader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/market2345/util/SecurityAppInfo;->isEmulator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/market2345/clearStrategy/ClearDbDownloader;->downloadClearDb(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    iget-object v0, p0, Lcom/market2345/clearStrategy/ClearDbDownloader;->clearDbDownloadListener:Lcom/market2345/clearStrategy/ClearDbDownloader$ClearDbDownloadListener;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/market2345/clearStrategy/ClearDbDownloader;->clearDbDownloadListener:Lcom/market2345/clearStrategy/ClearDbDownloader$ClearDbDownloadListener;

    invoke-interface {v0, p2, p3}, Lcom/market2345/clearStrategy/ClearDbDownloader$ClearDbDownloadListener;->finish(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    :cond_2
    :goto_0
    return-void

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/market2345/clearStrategy/ClearDbDownloader;->clearDbDownloadListener:Lcom/market2345/clearStrategy/ClearDbDownloader$ClearDbDownloadListener;

    invoke-interface {v0}, Lcom/market2345/clearStrategy/ClearDbDownloader$ClearDbDownloadListener;->failed()V

    goto :goto_0
.end method

.method public setClearDbDownloadListener(Lcom/market2345/clearStrategy/ClearDbDownloader$ClearDbDownloadListener;)V
    .locals 0
    .param p1, "clearDbDownloadListener"    # Lcom/market2345/clearStrategy/ClearDbDownloader$ClearDbDownloadListener;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/market2345/clearStrategy/ClearDbDownloader;->clearDbDownloadListener:Lcom/market2345/clearStrategy/ClearDbDownloader$ClearDbDownloadListener;

    .line 35
    return-void
.end method
