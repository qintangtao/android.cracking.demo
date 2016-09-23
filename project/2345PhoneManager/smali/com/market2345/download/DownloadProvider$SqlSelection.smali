.class Lcom/market2345/download/DownloadProvider$SqlSelection;
.super Ljava/lang/Object;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/download/DownloadProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SqlSelection"
.end annotation


# instance fields
.field public mParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mWhereClause:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/market2345/download/DownloadProvider$SqlSelection;->mWhereClause:Ljava/lang/StringBuilder;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/download/DownloadProvider$SqlSelection;->mParameters:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/download/DownloadProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/download/DownloadProvider$1;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/market2345/download/DownloadProvider$SqlSelection;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs appendClause(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "newClause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, "parameters":[Ljava/lang/Object;, "[TT;"
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    :cond_0
    return-void

    .line 127
    :cond_1
    iget-object v4, p0, Lcom/market2345/download/DownloadProvider$SqlSelection;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 128
    iget-object v4, p0, Lcom/market2345/download/DownloadProvider$SqlSelection;->mWhereClause:Ljava/lang/StringBuilder;

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_2
    iget-object v4, p0, Lcom/market2345/download/DownloadProvider$SqlSelection;->mWhereClause:Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v4, p0, Lcom/market2345/download/DownloadProvider$SqlSelection;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v4, p0, Lcom/market2345/download/DownloadProvider$SqlSelection;->mWhereClause:Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    if-eqz p2, :cond_0

    .line 134
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 135
    .local v3, "parameter":Ljava/lang/Object;
    iget-object v4, p0, Lcom/market2345/download/DownloadProvider$SqlSelection;->mParameters:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getParameters()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lcom/market2345/download/DownloadProvider$SqlSelection;->mParameters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 146
    .local v0, "array":[Ljava/lang/String;
    iget-object v1, p0, Lcom/market2345/download/DownloadProvider$SqlSelection;->mParameters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/market2345/download/DownloadProvider$SqlSelection;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
