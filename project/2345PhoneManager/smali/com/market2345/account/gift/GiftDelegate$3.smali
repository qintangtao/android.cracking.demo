.class Lcom/market2345/account/gift/GiftDelegate$3;
.super Ljava/lang/Object;
.source "GiftDelegate.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/gift/GiftDelegate;->executeGetGiftCode(Lcom/market2345/account/model/GameGift;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/gift/GiftDelegate;

.field final synthetic val$gameGift:Lcom/market2345/account/model/GameGift;


# direct methods
.method constructor <init>(Lcom/market2345/account/gift/GiftDelegate;Lcom/market2345/account/model/GameGift;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/market2345/account/gift/GiftDelegate$3;->this$0:Lcom/market2345/account/gift/GiftDelegate;

    iput-object p2, p0, Lcom/market2345/account/gift/GiftDelegate$3;->val$gameGift:Lcom/market2345/account/model/GameGift;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/market2345/httpnew/ResponseCluster;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    .line 167
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_0

    move-object v1, p2

    .line 168
    check-cast v1, Lcom/market2345/account/model/GiftCode$GiftCodeData;

    .line 169
    .local v1, "giftCodeData":Lcom/market2345/account/model/GiftCode$GiftCodeData;
    new-instance v0, Lcom/market2345/account/gift/event/HttpSuccessEvent;

    invoke-direct {v0}, Lcom/market2345/account/gift/event/HttpSuccessEvent;-><init>()V

    .line 170
    .local v0, "event":Lcom/market2345/account/gift/event/HttpSuccessEvent;
    const-string v2, "http://zhushou.2345.com/index.php?c=giftApi&d=getGiftCode"

    iput-object v2, v0, Lcom/market2345/account/gift/event/HttpSuccessEvent;->mUrl:Ljava/lang/String;

    .line 171
    iget-object v2, v1, Lcom/market2345/account/model/GiftCode$GiftCodeData;->mGiftCode:Lcom/market2345/account/model/GiftCode;

    iput-object v2, v0, Lcom/market2345/account/gift/event/HttpSuccessEvent;->mData:Ljava/lang/Object;

    .line 172
    iput p1, v0, Lcom/market2345/account/gift/event/HttpSuccessEvent;->mResponseCode:I

    .line 173
    iget-object v2, p0, Lcom/market2345/account/gift/GiftDelegate$3;->val$gameGift:Lcom/market2345/account/model/GameGift;

    iput-object v2, v0, Lcom/market2345/account/gift/event/HttpSuccessEvent;->mGameGift:Lcom/market2345/account/model/GameGift;

    .line 174
    iget-object v2, p0, Lcom/market2345/account/gift/GiftDelegate$3;->this$0:Lcom/market2345/account/gift/GiftDelegate;

    # getter for: Lcom/market2345/account/gift/GiftDelegate;->mFrom:Ljava/lang/Class;
    invoke-static {v2}, Lcom/market2345/account/gift/GiftDelegate;->access$100(Lcom/market2345/account/gift/GiftDelegate;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lcom/market2345/account/gift/event/HttpSuccessEvent;->mFrom:Ljava/lang/Class;

    .line 175
    iget-object v2, p0, Lcom/market2345/account/gift/GiftDelegate$3;->this$0:Lcom/market2345/account/gift/GiftDelegate;

    # getter for: Lcom/market2345/account/gift/GiftDelegate;->mEventBus:Lde/greenrobot/event/EventBus;
    invoke-static {v2}, Lcom/market2345/account/gift/GiftDelegate;->access$000(Lcom/market2345/account/gift/GiftDelegate;)Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 183
    .end local v0    # "event":Lcom/market2345/account/gift/event/HttpSuccessEvent;
    .end local v1    # "giftCodeData":Lcom/market2345/account/model/GiftCode$GiftCodeData;
    :goto_0
    return-void

    .line 177
    :cond_0
    new-instance v0, Lcom/market2345/account/gift/event/HttpFailureEvent;

    invoke-direct {v0}, Lcom/market2345/account/gift/event/HttpFailureEvent;-><init>()V

    .line 178
    .local v0, "event":Lcom/market2345/account/gift/event/HttpFailureEvent;
    const-string v2, "http://zhushou.2345.com/index.php?c=giftApi&d=getGiftCode"

    iput-object v2, v0, Lcom/market2345/account/gift/event/HttpFailureEvent;->mUrl:Ljava/lang/String;

    .line 179
    iput p1, v0, Lcom/market2345/account/gift/event/HttpFailureEvent;->mResponseCode:I

    .line 180
    iget-object v2, p0, Lcom/market2345/account/gift/GiftDelegate$3;->this$0:Lcom/market2345/account/gift/GiftDelegate;

    # getter for: Lcom/market2345/account/gift/GiftDelegate;->mFrom:Ljava/lang/Class;
    invoke-static {v2}, Lcom/market2345/account/gift/GiftDelegate;->access$100(Lcom/market2345/account/gift/GiftDelegate;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lcom/market2345/account/gift/event/HttpFailureEvent;->mFrom:Ljava/lang/Class;

    .line 181
    iget-object v2, p0, Lcom/market2345/account/gift/GiftDelegate$3;->this$0:Lcom/market2345/account/gift/GiftDelegate;

    # getter for: Lcom/market2345/account/gift/GiftDelegate;->mEventBus:Lde/greenrobot/event/EventBus;
    invoke-static {v2}, Lcom/market2345/account/gift/GiftDelegate;->access$000(Lcom/market2345/account/gift/GiftDelegate;)Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method
