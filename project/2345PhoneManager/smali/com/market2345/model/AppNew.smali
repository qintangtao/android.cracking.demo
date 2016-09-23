.class public Lcom/market2345/model/AppNew;
.super Ljava/lang/Object;
.source "AppNew.java"


# instance fields
.field private currentApp:Lcom/market2345/model/App;

.field public fixed:I

.field public index:I

.field public softList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation
.end field

.field public sort:I

.field public weight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeApp()Lcom/market2345/model/App;
    .locals 3

    .prologue
    .line 29
    iget-object v1, p0, Lcom/market2345/model/AppNew;->softList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 30
    const/4 v1, 0x0

    .line 36
    :goto_0
    return-object v1

    .line 31
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 32
    .local v0, "ran":Ljava/util/Random;
    iget-object v1, p0, Lcom/market2345/model/AppNew;->softList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/market2345/model/AppNew;->softList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/model/App;

    iput-object v1, p0, Lcom/market2345/model/AppNew;->currentApp:Lcom/market2345/model/App;

    .line 33
    iget-object v1, p0, Lcom/market2345/model/AppNew;->currentApp:Lcom/market2345/model/App;

    iget v2, p0, Lcom/market2345/model/AppNew;->sort:I

    iput v2, v1, Lcom/market2345/model/App;->sort:I

    .line 34
    iget-object v1, p0, Lcom/market2345/model/AppNew;->currentApp:Lcom/market2345/model/App;

    iget v2, p0, Lcom/market2345/model/AppNew;->weight:I

    iput v2, v1, Lcom/market2345/model/App;->weight:I

    .line 35
    iget-object v1, p0, Lcom/market2345/model/AppNew;->currentApp:Lcom/market2345/model/App;

    iget v2, p0, Lcom/market2345/model/AppNew;->fixed:I

    iput v2, v1, Lcom/market2345/model/App;->fixed:I

    .line 36
    iget-object v1, p0, Lcom/market2345/model/AppNew;->currentApp:Lcom/market2345/model/App;

    goto :goto_0
.end method

.method public getCurrentApp()Lcom/market2345/model/App;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/market2345/model/AppNew;->currentApp:Lcom/market2345/model/App;

    return-object v0
.end method

.method public isFixed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 21
    iget v1, p0, Lcom/market2345/model/AppNew;->fixed:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
