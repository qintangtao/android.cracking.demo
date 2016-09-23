.class Lcom/market2345/search/SearchDialogFragment$5;
.super Ljava/lang/Object;
.source "SearchDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/search/SearchDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 387
    iput-object p1, p0, Lcom/market2345/search/SearchDialogFragment$5;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 392
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 394
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$5;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mResultView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/market2345/search/SearchDialogFragment;->access$800(Lcom/market2345/search/SearchDialogFragment;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$5;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mResultView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/market2345/search/SearchDialogFragment;->access$800(Lcom/market2345/search/SearchDialogFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$5;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;
    invoke-static {v1}, Lcom/market2345/search/SearchDialogFragment;->access$300(Lcom/market2345/search/SearchDialogFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$5;->this$0:Lcom/market2345/search/SearchDialogFragment;

    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$5;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;
    invoke-static {v2}, Lcom/market2345/search/SearchDialogFragment;->access$300(Lcom/market2345/search/SearchDialogFragment;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment$5;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mActionViews:[Landroid/view/View;
    invoke-static {v3}, Lcom/market2345/search/SearchDialogFragment;->access$400(Lcom/market2345/search/SearchDialogFragment;)[Landroid/view/View;

    move-result-object v3

    # invokes: Lcom/market2345/search/SearchDialogFragment;->showSingleView(Landroid/view/View;[Landroid/view/View;)V
    invoke-static {v1, v2, v3}, Lcom/market2345/search/SearchDialogFragment;->access$500(Lcom/market2345/search/SearchDialogFragment;Landroid/view/View;[Landroid/view/View;)V

    .line 406
    :goto_0
    return v0

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$5;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mLoading:Landroid/view/View;
    invoke-static {v1}, Lcom/market2345/search/SearchDialogFragment;->access$900(Lcom/market2345/search/SearchDialogFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$5;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mLoading:Landroid/view/View;
    invoke-static {v1}, Lcom/market2345/search/SearchDialogFragment;->access$900(Lcom/market2345/search/SearchDialogFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$5;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mShowResult:Z
    invoke-static {v1}, Lcom/market2345/search/SearchDialogFragment;->access$1000(Lcom/market2345/search/SearchDialogFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$5;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;
    invoke-static {v1}, Lcom/market2345/search/SearchDialogFragment;->access$300(Lcom/market2345/search/SearchDialogFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$5;->this$0:Lcom/market2345/search/SearchDialogFragment;

    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$5;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;
    invoke-static {v2}, Lcom/market2345/search/SearchDialogFragment;->access$300(Lcom/market2345/search/SearchDialogFragment;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment$5;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mActionViews:[Landroid/view/View;
    invoke-static {v3}, Lcom/market2345/search/SearchDialogFragment;->access$400(Lcom/market2345/search/SearchDialogFragment;)[Landroid/view/View;

    move-result-object v3

    # invokes: Lcom/market2345/search/SearchDialogFragment;->showSingleView(Landroid/view/View;[Landroid/view/View;)V
    invoke-static {v1, v2, v3}, Lcom/market2345/search/SearchDialogFragment;->access$500(Lcom/market2345/search/SearchDialogFragment;Landroid/view/View;[Landroid/view/View;)V

    goto :goto_0

    .line 406
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
