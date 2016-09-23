.class Lcom/market2345/search/SearchDialogFragment$14;
.super Ljava/lang/Object;
.source "SearchDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/search/SearchDialogFragment;
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
    .line 1049
    iput-object p1, p0, Lcom/market2345/search/SearchDialogFragment$14;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1052
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1053
    .local v0, "expand":Z
    if-nez v0, :cond_0

    move v0, v2

    .line 1054
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1055
    const v1, 0x7f09000e

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1064
    :goto_1
    return-void

    :cond_0
    move v0, v3

    .line 1053
    goto :goto_0

    .line 1057
    :pswitch_0
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$14;->this$0:Lcom/market2345/search/SearchDialogFragment;

    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$14;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mSoftClassifyList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/market2345/search/SearchDialogFragment;->access$2500(Lcom/market2345/search/SearchDialogFragment;)Ljava/util/ArrayList;

    move-result-object v2

    # invokes: Lcom/market2345/search/SearchDialogFragment;->fillClassifyItem(Ljava/util/ArrayList;IZ)V
    invoke-static {v1, v2, v3, v0}, Lcom/market2345/search/SearchDialogFragment;->access$2600(Lcom/market2345/search/SearchDialogFragment;Ljava/util/ArrayList;IZ)V

    goto :goto_1

    .line 1060
    :pswitch_1
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$14;->this$0:Lcom/market2345/search/SearchDialogFragment;

    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment$14;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mGameClassifyList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/market2345/search/SearchDialogFragment;->access$2700(Lcom/market2345/search/SearchDialogFragment;)Ljava/util/ArrayList;

    move-result-object v3

    # invokes: Lcom/market2345/search/SearchDialogFragment;->fillClassifyItem(Ljava/util/ArrayList;IZ)V
    invoke-static {v1, v3, v2, v0}, Lcom/market2345/search/SearchDialogFragment;->access$2600(Lcom/market2345/search/SearchDialogFragment;Ljava/util/ArrayList;IZ)V

    goto :goto_1

    .line 1055
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
