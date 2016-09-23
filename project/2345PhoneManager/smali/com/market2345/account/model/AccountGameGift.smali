.class public Lcom/market2345/account/model/AccountGameGift;
.super Lcom/market2345/account/model/GameGift;
.source "AccountGameGift.java"


# instance fields
.field private gift:Lcom/market2345/account/model/GameGift;

.field private giftCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/market2345/account/model/GameGift;)V
    .locals 0
    .param p1, "gameGift"    # Lcom/market2345/account/model/GameGift;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/market2345/account/model/GameGift;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/market2345/account/model/AccountGameGift;->gift:Lcom/market2345/account/model/GameGift;

    .line 12
    return-void
.end method


# virtual methods
.method public getGiftCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/market2345/account/model/AccountGameGift;->giftCode:Ljava/lang/String;

    return-object v0
.end method

.method public setGiftCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "giftCode"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/market2345/account/model/AccountGameGift;->giftCode:Ljava/lang/String;

    .line 20
    return-void
.end method
