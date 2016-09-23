.class public Lcom/market2345/applist/ClassifyAppListFragment;
.super Lcom/market2345/applist/AppListFragment;
.source "ClassifyAppListFragment.java"


# instance fields
.field private categoryId:Ljava/lang/String;

.field private classType:Ljava/lang/String;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/applist/ClassifyAppListFragment;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "categoryId"    # Ljava/lang/String;
    .param p2, "classType"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Lcom/market2345/applist/ClassifyAppListFragment;

    invoke-direct {v0}, Lcom/market2345/applist/ClassifyAppListFragment;-><init>()V

    .line 23
    .local v0, "frag":Lcom/market2345/applist/ClassifyAppListFragment;
    iput-object p0, v0, Lcom/market2345/applist/ClassifyAppListFragment;->tag:Ljava/lang/String;

    .line 24
    iput-object p1, v0, Lcom/market2345/applist/ClassifyAppListFragment;->categoryId:Ljava/lang/String;

    .line 25
    iput-object p2, v0, Lcom/market2345/applist/ClassifyAppListFragment;->classType:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, p0}, Lcom/market2345/applist/ClassifyAppListFragment;->setSupportTag(Ljava/lang/String;)V

    .line 27
    return-object v0
.end method


# virtual methods
.method public confirmDataSaveNeeded(Lcom/market2345/applist/AppListFragment$ConfirmData;)V
    .locals 0
    .param p1, "confirmData"    # Lcom/market2345/applist/AppListFragment$ConfirmData;

    .prologue
    .line 66
    return-void
.end method

.method public createHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public createLocalHttpBuilder()Lcom/market2345/httpnew/HttpTransactionBuilder;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 41
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-virtual {p0}, Lcom/market2345/applist/ClassifyAppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    iget-object v1, p0, Lcom/market2345/applist/ClassifyAppListFragment;->tag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/market2345/applist/ClassifyAppListFragment;->tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/market2345/applist/ClassifyAppListFragment;->categoryId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=getListByCate"

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 45
    const-string v1, "authKey"

    const-string v2, "duotetomobile20120903"

    invoke-virtual {v0, v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 46
    const-string v1, "order"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 47
    const-string v1, "cateId"

    iget-object v2, p0, Lcom/market2345/applist/ClassifyAppListFragment;->categoryId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 48
    const-string v1, "page"

    invoke-virtual {v0, v1, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setInitialPage(Ljava/lang/String;I)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 50
    :cond_1
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=getListByTag"

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 51
    const-string v1, "authKey"

    const-string v2, "duotetomobile20120903"

    invoke-virtual {v0, v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 52
    const-string v1, "tagName"

    iget-object v2, p0, Lcom/market2345/applist/ClassifyAppListFragment;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 53
    const-string v1, "type"

    iget-object v2, p0, Lcom/market2345/applist/ClassifyAppListFragment;->classType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 54
    const-string v1, "page"

    invoke-virtual {v0, v1, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setInitialPage(Ljava/lang/String;I)Lcom/market2345/httpnew/HttpTransactionBuilder;

    goto :goto_0
.end method
