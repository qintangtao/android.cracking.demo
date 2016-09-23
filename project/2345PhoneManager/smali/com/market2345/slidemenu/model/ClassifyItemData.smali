.class public Lcom/market2345/slidemenu/model/ClassifyItemData;
.super Ljava/lang/Object;
.source "ClassifyItemData.java"


# instance fields
.field public iconUrl:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public sid:Ljava/lang/String;

.field public tag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/market2345/slidemenu/model/ClassifyItemData;->isHot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyItemData;->sid:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    const-string v0, "soft"

    iput-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyItemData;->type:Ljava/lang/String;

    .line 40
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyItemData;->type:Ljava/lang/String;

    return-object v0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyItemData;->sid:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "game"

    iput-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyItemData;->type:Ljava/lang/String;

    goto :goto_0
.end method

.method public isHot()Z
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/market2345/slidemenu/model/ClassifyItemData;->sid:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
