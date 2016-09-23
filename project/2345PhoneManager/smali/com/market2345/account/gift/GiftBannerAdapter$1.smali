.class Lcom/market2345/account/gift/GiftBannerAdapter$1;
.super Ljava/lang/Object;
.source "GiftBannerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/gift/GiftBannerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/gift/GiftBannerAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/market2345/account/gift/GiftBannerAdapter;I)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/market2345/account/gift/GiftBannerAdapter$1;->this$0:Lcom/market2345/account/gift/GiftBannerAdapter;

    iput p2, p0, Lcom/market2345/account/gift/GiftBannerAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v5, 0x10000000

    .line 85
    iget-object v2, p0, Lcom/market2345/account/gift/GiftBannerAdapter$1;->this$0:Lcom/market2345/account/gift/GiftBannerAdapter;

    # getter for: Lcom/market2345/account/gift/GiftBannerAdapter;->mBanners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/market2345/account/gift/GiftBannerAdapter;->access$100(Lcom/market2345/account/gift/GiftBannerAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/account/gift/GiftBannerAdapter$1;->this$0:Lcom/market2345/account/gift/GiftBannerAdapter;

    iget v4, p0, Lcom/market2345/account/gift/GiftBannerAdapter$1;->val$position:I

    # invokes: Lcom/market2345/account/gift/GiftBannerAdapter;->getPosition(I)I
    invoke-static {v3, v4}, Lcom/market2345/account/gift/GiftBannerAdapter;->access$000(Lcom/market2345/account/gift/GiftBannerAdapter;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/account/model/GameGiftBanner;

    .line 86
    .local v0, "banner":Lcom/market2345/account/model/GameGiftBanner;
    iget-object v2, v0, Lcom/market2345/account/model/GameGiftBanner;->target:Lcom/market2345/account/model/GameGiftBanner$TargetGame;

    iget-object v2, v2, Lcom/market2345/account/model/GameGiftBanner$TargetGame;->soft:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/market2345/account/gift/GiftDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "key.gift.id"

    iget-object v3, v0, Lcom/market2345/account/model/GameGiftBanner;->target:Lcom/market2345/account/model/GameGiftBanner$TargetGame;

    iget-object v3, v3, Lcom/market2345/account/model/GameGiftBanner$TargetGame;->gift:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v2, "key.soft.id"

    iget-object v3, v0, Lcom/market2345/account/model/GameGiftBanner;->target:Lcom/market2345/account/model/GameGiftBanner$TargetGame;

    iget-object v3, v3, Lcom/market2345/account/model/GameGiftBanner$TargetGame;->soft:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    iget-object v2, p0, Lcom/market2345/account/gift/GiftBannerAdapter$1;->this$0:Lcom/market2345/account/gift/GiftBannerAdapter;

    # getter for: Lcom/market2345/account/gift/GiftBannerAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/market2345/account/gift/GiftBannerAdapter;->access$200(Lcom/market2345/account/gift/GiftBannerAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    :goto_0
    return-void

    .line 94
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/market2345/account/gift/GiftBannerAdapter$1;->this$0:Lcom/market2345/account/gift/GiftBannerAdapter;

    # getter for: Lcom/market2345/account/gift/GiftBannerAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/market2345/account/gift/GiftBannerAdapter;->access$200(Lcom/market2345/account/gift/GiftBannerAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/market2345/detail/DetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "sid"

    iget-object v3, v0, Lcom/market2345/account/model/GameGiftBanner;->target:Lcom/market2345/account/model/GameGiftBanner$TargetGame;

    iget-object v3, v3, Lcom/market2345/account/model/GameGiftBanner$TargetGame;->soft:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string v2, "tabItem"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    iget-object v2, p0, Lcom/market2345/account/gift/GiftBannerAdapter$1;->this$0:Lcom/market2345/account/gift/GiftBannerAdapter;

    # getter for: Lcom/market2345/account/gift/GiftBannerAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/market2345/account/gift/GiftBannerAdapter;->access$200(Lcom/market2345/account/gift/GiftBannerAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
