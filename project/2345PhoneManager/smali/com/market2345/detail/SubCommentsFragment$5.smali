.class Lcom/market2345/detail/SubCommentsFragment$5;
.super Ljava/lang/Object;
.source "SubCommentsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/detail/SubCommentsFragment;->initCheckListener1111()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/detail/SubCommentsFragment;


# direct methods
.method constructor <init>(Lcom/market2345/detail/SubCommentsFragment;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/market2345/detail/SubCommentsFragment$5;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 298
    if-eqz p2, :cond_0

    .line 299
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 301
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 319
    :goto_0
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment$5;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # invokes: Lcom/market2345/detail/SubCommentsFragment;->getCurrentCommentListDataNew()Lcom/market2345/detail/model/CommentListDataNew;
    invoke-static {v1}, Lcom/market2345/detail/SubCommentsFragment;->access$100(Lcom/market2345/detail/SubCommentsFragment;)Lcom/market2345/detail/model/CommentListDataNew;

    move-result-object v1

    iget v1, v1, Lcom/market2345/detail/model/CommentListDataNew;->currentPage:I

    if-nez v1, :cond_1

    .line 320
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment$5;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    iget-object v2, p0, Lcom/market2345/detail/SubCommentsFragment$5;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->currentType:I
    invoke-static {v2}, Lcom/market2345/detail/SubCommentsFragment;->access$000(Lcom/market2345/detail/SubCommentsFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/market2345/detail/SubCommentsFragment$5;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # invokes: Lcom/market2345/detail/SubCommentsFragment;->getCurrentCommentListDataNew()Lcom/market2345/detail/model/CommentListDataNew;
    invoke-static {v3}, Lcom/market2345/detail/SubCommentsFragment;->access$100(Lcom/market2345/detail/SubCommentsFragment;)Lcom/market2345/detail/model/CommentListDataNew;

    move-result-object v3

    iget v3, v3, Lcom/market2345/detail/model/CommentListDataNew;->currentPage:I

    add-int/lit8 v3, v3, 0x1

    # invokes: Lcom/market2345/detail/SubCommentsFragment;->loadData(II)V
    invoke-static {v1, v2, v3}, Lcom/market2345/detail/SubCommentsFragment;->access$200(Lcom/market2345/detail/SubCommentsFragment;II)V

    .line 327
    .end local v0    # "id":I
    :cond_0
    :goto_1
    return-void

    .line 303
    .restart local v0    # "id":I
    :pswitch_0
    const-string v1, "gogogogogo"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment$5;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # setter for: Lcom/market2345/detail/SubCommentsFragment;->currentType:I
    invoke-static {v1, v6}, Lcom/market2345/detail/SubCommentsFragment;->access$002(Lcom/market2345/detail/SubCommentsFragment;I)I

    goto :goto_0

    .line 307
    :pswitch_1
    const-string v1, "gogogogogo"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment$5;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # setter for: Lcom/market2345/detail/SubCommentsFragment;->currentType:I
    invoke-static {v1, v3}, Lcom/market2345/detail/SubCommentsFragment;->access$002(Lcom/market2345/detail/SubCommentsFragment;I)I

    goto :goto_0

    .line 311
    :pswitch_2
    const-string v1, "gogogogogo"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment$5;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # setter for: Lcom/market2345/detail/SubCommentsFragment;->currentType:I
    invoke-static {v1, v4}, Lcom/market2345/detail/SubCommentsFragment;->access$002(Lcom/market2345/detail/SubCommentsFragment;I)I

    goto :goto_0

    .line 315
    :pswitch_3
    const-string v1, "gogogogogo"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment$5;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # setter for: Lcom/market2345/detail/SubCommentsFragment;->currentType:I
    invoke-static {v1, v5}, Lcom/market2345/detail/SubCommentsFragment;->access$002(Lcom/market2345/detail/SubCommentsFragment;I)I

    goto :goto_0

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment$5;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # invokes: Lcom/market2345/detail/SubCommentsFragment;->showComments()V
    invoke-static {v1}, Lcom/market2345/detail/SubCommentsFragment;->access$400(Lcom/market2345/detail/SubCommentsFragment;)V

    goto :goto_1

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x7f090135
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
