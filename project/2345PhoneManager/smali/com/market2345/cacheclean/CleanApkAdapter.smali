.class public Lcom/market2345/cacheclean/CleanApkAdapter;
.super Landroid/widget/BaseAdapter;
.source "CleanApkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/cacheclean/CleanApkAdapter$OnSelcectListener;,
        Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private infos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/cacheclean/ApkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/market2345/cacheclean/CleanApkAdapter$OnSelcectListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/cacheclean/ApkInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/cacheclean/ApkInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanApkAdapter;->infos:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/market2345/cacheclean/CleanApkAdapter;->context:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/cacheclean/CleanApkAdapter;)Lcom/market2345/cacheclean/CleanApkAdapter$OnSelcectListener;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanApkAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkAdapter;->listener:Lcom/market2345/cacheclean/CleanApkAdapter$OnSelcectListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 42
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanApkAdapter;->infos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 43
    .local v0, "count":I
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 56
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "holder":Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;
    move v2, p1

    .line 65
    .local v2, "pos":I
    if-nez p2, :cond_1

    .line 67
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanApkAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03002c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 68
    new-instance v0, Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;-><init>(Lcom/market2345/cacheclean/CleanApkAdapter;)V

    .line 69
    .restart local v0    # "holder":Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;
    const v4, 0x7f0901a3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    .line 70
    const v4, 0x7f0901a5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    .line 71
    const v4, 0x7f0901a6

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;->tv_verson:Landroid/widget/TextView;

    .line 72
    const v4, 0x7f0901a7

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;->tv_install:Landroid/widget/TextView;

    .line 73
    const v4, 0x7f0901a8

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;->tv_size:Landroid/widget/TextView;

    .line 74
    const v4, 0x7f0901a4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v0, Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    :goto_0
    iget-object v5, v0, Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/market2345/cacheclean/CleanApkAdapter;->infos:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/cacheclean/ApkInfo;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ApkInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v5, v0, Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/market2345/cacheclean/CleanApkAdapter;->infos:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/cacheclean/ApkInfo;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ApkInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v5, v0, Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;->tv_verson:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/market2345/cacheclean/CleanApkAdapter;->infos:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/cacheclean/ApkInfo;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ApkInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanApkAdapter;->infos:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/cacheclean/ApkInfo;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ApkInfo;->getInstalled()I

    move-result v3

    .line 88
    .local v3, "type":I
    const/4 v1, 0x0

    .line 89
    .local v1, "installType":Ljava/lang/String;
    sget v4, Lcom/market2345/cacheclean/ScanApkBigFile;->INSTALLED:I

    if-ne v3, v4, :cond_2

    .line 91
    const-string v1, "\u5df2\u5b89\u88c5"

    .line 109
    :cond_0
    :goto_1
    iget-object v4, v0, Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;->tv_install:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v5, v0, Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;->tv_size:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/market2345/cacheclean/CleanApkAdapter;->infos:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/cacheclean/ApkInfo;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ApkInfo;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v5, v0, Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/market2345/cacheclean/CleanApkAdapter;->infos:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/cacheclean/ApkInfo;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ApkInfo;->isSelect()Z

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 112
    iget-object v4, v0, Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    new-instance v5, Lcom/market2345/cacheclean/CleanApkAdapter$1;

    invoke-direct {v5, p0, v2}, Lcom/market2345/cacheclean/CleanApkAdapter$1;-><init>(Lcom/market2345/cacheclean/CleanApkAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-object p2

    .line 81
    .end local v1    # "installType":Ljava/lang/String;
    .end local v3    # "type":I
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;
    check-cast v0, Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/market2345/cacheclean/CleanApkAdapter$ViewHolder;
    goto/16 :goto_0

    .line 93
    .restart local v1    # "installType":Ljava/lang/String;
    .restart local v3    # "type":I
    :cond_2
    sget v4, Lcom/market2345/cacheclean/ScanApkBigFile;->UNINSTALLED:I

    if-ne v3, v4, :cond_3

    .line 95
    const-string v1, "\u672a\u5b89\u88c5"

    goto :goto_1

    .line 97
    :cond_3
    sget v4, Lcom/market2345/cacheclean/ScanApkBigFile;->INSTALLED_UPDATE:I

    if-ne v3, v4, :cond_4

    .line 99
    const-string v1, "\u65b0\u7248\u672c"

    goto :goto_1

    .line 101
    :cond_4
    sget v4, Lcom/market2345/cacheclean/ScanApkBigFile;->INSTALLED_OLD:I

    if-ne v3, v4, :cond_5

    .line 103
    const-string v1, "\u8001\u7248\u672c"

    goto :goto_1

    .line 105
    :cond_5
    sget v4, Lcom/market2345/cacheclean/ScanApkBigFile;->BREAK_APK:I

    if-ne v3, v4, :cond_0

    .line 107
    const-string v1, "\u7834\u635f"

    goto :goto_1
.end method

.method public setSelectListener(Lcom/market2345/cacheclean/CleanApkAdapter$OnSelcectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/market2345/cacheclean/CleanApkAdapter$OnSelcectListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanApkAdapter;->listener:Lcom/market2345/cacheclean/CleanApkAdapter$OnSelcectListener;

    .line 37
    return-void
.end method
