.class Lcom/market2345/detail/SubCommentsFragment$7;
.super Ljava/lang/Object;
.source "SubCommentsFragment.java"

# interfaces
.implements Lcom/market2345/detail/SelectDialogFragment$OnSelectedListener;


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
    .line 379
    iput-object p1, p0, Lcom/market2345/detail/SubCommentsFragment$7;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 2
    .param p1, "buttonId"    # I

    .prologue
    .line 382
    packed-switch p1, :pswitch_data_0

    .line 393
    :goto_0
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$7;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->btnCommentCommit:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/market2345/detail/SubCommentsFragment;->access$1300(Lcom/market2345/detail/SubCommentsFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 394
    return-void

    .line 384
    :pswitch_0
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$7;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->rgCommentType:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/market2345/detail/SubCommentsFragment;->access$500(Lcom/market2345/detail/SubCommentsFragment;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0903b1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 387
    :pswitch_1
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$7;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->rgCommentType:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/market2345/detail/SubCommentsFragment;->access$500(Lcom/market2345/detail/SubCommentsFragment;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0903b2

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 390
    :pswitch_2
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$7;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->rgCommentType:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/market2345/detail/SubCommentsFragment;->access$500(Lcom/market2345/detail/SubCommentsFragment;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f0903b3

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x7f090108
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
