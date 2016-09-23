.class Lcom/market2345/topic/WebViewTopicActivity$1;
.super Ljava/lang/Object;
.source "WebViewTopicActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/topic/WebViewTopicActivity;->handleWebViewDownloadStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/topic/WebViewTopicActivity;


# direct methods
.method constructor <init>(Lcom/market2345/topic/WebViewTopicActivity;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/market2345/topic/WebViewTopicActivity$1;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 264
    # getter for: Lcom/market2345/topic/WebViewTopicActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/topic/WebViewTopicActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDownloadStart---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 266
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 267
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/market2345/topic/WebViewTopicActivity$1;->this$0:Lcom/market2345/topic/WebViewTopicActivity;

    invoke-virtual {v2, v0}, Lcom/market2345/topic/WebViewTopicActivity;->startActivity(Landroid/content/Intent;)V

    .line 268
    return-void
.end method
