.class Lcom/market2345/topic/WebViewTopicActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebViewTopicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/topic/WebViewTopicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/topic/WebViewTopicActivity;


# direct methods
.method private constructor <init>(Lcom/market2345/topic/WebViewTopicActivity;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lcom/market2345/topic/WebViewTopicActivity$MyWebViewClient;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/topic/WebViewTopicActivity;Lcom/market2345/topic/WebViewTopicActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/topic/WebViewTopicActivity;
    .param p2, "x1"    # Lcom/market2345/topic/WebViewTopicActivity$1;

    .prologue
    .line 868
    invoke-direct {p0, p1}, Lcom/market2345/topic/WebViewTopicActivity$MyWebViewClient;-><init>(Lcom/market2345/topic/WebViewTopicActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 872
    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/topic/WebViewTopicActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPageFinished"

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 873
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    .line 877
    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/topic/WebViewTopicActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 878
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity$MyWebViewClient;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/topic/WebViewTopicActivity;->access$1700(Lcom/market2345/topic/WebViewTopicActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity$MyWebViewClient;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->mAppStatusView:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/topic/WebViewTopicActivity;->access$1700(Lcom/market2345/topic/WebViewTopicActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 880
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity$MyWebViewClient;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->mPlaceHolder:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/topic/WebViewTopicActivity;->access$1800(Lcom/market2345/topic/WebViewTopicActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity$MyWebViewClient;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->mWebViewError:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/topic/WebViewTopicActivity;->access$1900(Lcom/market2345/topic/WebViewTopicActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 884
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 888
    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/topic/WebViewTopicActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 889
    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    :cond_0
    const/4 v0, 0x0

    .line 893
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
