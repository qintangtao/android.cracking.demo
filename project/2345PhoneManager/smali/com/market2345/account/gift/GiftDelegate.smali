.class public Lcom/market2345/account/gift/GiftDelegate;
.super Ljava/lang/Object;
.source "GiftDelegate.java"


# instance fields
.field private mEventBus:Lde/greenrobot/event/EventBus;

.field private mFrom:Ljava/lang/Class;

.field private mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .param p1, "from"    # Ljava/lang/Class;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/account/gift/GiftDelegate;->mEventBus:Lde/greenrobot/event/EventBus;

    .line 43
    iput-object p1, p0, Lcom/market2345/account/gift/GiftDelegate;->mFrom:Ljava/lang/Class;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/account/gift/GiftDelegate;)Lde/greenrobot/event/EventBus;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/account/gift/GiftDelegate;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/market2345/account/gift/GiftDelegate;->mEventBus:Lde/greenrobot/event/EventBus;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/account/gift/GiftDelegate;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/account/gift/GiftDelegate;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/market2345/account/gift/GiftDelegate;->mFrom:Ljava/lang/Class;

    return-object v0
.end method

.method private executeGetGiftCode(Lcom/market2345/account/model/GameGift;)V
    .locals 6
    .param p1, "gameGift"    # Lcom/market2345/account/model/GameGift;

    .prologue
    .line 159
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v1, "http://zhushou.2345.com/index.php?c=giftApi&d=getGiftCode"

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "softId"

    iget-object v3, p1, Lcom/market2345/account/model/GameGift;->softId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "giftId"

    iget-object v3, p1, Lcom/market2345/account/model/GameGift;->giftId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "uid"

    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/market2345/account/model/Account;->getUserInfo(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    new-instance v2, Lcom/market2345/account/gift/GiftDelegate$3;

    invoke-direct {v2, p0, p1}, Lcom/market2345/account/gift/GiftDelegate$3;-><init>(Lcom/market2345/account/gift/GiftDelegate;Lcom/market2345/account/model/GameGift;)V

    invoke-virtual {v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setCallback(Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-class v2, Lcom/market2345/account/model/GiftCode$GiftCodeData;

    invoke-virtual {v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setParseTo(Ljava/lang/Class;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->build()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/account/gift/GiftDelegate;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    .line 185
    iget-object v1, p0, Lcom/market2345/account/gift/GiftDelegate;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v1}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    .line 186
    return-void
.end method


# virtual methods
.method public getGameGiftCode(Lcom/market2345/account/model/GameGift;)V
    .locals 2
    .param p1, "gameGift"    # Lcom/market2345/account/model/GameGift;

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDelegate;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    new-instance v0, Lcom/market2345/account/gift/event/DialogProgressEvent;

    invoke-direct {v0}, Lcom/market2345/account/gift/event/DialogProgressEvent;-><init>()V

    .line 142
    .local v0, "event":Lcom/market2345/account/gift/event/DialogProgressEvent;
    const/4 v1, 0x0

    iput v1, v0, Lcom/market2345/account/gift/event/DialogProgressEvent;->cmd:I

    .line 143
    iget-object v1, p0, Lcom/market2345/account/gift/GiftDelegate;->mFrom:Ljava/lang/Class;

    iput-object v1, v0, Lcom/market2345/account/gift/event/DialogProgressEvent;->mFrom:Ljava/lang/Class;

    .line 144
    iget-object v1, p0, Lcom/market2345/account/gift/GiftDelegate;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 145
    invoke-direct {p0, p1}, Lcom/market2345/account/gift/GiftDelegate;->executeGetGiftCode(Lcom/market2345/account/model/GameGift;)V

    .line 151
    .end local v0    # "event":Lcom/market2345/account/gift/event/DialogProgressEvent;
    :goto_0
    return-void

    .line 147
    :cond_0
    new-instance v0, Lcom/market2345/account/gift/event/UnLoginEvent;

    invoke-direct {v0}, Lcom/market2345/account/gift/event/UnLoginEvent;-><init>()V

    .line 148
    .local v0, "event":Lcom/market2345/account/gift/event/UnLoginEvent;
    iget-object v1, p0, Lcom/market2345/account/gift/GiftDelegate;->mFrom:Ljava/lang/Class;

    iput-object v1, v0, Lcom/market2345/account/gift/event/UnLoginEvent;->mFrom:Ljava/lang/Class;

    .line 149
    iget-object v1, p0, Lcom/market2345/account/gift/GiftDelegate;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getGiftDetail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "softId"    # Ljava/lang/String;
    .param p2, "giftId"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 103
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v2, "http://zhushou.2345.com/index.php?c=giftApi&d=getInfo"

    invoke-virtual {v0, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v2

    const-string v3, "softId"

    invoke-virtual {v2, v3, p1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v2

    const-string v3, "giftId"

    invoke-virtual {v2, v3, p2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v2

    new-instance v3, Lcom/market2345/account/gift/GiftDelegate$2;

    invoke-direct {v3, p0}, Lcom/market2345/account/gift/GiftDelegate$2;-><init>(Lcom/market2345/account/gift/GiftDelegate;)V

    invoke-virtual {v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setCallback(Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v2

    const-class v3, Lcom/market2345/account/model/GiftDetail$GiftDetailData;

    invoke-virtual {v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setParseTo(Ljava/lang/Class;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 125
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDelegate;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/market2345/account/model/Account;->getUserInfo(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "uid":Ljava/lang/String;
    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 129
    .end local v1    # "uid":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/market2345/httpnew/HttpTransactionBuilder;->build()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/account/gift/GiftDelegate;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    .line 130
    iget-object v2, p0, Lcom/market2345/account/gift/GiftDelegate;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v2}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    .line 131
    return-void
.end method

.method public getGiftList(Ljava/lang/String;Ljava/util/HashMap;Z)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "reload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 54
    iget-object v4, p0, Lcom/market2345/account/gift/GiftDelegate;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    if-eqz v4, :cond_0

    if-eqz p3, :cond_3

    .line 55
    :cond_0
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    invoke-virtual {v0, p1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v4

    const-string v5, "page"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setInitialPage(Ljava/lang/String;I)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v4

    new-instance v5, Lcom/market2345/account/gift/GiftDelegate$1;

    invoke-direct {v5, p0, p1, p3}, Lcom/market2345/account/gift/GiftDelegate$1;-><init>(Lcom/market2345/account/gift/GiftDelegate;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setCallback(Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v4

    const-class v5, Lcom/market2345/account/model/GiftList$GiftListData;

    invoke-virtual {v4, v5}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setParseTo(Ljava/lang/Class;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 79
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftDelegate;->isLogin()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/market2345/account/model/Account;->getUserInfo(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "uid":Ljava/lang/String;
    const-string v4, "uid"

    invoke-virtual {v0, v4, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 83
    .end local v3    # "uid":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 84
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 85
    .local v2, "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    goto :goto_0

    .line 88
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v0}, Lcom/market2345/httpnew/HttpTransactionBuilder;->build()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v4

    iput-object v4, p0, Lcom/market2345/account/gift/GiftDelegate;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    .line 90
    .end local v0    # "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    :cond_3
    iget-object v4, p0, Lcom/market2345/account/gift/GiftDelegate;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v4}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    .line 92
    :cond_4
    return-void
.end method

.method public getHttpTransaction()Lcom/market2345/httpnew/HttpTransaction;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/market2345/account/gift/GiftDelegate;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    return-object v0
.end method

.method public isLogin()Z
    .locals 2

    .prologue
    .line 195
    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v0

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market2345/account/model/Account;->isLocalExisted(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
