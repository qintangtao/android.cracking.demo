.class public Lcom/market2345/account/model/GiftCode$GiftCodeData;
.super Lcom/market2345/httpnew/BaseResponseData;
.source "GiftCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/account/model/GiftCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GiftCodeData"
.end annotation


# instance fields
.field public mGiftCode:Lcom/market2345/account/model/GiftCode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
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
    .line 44
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 45
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v1, Lcom/market2345/account/model/GiftCode;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/account/model/GiftCode;

    iput-object v1, p0, Lcom/market2345/account/model/GiftCode$GiftCodeData;->mGiftCode:Lcom/market2345/account/model/GiftCode;

    .line 46
    return-void
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method
