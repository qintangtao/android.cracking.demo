.class public Lcom/market2345/account/gift/PrivateCenterThreeGiftFragment;
.super Lcom/market2345/account/gift/GiftListFragment;
.source "PrivateCenterThreeGiftFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/market2345/account/gift/GiftListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "http://zhushou.2345.com/index.php?c=giftApi&d=getTjList"

    return-object v0
.end method
