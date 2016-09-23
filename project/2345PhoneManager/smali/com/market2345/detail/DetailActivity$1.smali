.class Lcom/market2345/detail/DetailActivity$1;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Lcom/market2345/detail/DetailActivity$DownloadClickCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/detail/DetailActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/detail/DetailActivity;


# direct methods
.method constructor <init>(Lcom/market2345/detail/DetailActivity;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/market2345/detail/DetailActivity$1;->this$0:Lcom/market2345/detail/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickCallBack()V
    .locals 2

    .prologue
    .line 371
    const-string v0, "searchFragment"

    iget-object v1, p0, Lcom/market2345/detail/DetailActivity$1;->this$0:Lcom/market2345/detail/DetailActivity;

    # getter for: Lcom/market2345/detail/DetailActivity;->openDetailType:Ljava/lang/String;
    invoke-static {v1}, Lcom/market2345/detail/DetailActivity;->access$000(Lcom/market2345/detail/DetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity$1;->this$0:Lcom/market2345/detail/DetailActivity;

    # getter for: Lcom/market2345/detail/DetailActivity;->bFromDesk:Z
    invoke-static {v0}, Lcom/market2345/detail/DetailActivity;->access$100(Lcom/market2345/detail/DetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity$1;->this$0:Lcom/market2345/detail/DetailActivity;

    const-string v1, "Search_In_Click_DownLoad"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 379
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity$1;->this$0:Lcom/market2345/detail/DetailActivity;

    const-string v1, "AppDetail_Download_12"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 382
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity$1;->this$0:Lcom/market2345/detail/DetailActivity;

    const-string v1, "Search_Out_Click_DownLoad"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
