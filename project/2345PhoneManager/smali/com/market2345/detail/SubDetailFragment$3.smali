.class Lcom/market2345/detail/SubDetailFragment$3;
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
    .line 537
    iput-object p1, p0, Lcom/market2345/detail/SubDetailFragment$3;->this$0:Lcom/market2345/detail/SubDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 541
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 542
    .local v3, "index":I
    iget-object v4, p0, Lcom/market2345/detail/SubDetailFragment$3;->this$0:Lcom/market2345/detail/SubDetailFragment;

    invoke-virtual {v4}, Lcom/market2345/detail/SubDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 543
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-static {}, Lcom/market2345/detail/ScreenDialogFragment;->newInstance()Lcom/market2345/detail/ScreenDialogFragment;

    move-result-object v1

    .line 544
    .local v1, "fragment":Landroid/support/v4/app/DialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 545
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "big_image_index"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 546
    const-string v4, "big_images_url"

    iget-object v5, p0, Lcom/market2345/detail/SubDetailFragment$3;->this$0:Lcom/market2345/detail/SubDetailFragment;

    # getter for: Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;
    invoke-static {v5}, Lcom/market2345/detail/SubDetailFragment;->access$300(Lcom/market2345/detail/SubDetailFragment;)Lcom/market2345/model/SingleAppResp;

    move-result-object v5

    iget-object v5, v5, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget-object v5, v5, Lcom/market2345/model/App;->bigimgInfo:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 547
    const-string v4, "small_images_url"

    iget-object v5, p0, Lcom/market2345/detail/SubDetailFragment$3;->this$0:Lcom/market2345/detail/SubDetailFragment;

    # getter for: Lcom/market2345/detail/SubDetailFragment;->appDetail:Lcom/market2345/model/SingleAppResp;
    invoke-static {v5}, Lcom/market2345/detail/SubDetailFragment;->access$300(Lcom/market2345/detail/SubDetailFragment;)Lcom/market2345/model/SingleAppResp;

    move-result-object v5

    iget-object v5, v5, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget-object v5, v5, Lcom/market2345/model/App;->smallimgInfo:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 548
    invoke-virtual {v1, v0}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 549
    const-string v4, "dialog"

    invoke-virtual {v1, v2, v4}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 550
    return-void
.end method
