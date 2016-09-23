.class Lcom/market2345/applist/HotRecommendListFragment$1;
.super Ljava/lang/Object;
.source "HotRecommendListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/applist/HotRecommendListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/applist/HotRecommendListFragment;


# direct methods
.method constructor <init>(Lcom/market2345/applist/HotRecommendListFragment;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/market2345/applist/HotRecommendListFragment$1;->this$0:Lcom/market2345/applist/HotRecommendListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/RecommendAd;

    .line 29
    .local v0, "ad":Lcom/market2345/model/RecommendAd;
    if-eqz v0, :cond_0

    .line 30
    iget-object v1, p0, Lcom/market2345/applist/HotRecommendListFragment$1;->this$0:Lcom/market2345/applist/HotRecommendListFragment;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/market2345/applist/HotRecommendListFragment$1;->this$0:Lcom/market2345/applist/HotRecommendListFragment;

    invoke-virtual {v3}, Lcom/market2345/applist/HotRecommendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/market2345/applist/activity/MoreRankListActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "title"

    iget-object v4, v0, Lcom/market2345/model/RecommendAd;->title:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    iget-object v4, v0, Lcom/market2345/model/RecommendAd;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "sort"

    iget v4, v0, Lcom/market2345/model/RecommendAd;->sort:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/market2345/applist/HotRecommendListFragment;->startActivity(Landroid/content/Intent;)V

    .line 35
    :cond_0
    return-void
.end method
