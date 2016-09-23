.class public Lcom/market2345/account/model/GiftList;
.super Lcom/market2345/model/BaseResponse;
.source "GiftList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/account/model/GiftList$GiftListData;
    }
.end annotation


# instance fields
.field public giftList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/account/model/GameGift;",
            ">;"
        }
    .end annotation
.end field

.field public pageinfo:Lcom/market2345/model/PageInfo;

.field public picList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/account/model/GameGiftBanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/market2345/model/BaseResponse;-><init>()V

    .line 21
    return-void
.end method
