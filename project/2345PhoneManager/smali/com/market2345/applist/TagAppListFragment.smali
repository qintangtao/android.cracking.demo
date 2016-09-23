.class public Lcom/market2345/applist/TagAppListFragment;
.super Lcom/market2345/applist/AppListFragment;
.source "TagAppListFragment.java"


# instance fields
.field private nameBuffer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/market2345/applist/TagAppListFragment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Lcom/market2345/applist/TagAppListFragment;

    invoke-direct {v0}, Lcom/market2345/applist/TagAppListFragment;-><init>()V

    .line 21
    .local v0, "frag":Lcom/market2345/applist/TagAppListFragment;
    iput-object p0, v0, Lcom/market2345/applist/TagAppListFragment;->nameBuffer:Ljava/lang/String;

    .line 22
    return-object v0
.end method


# virtual methods
.method public confirmDataSaveNeeded(Lcom/market2345/applist/AppListFragment$ConfirmData;)V
    .locals 0
    .param p1, "confirmData"    # Lcom/market2345/applist/AppListFragment$ConfirmData;

    .prologue
    .line 47
    return-void
.end method

.method public createHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public createLocalHttpBuilder()Lcom/market2345/httpnew/HttpTransactionBuilder;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-virtual {p0}, Lcom/market2345/applist/TagAppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=getListByTag"

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "tagName"

    iget-object v3, p0, Lcom/market2345/applist/TagAppListFragment;->nameBuffer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "page"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setInitialPage(Ljava/lang/String;I)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 40
    return-object v0
.end method
