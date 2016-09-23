.class Lcom/market2345/applist/AppListFragmentSpecial$5;
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
    .line 209
    iput-object p1, p0, Lcom/market2345/applist/AppListFragmentSpecial$5;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial$5;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v0, v0, Lcom/market2345/applist/AppListFragmentSpecial;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial$5;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v0, v0, Lcom/market2345/applist/AppListFragmentSpecial;->mNoData:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial$5;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    # invokes: Lcom/market2345/applist/AppListFragmentSpecial;->loadData()V
    invoke-static {v0}, Lcom/market2345/applist/AppListFragmentSpecial;->access$000(Lcom/market2345/applist/AppListFragmentSpecial;)V

    .line 216
    return-void
.end method
