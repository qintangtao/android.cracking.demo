.class Lcom/market2345/applist/AppListFragment$3;
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
    .line 163
    iput-object p1, p0, Lcom/market2345/applist/AppListFragment$3;->this$0:Lcom/market2345/applist/AppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 167
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment$3;->this$0:Lcom/market2345/applist/AppListFragment;

    invoke-virtual {v0}, Lcom/market2345/applist/AppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment$3;->this$0:Lcom/market2345/applist/AppListFragment;

    invoke-virtual {v0}, Lcom/market2345/applist/AppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b00ed

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 175
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment$3;->this$0:Lcom/market2345/applist/AppListFragment;

    # invokes: Lcom/market2345/applist/AppListFragment;->loadData()V
    invoke-static {v0}, Lcom/market2345/applist/AppListFragment;->access$000(Lcom/market2345/applist/AppListFragment;)V

    .line 173
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment$3;->this$0:Lcom/market2345/applist/AppListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/market2345/applist/AppListFragment;->changeVisiable(IIII)V

    goto :goto_0
.end method
