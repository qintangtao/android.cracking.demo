.class final Lcom/market2345/lm/util/FileUtils$1;
.super Ljava/lang/Thread;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/lm/util/FileUtils;->copy2SdCard(Landroid/content/Context;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$apks:[Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/market2345/lm/util/FileUtils$1;->val$apks:[Ljava/lang/String;

    iput-object p2, p0, Lcom/market2345/lm/util/FileUtils$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/market2345/lm/util/FileUtils$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/market2345/lm/util/FileUtils$1;->val$apks:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v0, v1, v6

    .line 60
    .local v0, "apk":Ljava/lang/String;
    iget-object v10, p0, Lcom/market2345/lm/util/FileUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 61
    .local v7, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/File;

    iget-object v10, p0, Lcom/market2345/lm/util/FileUtils$1;->val$file:Ljava/io/File;

    invoke-direct {v4, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .local v4, "file1":Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 63
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/16 v10, 0x2000

    new-array v2, v10, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .local v2, "buffer":[B
    :goto_1
    :try_start_1
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .local v9, "read":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 69
    const/4 v10, 0x0

    invoke-virtual {v5, v2, v10, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 74
    .end local v9    # "read":I
    :catchall_0
    move-exception v10

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 75
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 76
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    throw v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    .end local v0    # "apk":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "buffer":[B
    .end local v4    # "file1":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "i$":I
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "len$":I
    :catch_0
    move-exception v3

    .line 82
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    iget-object v10, p0, Lcom/market2345/lm/util/FileUtils$1;->val$file:Ljava/io/File;

    invoke-static {v10}, Lcom/market2345/lm/util/FileUtils;->deleteDir(Ljava/io/File;)V

    .line 85
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    return-void

    .line 74
    .restart local v0    # "apk":Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "buffer":[B
    .restart local v4    # "file1":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "i$":I
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "len$":I
    .restart local v9    # "read":I
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 75
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 76
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 58
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
