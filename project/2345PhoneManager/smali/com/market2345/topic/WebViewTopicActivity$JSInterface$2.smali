.class Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;
.super Ljava/lang/Object;
.source "WebViewTopicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->getButtonInitStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

.field final synthetic val$btnId:Ljava/lang/String;

.field final synthetic val$linkedDownloadURL:Ljava/lang/String;

.field final synthetic val$linkedPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market2345/topic/WebViewTopicActivity$JSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;->this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    iput-object p2, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;->val$linkedPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;->val$btnId:Ljava/lang/String;

    iput-object p4, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;->val$linkedDownloadURL:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 204
    iget-object v1, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;->val$linkedPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;->val$btnId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;->this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    iget-object v1, v1, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->mDownloadURLMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/market2345/topic/WebViewTopicActivity;->access$500(Lcom/market2345/topic/WebViewTopicActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;->val$btnId:Ljava/lang/String;

    iget-object v3, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;->val$linkedDownloadURL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;->this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    iget-object v1, v1, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->mPackageNameMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/market2345/topic/WebViewTopicActivity;->access$600(Lcom/market2345/topic/WebViewTopicActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;->val$btnId:Ljava/lang/String;

    iget-object v3, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;->val$linkedPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v1, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;->this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    iget-object v1, v1, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->mPlaceMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/market2345/topic/WebViewTopicActivity;->access$700(Lcom/market2345/topic/WebViewTopicActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;->val$linkedDownloadURL:Ljava/lang/String;

    iget-object v3, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;->val$btnId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v0, Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;

    iget-object v1, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;->this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    iget-object v1, v1, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    invoke-direct {v0, v1}, Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;-><init>(Lcom/market2345/topic/WebViewTopicActivity;)V

    .line 209
    .local v0, "button":Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;
    iget-object v1, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;->val$btnId:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;->btnId:Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;->this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    iget-object v1, v1, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->session:Lcom/market2345/datacenter/DataCenterObserver;
    invoke-static {v1}, Lcom/market2345/topic/WebViewTopicActivity;->access$800(Lcom/market2345/topic/WebViewTopicActivity;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;->val$linkedPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/DataCenterObserver;->isInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    :goto_0
    iput v1, v0, Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;->intStatus:I

    .line 211
    const/4 v1, 0x1

    iput v1, v0, Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;->isEnabled:I

    .line 212
    const/4 v1, -0x1

    iput v1, v0, Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;->intPercents:I

    .line 213
    iget-object v1, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;->this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    iget-object v1, v1, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    iget-object v2, v0, Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;->btnId:Ljava/lang/String;

    iget v3, v0, Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;->intStatus:I

    iget v4, v0, Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;->isEnabled:I

    iget v5, v0, Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;->intPercents:I

    # invokes: Lcom/market2345/topic/WebViewTopicActivity;->callbackButtonInitStatus(Ljava/lang/String;III)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/market2345/topic/WebViewTopicActivity;->access$900(Lcom/market2345/topic/WebViewTopicActivity;Ljava/lang/String;III)V

    .line 214
    iget-object v1, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$2;->this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    iget-object v1, v1, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # invokes: Lcom/market2345/topic/WebViewTopicActivity;->initWebViewButtons()V
    invoke-static {v1}, Lcom/market2345/topic/WebViewTopicActivity;->access$1000(Lcom/market2345/topic/WebViewTopicActivity;)V

    .line 216
    .end local v0    # "button":Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;
    :cond_0
    return-void

    .line 210
    .restart local v0    # "button":Lcom/market2345/topic/WebViewTopicActivity$JSDownloadButtonStatus;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
