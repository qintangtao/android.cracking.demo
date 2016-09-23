.class Lcom/market2345/applist/SpecialListFragment$1;
.super Ljava/lang/Object;
.source "SpecialListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/applist/SpecialListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/applist/SpecialListFragment;


# direct methods
.method constructor <init>(Lcom/market2345/applist/SpecialListFragment;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/market2345/applist/SpecialListFragment$1;->this$0:Lcom/market2345/applist/SpecialListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/RecommendAd;

    .line 38
    .local v0, "ad":Lcom/market2345/model/RecommendAd;
    if-eqz v0, :cond_0

    .line 39
    iget v1, v0, Lcom/market2345/model/RecommendAd;->position:I

    packed-switch v1, :pswitch_data_0

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/market2345/applist/SpecialListFragment$1;->this$0:Lcom/market2345/applist/SpecialListFragment;

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/market2345/applist/activity/WonderfulFoundActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "title"

    iget-object v4, v0, Lcom/market2345/model/RecommendAd;->title:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "type"

    iget-object v4, v0, Lcom/market2345/model/RecommendAd;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/market2345/applist/SpecialListFragment;->startActivity(Landroid/content/Intent;)V

    .line 59
    :cond_0
    return-void

    .line 41
    :pswitch_0
    iget-object v1, p0, Lcom/market2345/applist/SpecialListFragment$1;->this$0:Lcom/market2345/applist/SpecialListFragment;

    invoke-virtual {v1}, Lcom/market2345/applist/SpecialListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Main_LiBao"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :pswitch_1
    iget-object v1, p0, Lcom/market2345/applist/SpecialListFragment$1;->this$0:Lcom/market2345/applist/SpecialListFragment;

    invoke-virtual {v1}, Lcom/market2345/applist/SpecialListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Main_Nvsheng"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :pswitch_2
    iget-object v1, p0, Lcom/market2345/applist/SpecialListFragment$1;->this$0:Lcom/market2345/applist/SpecialListFragment;

    invoke-virtual {v1}, Lcom/market2345/applist/SpecialListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Main_Changxian"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :pswitch_3
    iget-object v1, p0, Lcom/market2345/applist/SpecialListFragment$1;->this$0:Lcom/market2345/applist/SpecialListFragment;

    invoke-virtual {v1}, Lcom/market2345/applist/SpecialListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Main_Bibei"

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
