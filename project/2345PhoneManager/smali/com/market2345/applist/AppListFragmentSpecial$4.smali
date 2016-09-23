.class Lcom/market2345/applist/AppListFragmentSpecial$4;
.super Ljava/lang/Object;
.source "AppListFragmentSpecial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/applist/AppListFragmentSpecial;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/applist/AppListFragmentSpecial;


# direct methods
.method constructor <init>(Lcom/market2345/applist/AppListFragmentSpecial;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/market2345/applist/AppListFragmentSpecial$4;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial$4;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    invoke-virtual {v0}, Lcom/market2345/applist/AppListFragmentSpecial;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial$4;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    invoke-virtual {v0}, Lcom/market2345/applist/AppListFragmentSpecial;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b00ed

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 194
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial$4;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    # invokes: Lcom/market2345/applist/AppListFragmentSpecial;->loadData()V
    invoke-static {v0}, Lcom/market2345/applist/AppListFragmentSpecial;->access$000(Lcom/market2345/applist/AppListFragmentSpecial;)V

    .line 192
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial$4;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/market2345/applist/AppListFragmentSpecial;->changeVisiable(IIII)V

    goto :goto_0
.end method
