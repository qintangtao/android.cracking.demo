.class Lcom/market2345/topic/WebViewTopicActivity$JSInterface;
.super Ljava/lang/Object;
.source "WebViewTopicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/topic/WebViewTopicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/topic/WebViewTopicActivity;


# direct methods
.method constructor <init>(Lcom/market2345/topic/WebViewTopicActivity;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonInitStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "btnId"    # Ljava/lang/String;
    .param p2, "linkedPackageName"    # Ljava/lang/String;
    .param p3, "linkedDownloadURL"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 200
    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/topic/WebViewTopicActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getButtonInitStatus"

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    new-instance v1, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;-><init>(Lcom/market2345/topic/WebViewTopicActivity$JSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/market2345/topic/WebViewTopicActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method

.method public onDownloadButtonClick(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "btnId"    # Ljava/lang/String;
    .param p2, "softId"    # Ljava/lang/String;
    .param p3, "intStatus"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 162
    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/topic/WebViewTopicActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadButtonClick---btnId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/topic/WebViewTopicActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadButtonClick---softId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/topic/WebViewTopicActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadButtonClick---intStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    new-instance v1, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;-><init>(Lcom/market2345/topic/WebViewTopicActivity$JSInterface;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/market2345/topic/WebViewTopicActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method public openAppDetail(Ljava/lang/String;)V
    .locals 4
    .param p1, "softId"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 153
    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/topic/WebViewTopicActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openAppDetail---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 155
    .local v0, "sid":I
    if-lez v0, :cond_0

    .line 156
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/market2345/topic/TopicUtils;->startDetailTopicActivity(Landroid/content/Context;I)V

    .line 158
    :cond_0
    return-void
.end method
