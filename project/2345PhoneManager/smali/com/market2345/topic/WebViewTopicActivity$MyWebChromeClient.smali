.class Lcom/market2345/topic/WebViewTopicActivity$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebViewTopicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/topic/WebViewTopicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/topic/WebViewTopicActivity;


# direct methods
.method private constructor <init>(Lcom/market2345/topic/WebViewTopicActivity;)V
    .locals 0

    .prologue
    .line 856
    iput-object p1, p0, Lcom/market2345/topic/WebViewTopicActivity$MyWebChromeClient;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/topic/WebViewTopicActivity;Lcom/market2345/topic/WebViewTopicActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/topic/WebViewTopicActivity;
    .param p2, "x1"    # Lcom/market2345/topic/WebViewTopicActivity$1;

    .prologue
    .line 856
    invoke-direct {p0, p1}, Lcom/market2345/topic/WebViewTopicActivity$MyWebChromeClient;-><init>(Lcom/market2345/topic/WebViewTopicActivity;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    const/16 v1, 0x8

    .line 859
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity$MyWebChromeClient;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/market2345/topic/WebViewTopicActivity;->access$1400(Lcom/market2345/topic/WebViewTopicActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 861
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity$MyWebChromeClient;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->mLoadingView:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/topic/WebViewTopicActivity;->access$1500(Lcom/market2345/topic/WebViewTopicActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 862
    iget-object v0, p0, Lcom/market2345/topic/WebViewTopicActivity$MyWebChromeClient;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/market2345/topic/WebViewTopicActivity;->access$1600(Lcom/market2345/topic/WebViewTopicActivity;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 864
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 865
    return-void
.end method
