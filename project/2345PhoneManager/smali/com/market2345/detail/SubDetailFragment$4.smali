.class Lcom/market2345/detail/SubDetailFragment$4;
.super Ljava/lang/Object;
.source "SubDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/detail/SubDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/detail/SubDetailFragment;


# direct methods
.method constructor <init>(Lcom/market2345/detail/SubDetailFragment;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/market2345/detail/SubDetailFragment$4;->this$0:Lcom/market2345/detail/SubDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 557
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 558
    .local v1, "tag":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment$4;->this$0:Lcom/market2345/detail/SubDetailFragment;

    invoke-virtual {v2}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/market2345/applist/AppListActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 559
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment$4;->this$0:Lcom/market2345/detail/SubDetailFragment;

    invoke-virtual {v2, v0}, Lcom/market2345/detail/SubDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 561
    iget-object v2, p0, Lcom/market2345/detail/SubDetailFragment$4;->this$0:Lcom/market2345/detail/SubDetailFragment;

    invoke-virtual {v2}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 562
    return-void
.end method
