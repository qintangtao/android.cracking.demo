.class public Lcom/market2345/filebrowser/MediaBulkDeleter;
.super Ljava/lang/Object;
.source "MediaBulkDeleter.java"


# instance fields
.field context:Landroid/content/Context;

.field files:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBaseUri:Landroid/net/Uri;

.field whereArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field whereClause:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseUri"    # Landroid/net/Uri;

    .prologue
    const/16 v1, 0x64

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/market2345/filebrowser/MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/market2345/filebrowser/MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/market2345/filebrowser/MediaBulkDeleter;->files:Ljava/util/ArrayList;

    .line 30
    iput-object p2, p0, Lcom/market2345/filebrowser/MediaBulkDeleter;->mBaseUri:Landroid/net/Uri;

    .line 31
    iput-object p1, p0, Lcom/market2345/filebrowser/MediaBulkDeleter;->context:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public delete(JLjava/lang/String;)V
    .locals 3
    .param p1, "id"    # J
    .param p3, "file"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/market2345/filebrowser/MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/market2345/filebrowser/MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v0, p0, Lcom/market2345/filebrowser/MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/market2345/filebrowser/MediaBulkDeleter;->files:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/market2345/filebrowser/MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/market2345/filebrowser/MediaBulkDeleter;->flush()V

    .line 47
    :cond_1
    return-void
.end method

.method public flush()V
    .locals 9

    .prologue
    .line 51
    iget-object v5, p0, Lcom/market2345/filebrowser/MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 52
    .local v4, "size":I
    if-lez v4, :cond_3

    .line 54
    new-array v2, v4, [Ljava/lang/String;

    .line 55
    .local v2, "foo":[Ljava/lang/String;
    iget-object v5, p0, Lcom/market2345/filebrowser/MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "foo":[Ljava/lang/String;
    check-cast v2, [Ljava/lang/String;

    .line 56
    .restart local v2    # "foo":[Ljava/lang/String;
    iget-object v5, p0, Lcom/market2345/filebrowser/MediaBulkDeleter;->mBaseUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    .line 58
    iget-object v5, p0, Lcom/market2345/filebrowser/MediaBulkDeleter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/market2345/filebrowser/MediaBulkDeleter;->mBaseUri:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id IN ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/market2345/filebrowser/MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 60
    :cond_0
    iget-object v5, p0, Lcom/market2345/filebrowser/MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 61
    iget-object v5, p0, Lcom/market2345/filebrowser/MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 62
    iget-object v5, p0, Lcom/market2345/filebrowser/MediaBulkDeleter;->files:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 64
    .local v1, "file":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 68
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 74
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "file":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/market2345/filebrowser/MediaBulkDeleter;->files:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 76
    .end local v2    # "foo":[Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method
