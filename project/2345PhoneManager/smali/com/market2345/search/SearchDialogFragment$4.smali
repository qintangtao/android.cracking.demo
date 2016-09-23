.class Lcom/market2345/search/SearchDialogFragment$4;
.super Ljava/lang/Object;
.source "SearchDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/search/SearchDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/search/SearchDialogFragment;


# direct methods
.method constructor <init>(Lcom/market2345/search/SearchDialogFragment;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/market2345/search/SearchDialogFragment$4;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment$4;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # invokes: Lcom/market2345/search/SearchDialogFragment;->searchEvent()V
    invoke-static {v0}, Lcom/market2345/search/SearchDialogFragment;->access$100(Lcom/market2345/search/SearchDialogFragment;)V

    .line 327
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment$4;->this$0:Lcom/market2345/search/SearchDialogFragment;

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$4;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/market2345/search/SearchDialogFragment;->access$000(Lcom/market2345/search/SearchDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    # invokes: Lcom/market2345/search/SearchDialogFragment;->startSearch(Landroid/widget/EditText;)V
    invoke-static {v0, v1}, Lcom/market2345/search/SearchDialogFragment;->access$200(Lcom/market2345/search/SearchDialogFragment;Landroid/widget/EditText;)V

    .line 328
    return-void
.end method
