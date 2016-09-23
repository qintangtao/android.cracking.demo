.class public Lcom/market2345/dumpclean/CleanTrustActivity;
.super Lcom/market2345/home/BaseActivity;
.source "CleanTrustActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Landroid/widget/BaseAdapter;

.field private emptylay:Landroid/widget/LinearLayout;

.field private ibtn_left:Landroid/widget/ImageView;

.field private lv_list:Landroid/widget/ListView;

.field private size:I

.field private trusts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/TrustMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/market2345/home/BaseActivity;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanTrustActivity;->trusts:Ljava/util/List;

    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/market2345/dumpclean/CleanTrustDBManager;

    invoke-direct {v0, p0}, Lcom/market2345/dumpclean/CleanTrustDBManager;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, "manager":Lcom/market2345/dumpclean/CleanTrustDBManager;
    invoke-virtual {v0}, Lcom/market2345/dumpclean/CleanTrustDBManager;->queryAll()Ljava/util/List;

    move-result-object v1

    .line 40
    .local v1, "queryAll":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/TrustMode;>;"
    iget-object v2, p0, Lcom/market2345/dumpclean/CleanTrustActivity;->trusts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 41
    iget-object v2, p0, Lcom/market2345/dumpclean/CleanTrustActivity;->trusts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/market2345/dumpclean/CleanTrustActivity;->size:I

    .line 43
    iget-object v2, p0, Lcom/market2345/dumpclean/CleanTrustActivity;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 44
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 47
    const v0, 0x7f09006c

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/CleanTrustActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanTrustActivity;->ibtn_left:Landroid/widget/ImageView;

    .line 48
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanTrustActivity;->ibtn_left:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v0, 0x7f09007c

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/CleanTrustActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanTrustActivity;->lv_list:Landroid/widget/ListView;

    .line 50
    const v0, 0x7f09007d

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/CleanTrustActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanTrustActivity;->emptylay:Landroid/widget/LinearLayout;

    .line 51
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanTrustActivity;->lv_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/market2345/dumpclean/CleanTrustActivity;->emptylay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 52
    new-instance v0, Lcom/market2345/dumpclean/TrustAdapter;

    iget-object v1, p0, Lcom/market2345/dumpclean/CleanTrustActivity;->trusts:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/market2345/dumpclean/TrustAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/CleanTrustActivity;->adapter:Landroid/widget/BaseAdapter;

    .line 53
    iget-object v0, p0, Lcom/market2345/dumpclean/CleanTrustActivity;->lv_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/market2345/dumpclean/CleanTrustActivity;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/market2345/dumpclean/CleanTrustActivity;->finish()V

    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/market2345/home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/CleanTrustActivity;->setContentView(I)V

    .line 27
    invoke-direct {p0}, Lcom/market2345/dumpclean/CleanTrustActivity;->initView()V

    .line 28
    invoke-direct {p0}, Lcom/market2345/dumpclean/CleanTrustActivity;->initData()V

    .line 30
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Lcom/market2345/home/BaseActivity;->onResume()V

    .line 36
    return-void
.end method
