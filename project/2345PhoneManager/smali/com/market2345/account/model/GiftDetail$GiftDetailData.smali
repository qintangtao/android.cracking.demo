.class public Lcom/market2345/account/model/GiftDetail$GiftDetailData;
.super Lcom/market2345/httpnew/BaseResponseData;
.source "GiftDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/account/model/GiftDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GiftDetailData"
.end annotation


# instance fields
.field public mGiftDetail:Lcom/market2345/account/model/GiftDetail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/market2345/httpnew/BaseResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public fill(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 27
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v1, Lcom/market2345/account/model/GiftDetail;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/account/model/GiftDetail;

    iput-object v1, p0, Lcom/market2345/account/model/GiftDetail$GiftDetailData;->mGiftDetail:Lcom/market2345/account/model/GiftDetail;

    .line 28
    return-void
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method
