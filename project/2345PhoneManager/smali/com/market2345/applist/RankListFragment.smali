.class public Lcom/market2345/applist/RankListFragment;
.super Lcom/market2345/applist/AppListFragment;
.source "RankListFragment.java"


# static fields
.field private static final SORTKEY:Ljava/lang/String; = "sort"

.field private static final TYPEKEY:Ljava/lang/String; = "typekey"


# instance fields
.field private rankType:Ljava/lang/String;

.field private sort:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragment;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/applist/RankListFragment;->rankType:Ljava/lang/String;

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/applist/RankListFragment;->sort:I

    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/market2345/applist/RankListFragment;->rankType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/market2345/applist/RankListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "typekey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/applist/RankListFragment;->rankType:Ljava/lang/String;

    .line 63
    :cond_0
    iget v0, p0, Lcom/market2345/applist/RankListFragment;->sort:I

    if-gez v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/market2345/applist/RankListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sort"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/market2345/applist/RankListFragment;->sort:I

    .line 65
    :cond_1
    return-void
.end method

.method public static newInstance(Ljava/lang/String;I)Lcom/market2345/applist/RankListFragment;
    .locals 3
    .param p0, "rankType"    # Ljava/lang/String;
    .param p1, "sort"    # I

    .prologue
    .line 24
    new-instance v1, Lcom/market2345/applist/RankListFragment;

    invoke-direct {v1}, Lcom/market2345/applist/RankListFragment;-><init>()V

    .line 25
    .local v1, "frag":Lcom/market2345/applist/RankListFragment;
    iput-object p0, v1, Lcom/market2345/applist/RankListFragment;->rankType:Ljava/lang/String;

    .line 26
    iput p1, v1, Lcom/market2345/applist/RankListFragment;->sort:I

    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "typekey"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v2, "sort"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    invoke-virtual {v1, v0}, Lcom/market2345/applist/RankListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 31
    return-object v1
.end method


# virtual methods
.method public confirmDataSaveNeeded(Lcom/market2345/applist/AppListFragment$ConfirmData;)V
    .locals 1
    .param p1, "confirmData"    # Lcom/market2345/applist/AppListFragment$ConfirmData;

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/market2345/applist/AppListFragment$ConfirmData;->showRankTag:Z

    .line 54
    iget-object v0, p0, Lcom/market2345/applist/RankListFragment;->rankType:Ljava/lang/String;

    iput-object v0, p1, Lcom/market2345/applist/AppListFragment$ConfirmData;->type:Ljava/lang/String;

    .line 55
    iget v0, p0, Lcom/market2345/applist/RankListFragment;->sort:I

    iput v0, p1, Lcom/market2345/applist/AppListFragment$ConfirmData;->sort:I

    .line 58
    return-void
.end method

.method public createHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public createLocalHttpBuilder()Lcom/market2345/httpnew/HttpTransactionBuilder;
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/market2345/applist/RankListFragment;->initData()V

    .line 42
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-virtual {p0}, Lcom/market2345/applist/RankListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=getTopList"

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 44
    const-string v1, "authKey"

    const-string v2, "duotetomobile20120903"

    invoke-virtual {v0, v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 45
    const-string v1, "type"

    iget-object v2, p0, Lcom/market2345/applist/RankListFragment;->rankType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 46
    const-string v1, "sort"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/market2345/applist/RankListFragment;->sort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 47
    const-string v1, "page"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setInitialPage(Ljava/lang/String;I)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 48
    return-object v0
.end method
