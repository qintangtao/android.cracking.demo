.class public Lcom/market2345/dumpclean/ListViewDialog;
.super Landroid/app/Dialog;
.source "ListViewDialog.java"


# instance fields
.field private adapter:Landroid/widget/BaseAdapter;

.field private click:Landroid/widget/AdapterView$OnItemClickListener;

.field private context:Landroid/content/Context;

.field private lv_show:Landroid/widget/ListView;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const v0, 0x7f0c0008

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 22
    iput-object p1, p0, Lcom/market2345/dumpclean/ListViewDialog;->context:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/BaseAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/widget/BaseAdapter;
    .param p3, "click"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 26
    const v0, 0x7f0c0008

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 27
    iput-object p3, p0, Lcom/market2345/dumpclean/ListViewDialog;->click:Landroid/widget/AdapterView$OnItemClickListener;

    .line 28
    iput-object p2, p0, Lcom/market2345/dumpclean/ListViewDialog;->adapter:Landroid/widget/BaseAdapter;

    .line 30
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 40
    const v0, 0x7f090210

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/ListViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/dumpclean/ListViewDialog;->tv_title:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f09021a

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/ListViewDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/market2345/dumpclean/ListViewDialog;->lv_show:Landroid/widget/ListView;

    .line 42
    iget-object v0, p0, Lcom/market2345/dumpclean/ListViewDialog;->lv_show:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/market2345/dumpclean/ListViewDialog;->click:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/market2345/dumpclean/ListViewDialog;->lv_show:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/market2345/dumpclean/ListViewDialog;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f030048

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/ListViewDialog;->setContentView(I)V

    .line 36
    invoke-direct {p0}, Lcom/market2345/dumpclean/ListViewDialog;->initView()V

    .line 37
    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/market2345/dumpclean/ListViewDialog;->lv_show:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    return-void
.end method

.method public setCleanTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/market2345/dumpclean/ListViewDialog;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/market2345/dumpclean/ListViewDialog;->lv_show:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 56
    return-void
.end method
