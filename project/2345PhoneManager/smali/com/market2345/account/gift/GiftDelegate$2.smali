.class Lcom/market2345/account/gift/GiftDelegate$2;
.super Ljava/lang/Object;
.source "GiftDelegate.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/gift/GiftDelegate;->getGiftDetail(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/gift/GiftDelegate;


# direct methods
.method constructor <init>(Lcom/market2345/account/gift/GiftDelegate;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/market2345/account/gift/GiftDelegate$2;->this$0:Lcom/market2345/account/gift/GiftDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/market2345/httpnew/ResponseCluster;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    .line 109
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_0

    move-object v0, p2

    .line 110
    check-cast v0, Lcom/market2345/account/model/GiftDetail$GiftDetailData;

    .line 111
    .local v0, "detailData":Lcom/market2345/account/model/GiftDetail$GiftDetailData;
    new-instance v1, Lcom/market2345/account/gift/event/HttpSuccessEvent;

    invoke-direct {v1}, Lcom/market2345/account/gift/event/HttpSuccessEvent;-><init>()V

    .line 112
    .local v1, "event":Lcom/market2345/account/gift/event/HttpSuccessEvent;
    const-string v2, "http://zhushou.2345.com/index.php?c=giftApi&d=getInfo"

    iput-object v2, v1, Lcom/market2345/account/gift/event/HttpSuccessEvent;->mUrl:Ljava/lang/String;

    .line 113
    iget-object v2, v0, Lcom/market2345/account/model/GiftDetail$GiftDetailData;->mGiftDetail:Lcom/market2345/account/model/GiftDetail;

    iget-object v2, v2, Lcom/market2345/account/model/GiftDetail;->info:Lcom/market2345/account/model/GiftDetailInfo;

    iput-object v2, v1, Lcom/market2345/account/gift/event/HttpSuccessEvent;->mData:Ljava/lang/Object;

    .line 114
    iput p1, v1, Lcom/market2345/account/gift/event/HttpSuccessEvent;->mResponseCode:I

    .line 116
    iget-object v2, p0, Lcom/market2345/account/gift/GiftDelegate$2;->this$0:Lcom/market2345/account/gift/GiftDelegate;

    # getter for: Lcom/market2345/account/gift/GiftDelegate;->mEventBus:Lde/greenrobot/event/EventBus;
    invoke-static {v2}, Lcom/market2345/account/gift/GiftDelegate;->access$000(Lcom/market2345/account/gift/GiftDelegate;)Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 123
    .end local v0    # "detailData":Lcom/market2345/account/model/GiftDetail$GiftDetailData;
    .end local v1    # "event":Lcom/market2345/account/gift/event/HttpSuccessEvent;
    :goto_0
    return-void

    .line 118
    :cond_0
    new-instance v1, Lcom/market2345/account/gift/event/HttpFailureEvent;

    invoke-direct {v1}, Lcom/market2345/account/gift/event/HttpFailureEvent;-><init>()V

    .line 119
    .local v1, "event":Lcom/market2345/account/gift/event/HttpFailureEvent;
    const-string v2, "http://zhushou.2345.com/index.php?c=giftApi&d=getInfo"

    iput-object v2, v1, Lcom/market2345/account/gift/event/HttpFailureEvent;->mUrl:Ljava/lang/String;

    .line 120
    iput p1, v1, Lcom/market2345/account/gift/event/HttpFailureEvent;->mResponseCode:I

    .line 121
    iget-object v2, p0, Lcom/market2345/account/gift/GiftDelegate$2;->this$0:Lcom/market2345/account/gift/GiftDelegate;

    # getter for: Lcom/market2345/account/gift/GiftDelegate;->mEventBus:Lde/greenrobot/event/EventBus;
    invoke-static {v2}, Lcom/market2345/account/gift/GiftDelegate;->access$000(Lcom/market2345/account/gift/GiftDelegate;)Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method
