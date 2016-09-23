.class public Lcom/market2345/applist/MustPlayGameListFragment;
.super Lcom/market2345/applist/AppListFragment;
.source "MustPlayGameListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public confirmDataSaveNeeded(Lcom/market2345/applist/AppListFragment$ConfirmData;)V
    .locals 1
    .param p1, "confirmData"    # Lcom/market2345/applist/AppListFragment$ConfirmData;

    .prologue
    .line 31
    const-string v0, "mustdata"

    iput-object v0, p1, Lcom/market2345/applist/AppListFragment$ConfirmData;->dataKey:Ljava/lang/String;

    .line 32
    const-string v0, "musttime"

    iput-object v0, p1, Lcom/market2345/applist/AppListFragment$ConfirmData;->timeKey:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public createHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public createLocalHttpBuilder()Lcom/market2345/httpnew/HttpTransactionBuilder;
    .locals 4

    .prologue
    .line 24
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-virtual {p0}, Lcom/market2345/applist/MustPlayGameListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 25
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=getRecomList"

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "authKey"

    const-string v3, "duotetomobile20120903"

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "az_bw"

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "page"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setInitialPage(Ljava/lang/String;I)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 26
    return-object v0
.end method
