.class Lcom/market2345/search/SearchDelegate$2;
.super Lcom/market2345/base/asynctask/PoolAsyncTask;
.source "SearchDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/search/SearchDelegate;->searchSuggestion(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/market2345/base/asynctask/PoolAsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/search/SearchDelegate;

.field final synthetic val$searchWord:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market2345/search/SearchDelegate;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/market2345/search/SearchDelegate$2;->this$0:Lcom/market2345/search/SearchDelegate;

    iput-object p2, p0, Lcom/market2345/search/SearchDelegate$2;->val$searchWord:Ljava/lang/String;

    invoke-direct {p0}, Lcom/market2345/base/asynctask/PoolAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 78
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/search/SearchDelegate$2;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Lcom/market2345/http/MarketAPI;->getGetSearchSuggestion(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 83
    .local v0, "getSearchSuggestion":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 78
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/search/SearchDelegate$2;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/market2345/base/asynctask/PoolAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 89
    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .restart local p1    # "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v0, p0, Lcom/market2345/search/SearchDelegate$2;->this$0:Lcom/market2345/search/SearchDelegate;

    # getter for: Lcom/market2345/search/SearchDelegate;->mSearchListener:Lcom/market2345/search/SearchDelegate$SearchListener;
    invoke-static {v0}, Lcom/market2345/search/SearchDelegate;->access$200(Lcom/market2345/search/SearchDelegate;)Lcom/market2345/search/SearchDelegate$SearchListener;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/search/SearchDelegate$2;->val$searchWord:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/market2345/search/SearchDelegate$SearchListener;->onSuggestion(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 91
    return-void
.end method
