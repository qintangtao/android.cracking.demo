.class Lcom/market2345/util/HttpRequestHandler$3;
.super Ljava/lang/Object;
.source "HttpRequestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/util/HttpRequestHandler;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/util/HttpRequestHandler;


# direct methods
.method constructor <init>(Lcom/market2345/util/HttpRequestHandler;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/market2345/util/HttpRequestHandler$3;->this$0:Lcom/market2345/util/HttpRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/market2345/util/HttpRequestHandler$3;->this$0:Lcom/market2345/util/HttpRequestHandler;

    # getter for: Lcom/market2345/util/HttpRequestHandler;->mHandler:Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;
    invoke-static {v0}, Lcom/market2345/util/HttpRequestHandler;->access$200(Lcom/market2345/util/HttpRequestHandler;)Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/util/HttpRequestHandler$3;->this$0:Lcom/market2345/util/HttpRequestHandler;

    # getter for: Lcom/market2345/util/HttpRequestHandler;->url:Ljava/lang/String;
    invoke-static {v1}, Lcom/market2345/util/HttpRequestHandler;->access$000(Lcom/market2345/util/HttpRequestHandler;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/util/HttpRequestHandler$3;->this$0:Lcom/market2345/util/HttpRequestHandler;

    # getter for: Lcom/market2345/util/HttpRequestHandler;->code:I
    invoke-static {v2}, Lcom/market2345/util/HttpRequestHandler;->access$100(Lcom/market2345/util/HttpRequestHandler;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;->onError(Ljava/lang/String;I)V

    .line 261
    return-void
.end method
