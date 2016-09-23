.class Lcom/market2345/account/gift/GiftDelegate$1;
.super Ljava/lang/Object;
.source "GiftDelegate.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/gift/GiftDelegate;->getGiftList(Ljava/lang/String;Ljava/util/HashMap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/gift/GiftDelegate;

.field final synthetic val$reload:Z

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market2345/account/gift/GiftDelegate;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/market2345/account/gift/GiftDelegate$1;->this$0:Lcom/market2345/account/gift/GiftDelegate;

    iput-object p2, p0, Lcom/market2345/account/gift/GiftDelegate$1;->val$url:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/market2345/account/gift/GiftDelegate$1;->val$reload:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/market2345/httpnew/ResponseCluster;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    .line 61
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_0

    move-object v1, p2

    .line 62
    check-cast v1, Lcom/market2345/account/model/GiftList$GiftListData;

    .line 63
    .local v1, "giftListData":Lcom/market2345/account/model/GiftList$GiftListData;
    new-instance v0, Lcom/market2345/account/gift/event/HttpSuccessEvent;

    invoke-direct {v0}, Lcom/market2345/account/gift/event/HttpSuccessEvent;-><init>()V

    .line 64
    .local v0, "event":Lcom/market2345/account/gift/event/HttpSuccessEvent;
    iget-object v2, p0, Lcom/market2345/account/gift/GiftDelegate$1;->val$url:Ljava/lang/String;

    iput-object v2, v0, Lcom/market2345/account/gift/event/HttpSuccessEvent;->mUrl:Ljava/lang/String;

    .line 65
    iput-object v1, v0, Lcom/market2345/account/gift/event/HttpSuccessEvent;->mData:Ljava/lang/Object;

    .line 66
    iput p1, v0, Lcom/market2345/account/gift/event/HttpSuccessEvent;->mResponseCode:I

    .line 67
    iget-boolean v2, p0, Lcom/market2345/account/gift/GiftDelegate$1;->val$reload:Z

    iput-boolean v2, v0, Lcom/market2345/account/gift/event/HttpSuccessEvent;->mReload:Z

    .line 68
    iget-object v2, p0, Lcom/market2345/account/gift/GiftDelegate$1;->this$0:Lcom/market2345/account/gift/GiftDelegate;

    # getter for: Lcom/market2345/account/gift/GiftDelegate;->mEventBus:Lde/greenrobot/event/EventBus;
    invoke-static {v2}, Lcom/market2345/account/gift/GiftDelegate;->access$000(Lcom/market2345/account/gift/GiftDelegate;)Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 77
    .end local v0    # "event":Lcom/market2345/account/gift/event/HttpSuccessEvent;
    .end local v1    # "giftListData":Lcom/market2345/account/model/GiftList$GiftListData;
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v0, Lcom/market2345/account/gift/event/HttpFailureEvent;

    invoke-direct {v0}, Lcom/market2345/account/gift/event/HttpFailureEvent;-><init>()V

    .line 72
    .local v0, "event":Lcom/market2345/account/gift/event/HttpFailureEvent;
    iget-object v2, p0, Lcom/market2345/account/gift/GiftDelegate$1;->val$url:Ljava/lang/String;

    iput-object v2, v0, Lcom/market2345/account/gift/event/HttpFailureEvent;->mUrl:Ljava/lang/String;

    .line 73
    iput p1, v0, Lcom/market2345/account/gift/event/HttpFailureEvent;->mResponseCode:I

    .line 74
    iget-boolean v2, p0, Lcom/market2345/account/gift/GiftDelegate$1;->val$reload:Z

    iput-boolean v2, v0, Lcom/market2345/account/gift/event/HttpFailureEvent;->mReload:Z

    .line 75
    iget-object v2, p0, Lcom/market2345/account/gift/GiftDelegate$1;->this$0:Lcom/market2345/account/gift/GiftDelegate;

    # getter for: Lcom/market2345/account/gift/GiftDelegate;->mEventBus:Lde/greenrobot/event/EventBus;
    invoke-static {v2}, Lcom/market2345/account/gift/GiftDelegate;->access$000(Lcom/market2345/account/gift/GiftDelegate;)Lde/greenrobot/event/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method
