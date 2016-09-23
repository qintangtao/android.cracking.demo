.class Lcom/market2345/detail/SubCommentsFragment$6;
.super Ljava/lang/Object;
.source "SubCommentsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 329
    iput-object p1, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 376
    :goto_0
    return-void

    .line 334
    :pswitch_0
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->rgCommentType:Landroid/widget/RadioGroup;
    invoke-static {v0}, Lcom/market2345/detail/SubCommentsFragment;->access$500(Lcom/market2345/detail/SubCommentsFragment;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 335
    new-instance v10, Lcom/market2345/detail/SelectDialogFragment;

    invoke-direct {v10}, Lcom/market2345/detail/SelectDialogFragment;-><init>()V

    .line 336
    .local v10, "f":Lcom/market2345/detail/SelectDialogFragment;
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->selectedListener:Lcom/market2345/detail/SelectDialogFragment$OnSelectedListener;
    invoke-static {v0}, Lcom/market2345/detail/SubCommentsFragment;->access$600(Lcom/market2345/detail/SubCommentsFragment;)Lcom/market2345/detail/SelectDialogFragment$OnSelectedListener;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/market2345/detail/SelectDialogFragment;->setSelectedListener(Lcom/market2345/detail/SelectDialogFragment$OnSelectedListener;)V

    .line 337
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    invoke-virtual {v0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "SelectDialogFragment"

    invoke-virtual {v10, v0, v1}, Lcom/market2345/detail/SelectDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 341
    .end local v10    # "f":Lcom/market2345/detail/SelectDialogFragment;
    :cond_0
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->etCommentContent:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/market2345/detail/SubCommentsFragment;->access$700(Lcom/market2345/detail/SubCommentsFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 342
    .local v7, "comment":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # invokes: Lcom/market2345/detail/SubCommentsFragment;->getComment()Ljava/lang/String;
    invoke-static {v0}, Lcom/market2345/detail/SubCommentsFragment;->access$800(Lcom/market2345/detail/SubCommentsFragment;)Ljava/lang/String;

    move-result-object v7

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    invoke-virtual {v0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodManager;

    .line 347
    .local v11, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->etCommentContent:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/market2345/detail/SubCommentsFragment;->access$700(Lcom/market2345/detail/SubCommentsFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v11, v0, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 351
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 352
    .local v8, "curMill":J
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    invoke-virtual {v0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->sid:I
    invoke-static {v1}, Lcom/market2345/detail/SubCommentsFragment;->access$900(Lcom/market2345/detail/SubCommentsFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/market2345/util/SPUtil;->getLatestCommentTime(Landroid/content/Context;I)J

    move-result-wide v0

    sub-long v0, v8, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 353
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    invoke-virtual {v0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    const v2, 0x7f0b0100

    invoke-virtual {v1, v2}, Lcom/market2345/detail/SubCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    invoke-virtual {v0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->sid:I
    invoke-static {v1}, Lcom/market2345/detail/SubCommentsFragment;->access$900(Lcom/market2345/detail/SubCommentsFragment;)I

    move-result v1

    invoke-static {v0, v8, v9, v1}, Lcom/market2345/util/SPUtil;->setLatestCommentTime(Landroid/content/Context;JI)V

    .line 359
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    new-instance v1, Lcom/market2345/model/CommentDetailInfo;

    invoke-direct {v1}, Lcom/market2345/model/CommentDetailInfo;-><init>()V

    # setter for: Lcom/market2345/detail/SubCommentsFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;
    invoke-static {v0, v1}, Lcom/market2345/detail/SubCommentsFragment;->access$1002(Lcom/market2345/detail/SubCommentsFragment;Lcom/market2345/model/CommentDetailInfo;)Lcom/market2345/model/CommentDetailInfo;

    .line 360
    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    invoke-virtual {v1}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market2345/account/model/Account;->isLocalExisted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 361
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;
    invoke-static {v0}, Lcom/market2345/detail/SubCommentsFragment;->access$1000(Lcom/market2345/detail/SubCommentsFragment;)Lcom/market2345/model/CommentDetailInfo;

    move-result-object v0

    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    invoke-virtual {v3}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market2345/account/model/Account;->getUserInfo(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market2345/model/CommentDetailInfo;->uname:Ljava/lang/String;

    .line 366
    :goto_1
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;
    invoke-static {v0}, Lcom/market2345/detail/SubCommentsFragment;->access$1000(Lcom/market2345/detail/SubCommentsFragment;)Lcom/market2345/model/CommentDetailInfo;

    move-result-object v0

    iput-object v7, v0, Lcom/market2345/model/CommentDetailInfo;->comment:Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;
    invoke-static {v0}, Lcom/market2345/detail/SubCommentsFragment;->access$1000(Lcom/market2345/detail/SubCommentsFragment;)Lcom/market2345/model/CommentDetailInfo;

    move-result-object v0

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-static {v8, v9, v1}, Lcom/market2345/common/util/DateFormatUtils;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market2345/model/CommentDetailInfo;->date:Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;
    invoke-static {v0}, Lcom/market2345/detail/SubCommentsFragment;->access$1000(Lcom/market2345/detail/SubCommentsFragment;)Lcom/market2345/model/CommentDetailInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # invokes: Lcom/market2345/detail/SubCommentsFragment;->getCommentMark()I
    invoke-static {v1}, Lcom/market2345/detail/SubCommentsFragment;->access$1100(Lcom/market2345/detail/SubCommentsFragment;)I

    move-result v1

    iput v1, v0, Lcom/market2345/model/CommentDetailInfo;->mark:I

    .line 369
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;
    invoke-static {v0}, Lcom/market2345/detail/SubCommentsFragment;->access$1000(Lcom/market2345/detail/SubCommentsFragment;)Lcom/market2345/model/CommentDetailInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/market2345/model/CommentDetailInfo;->child:Lcom/market2345/model/CommentDetailInfo;

    .line 370
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    invoke-virtual {v0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    iget-object v2, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;
    invoke-static {v2}, Lcom/market2345/detail/SubCommentsFragment;->access$1000(Lcom/market2345/detail/SubCommentsFragment;)Lcom/market2345/model/CommentDetailInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/market2345/model/CommentDetailInfo;->comment:Ljava/lang/String;

    iget-object v3, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;
    invoke-static {v3}, Lcom/market2345/detail/SubCommentsFragment;->access$1000(Lcom/market2345/detail/SubCommentsFragment;)Lcom/market2345/model/CommentDetailInfo;

    move-result-object v3

    iget v3, v3, Lcom/market2345/model/CommentDetailInfo;->mark:I

    iget-object v4, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->sid:I
    invoke-static {v4}, Lcom/market2345/detail/SubCommentsFragment;->access$900(Lcom/market2345/detail/SubCommentsFragment;)I

    move-result v4

    iget-object v5, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;
    invoke-static {v5}, Lcom/market2345/detail/SubCommentsFragment;->access$1000(Lcom/market2345/detail/SubCommentsFragment;)Lcom/market2345/model/CommentDetailInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/market2345/model/CommentDetailInfo;->uname:Ljava/lang/String;

    iget-object v6, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->mhander:Landroid/os/Handler;
    invoke-static {v6}, Lcom/market2345/detail/SubCommentsFragment;->access$1200(Lcom/market2345/detail/SubCommentsFragment;)Landroid/os/Handler;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/market2345/http/MarketAPI;->commitComment(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;Ljava/lang/String;IILjava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 363
    :cond_4
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;
    invoke-static {v0}, Lcom/market2345/detail/SubCommentsFragment;->access$1000(Lcom/market2345/detail/SubCommentsFragment;)Lcom/market2345/model/CommentDetailInfo;

    move-result-object v0

    const-string v1, ""

    iput-object v1, v0, Lcom/market2345/model/CommentDetailInfo;->uname:Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->currentCommentDetailInfo:Lcom/market2345/model/CommentDetailInfo;
    invoke-static {v0}, Lcom/market2345/detail/SubCommentsFragment;->access$1000(Lcom/market2345/detail/SubCommentsFragment;)Lcom/market2345/model/CommentDetailInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment$6;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    const v2, 0x7f0b00b6

    invoke-virtual {v1, v2}, Lcom/market2345/detail/SubCommentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market2345/model/CommentDetailInfo;->name:Ljava/lang/String;

    goto :goto_1

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x7f090106
        :pswitch_0
    .end packed-switch
.end method
