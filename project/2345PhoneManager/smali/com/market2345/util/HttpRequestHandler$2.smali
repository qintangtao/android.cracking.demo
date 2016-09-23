.class Lcom/market2345/util/HttpRequestHandler$2;
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
    .line 184
    iput-object p1, p0, Lcom/market2345/util/HttpRequestHandler$2;->this$0:Lcom/market2345/util/HttpRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 191
    const-string v4, "http://zhushou.2345.com/index.php?c=search&d=result"

    iget-object v5, p0, Lcom/market2345/util/HttpRequestHandler$2;->this$0:Lcom/market2345/util/HttpRequestHandler;

    # getter for: Lcom/market2345/util/HttpRequestHandler;->url:Ljava/lang/String;
    invoke-static {v5}, Lcom/market2345/util/HttpRequestHandler;->access$000(Lcom/market2345/util/HttpRequestHandler;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/market2345/util/HttpRequestHandler$2;->this$0:Lcom/market2345/util/HttpRequestHandler;

    iget-object v4, v4, Lcom/market2345/util/HttpRequestHandler;->params:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 196
    .local v3, "value":Lorg/apache/http/message/BasicNameValuePair;
    const-string v4, "so"

    invoke-virtual {v3}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 198
    invoke-virtual {v3}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 203
    .end local v3    # "value":Lorg/apache/http/message/BasicNameValuePair;
    :cond_1
    new-instance v2, Landroid/util/Pair;

    iget-object v4, p0, Lcom/market2345/util/HttpRequestHandler$2;->this$0:Lcom/market2345/util/HttpRequestHandler;

    # getter for: Lcom/market2345/util/HttpRequestHandler;->result:Ljava/lang/Object;
    invoke-static {v4}, Lcom/market2345/util/HttpRequestHandler;->access$300(Lcom/market2345/util/HttpRequestHandler;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/market2345/util/HttpRequestHandler$2;->this$0:Lcom/market2345/util/HttpRequestHandler;

    # setter for: Lcom/market2345/util/HttpRequestHandler;->result:Ljava/lang/Object;
    invoke-static {v4, v2}, Lcom/market2345/util/HttpRequestHandler;->access$302(Lcom/market2345/util/HttpRequestHandler;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/market2345/util/HttpRequestHandler$2;->this$0:Lcom/market2345/util/HttpRequestHandler;

    # getter for: Lcom/market2345/util/HttpRequestHandler;->mHandler:Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;
    invoke-static {v4}, Lcom/market2345/util/HttpRequestHandler;->access$200(Lcom/market2345/util/HttpRequestHandler;)Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;

    move-result-object v4

    iget-object v5, p0, Lcom/market2345/util/HttpRequestHandler$2;->this$0:Lcom/market2345/util/HttpRequestHandler;

    # getter for: Lcom/market2345/util/HttpRequestHandler;->url:Ljava/lang/String;
    invoke-static {v5}, Lcom/market2345/util/HttpRequestHandler;->access$000(Lcom/market2345/util/HttpRequestHandler;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/market2345/util/HttpRequestHandler$2;->this$0:Lcom/market2345/util/HttpRequestHandler;

    # getter for: Lcom/market2345/util/HttpRequestHandler;->result:Ljava/lang/Object;
    invoke-static {v6}, Lcom/market2345/util/HttpRequestHandler;->access$300(Lcom/market2345/util/HttpRequestHandler;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;->onSuccess(Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    return-void

    .line 207
    :cond_3
    const-string v4, "http://zhushou.2345.com/index.php?c=comment&d=listAndroid"

    iget-object v5, p0, Lcom/market2345/util/HttpRequestHandler$2;->this$0:Lcom/market2345/util/HttpRequestHandler;

    # getter for: Lcom/market2345/util/HttpRequestHandler;->url:Ljava/lang/String;
    invoke-static {v5}, Lcom/market2345/util/HttpRequestHandler;->access$000(Lcom/market2345/util/HttpRequestHandler;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 210
    const/4 v1, 0x0

    .line 211
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/market2345/util/HttpRequestHandler$2;->this$0:Lcom/market2345/util/HttpRequestHandler;

    iget-object v4, v4, Lcom/market2345/util/HttpRequestHandler;->params:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 213
    .restart local v3    # "value":Lorg/apache/http/message/BasicNameValuePair;
    const-string v4, "type"

    invoke-virtual {v3}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 215
    invoke-virtual {v3}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 220
    .end local v3    # "value":Lorg/apache/http/message/BasicNameValuePair;
    :cond_5
    new-instance v2, Landroid/util/Pair;

    iget-object v4, p0, Lcom/market2345/util/HttpRequestHandler$2;->this$0:Lcom/market2345/util/HttpRequestHandler;

    # getter for: Lcom/market2345/util/HttpRequestHandler;->result:Ljava/lang/Object;
    invoke-static {v4}, Lcom/market2345/util/HttpRequestHandler;->access$300(Lcom/market2345/util/HttpRequestHandler;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    .restart local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/market2345/util/HttpRequestHandler$2;->this$0:Lcom/market2345/util/HttpRequestHandler;

    # setter for: Lcom/market2345/util/HttpRequestHandler;->result:Ljava/lang/Object;
    invoke-static {v4, v2}, Lcom/market2345/util/HttpRequestHandler;->access$302(Lcom/market2345/util/HttpRequestHandler;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
