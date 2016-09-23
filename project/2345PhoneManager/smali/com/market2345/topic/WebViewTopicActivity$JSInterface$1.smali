.class Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;
.super Ljava/lang/Object;
.source "WebViewTopicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->onDownloadButtonClick(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

.field final synthetic val$btnId:Ljava/lang/String;

.field final synthetic val$intStatus:I

.field final synthetic val$softId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market2345/topic/WebViewTopicActivity$JSInterface;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    iput-object p2, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->val$btnId:Ljava/lang/String;

    iput-object p3, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->val$softId:Ljava/lang/String;

    iput p4, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->val$intStatus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 168
    iget-object v3, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->val$btnId:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->val$softId:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->val$intStatus:I

    if-ltz v3, :cond_1

    .line 169
    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/topic/WebViewTopicActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->val$btnId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/topic/WebViewTopicActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->val$softId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/topic/WebViewTopicActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->val$intStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    iget-object v3, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->val$btnId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 173
    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/topic/WebViewTopicActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "button clicked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->val$btnId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/topic/WebViewTopicActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "button clicked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->val$softId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    iget-object v3, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    iget-object v3, v3, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->mStatusMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/market2345/topic/WebViewTopicActivity;->access$100(Lcom/market2345/topic/WebViewTopicActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->val$softId:Ljava/lang/String;

    iget v5, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->val$intStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v3, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->val$softId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 177
    .local v1, "sid":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    iget-object v3, v3, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->mApps:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/market2345/topic/WebViewTopicActivity;->access$200(Lcom/market2345/topic/WebViewTopicActivity;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    iget-object v3, v3, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->mApps:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/market2345/topic/WebViewTopicActivity;->access$200(Lcom/market2345/topic/WebViewTopicActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 178
    iget-object v3, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    iget-object v3, v3, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->mApps:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/market2345/topic/WebViewTopicActivity;->access$200(Lcom/market2345/topic/WebViewTopicActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    .line 179
    .local v0, "app":Lcom/market2345/model/App;
    if-eqz v0, :cond_2

    .line 180
    iget-object v3, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    iget-object v3, v3, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->CODE2STATUS:[Ljava/lang/String;
    invoke-static {v3}, Lcom/market2345/topic/WebViewTopicActivity;->access$300(Lcom/market2345/topic/WebViewTopicActivity;)[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->val$intStatus:I

    aget-object v2, v3, v4

    .line 181
    .local v2, "status":Ljava/lang/String;
    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/topic/WebViewTopicActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDownloadButtonClick---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->val$intStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/market2345/model/App;->sid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    iget-object v3, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    iget-object v3, v3, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->CODE2STATUS:[Ljava/lang/String;
    invoke-static {v3}, Lcom/market2345/topic/WebViewTopicActivity;->access$300(Lcom/market2345/topic/WebViewTopicActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v3

    const-string v4, "\u5f00\u59cb\u4e0b\u8f7d..."

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 185
    :cond_0
    iget-object v3, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    iget-object v3, v3, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->mDownloadManager:Lcom/market2345/download/DownloadManager;
    invoke-static {v3}, Lcom/market2345/topic/WebViewTopicActivity;->access$400(Lcom/market2345/topic/WebViewTopicActivity;)Lcom/market2345/download/DownloadManager;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    iget-object v4, v4, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    invoke-virtual {v3, v4, v2, v0}, Lcom/market2345/download/DownloadManager;->performClick(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    .end local v0    # "app":Lcom/market2345/model/App;
    .end local v1    # "sid":Ljava/lang/Integer;
    .end local v2    # "status":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 187
    .restart local v0    # "app":Lcom/market2345/model/App;
    .restart local v1    # "sid":Ljava/lang/Integer;
    :cond_2
    iget-object v3, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    iget-object v3, v3, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    iget-object v4, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    iget-object v4, v4, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    iget-object v5, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->val$softId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-static {v3, v4, v5, v6}, Lcom/market2345/http/MarketAPI;->getAppInfo(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;ILandroid/os/Handler;)V

    goto :goto_0

    .line 190
    .end local v0    # "app":Lcom/market2345/model/App;
    :cond_3
    iget-object v3, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    iget-object v3, v3, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    iget-object v4, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->this$1:Lcom/market2345/topic/WebViewTopicActivity$JSInterface;

    iget-object v4, v4, Lcom/market2345/topic/WebViewTopicActivity$JSInterface;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    iget-object v5, p0, Lcom/market2345/topic/WebViewTopicActivity$JSInterface$1;->val$softId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-static {v3, v4, v5, v6}, Lcom/market2345/http/MarketAPI;->getAppInfo(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;ILandroid/os/Handler;)V

    goto :goto_0
.end method
