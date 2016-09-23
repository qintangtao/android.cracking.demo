.class public Lcom/market2345/applist/WonderListFragment;
.super Lcom/market2345/applist/AppListFragment;
.source "WonderListFragment.java"


# instance fields
.field private typeBuffer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/market2345/applist/WonderListFragment;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Lcom/market2345/applist/WonderListFragment;

    invoke-direct {v0}, Lcom/market2345/applist/WonderListFragment;-><init>()V

    .line 24
    .local v0, "frag":Lcom/market2345/applist/WonderListFragment;
    iput-object p0, v0, Lcom/market2345/applist/WonderListFragment;->typeBuffer:Ljava/lang/String;

    .line 25
    return-object v0
.end method


# virtual methods
.method public confirmDataSaveNeeded(Lcom/market2345/applist/AppListFragment$ConfirmData;)V
    .locals 2
    .param p1, "confirmData"    # Lcom/market2345/applist/AppListFragment$ConfirmData;

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wonderdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/applist/WonderListFragment;->typeBuffer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/applist/AppListFragment$ConfirmData;->dataKey:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wondertime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/applist/WonderListFragment;->typeBuffer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/applist/AppListFragment$ConfirmData;->timeKey:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public createHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public createLocalHttpBuilder()Lcom/market2345/httpnew/HttpTransactionBuilder;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-virtual {p0}, Lcom/market2345/applist/WonderListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=getRecomList"

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "authKey"

    const-string v3, "duotetomobile20120903"

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "type"

    iget-object v3, p0, Lcom/market2345/applist/WonderListFragment;->typeBuffer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "page"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setInitialPage(Ljava/lang/String;I)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 40
    return-object v0
.end method
