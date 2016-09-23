.class Lcom/market2345/detail/SubCommentsFragment$8;
.super Ljava/lang/Object;
.source "SubCommentsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/detail/SubCommentsFragment;->initListener()V
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
    .line 438
    iput-object p1, p0, Lcom/market2345/detail/SubCommentsFragment$8;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 450
    const/4 v2, 0x0

    .line 451
    .local v2, "size":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 452
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 455
    :cond_0
    const/16 v5, 0x64

    if-lt v2, v5, :cond_1

    .line 456
    const-string v5, "0"

    .line 458
    :cond_1
    rsub-int/lit8 v5, v2, 0x64

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, "number":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8fd8\u53ef\u4ee5\u8f93\u5165"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u5b57"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, "reminder":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 461
    .local v4, "start":I
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 462
    .local v3, "spannableString":Landroid/text/SpannableString;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const-string v6, "#3097fd"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    const/16 v7, 0x21

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 463
    iget-object v5, p0, Lcom/market2345/detail/SubCommentsFragment$8;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->tvCommentContentRemainSize:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/market2345/detail/SubCommentsFragment;->access$1400(Lcom/market2345/detail/SubCommentsFragment;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 446
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 442
    return-void
.end method
