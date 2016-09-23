.class public Lcom/market2345/httpnew/HttpTransactionBuilder;
.super Ljava/lang/Object;
.source "HttpTransactionBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;,
        Lcom/market2345/httpnew/HttpTransactionBuilder$Method;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private transaction:Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/market2345/httpnew/HttpTransactionBuilder;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    invoke-direct {v0, p0}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;-><init>(Lcom/market2345/httpnew/HttpTransactionBuilder;)V

    iput-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder;->transaction:Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    .line 52
    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder;->transaction:Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    # setter for: Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->mContext:Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->access$002(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;Landroid/content/Context;)Landroid/content/Context;

    .line 54
    return-void
.end method


# virtual methods
.method public build()Lcom/market2345/httpnew/HttpTransaction;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder;->transaction:Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    return-object v0
.end method

.method public putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder;->transaction:Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    # getter for: Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->params:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->access$600(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    return-object p0
.end method

.method public reset()Lcom/market2345/httpnew/HttpTransactionBuilder;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    invoke-direct {v0, p0}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;-><init>(Lcom/market2345/httpnew/HttpTransactionBuilder;)V

    iput-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder;->transaction:Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    .line 158
    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder;->transaction:Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    iget-object v1, p0, Lcom/market2345/httpnew/HttpTransactionBuilder;->mContext:Landroid/content/Context;

    # setter for: Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->mContext:Landroid/content/Context;
    invoke-static {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->access$002(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;Landroid/content/Context;)Landroid/content/Context;

    .line 159
    return-object p0
.end method

.method public setCallback(Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpTransactionBuilder;
    .locals 1
    .param p1, "callback"    # Lcom/market2345/httpnew/HttpCallback;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder;->transaction:Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    # setter for: Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->callback:Lcom/market2345/httpnew/HttpCallback;
    invoke-static {v0, p1}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->access$702(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpCallback;

    .line 132
    return-object p0
.end method

.method public setCookie(Lorg/apache/http/cookie/Cookie;)Lcom/market2345/httpnew/HttpTransactionBuilder;
    .locals 1
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder;->transaction:Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    # setter for: Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->cookie:Lorg/apache/http/cookie/Cookie;
    invoke-static {v0, p1}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->access$202(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;Lorg/apache/http/cookie/Cookie;)Lorg/apache/http/cookie/Cookie;

    .line 76
    return-object p0
.end method

.method public setInitialPage(Ljava/lang/String;I)Lcom/market2345/httpnew/HttpTransactionBuilder;
    .locals 1
    .param p1, "pageKey"    # Ljava/lang/String;
    .param p2, "initialPage"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder;->transaction:Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    # setter for: Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->intentPageBuffer:I
    invoke-static {v0, p2}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->access$902(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;I)I

    .line 171
    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder;->transaction:Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    # setter for: Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->pageKey:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->access$1002(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public setKeyWord(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder;->transaction:Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    # setter for: Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->keyWord:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->access$402(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public setMethod(Lcom/market2345/httpnew/HttpTransactionBuilder$Method;)Lcom/market2345/httpnew/HttpTransactionBuilder;
    .locals 1
    .param p1, "method"    # Lcom/market2345/httpnew/HttpTransactionBuilder$Method;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder;->transaction:Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    # setter for: Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->method:Lcom/market2345/httpnew/HttpTransactionBuilder$Method;
    invoke-static {v0, p1}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->access$102(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;Lcom/market2345/httpnew/HttpTransactionBuilder$Method;)Lcom/market2345/httpnew/HttpTransactionBuilder$Method;

    .line 71
    return-object p0
.end method

.method public setParseTo(Ljava/lang/Class;)Lcom/market2345/httpnew/HttpTransactionBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/market2345/httpnew/ResponseCluster;",
            ">;)",
            "Lcom/market2345/httpnew/HttpTransactionBuilder;"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "parseClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/market2345/httpnew/ResponseCluster;>;"
    :try_start_0
    iget-object v2, p0, Lcom/market2345/httpnew/HttpTransactionBuilder;->transaction:Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/httpnew/ResponseCluster;

    # setter for: Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->parseObject:Lcom/market2345/httpnew/ResponseCluster;
    invoke-static {v2, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->access$802(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;Lcom/market2345/httpnew/ResponseCluster;)Lcom/market2345/httpnew/ResponseCluster;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-object p0

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setTimeOut(I)Lcom/market2345/httpnew/HttpTransactionBuilder;
    .locals 1
    .param p1, "millis"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder;->transaction:Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    # setter for: Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->timeOut:I
    invoke-static {v0, p1}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->access$502(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;I)I

    .line 109
    return-object p0
.end method

.method public setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder;->transaction:Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    # setter for: Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->url:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->access$302(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    return-object p0
.end method
