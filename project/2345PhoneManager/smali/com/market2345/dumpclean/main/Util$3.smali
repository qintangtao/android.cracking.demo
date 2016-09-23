.class final Lcom/market2345/dumpclean/main/Util$3;
.super Ljava/lang/Thread;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/main/Util;->asynchronousDeleteFolders(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$paths:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lcom/market2345/dumpclean/main/Util$3;->val$paths:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 371
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 372
    iget-object v8, p0, Lcom/market2345/dumpclean/main/Util$3;->val$paths:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 373
    .local v7, "path":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 374
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 376
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 377
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 379
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 380
    .local v5, "items":[Ljava/io/File;
    move-object v0, v5

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v4, v0, v3

    .line 381
    .local v4, "item":Ljava/io/File;
    invoke-static {v4}, Lcom/market2345/dumpclean/main/Util;->delete(Ljava/io/File;)V

    .line 380
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 383
    .end local v4    # "item":Ljava/io/File;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 390
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v5    # "items":[Ljava/io/File;
    .end local v6    # "len$":I
    .end local v7    # "path":Ljava/lang/String;
    :cond_3
    return-void
.end method
