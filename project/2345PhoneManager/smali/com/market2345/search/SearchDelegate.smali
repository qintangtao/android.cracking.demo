.class public Lcom/market2345/search/SearchDelegate;
.super Ljava/lang/Object;
.source "SearchDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/search/SearchDelegate$SearchListener;
    }
.end annotation


# instance fields
.field private mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

.field private mSearchDialogFragment:Lcom/market2345/search/SearchDialogFragment;

.field private mSearchListener:Lcom/market2345/search/SearchDelegate$SearchListener;

.field private searchTask:Lcom/market2345/base/asynctask/PoolAsyncTask;
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
.end field


# direct methods
.method public constructor <init>(Lcom/market2345/search/SearchDialogFragment;Lcom/market2345/search/SearchDelegate$SearchListener;)V
    .locals 0
    .param p1, "searchDialogFragment"    # Lcom/market2345/search/SearchDialogFragment;
    .param p2, "searchListener"    # Lcom/market2345/search/SearchDelegate$SearchListener;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/market2345/search/SearchDelegate;->mSearchDialogFragment:Lcom/market2345/search/SearchDialogFragment;

    .line 31
    iput-object p2, p0, Lcom/market2345/search/SearchDelegate;->mSearchListener:Lcom/market2345/search/SearchDelegate$SearchListener;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/search/SearchDelegate;)Lcom/market2345/search/SearchDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDelegate;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/market2345/search/SearchDelegate;->mSearchDialogFragment:Lcom/market2345/search/SearchDialogFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/search/SearchDelegate;)Lcom/market2345/httpnew/HttpTransaction;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDelegate;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/market2345/search/SearchDelegate;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/search/SearchDelegate;)Lcom/market2345/search/SearchDelegate$SearchListener;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDelegate;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/market2345/search/SearchDelegate;->mSearchListener:Lcom/market2345/search/SearchDelegate$SearchListener;

    return-object v0
.end method

.method private initHttpSearch(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    iget-object v1, p0, Lcom/market2345/search/SearchDelegate;->mSearchDialogFragment:Lcom/market2345/search/SearchDialogFragment;

    invoke-virtual {v1}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 36
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v1, "http://zhushou.2345.com/index.php?c=search&d=result"

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "so"

    invoke-virtual {v1, v2, p1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setKeyWord(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "page"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setInitialPage(Ljava/lang/String;I)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    new-instance v2, Lcom/market2345/search/SearchDelegate$1;

    invoke-direct {v2, p0, p1}, Lcom/market2345/search/SearchDelegate$1;-><init>(Lcom/market2345/search/SearchDelegate;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setCallback(Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-class v2, Lcom/market2345/model/AppListDatas;

    invoke-virtual {v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setParseTo(Ljava/lang/Class;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->build()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/search/SearchDelegate;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    .line 58
    return-void
.end method


# virtual methods
.method public getRecommendation()V
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/market2345/search/SearchDelegate;->mSearchDialogFragment:Lcom/market2345/search/SearchDialogFragment;

    invoke-virtual {v0}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/search/SearchDelegate;->mSearchDialogFragment:Lcom/market2345/search/SearchDialogFragment;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/market2345/http/MarketAPI;->getRecommendation(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;Landroid/os/Handler;)V

    .line 71
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 1
    .param p1, "words"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/market2345/search/SearchDelegate;->initHttpSearch(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/market2345/search/SearchDelegate;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    .line 62
    return-void
.end method

.method public searchNextPage(Ljava/lang/String;)V
    .locals 1
    .param p1, "words"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/market2345/search/SearchDelegate;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->executeNextPage()V

    .line 66
    return-void
.end method

.method public searchSuggestion(Ljava/lang/String;)V
    .locals 3
    .param p1, "searchWord"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/market2345/search/SearchDelegate;->searchTask:Lcom/market2345/base/asynctask/PoolAsyncTask;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/market2345/search/SearchDelegate;->searchTask:Lcom/market2345/base/asynctask/PoolAsyncTask;

    invoke-virtual {v0, v1}, Lcom/market2345/base/asynctask/PoolAsyncTask;->cancel(Z)Z

    .line 78
    :cond_1
    new-instance v0, Lcom/market2345/search/SearchDelegate$2;

    invoke-direct {v0, p0, p1}, Lcom/market2345/search/SearchDelegate$2;-><init>(Lcom/market2345/search/SearchDelegate;Ljava/lang/String;)V

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/market2345/search/SearchDelegate$2;->execute([Ljava/lang/Object;)Lcom/market2345/base/asynctask/PoolAsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/search/SearchDelegate;->searchTask:Lcom/market2345/base/asynctask/PoolAsyncTask;

    goto :goto_0
.end method
