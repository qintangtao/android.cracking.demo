.class public Lcom/market2345/settings/SettingDelThread;
.super Ljava/lang/Thread;
.source "SettingDelThread.java"


# instance fields
.field private delItem:Lcom/market2345/settings/DelItem;


# direct methods
.method public constructor <init>(Lcom/market2345/settings/DelItem;)V
    .locals 0
    .param p1, "item"    # Lcom/market2345/settings/DelItem;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/market2345/settings/SettingDelThread;->delItem:Lcom/market2345/settings/DelItem;

    .line 12
    return-void
.end method

.method private delFiles(Ljava/io/File;)V
    .locals 7
    .param p1, "sub"    # Ljava/io/File;

    .prologue
    .line 41
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 43
    .local v2, "files":[Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 45
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 43
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    .end local v1    # "f":Ljava/io/File;
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 18
    iget-object v3, p0, Lcom/market2345/settings/SettingDelThread;->delItem:Lcom/market2345/settings/DelItem;

    if-eqz v3, :cond_1

    .line 20
    iget-object v3, p0, Lcom/market2345/settings/SettingDelThread;->delItem:Lcom/market2345/settings/DelItem;

    iget-object v3, v3, Lcom/market2345/settings/DelItem;->paths:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 22
    iget-object v3, p0, Lcom/market2345/settings/SettingDelThread;->delItem:Lcom/market2345/settings/DelItem;

    iget-object v3, v3, Lcom/market2345/settings/DelItem;->paths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 24
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .local v2, "sub":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    invoke-direct {p0, v2}, Lcom/market2345/settings/SettingDelThread;->delFiles(Ljava/io/File;)V

    goto :goto_0

    .line 33
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "sub":Ljava/io/File;
    :cond_1
    iget-object v3, p0, Lcom/market2345/settings/SettingDelThread;->delItem:Lcom/market2345/settings/DelItem;

    iget-object v3, v3, Lcom/market2345/settings/DelItem;->delHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    .line 35
    iget-object v3, p0, Lcom/market2345/settings/SettingDelThread;->delItem:Lcom/market2345/settings/DelItem;

    iget-object v3, v3, Lcom/market2345/settings/DelItem;->delHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/market2345/settings/SettingDelThread;->delItem:Lcom/market2345/settings/DelItem;

    iget v4, v4, Lcom/market2345/settings/DelItem;->type:I

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 37
    :cond_2
    return-void
.end method
