.class Lcom/market2345/applist/AppListFragment$4;
.super Ljava/lang/Object;
.source "AppListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/applist/AppListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/applist/AppListFragment;


# direct methods
.method constructor <init>(Lcom/market2345/applist/AppListFragment;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/market2345/applist/AppListFragment$4;->this$0:Lcom/market2345/applist/AppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment$4;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v0, v0, Lcom/market2345/applist/AppListFragment;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment$4;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v0, v0, Lcom/market2345/applist/AppListFragment;->mNoData:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment$4;->this$0:Lcom/market2345/applist/AppListFragment;

    # invokes: Lcom/market2345/applist/AppListFragment;->loadData()V
    invoke-static {v0}, Lcom/market2345/applist/AppListFragment;->access$000(Lcom/market2345/applist/AppListFragment;)V

    .line 195
    return-void
.end method
