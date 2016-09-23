.class Lcom/market2345/applist/SpecialListFragment$3;
.super Ljava/lang/Object;
.source "SpecialListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/applist/SpecialListFragment;->createHeaderView()Landroid/view/View;
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
    .line 119
    iput-object p1, p0, Lcom/market2345/applist/SpecialListFragment$3;->this$0:Lcom/market2345/applist/SpecialListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/market2345/applist/SpecialListFragment$3;->this$0:Lcom/market2345/applist/SpecialListFragment;

    invoke-virtual {v0}, Lcom/market2345/applist/SpecialListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Main_Remen"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/market2345/applist/SpecialListFragment$3;->this$0:Lcom/market2345/applist/SpecialListFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/market2345/applist/SpecialListFragment$3;->this$0:Lcom/market2345/applist/SpecialListFragment;

    invoke-virtual {v2}, Lcom/market2345/applist/SpecialListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/market2345/lm/activity/FastinstallActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/market2345/applist/SpecialListFragment;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void
.end method
