.class final Lcom/market2345/dumpclean/main/Util$1;
.super Ljava/lang/Thread;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/main/Util;->asynchronousDeleteFolderNoContainOuterFolder(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/market2345/dumpclean/main/Util$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 324
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 325
    iget-object v5, p0, Lcom/market2345/dumpclean/main/Util$1;->val$file:Ljava/io/File;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/market2345/dumpclean/main/Util$1;->val$file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 326
    iget-object v5, p0, Lcom/market2345/dumpclean/main/Util$1;->val$file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 327
    iget-object v5, p0, Lcom/market2345/dumpclean/main/Util$1;->val$file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 335
    :cond_0
    return-void

    .line 329
    :cond_1
    iget-object v5, p0, Lcom/market2345/dumpclean/main/Util$1;->val$file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 330
    .local v3, "items":[Ljava/io/File;
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v0, v1

    .line 331
    .local v2, "item":Ljava/io/File;
    invoke-static {v2}, Lcom/market2345/dumpclean/main/Util;->delete(Ljava/io/File;)V

    .line 330
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
