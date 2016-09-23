.class Lcom/market2345/datacenter/FileRecieverFromPC$2;
.super Ljava/lang/Object;
.source "FileRecieverFromPC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/datacenter/FileRecieverFromPC;->deleteFileById([I[Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/datacenter/FileRecieverFromPC;

.field final synthetic val$deleFile:Z

.field final synthetic val$files:[Ljava/lang/String;

.field final synthetic val$ids:[I


# direct methods
.method constructor <init>(Lcom/market2345/datacenter/FileRecieverFromPC;Z[Ljava/lang/String;[I)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/market2345/datacenter/FileRecieverFromPC$2;->this$0:Lcom/market2345/datacenter/FileRecieverFromPC;

    iput-boolean p2, p0, Lcom/market2345/datacenter/FileRecieverFromPC$2;->val$deleFile:Z

    iput-object p3, p0, Lcom/market2345/datacenter/FileRecieverFromPC$2;->val$files:[Ljava/lang/String;

    iput-object p4, p0, Lcom/market2345/datacenter/FileRecieverFromPC$2;->val$ids:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 132
    iget-boolean v7, p0, Lcom/market2345/datacenter/FileRecieverFromPC$2;->val$deleFile:Z

    if-eqz v7, :cond_2

    .line 134
    iget-object v0, p0, Lcom/market2345/datacenter/FileRecieverFromPC$2;->val$files:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v6, v0, v3

    .line 136
    .local v6, "path":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 134
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 143
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 147
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "path":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/market2345/filebrowser/MediaBulkDeleter;

    iget-object v7, p0, Lcom/market2345/datacenter/FileRecieverFromPC$2;->this$0:Lcom/market2345/datacenter/FileRecieverFromPC;

    iget-object v7, v7, Lcom/market2345/datacenter/FileRecieverFromPC;->context:Landroid/content/Context;

    sget-object v8, Lcom/market2345/common/util/MarketProvider;->RECEIVER_URL:Landroid/net/Uri;

    invoke-direct {v1, v7, v8}, Lcom/market2345/filebrowser/MediaBulkDeleter;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 148
    .local v1, "deleter":Lcom/market2345/filebrowser/MediaBulkDeleter;
    iget-object v0, p0, Lcom/market2345/datacenter/FileRecieverFromPC$2;->val$ids:[I

    .local v0, "arr$":[I
    array-length v5, v0

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v5, :cond_3

    aget v7, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 150
    .local v4, "ida":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v8, v7

    const/4 v7, 0x0

    invoke-virtual {v1, v8, v9, v7}, Lcom/market2345/filebrowser/MediaBulkDeleter;->delete(JLjava/lang/String;)V

    .line 148
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 152
    .end local v4    # "ida":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {v1}, Lcom/market2345/filebrowser/MediaBulkDeleter;->flush()V

    .line 153
    return-void
.end method
