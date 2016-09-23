.class public Lcom/market2345/detail/SubGiftFragment;
.super Lcom/market2345/account/gift/GiftListFragment;
.source "SubGiftFragment.java"


# static fields
.field public static final KEY_SOFT_ID:Ljava/lang/String; = "key.soft.id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/market2345/account/gift/GiftListFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/market2345/detail/SubGiftFragment;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/market2345/detail/SubGiftFragment;

    invoke-direct {v0}, Lcom/market2345/detail/SubGiftFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "http://zhushou.2345.com/index.php?c=giftApi&d=getListBySoft"

    return-object v0
.end method

.method protected getURLParams()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/market2345/detail/SubGiftFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 35
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 36
    const-string v2, "softId"

    const-string v3, "key.soft.id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    return-object v1
.end method

.method protected isIconEnabled()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method
