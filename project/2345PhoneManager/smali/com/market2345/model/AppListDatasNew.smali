.class public Lcom/market2345/model/AppListDatasNew;
.super Lcom/market2345/httpnew/BaseResponseData;
.source "AppListDatasNew.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/model/AppListDatasNew$SortComparator;
    }
.end annotation


# instance fields
.field private datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation
.end field

.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/AppNew;",
            ">;"
        }
    .end annotation
.end field

.field public pageAppString:Ljava/lang/String;

.field public pageinfo:Lcom/market2345/model/PageInfo;

.field public response:Lcom/market2345/model/ResponseInfo;

.field public topic:Lcom/market2345/model/Topic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/market2345/httpnew/BaseResponseData;-><init>()V

    .line 101
    return-void
.end method

.method private sort(Ljava/util/List;)[Lcom/market2345/model/AppNew;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/model/AppNew;",
            ">;)[",
            "Lcom/market2345/model/AppNew;"
        }
    .end annotation

    .prologue
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/AppNew;>;"
    const/4 v7, 0x0

    .line 76
    if-nez p1, :cond_1

    .line 77
    const/4 v1, 0x0

    .line 98
    :cond_0
    return-object v1

    .line 78
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v4, "noFixData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/AppNew;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 80
    .local v5, "size":I
    new-array v1, v5, [Lcom/market2345/model/AppNew;

    .line 81
    .local v1, "apps":[Lcom/market2345/model/AppNew;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 82
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/AppNew;

    .line 83
    .local v0, "ap":Lcom/market2345/model/AppNew;
    invoke-virtual {v0}, Lcom/market2345/model/AppNew;->isFixed()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 84
    aput-object v0, v1, v3

    .line 81
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    .end local v0    # "ap":Lcom/market2345/model/AppNew;
    :cond_3
    new-instance v2, Lcom/market2345/model/AppListDatasNew$SortComparator;

    invoke-direct {v2, p0}, Lcom/market2345/model/AppListDatasNew$SortComparator;-><init>(Lcom/market2345/model/AppListDatasNew;)V

    .line 90
    .local v2, "comparator":Lcom/market2345/model/AppListDatasNew$SortComparator;
    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 91
    const/4 v3, 0x0

    :goto_2
    array-length v6, v1

    if-ge v3, v6, :cond_0

    .line 92
    aget-object v6, v1, v3

    if-nez v6, :cond_4

    .line 94
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/market2345/model/AppNew;

    aput-object v6, v1, v3

    .line 95
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 91
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method


# virtual methods
.method public fill(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 39
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v2, Lcom/market2345/model/AppListDatasNew;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/AppListDatasNew;

    .line 40
    .local v0, "datas":Lcom/market2345/model/AppListDatasNew;
    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v2, v0, Lcom/market2345/model/AppListDatasNew;->response:Lcom/market2345/model/ResponseInfo;

    iput-object v2, p0, Lcom/market2345/model/AppListDatasNew;->response:Lcom/market2345/model/ResponseInfo;

    .line 44
    iget-object v2, v0, Lcom/market2345/model/AppListDatasNew;->pageinfo:Lcom/market2345/model/PageInfo;

    iput-object v2, p0, Lcom/market2345/model/AppListDatasNew;->pageinfo:Lcom/market2345/model/PageInfo;

    .line 45
    iget-object v2, v0, Lcom/market2345/model/AppListDatasNew;->list:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/market2345/model/AppListDatasNew;->list:Ljava/util/ArrayList;

    .line 46
    iget-object v2, v0, Lcom/market2345/model/AppListDatasNew;->topic:Lcom/market2345/model/Topic;

    iput-object v2, p0, Lcom/market2345/model/AppListDatasNew;->topic:Lcom/market2345/model/Topic;

    .line 47
    iput-object p1, p0, Lcom/market2345/model/AppListDatasNew;->pageAppString:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasMore()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 29
    iget-object v1, p0, Lcom/market2345/model/AppListDatasNew;->pageinfo:Lcom/market2345/model/PageInfo;

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/market2345/model/AppListDatasNew;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v1, v1, Lcom/market2345/model/PageInfo;->page:I

    iget-object v2, p0, Lcom/market2345/model/AppListDatasNew;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v2, v2, Lcom/market2345/model/PageInfo;->pagecount:I

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    .line 32
    :cond_0
    return v0
.end method

.method public sort()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xa

    .line 51
    iget-object v5, p0, Lcom/market2345/model/AppListDatasNew;->datas:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 52
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/market2345/model/AppListDatasNew;->datas:Ljava/util/ArrayList;

    .line 53
    :cond_0
    iget-object v5, p0, Lcom/market2345/model/AppListDatasNew;->datas:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 54
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v4, "listClone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/AppNew;>;"
    iget-object v5, p0, Lcom/market2345/model/AppListDatasNew;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    iget-object v5, p0, Lcom/market2345/model/AppListDatasNew;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v5, v5, Lcom/market2345/model/PageInfo;->page:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 58
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v7, :cond_2

    .line 59
    invoke-virtual {v4, v8, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 60
    .local v0, "aPart":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/AppNew;>;"
    invoke-direct {p0, v0}, Lcom/market2345/model/AppListDatasNew;->sort(Ljava/util/List;)[Lcom/market2345/model/AppNew;

    move-result-object v1

    .line 61
    .local v1, "appsApart":[Lcom/market2345/model/AppNew;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    .line 62
    iget-object v5, p0, Lcom/market2345/model/AppListDatasNew;->datas:Ljava/util/ArrayList;

    aget-object v6, v1, v3

    invoke-virtual {v6}, Lcom/market2345/model/AppNew;->changeApp()Lcom/market2345/model/App;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v4, v8, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 67
    .end local v0    # "aPart":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/AppNew;>;"
    .end local v1    # "appsApart":[Lcom/market2345/model/AppNew;
    .end local v3    # "i":I
    :cond_2
    invoke-direct {p0, v4}, Lcom/market2345/model/AppListDatasNew;->sort(Ljava/util/List;)[Lcom/market2345/model/AppNew;

    move-result-object v2

    .line 68
    .local v2, "appsClone":[Lcom/market2345/model/AppNew;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_3

    .line 69
    iget-object v5, p0, Lcom/market2345/model/AppListDatasNew;->datas:Ljava/util/ArrayList;

    aget-object v6, v2, v3

    invoke-virtual {v6}, Lcom/market2345/model/AppNew;->changeApp()Lcom/market2345/model/App;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 72
    :cond_3
    iget-object v5, p0, Lcom/market2345/model/AppListDatasNew;->datas:Ljava/util/ArrayList;

    return-object v5
.end method
