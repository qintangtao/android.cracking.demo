.class Lcom/market2345/feedback/FeedBackActivity$1;
.super Ljava/lang/Object;
.source "FeedBackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 150
    iput-object p1, p0, Lcom/market2345/feedback/FeedBackActivity$1;->this$0:Lcom/market2345/feedback/FeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity$1;->this$0:Lcom/market2345/feedback/FeedBackActivity;

    # getter for: Lcom/market2345/feedback/FeedBackActivity;->lvFeedbacks:Lcom/market2345/customview/DropDownListView;
    invoke-static {v0}, Lcom/market2345/feedback/FeedBackActivity;->access$000(Lcom/market2345/feedback/FeedBackActivity;)Lcom/market2345/customview/DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/customview/DropDownListView;->getFooterButton()Landroid/widget/Button;

    move-result-object v0

    const-string v1, "#666666"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 155
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity$1;->this$0:Lcom/market2345/feedback/FeedBackActivity;

    # getter for: Lcom/market2345/feedback/FeedBackActivity;->lvFeedbacks:Lcom/market2345/customview/DropDownListView;
    invoke-static {v0}, Lcom/market2345/feedback/FeedBackActivity;->access$000(Lcom/market2345/feedback/FeedBackActivity;)Lcom/market2345/customview/DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/customview/DropDownListView;->onBottomBegin()V

    .line 156
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity$1;->this$0:Lcom/market2345/feedback/FeedBackActivity;

    iget-object v1, p0, Lcom/market2345/feedback/FeedBackActivity$1;->this$0:Lcom/market2345/feedback/FeedBackActivity;

    iget-object v2, p0, Lcom/market2345/feedback/FeedBackActivity$1;->this$0:Lcom/market2345/feedback/FeedBackActivity;

    # getter for: Lcom/market2345/feedback/FeedBackActivity;->currentPage:I
    invoke-static {v2}, Lcom/market2345/feedback/FeedBackActivity;->access$100(Lcom/market2345/feedback/FeedBackActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/market2345/feedback/FeedBackActivity$1;->this$0:Lcom/market2345/feedback/FeedBackActivity;

    # getter for: Lcom/market2345/feedback/FeedBackActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/market2345/feedback/FeedBackActivity;->access$200(Lcom/market2345/feedback/FeedBackActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/market2345/http/MarketAPI;->getFeedbacks(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;ILandroid/os/Handler;)V

    .line 157
    return-void
.end method
