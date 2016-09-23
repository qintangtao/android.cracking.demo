.class Lcom/market2345/search/SearchDelegate$1;
.super Ljava/lang/Object;
.source "SearchDelegate.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/search/SearchDelegate;->initHttpSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/search/SearchDelegate;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market2345/search/SearchDelegate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/market2345/search/SearchDelegate$1;->this$0:Lcom/market2345/search/SearchDelegate;

    iput-object p2, p0, Lcom/market2345/search/SearchDelegate$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/market2345/httpnew/ResponseCluster;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "appListDatas":Lcom/market2345/model/AppListDatas;
    invoke-static {p1}, Lcom/market2345/util/HttpRequestHandler;->isSuccessResponseCode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    iget-object v2, p0, Lcom/market2345/search/SearchDelegate$1;->this$0:Lcom/market2345/search/SearchDelegate;

    # getter for: Lcom/market2345/search/SearchDelegate;->mSearchDialogFragment:Lcom/market2345/search/SearchDialogFragment;
    invoke-static {v2}, Lcom/market2345/search/SearchDelegate;->access$000(Lcom/market2345/search/SearchDelegate;)Lcom/market2345/search/SearchDialogFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/search/SearchDialogFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    iget-object v2, p0, Lcom/market2345/search/SearchDelegate$1;->this$0:Lcom/market2345/search/SearchDelegate;

    # getter for: Lcom/market2345/search/SearchDelegate;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;
    invoke-static {v2}, Lcom/market2345/search/SearchDelegate;->access$100(Lcom/market2345/search/SearchDelegate;)Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v2

    invoke-interface {v2}, Lcom/market2345/httpnew/HttpTransaction;->getKeyWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/market2345/search/SearchDelegate$1;->val$text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p2

    .line 52
    check-cast v0, Lcom/market2345/model/AppListDatas;

    .line 54
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/market2345/search/SearchDelegate$1;->this$0:Lcom/market2345/search/SearchDelegate;

    # getter for: Lcom/market2345/search/SearchDelegate;->mSearchListener:Lcom/market2345/search/SearchDelegate$SearchListener;
    invoke-static {v2}, Lcom/market2345/search/SearchDelegate;->access$200(Lcom/market2345/search/SearchDelegate;)Lcom/market2345/search/SearchDelegate$SearchListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/market2345/search/SearchDelegate$SearchListener;->onSearchResult(Lcom/market2345/model/AppListDatas;)V

    goto :goto_0
.end method
