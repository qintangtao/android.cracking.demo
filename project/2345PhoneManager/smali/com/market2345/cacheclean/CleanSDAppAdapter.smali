.class public Lcom/market2345/cacheclean/CleanSDAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "CleanSDAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/cacheclean/CleanSDAppAdapter$OnSelcectListener;,
        Lcom/market2345/cacheclean/CleanSDAppAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private infos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/cacheclean/AppSDCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/market2345/cacheclean/CleanSDAppAdapter$OnSelcectListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/cacheclean/AppSDCacheInfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/cacheclean/AppSDCacheInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanSDAppAdapter;->infos:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/market2345/cacheclean/CleanSDAppAdapter;->context:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/cacheclean/CleanSDAppAdapter;)Lcom/market2345/cacheclean/CleanSDAppAdapter$OnSelcectListener;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanSDAppAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanSDAppAdapter;->listener:Lcom/market2345/cacheclean/CleanSDAppAdapter$OnSelcectListener;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 37
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanSDAppAdapter;->infos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 38
    .local v0, "count":I
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 45
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
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 62
    move v1, p1

    .line 63
    .local v1, "pos":I
    const/4 v0, 0x0

    .line 64
    .local v0, "holder":Lcom/market2345/cacheclean/CleanSDAppAdapter$ViewHolder;
    if-nez p2, :cond_2

    .line 66
    iget-object v3, p0, Lcom/market2345/cacheclean/CleanSDAppAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030034

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    new-instance v0, Lcom/market2345/cacheclean/CleanSDAppAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/market2345/cacheclean/CleanSDAppAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/CleanSDAppAdapter$ViewHolder;-><init>(Lcom/market2345/cacheclean/CleanSDAppAdapter;)V

    .line 68
    .restart local v0    # "holder":Lcom/market2345/cacheclean/CleanSDAppAdapter$ViewHolder;
    const v3, 0x7f0901d0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/market2345/cacheclean/CleanSDAppAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    .line 69
    const v3, 0x7f0901d2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/market2345/cacheclean/CleanSDAppAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    .line 70
    const v3, 0x7f090118

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/market2345/cacheclean/CleanSDAppAdapter$ViewHolder;->tv_size:Landroid/widget/TextView;

    .line 71
    const v3, 0x7f0901d1

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v0, Lcom/market2345/cacheclean/CleanSDAppAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    .line 72
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    :goto_0
    iget-object v3, p0, Lcom/market2345/cacheclean/CleanSDAppAdapter;->infos:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanSDAppAdapter;->infos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 81
    iget-object v3, p0, Lcom/market2345/cacheclean/CleanSDAppAdapter;->infos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/cacheclean/AppSDCacheInfo;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/AppSDCacheInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 82
    iget-object v4, v0, Lcom/market2345/cacheclean/CleanSDAppAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanSDAppAdapter;->infos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/cacheclean/AppSDCacheInfo;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/AppSDCacheInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    :cond_0
    iget-object v4, v0, Lcom/market2345/cacheclean/CleanSDAppAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanSDAppAdapter;->infos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/cacheclean/AppSDCacheInfo;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/AppSDCacheInfo;->getAppname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v3, p0, Lcom/market2345/cacheclean/CleanSDAppAdapter;->infos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/cacheclean/AppSDCacheInfo;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/AppSDCacheInfo;->getCacheSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "size":Ljava/lang/String;
    iget-object v3, v0, Lcom/market2345/cacheclean/CleanSDAppAdapter$ViewHolder;->tv_size:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v4, v0, Lcom/market2345/cacheclean/CleanSDAppAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanSDAppAdapter;->infos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/cacheclean/AppSDCacheInfo;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/AppSDCacheInfo;->isSelect()Z

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 87
    iget-object v3, v0, Lcom/market2345/cacheclean/CleanSDAppAdapter$ViewHolder;->box:Landroid/widget/CheckBox;

    new-instance v4, Lcom/market2345/cacheclean/CleanSDAppAdapter$1;

    invoke-direct {v4, p0, v1}, Lcom/market2345/cacheclean/CleanSDAppAdapter$1;-><init>(Lcom/market2345/cacheclean/CleanSDAppAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .end local v2    # "size":Ljava/lang/String;
    :cond_1
    return-object p2

    .line 77
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/market2345/cacheclean/CleanSDAppAdapter$ViewHolder;
    check-cast v0, Lcom/market2345/cacheclean/CleanSDAppAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/market2345/cacheclean/CleanSDAppAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setSelectListener(Lcom/market2345/cacheclean/CleanSDAppAdapter$OnSelcectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/market2345/cacheclean/CleanSDAppAdapter$OnSelcectListener;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanSDAppAdapter;->listener:Lcom/market2345/cacheclean/CleanSDAppAdapter$OnSelcectListener;

    .line 51
    return-void
.end method
