.class Lcom/market2345/feedback/FeedBackActivity$2;
.super Ljava/lang/Object;
.source "FeedBackActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/feedback/FeedBackActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/feedback/FeedBackActivity;


# direct methods
.method constructor <init>(Lcom/market2345/feedback/FeedBackActivity;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/market2345/feedback/FeedBackActivity$2;->this$0:Lcom/market2345/feedback/FeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 174
    const/16 v0, 0xc8

    .line 175
    .local v0, "size":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/market2345/feedback/FeedBackActivity$2;->this$0:Lcom/market2345/feedback/FeedBackActivity;

    # getter for: Lcom/market2345/feedback/FeedBackActivity;->tvContentSize:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/market2345/feedback/FeedBackActivity;->access$300(Lcom/market2345/feedback/FeedBackActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 170
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 165
    return-void
.end method
