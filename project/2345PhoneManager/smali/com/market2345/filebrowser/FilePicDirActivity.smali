.class public Lcom/market2345/filebrowser/FilePicDirActivity;
.super Lcom/market2345/home/BaseActivity;
.source "FilePicDirActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static final REQUESTCODE_IMAGE:I = 0x1


# instance fields
.field private adapter:Lcom/market2345/filebrowser/adapter/PicDirAdapter;

.field private gvImages:Landroid/widget/GridView;

.field private noData:Landroid/view/View;

.field private tvTopTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/market2345/home/BaseActivity;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/adapter/PicDirAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/filebrowser/FilePicDirActivity;->adapter:Lcom/market2345/filebrowser/adapter/PicDirAdapter;

    .line 75
    iget-object v0, p0, Lcom/market2345/filebrowser/FilePicDirActivity;->gvImages:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/market2345/filebrowser/FilePicDirActivity;->adapter:Lcom/market2345/filebrowser/adapter/PicDirAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object v0, p0, Lcom/market2345/filebrowser/FilePicDirActivity;->gvImages:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/market2345/filebrowser/FilePicDirActivity;->noData:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 80
    const v0, 0x7f09026a

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FilePicDirActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/market2345/filebrowser/FilePicDirActivity;->gvImages:Landroid/widget/GridView;

    new-instance v1, Lcom/market2345/filebrowser/FilePicDirActivity$1;

    invoke-direct {v1, p0}, Lcom/market2345/filebrowser/FilePicDirActivity$1;-><init>(Lcom/market2345/filebrowser/FilePicDirActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    const v1, 0x7f09026b

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FilePicDirActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/filebrowser/FilePicDirActivity;->tvTopTitle:Landroid/widget/TextView;

    .line 61
    iget-object v1, p0, Lcom/market2345/filebrowser/FilePicDirActivity;->tvTopTitle:Landroid/widget/TextView;

    const-string v2, "\u56fe\u7247"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v1, 0x7f090278

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FilePicDirActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/market2345/filebrowser/FilePicDirActivity;->gvImages:Landroid/widget/GridView;

    .line 64
    const v1, 0x7f09012b

    invoke-virtual {p0, v1}, Lcom/market2345/filebrowser/FilePicDirActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/filebrowser/FilePicDirActivity;->noData:Landroid/view/View;

    .line 65
    iget-object v1, p0, Lcom/market2345/filebrowser/FilePicDirActivity;->noData:Landroid/view/View;

    const v2, 0x7f090265

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    .local v0, "noImage":Landroid/widget/TextView;
    const v1, 0x7f02012d

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 67
    const-string v1, "\u6ca1\u6709\u4efb\u4f55\u56fe\u7247"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/market2345/home/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 43
    if-nez p3, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v1, "isDelete"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "dirName"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "dirName":Ljava/lang/String;
    iget-object v1, p0, Lcom/market2345/filebrowser/FilePicDirActivity;->adapter:Lcom/market2345/filebrowser/adapter/PicDirAdapter;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/market2345/filebrowser/FilePicDirActivity;->adapter:Lcom/market2345/filebrowser/adapter/PicDirAdapter;

    invoke-virtual {v1, v0}, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->getCountInDir(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 51
    iget-object v1, p0, Lcom/market2345/filebrowser/FilePicDirActivity;->adapter:Lcom/market2345/filebrowser/adapter/PicDirAdapter;

    invoke-virtual {v1, v0}, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->remove(Ljava/lang/String;)Z

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/market2345/filebrowser/FilePicDirActivity;->adapter:Lcom/market2345/filebrowser/adapter/PicDirAdapter;

    invoke-virtual {v1}, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 97
    :pswitch_0
    invoke-virtual {p0}, Lcom/market2345/filebrowser/FilePicDirActivity;->finish()V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x7f09026a
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/market2345/home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f030065

    invoke-virtual {p0, v0}, Lcom/market2345/filebrowser/FilePicDirActivity;->setContentView(I)V

    .line 34
    invoke-direct {p0}, Lcom/market2345/filebrowser/FilePicDirActivity;->initView()V

    .line 35
    invoke-direct {p0}, Lcom/market2345/filebrowser/FilePicDirActivity;->initData()V

    .line 36
    invoke-direct {p0}, Lcom/market2345/filebrowser/FilePicDirActivity;->initListener()V

    .line 37
    return-void
.end method
